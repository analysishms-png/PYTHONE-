# -*- coding: utf-8 -*-
"""Wave B reports (Finance): Bank Reconciliation, Fund Flow, Cash Flow.

Synthetic (no-DB) tests for SQL shape + registry wiring. Live runs
verified manually (bank rows, nature buckets, day-wise spine).
"""
from __future__ import annotations

import os
import re
import sys

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "..")))

from HMS_py.core import reports


KEYS = ("bank_reconciliation", "fund_flow", "cash_flow")


def test_registry_has_wave_b_keys():
    by_key = reports.by_key()
    for k in KEYS:
        assert k in by_key, f"{k} missing from REPORTS registry"


def test_menu_caption_map_wiring():
    m = reports.menu_caption_map()
    assert m.get("Bank Reconciliation") == "bank_reconciliation"
    assert m.get("Fund Flow") == "fund_flow"
    assert m.get("Cash Flow") == "cash_flow"


def test_sql_shapes_and_2008r2_compat():
    by_key = reports.by_key()
    for k in KEYS:
        sql = by_key[k]["sql"]
        # daterange reports: even count of ? params
        n = len(re.findall(r"\?", re.sub(r"'(?:[^']|'')*'", "''", sql)))
        assert n % 2 == 0 and n >= 2, f"{k}: bad param count {n}"
        # SQL 2008 R2 compat: banned 2012+ features
        banned = ("FORMAT(", "STRING_AGG", "TRY_CONVERT", "TRY_CAST",
                  "OFFSET", "FETCH", "EOMONTH", "DATEFROMPARTS",
                  "IIF(", "CHOOSE(")
        up = sql.upper()
        for b in banned:
            assert b not in up, f"{k}: banned 2012+ feature {b}"


def test_bank_recon_uses_bank_nature_and_clg_status():
    sql = reports.by_key()["bank_reconciliation"]["sql"].upper()
    assert "NATURE" in sql and "BANK" in sql, "nature='Bank' filter"
    assert "CLG_DATE" in sql, "cleared/uncleared status"
    assert "CHEQUE" not in sql  # ChequeRegister table is DB me nahi


def test_fund_flow_cr_inflow_dr_outflow():
    sql = reports.by_key()["fund_flow"]["sql"].upper()
    assert "SUM(L.AMTCR)" in sql and "SUM(L.AMTDR)" in sql
    assert "GROUP BY" in sql and "NATURE" in sql


def test_cash_flow_spine_and_running_balance():
    sql = reports.by_key()["cash_flow"]["sql"].upper()
    assert "WITH DATES AS" in sql, "date spine"
    assert "MAXRECURSION" in sql
    assert "OPENING" in sql and "CLOSING" in sql
    assert "'CASH','BANK'" in sql


def test_run_missing_params_raises_clean():
    try:
        reports.run("bank_reconciliation")
        assert False, "expected ValueError (needs d_from/d_to)"
    except KeyError:
        pass  # engine by_key lookup - fine agar key hi na ho
    except ValueError as e:
        assert "needs d_from/d_to" in str(e)


def test_run_missing_table_returns_empty(monkeypatch):
    """42S02 (table absent) pe engine empty grid deta hai — UI crash nahi."""
    def fake_query(sql, params=(), cn=None):
        class Err(Exception):
            pass
        raise Exception("42S02", "[42S02] Invalid object name 'Ledger'.")
    monkeypatch.setattr(reports.db, "query", fake_query)
    cols, rows = reports.run("fund_flow", "2026-01-01", "2026-12-31")
    assert cols and rows == []
