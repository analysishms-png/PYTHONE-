# -*- coding: utf-8 -*-
"""Wave C: GSTR-2 variants (fixed SQL) + NA menu surface tests.

  - GSTR2(3)/(4A)/(4B): Purch1/Purch2 based (Sale2.Item col live DB me
    nahi — 42S22 tha); DelFlag/VoidYN varchar-safe filters.
  - NA menubar (menuHelp) GSTR-2 + EInvoice leaves registry me resolve.
"""
from __future__ import annotations

import os
import re
import sys

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "..")))
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from HMS_py.core import reports


GSTR2_KEYS = ("GSTR2(3)", "GSTR2(4A)", "GSTR2(4B)")


def test_gstr2_sql_uses_purchase_tables():
    for k in GSTR2_KEYS:
        sql = reports.by_key()[k]["sql"].upper()
        assert "PURCH1" in sql, f"{k}: Purch1 join missing"
        assert "SALE2" not in sql, f"{k}: abhi bhi Sale2 pe hai (42S22)"


def test_gstr2_varchar_safe_flags():
    """DelFlag/VoidYN varchar cols — int-cast ISNULL(x,0) conversion fail
    deta tha ('N' -> int). RTRIM + text-compare hona chahiye."""
    for k in GSTR2_KEYS:
        sql = reports.by_key()[k]["sql"].upper()
        assert "ISNULL(RTRIM(" in sql, f"{k}: varchar-safe flag filter missing"
        assert "ISNULL(P.DELFLAG,0)" not in sql
        assert "ISNULL(D.VOIDYN,0)" not in sql


def test_gstr2_2008r2_compat_and_params():
    for k in GSTR2_KEYS:
        sql = reports.by_key()[k]["sql"]
        n = len(re.findall(r"\?", re.sub(r"'(?:[^']|'')*'", "''", sql)))
        assert n == 2, f"{k}: exactly 2 date params, got {n}"
        up = sql.upper()
        for banned in ("FORMAT(", "STRING_AGG", "OFFSET", "IIF("):
            assert banned not in up


def test_gstr2_4a_4b_distinct_semantics():
    sql_4a = reports.by_key()["GSTR2(4A)"]["sql"].upper()
    sql_4b = reports.by_key()["GSTR2(4B)"]["sql"].upper()
    # 4A: eligible = not-void + tax>0; 4B: reversal = void
    assert "NOT IN ('Y')" in sql_4a and "TAXAMT,0) > 0" in sql_4a
    assert "= 'Y'" in sql_4b


def test_gstr2_menu_captions_intact():
    m = reports.menu_caption_map()
    assert m.get("GSTR2(3)") == "GSTR2(3)"
    assert m.get("GSTR-2(4A)") == "GSTR2(4A)"
    assert m.get("GSTR-2") == "GSTR2(3)"


def test_na_menubar_gstr_einvoice_leaves_resolve():
    """Night Audit menuHelp menubar ke GST/EInvoice leaves shell registry
    (case-insensitive) me openers hone chahiye — disabled leaves nahi."""
    from HMS_py.core import menu_help as mh
    from HMS_py.ui import shell

    registry = shell._form_registry()
    reg_ci = {str(k).strip().lower(): v for k, v in registry.items()}
    groups = mh.menubar_for("night audit", "SA")
    leaves = []

    def walk(items):
        for it in items:
            leaves.append(it["name"])
            walk(it.get("children") or [])

    for g in groups:
        walk(g.get("items") or [])

    gst_leaves = [l for l in leaves
                  if "GSTR" in l.upper() or "EINVOICE" in l.upper()
                  or "RECONCIL" in l.upper()]
    assert gst_leaves, "NA menubar me GST/EInvoice leaves hi nahi"
    for l in gst_leaves:
        assert l.strip().lower() in reg_ci, f"leaf '{l}' ka opener missing"


def test_na_gst_group_has_expected_leaves():
    from HMS_py.core import menu_help as mh
    groups = mh.menubar_for("night audit", "SA")
    gst = next((g for g in groups if g["name"] == "GST Reports"), None)
    assert gst is not None, "GST Reports group missing"
    names = {it["name"].strip() for it in gst["items"]}
    for expect in ("GSTR-1", "GSTR-2(3)", "GSTR-2(4A)", "GSTR-2(4B)",
                   "Reconciliation (GSTR-2A)"):
        assert any(expect.lower() == n.lower() for n in names), \
            f"GST Reports me '{expect}' nahi"
