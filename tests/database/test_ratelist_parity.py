"""RateList + GroupCatalog parity tests (VB6 FrmRoomCatMast CmdRate +
HallMenuCatalog GroupCatalog). Live DB round-trip, snapshot-restore
(byte-exact proof). Run: python -m pytest tests/database/test_ratelist_parity.py -q
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__))))))

import pytest

from HMS_py.core import banquet_masters as bm
from HMS_py.core import db, ratelist

TEST_CAT = "PYT9"          # RoomCat fixture code
TEST_ITEMCAT = "PYTIC9"    # ItemGrp fixture code


@pytest.fixture(scope="module")
def cn():
    conn = db.connect()
    yield conn
    conn.close()


@pytest.fixture()
def cleanup(cn):
    yield
    cur = cn.cursor()
    cur.execute("DELETE FROM RateList WHERE RoomCat = ?", (TEST_CAT,))
    cur.execute("DELETE FROM GroupCatalog WHERE CatCode = ?", (TEST_CAT,))
    cn.commit()


def _snap(cn):
    cur = cn.cursor()
    cur.execute("SELECT RoomCat, RoomNo, Code, OccType, Rate1, Rate2, Rate3,"
                " Rate4, Rate5, RateW, RateM FROM RateList ORDER BY RoomCat,"
                " RoomNo, OccType")
    return cur.fetchall()


def test_validate_rejects_bad_rows():
    with pytest.raises(ValueError):
        ratelist._validate_row({"roomcat": "", "occtype": "Single"})
    with pytest.raises(ValueError):
        ratelist._validate_row({"roomcat": TEST_CAT, "occtype": ""})
    with pytest.raises(ValueError):
        ratelist._validate_row({"roomcat": TEST_CAT, "occtype": "Single",
                                "rate2": "abc"})
    with pytest.raises(ValueError):
        ratelist._validate_row({"roomcat": TEST_CAT, "occtype": "Single",
                                "rate3": -5})
    # roomno default fill
    roomno, occtype = ratelist._validate_row(
        {"roomcat": TEST_CAT, "occtype": "Single"})
    assert roomno == ratelist.DEFAULT_ROOMNO


def test_save_round_trip_and_resolve(cn, cleanup):
    snap = _snap(cn)
    try:
        rows = [
            {"roomcat": TEST_CAT, "roomno": "*****", "occtype": "Single",
             "rate2": 1500},
            {"roomcat": TEST_CAT, "roomno": "*****", "occtype": "Multiple",
             "rate2": 1800, "ratew": 1600},
            {"roomcat": TEST_CAT, "roomno": "101", "occtype": "Single",
             "rate2": 2000},
        ]
        n = ratelist.save_category_rates(rows, roomcat=TEST_CAT, cn=cn)
        assert n == 3
        got = ratelist.list_for_category(TEST_CAT, cn=cn)
        assert len(got) == 3
        # resolve: per-room override
        hit = ratelist.resolve_rates(TEST_CAT, "101", "Single", cn=cn)
        assert hit and float(hit["rate2"]) == 2000.0
        # resolve: fallback to ***** default
        dflt = ratelist.resolve_rates(TEST_CAT, "999", "Multiple", cn=cn)
        assert dflt and float(dflt["rate2"]) == 1800.0
        # defaults map (VB6 fill RoomNo='*****')
        dm = ratelist.get_default_rates(TEST_CAT, cn=cn)
        assert set(dm) == {"Single", "Multiple"}
    finally:
        ratelist.delete_for_category(TEST_CAT, cn=cn)
    assert _snap(cn) == snap


def test_duplicate_pair_rejected_and_rollback(cn, cleanup):
    snap = _snap(cn)
    with pytest.raises(ValueError):
        ratelist.save_category_rates([
            {"roomcat": TEST_CAT, "roomno": "*****", "occtype": "Single",
             "rate2": 100},
            {"roomcat": TEST_CAT, "roomno": "*****", "occtype": "Single",
             "rate2": 200},
        ], roomcat=TEST_CAT, cn=cn)
    assert _snap(cn) == snap   # delete bhi rollback ho gaya


def test_grouplimits_round_trip(cn, cleanup):
    cur = cn.cursor()
    cur.execute("SELECT COUNT(*) FROM ItemGrp WHERE Code = ?", (TEST_ITEMCAT,))
    if cur.fetchone()[0] == 0:
        cur.execute(
            "INSERT INTO ItemGrp (Code, Name, Site_Code, U_Name, U_EntDt,"
            " U_AE, LogSite_Code) VALUES (?, ?, ?, ?, getdate(), 'A', ?)",
            (TEST_ITEMCAT, "PYT GroupCatalog parity", db.get_site_code(),
             db.get_user(), db.get_site_code()))
        cn.commit()
    cur.execute("SELECT COUNT(*) FROM GroupCatalog WHERE CatCode = ?",
                (TEST_CAT,))
    had = cur.fetchone()[0]
    if not had:
        cn.commit()
    try:
        n = bm.grouplimits_set(TEST_CAT,
                               [{"itemcat": TEST_ITEMCAT, "limit": 5}],
                               cn=cn)
        assert n == 1
        rows = bm.grouplimits_list(TEST_CAT, cn=cn)
        assert rows and rows[0]["itemcat"] == TEST_ITEMCAT
        assert int(rows[0]["limit"]) == 5
        # replace semantics: dusra set -> purana delete
        n = bm.grouplimits_set(TEST_CAT,
                               [{"itemcat": TEST_ITEMCAT, "limit": 7}],
                               cn=cn)
        rows = bm.grouplimits_list(TEST_CAT, cn=cn)
        assert len(rows) == 1 and int(rows[0]["limit"]) == 7
        with pytest.raises(ValueError):
            bm.grouplimits_set(TEST_CAT, [
                {"itemcat": "A1", "limit": 1},
                {"itemcat": "A1", "limit": 2}], cn=cn)
    finally:
        cur.execute("DELETE FROM GroupCatalog WHERE CatCode = ?", (TEST_CAT,))
        if not had:
            cur.execute("DELETE FROM ItemGrp WHERE Code = ?", (TEST_ITEMCAT,))
        cn.commit()
