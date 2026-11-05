"""Housekeeping Linen & Stock Operations (VB6: HKHouseOpStk.frm, HKRoomOpStk.frm, HKIssRec.frm).

Tables (live schema):
- STOCK: DocId, SNo, Vtype, VNo, Vdate, VTime, Vprefix, RestCode, GuestProf, 
  EmpCode, CompCode, Comments, ItemCode, ItemName, Unit, Qty, Rate, Amount, 
  Vtype, VNo, Vdate, VTime, Site_Code, Vprefix, GuestProf, EmpCode, CompCode,
  Comments, ItemCode, ItemName, Unit, Qty, Rate, Amount, RestCode, BillAmount,
  ContraDocID, TaxPer, OnAmt, Split, Bill_No, SettleDate, BatchNo, Remarks,
  RefNo, PlanCode, SeqNo, RefDocId, LogSite_Code, AU_Name, AU_EntDt, AU_AE
- ItemMast: Code, Name, Unit, ItemGroup, ItemType, LPurRate, ...
- Depart: Code, Name, RestType (House Keeping = 'House Keeping')
- Voucher_Type: V_Type, Description, Number_Method, Start_No, Vprefix
- STOCK (for stock items): DocId, SNo, Vtype, VNo, Vdate, VTime, RestCode, ItemCode, ItemName, Unit, Qty, Rate, Amount

VB6 Forms:
- HKHouseOpStk.frm: House Keeping Op. Stock Entry (Main entry for HK linen/stock)
- HKRoomOpStk.frm: HK Room Operation Stock (Room-level stock operations)
- HKIssRec.frm: HK Issue/Receive (Issue/Receive stock between outlets/departments)
"""

from __future__ import annotations

import datetime
from typing import Optional

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()


def _map_stock(r) -> dict:
    """Map STOCK row to dict."""
    try:
        return {
            "docid": r.DocId or "",
            "sno": int(r.SNo or 0),
            "vtype": r.Vtype or "",
            "vno": int(r.VNo or 0),
            "vdate": r.Vdate,
            "vtime": r.VTime or "",
            "restcode": r.RestCode or "",
            "guestprof": r.GuestProf or "",
            "empcode": r.EmpCode or "",
            "compcode": r.CompCode or "",
            "comments": r.Comments or "",
            "itemcode": r.ItemCode or "",
            "itemname": r.ItemName or "",
            "unit": r.Unit or "",
            "qty": float(r.Qty or 0),
            "rate": float(r.Rate or 0),
            "amount": float(r.Amount or 0),
            "restcode2": r.RestCode or "",
            "billamount": float(r.BillAmount or 0),
            "contradocid": r.ContraDocID or "",
            "taxper": float(r.TaxPer or 0),
            "onamt": float(r.OnAmt or 0),
            "split": r.Split or "",
            "bill_no": r.Bill_No or "",
            "settledate": r.SettleDate,
            "batchno": r.BatchNo or "",
            "remarks": r.Remarks or "",
            "refno": r.RefNo or "",
            "plancode": r.PlanCode or "",
            "seqno": int(r.SeqNo or 0),
            "refdocid": r.RefDocId or "",
            "logsite_code": r.LogSite_Code or "",
            "au_name": r.AU_Name or "",
            "au_entdt": r.AU_EntDt,
            "au_ae": r.AU_AE or "",
        }
    except AttributeError:
        vals = list(r)
        return {
            "docid": vals[0] or "", "sno": int(vals[1] or 0),
            "vtype": vals[2] or "", "vno": int(vals[3] or 0),
            "vdate": vals[4], "vtime": vals[5] or "",
            "restcode": vals[5] or "", "guestprof": vals[6] or "",
            "empcode": vals[7] or "", "compcode": vals[8] or "",
            "comments": vals[9] or "", "itemcode": vals[10] or "",
            "itemname": vals[11] or "", "unit": vals[12] or "",
            "qty": float(vals[13] or 0), "rate": float(vals[14] or 0),
            "amount": float(vals[15] or 0), "restcode2": vals[16] or "",
            "billamount": float(vals[16] or 0), "contradocid": vals[17] or "",
            "taxper": float(vals[17] or 0), "onamt": float(vals[17] or 0),
            "split": vals[18] or "", "bill_no": vals[18] or "",
            "settledate": vals[19], "batchno": vals[20] or "",
            "remarks": vals[20] or "", "refno": vals[21] or "",
            "plancode": vals[22] or "", "seqno": int(vals[23] or 0),
            "refdocid": vals[23] or "", "logsite_code": vals[23] or "",
            "au_name": vals[24] or "", "au_entdt": vals[24],
            "au_ae": vals[24] or "",
        }


def _map_item(r) -> dict:
    """Map ItemMast row to dict."""
    try:
        return {
            "code": r.Code or "",
            "name": r.Name or "",
            "unit": r.Unit or "",
            "itemgroup": r.ItemGroup or "",
            "itemtype": r.ItemType or "",
            "lpur_rate": float(r.LPurRate or 0),
        }
    except AttributeError:
        return {"code": r[0] or "", "name": r[1] or "", "unit": r[2] or "",
                "itemgroup": r[3] or "", "itemtype": r[3] or "",
                "lpur_rate": float(r[4] or 0)}


def _map_depart(r) -> dict:
    """Map Depart row to dict."""
    try:
        return {"code": r.Code or "", "name": r.Name or "", "resttype": r.RestType or ""}
    except AttributeError:
        return {"code": r[0] or "", "name": r[1] or "", "resttype": r[2] or ""}


def _map_voucher_type(r) -> dict:
    """Map Voucher_Type row to dict."""
    try:
        return {"vtype": r.V_Type or "", "description": r.Description or "",
                "number_method": r.Number_Method or "", "start_no": r.Start_No or 0,
                "vprefix": r.Vprefix or ""}
    except AttributeError:
        return {"vtype": r[0] or "", "description": r[1] or "",
                "number_method": r[2] or "", "start_no": r[3] or 0,
                "vprefix": r[4] or ""}


def get_hk_departments(cn=None, site: str = SITE_CODE) -> list[dict]:
    """Get all departments with RestType='House Keeping'."""
    rows = db.query(
        "SELECT RTRIM(Code), RTRIM(Name) FROM Depart "
        "WHERE RTRIM(RestType) = 'House Keeping' ORDER BY Code",
        cn=cn)
    return [{"code": r[0] or "", "name": r[1] or ""} for r in rows]


def get_hk_voucher_types(cn=None, site: str = SITE_CODE) -> list[dict]:
    """Get voucher types for HK (V_Type where Category='HK' or similar)."""
    rows = db.query(
        "SELECT V_Type, Description, Number_Method, Start_No, Vprefix "
        "FROM Voucher_Type WHERE Site_Code = ? ORDER BY V_Type",
        (SITE_CODE,), cn=cn)
    return [{"vtype": r[0] or "", "description": r[1] or "",
             "number_method": r[2] or "", "start_no": r[3] or 0,
             "vprefix": r[4] or ""} for r in rows]


def get_hk_items(cn=None, site: str = SITE_CODE) -> list[dict]:
    """Get items for HK (Store Item, Consumables)."""
    rows = db.query(
        "SELECT RTRIM(Code), RTRIM(Name), RTRIM(Unit), RTRIM(ItemGroup) "
        "FROM ItemMast WHERE ItemType = 'Store' AND "
        "ItemType IN ('Store Item','Consumables') "
        "AND ItemType NOT IN ('Service','Non-Stock') "
        "ORDER BY Name", cn=cn)
    return [{"code": r[0] or "", "name": r[1] or "",
             "unit": r[2] or "", "itemgroup": r[3] or ""} for r in rows]


def get_hk_rooms(cn=None, site: str = SITE_CODE) -> list[dict]:
    """Get rooms for HK operations (Type='RO')."""
    rows = db.query(
        "SELECT RTRIM(Code), RTRIM(Name), RTRIM(RoomCat) "
        "FROM RoomMast WHERE RTRIM(Type) = 'RO' AND "
        "(LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Code",
        (SITE_CODE,), cn=cn)
    return [{"code": r[0] or "", "name": r[1] or "", "cat": r[2] or ""} for r in rows]


# ──────────────────────────────────────────────────────────────────────
# HK House Operation Stock (HKHouseOpStk.frm) - Main Entry
# ──────────────────────────────────────────────────────────────────────

def hk_house_op_stock_list(cn=None, site: str = SITE_CODE,
                           vprefix: str = "2026") -> list[dict]:
    """List HK house operation stock entries (STOCK with HK vtype)."""
    rows = db.query(
        "SELECT DocId, SNo, Vtype, VNo, Vdate, VTime, RestCode, "
        "ItemCode, ItemName, Unit, Qty, Rate, Amount, RestCode, "
        "BillAmount, ContraDocID, TaxPer, OnAmt, Split, Bill_No, "
        "SettleDate, BatchNo, Remarks, RefNo, PlanCode, SeqNo, "
        "RefDocId, LogSite_Code, AU_Name, AU_EntDt, AU_AE "
        "FROM STOCK WHERE Site_Code = ? AND Vtype IN ('HKIN', 'HKOUT', 'HKTRN') "
        "ORDER BY Vdate DESC, DocId DESC", (site,), cn=cn)
    return [_map_stock(r) for r in rows]


def hk_house_op_stock_create(rec: dict, cn=None, commit: bool = True,
                             site: str = SITE_CODE, user: str = USER) -> dict:
    """Create HK House Operation Stock entry."""
    _validate_hk_stock(rec)
    vtype = rec.get("vtype", "HKIN")  # HKIN, HKOUT, HKTRN
    vno_rows = db.query(
        "SELECT MAX(VNo) FROM STOCK WHERE Site_Code = ? AND Vtype = ?",
        (SITE_CODE, vtype), cn=cn)
    vno = (vno_rows[0][0] or 0) + 1 if vno_rows and vno_rows[0][0] else 1
    docid = f"D{SITE_CODE}{vtype.ljust(6)}{datetime.date.today().year}{str(vno).rjust(8)}"
    
    own = cn is None
    cn = cn or db.connect()
    try:
        db.execute(
            "INSERT INTO STOCK (DocId, SNo, Vtype, VNo, Vdate, VTime, Site_Code, "
            "Vprefix, RestCode, GuestProf, EmpCode, CompCode, Comments, "
            "ItemCode, ItemName, Unit, Qty, Rate, Amount, RestCode, BillAmount, "
            "ContraDocID, TaxPer, OnAmt, Split, Bill_No, SettleDate, BatchNo, "
            "Remarks, RefNo, PlanCode, SeqNo, RefDocId, LogSite_Code, "
            "U_Name, U_EntDt, U_AE) "
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
            "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
            (docid, 1, vtype, vno, datetime.date.today(), datetime.datetime.now().strftime("%H:%M"),
             SITE_CODE, "2026", rec.get("restcode", ""), rec.get("guestprof", ""),
             USER, "", "", rec.get("itemcode", ""), rec.get("itemname", ""),
             rec.get("unit", ""), rec.get("qty", 0), rec.get("rate", 0),
             rec.get("amount", 0), rec.get("restcode", ""), rec.get("amount", 0),
             "", 0.0, 0.0, "", 0, "", datetime.datetime.now(), 0, "",
             datetime.datetime.now(), "A", SITE_CODE),
            cn=cn, commit=False)
        if commit:
            cn.commit()
        return {"docid": docid, "vno": vno}
    except Exception:
        try:
            cn.rollback()
        except Exception:
            pass
        raise
    finally:
        if own:
            cn.close()


def _validate_hk_stock(rec: dict):
    if not rec.get("itemcode", "").strip():
        raise ValueError("Item code zaroori hai")
    if not rec.get("qty", 0):
        raise ValueError("Quantity zaroori hai")


# ──────────────────────────────────────────────────────────────────────
# HK Room Operation Stock (HKRoomOpStk.frm)
# ──────────────────────────────────────────────────────────────────────

def hk_room_op_stock_list(cn=None, site: str = SITE_CODE) -> list[dict]:
    """List HK room operation stock (STOCK with room-level operations)."""
    rows = db.query(
        "SELECT DocId, SNo, Vtype, VNo, Vdate, VTime, RestCode, "
        "ItemCode, ItemName, Unit, Qty, Rate, Amount, RestCode, "
        "RoomNo, RoomCat, Qty, Rate, Amount "
        "FROM STOCK WHERE Site_Code = ? AND Vtype IN ('HKIN', 'HKOUT', 'HKTRN') "
        "AND RoomNo IS NOT NULL ORDER BY RoomNo, Vdate DESC", (SITE_CODE,), cn=cn)
    return [_map_stock(r) for r in rows]


def hk_room_op_stock_create(rec: dict, cn=None, commit: bool = True,
                            site: str = SITE_CODE, user: str = USER) -> dict:
    """Create HK Room Operation Stock entry (stock movement for specific room)."""
    # Similar to hk_house_op_stock_create but with RoomNo
    pass  # TODO: Implement


# ──────────────────────────────────────────────────────────────────────
# HK Issue/Receive (HKIssRec.frm) - Issue/Receive between outlets
# ──────────────────────────────────────────────────────────────────────

def hk_iss_rec_list(cn=None, site: str = SITE_CODE) -> list[dict]:
    """List HK Issue/Receive entries."""
    rows = db.query(
        "SELECT DocId, SNo, Vtype, VNo, Vdate, VTime, RestCode, "
        "ItemCode, ItemName, Unit, Qty, Rate, Amount, FromRestCode, ToRestCode "
        "FROM STOCK WHERE Site_Code = ? AND Vtype IN ('HKIN', 'HKOUT', 'HKTRN') "
        "AND (FromRestCode IS NOT NULL OR ToRestCode IS NOT NULL) "
        "ORDER BY Vdate DESC, DocId DESC", (SITE_CODE,), cn=cn)
    return [_map_stock(r) for r in rows]


def hk_iss_rec_create(rec: dict, cn=None, commit: bool = True,
                      site: str = SITE_CODE, user: str = USER) -> dict:
    """Create HK Issue/Receive entry (transfer between outlets)."""
    pass  # TODO: Implement


# ──────────────────────────────────────────────────────────────────────
# HK Room Block (HKRoomBlock.frm) - Block/Unblock rooms for HK
# ──────────────────────────────────────────────────────────────────────

def hk_room_block_list(cn=None, site: str = SITE_CODE) -> list[dict]:
    """List room blocks for HK (Maintenance/OOO)."""
    rows = db.query(
        "SELECT RTRIM(RoomCode), RTRIM(ISNULL(Type, 'O')), RTRIM(ISNULL(Reasons, '')), "
        "FromDate, ToDate FROM RoomBLockOut WHERE RoomCode IS NOT NULL AND "
        "ISNULL(Type, '') IN ('O', 'M') AND (LogSite_Code = ? OR LogSite_Code = 'HO') "
        "ORDER BY FromDate DESC", (SITE_CODE,), cn=cn)
    return [{"roomno": r[0] or "", "type": r[1] or "", "reason": r[2] or "",
             "from_date": r[3], "to_date": r[3]} for r in rows]


def hk_room_block_create(roomno: str, block_type: str = "O", reason: str = "",
                         from_date=None, to_date=None, cn=None, commit: bool = True,
                         site: str = SITE_CODE, user: str = USER) -> int:
    """Create room block (Maintenance/OOO)."""
    pass  # TODO: Implement


def hk_room_block_remove(roomno: str, block_type: str = "O",
                         cn=None, commit: bool = True,
                         site: str = SITE_CODE) -> int:
    """Remove room block."""
    pass  # TODO: Implement


# ──────────────────────────────────────────────────────────────────────
# HK Room Status (HKRoomStatus - part of roomstatus.py)
# ──────────────────────────────────────────────────────────────────────

# Already implemented in core/front_office/roomstatus.py
# Functions: room_rack, housekeeping_summary, update_hk_status, block_out, unblock_room


import datetime