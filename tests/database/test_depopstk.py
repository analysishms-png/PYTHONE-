"""DepOpStk (Location wise Opening Stock) — rollback-safe DB tests.

Guards two fixed bugs:
  1. Item must be stored as ItemMast.Code (stock reports join
     `S.Item = I.Code`), not the display name.
  2. VNo must be race-safe (MAX(VNo) + UPDLOCK/HOLDLOCK per site+prefix),
     not a scan of the DocId suffix.
"""
from __future__ import annotations

import datetime

import pytest

from HMS_py.core import db
from HMS_py.core import fa_masters_ops as fmo

pytestmark = pytest.mark.database


def _count(cur) -> int:
    cur.execute("SELECT COUNT(*) FROM KClStk WHERE Vtype='DOPR'")
    return int(cur.fetchone()[0])


def test_resolve_item_code_by_name_and_code():
    row = db.query("SELECT TOP 1 Code, Name FROM ItemMast")
    assert row, "ItemMast khali hai"
    code, name = (row[0][0] or "").strip(), (row[0][1] or "").strip()
    assert fmo.resolve_item_code(name) == code      # by Name
    assert fmo.resolve_item_code(code) == code      # by Code
    with pytest.raises(ValueError):
        fmo.resolve_item_code("NO-SUCH-ITEM-XYZ")
    with pytest.raises(ValueError):
        fmo.resolve_item_code("")


def test_dep_opstk_create_rolls_back(db_transaction):
    cn = db_transaction
    cur = cn.cursor()
    before = _count(cur)

    item = db.query("SELECT TOP 1 Code, Name FROM ItemMast")[0]
    item_code, item_name = (item[0] or "").strip(), (item[1] or "").strip()
    godown = db.query("SELECT TOP 1 Code FROM GodownMast")[0][0]

    # name pass karo — core ko Code me resolve karna hai
    res = fmo.dep_opstk_create(
        [{"item": item_name, "godown": godown, "qty": 5, "unit": "NOS",
          "remarks": "test"},
         {"item": item_code, "godown": godown, "qty": 2, "unit": "NOS"}],
        datetime.date(2026, 9, 27), cn=cn, commit=False)

    # DocId = D + site(2) + VType.ljust(6) + Vprefix.ljust(4) + VNo(8)
    assert res["docid"].startswith("DKKDOPR  2026")
    assert len(res["docid"]) == 21
    assert res["vno"] == 1
    assert res["lines"] == 2

    rows = cur.execute(
        "SELECT Sno, Vtype, VNo, Vprefix, Site_Code, Item, Qty, DepartCode, "
        "Unit FROM KClStk WHERE DocId=? ORDER BY Sno", (res["docid"],)
    ).fetchall()
    assert len(rows) == 2
    assert [r[0] for r in rows] == [1, 2]
    for r in rows:
        assert r[1] == "DOPR" and r[2] == 1 and r[3] == "2026"
        assert r[4] == "KK"
        assert (r[5] or "").strip() == item_code   # CODE, naam nahi
        assert (r[7] or "").strip() == godown
    assert float(rows[0][6]) == pytest.approx(5.0)

    # browse list me ItemName dikhna chahiye (VB6 line-1538 join)
    listed = [r for r in fmo.dep_opstk_list(cn=cn) if r["docid"] == res["docid"]]
    assert len(listed) == 2
    assert listed[0]["item_code"] == item_code
    assert listed[0]["item_name"] == item_name
    assert listed[0]["location"]  # GodownMast name joined

    cn.rollback()
    assert _count(cur) == before


def test_dep_opstk_rejects_bad_input(db_transaction):
    cn = db_transaction
    with pytest.raises(ValueError):
        fmo.dep_opstk_create([], datetime.date(2026, 9, 27), cn=cn,
                             commit=False)
    item = db.query("SELECT TOP 1 Name FROM ItemMast")[0][0]
    with pytest.raises(ValueError):                       # qty 0
        fmo.dep_opstk_create([{"item": item, "qty": 0}],
                             datetime.date(2026, 9, 27), cn=cn, commit=False)
    with pytest.raises(ValueError):                       # unknown item
        fmo.dep_opstk_create([{"item": "NOPE-XYZ", "qty": 1}],
                             datetime.date(2026, 9, 27), cn=cn, commit=False)
