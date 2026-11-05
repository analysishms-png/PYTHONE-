# ──────────────────────────────────────────────────────────────────────
# POS Payment Receive (VB6: RsPaymentReceice.frm)
# ──────────────────────────────────────────────────────────────────────

"""POS Payment Receive Entry (VB6: RsPaymentReceice.frm)

Tables: PAYCHARGE, REVMAST (PayType), SubGroup (AgAc/CompCode), EmpMast
VB6 Pattern:
- TopCtrl1: Add/Edit/Delete/Browse/Print/Exit
- DGEmp, DGCompany, DGAgAc, DGMember, DGPayType, DGRoom for lookups
- FGrid for grid display
- Payment types: Cash, Card, Cheque, Room Charge, etc.
- Supports: Cash, Card, Cheque, Room Charge, Advance, Advance Refund
"""

from __future__ import annotations

from datetime import datetime, date, time
from typing import Optional

from HMS_py.core import db
from HMS_py.core.pos import pos_sales

SITE_CODE = db.get_site_code()
USER = db.get_user()


def _map_payment(r) -> dict:
    try:
        return {
            "docid": r.DocId or "", "sno": int(r.SNo or 0),
            "vtype": r.Vtype or "", "vno": int(r.VNo or 0),
            "site_code": r.Site_Code or "", "vprefix": r.VPrefix or "",
            "vdate": r.Vdate, "vtime": r.VTime or "",
            "guestprof": r.GuestProf or "", "empcode": r.EmpCode or "",
            "compcode": r.CompCode or "", "comments": r.Comments or "",
            "paycode": r.PayCode or "", "paytype": r.PayType or "",
            "amtcr": float(r.AmtCr or 0), "amtdr": float(r.AmtDr or 0),
            "tipamt": float(r.TipAmt or 0),
            "roomcat": r.RoomCat or "", "roomtype": r.RoomType or "",
            "roomno": r.RoomNo or "", "foliono": r.FolioNo or "",
            "cardno": r.CardNo or "", "cardholder": r.CardHolder or "",
            "chqno": r.ChqNo or "", "chqdate": r.ChqDate,
            "expdate": r.ExpDate, "bookno": r.BookNo or "",
            "booktype": r.BookType or "", "u_name": r.U_Name or "",
            "u_ae": r.U_AE or "", "restcode": r.RestCode or "",
            "billamount": float(r.BillAmount or 0),
            "contradocid": r.ContraDocID or "",
            "taxper": float(r.TaxPer or 0), "onamt": float(r.OnAmt or 0),
            "split": r.Split or "", "bill_no": r.Bill_No or "",
            "settledate": r.SettleDate, "batchno": r.BatchNo or "",
            "remarks": r.Remarks or "", "refno": r.RefNo or "",
            "plancode": r.PlanCode or "", "seqno": int(r.SeqNo or 0),
            "refdocid": r.RefDocId or "", "u_name": r.U_Name or "",
            "u_ae": r.U_AE or "",
        }
    except AttributeError:
        vals = list(r)
        return {
            "docid": vals[0] or "", "sno": int(vals[1] or 0),
            "vtype": vals[2] or "", "vno": int(vals[3] or 0),
            "site_code": vals[4] or "", "vprefix": vals[5] or "",
            "vdate": vals[6], "vtime": vals[7] or "",
            "guestprof": vals[8] or "", "empcode": vals[9] or "",
            "compcode": vals[10] or "", "comments": vals[11] or "",
            "paycode": vals[12] or "", "paytype": vals[13] or "",
            "amtcr": float(vals[14] or 0), "amtdr": float(vals[15] or 0),
            "tipamt": float(vals[16] or 0),
            "roomcat": vals[17] or "", "roomtype": vals[18] or "",
            "roomno": vals[19] or "", "foliono": vals[20] or "",
            "cardno": vals[21] or "", "cardholder": vals[22] or "",
            "chqno": vals[23] or "", "chqdate": vals[24],
            "expdate": vals[25], "bookno": vals[24] or "",
            "booktype": vals[25] or "", "u_name": vals[28] or "",
            "u_ae": vals[30] or "",
        }


def payment_receive_list(docid: str, cn=None) -> list[dict]:
    """List all payment lines for a document."""
    rows = db.query(
        "SELECT DocId, SNo, Vtype, VNo, Site_Code, VPrefix, Vdate, VTime, "
        "GuestProf, EmpCode, CompCode, Comments, PayCode, PayType, "
        "AmtCr, AmtDr, TipAmt, RoomCat, RoomType, RoomNo, FolioNo, "
        "CardNo, CardHolder, ChqNo, ChqDate, ExpDate, BookNo, BookType, "
        "U_Name, U_EntDt, U_AE, RestCode, BillAmount, ContraDocID, "
        "TaxPer, OnAmt, Split, Bill_No, SettleDate, BatchNo, Remarks, "
        "RefNo, PlanCode, SeqNo, RefDocId, LogSite_Code, U_Name, U_EntDt, U_AE "
        "FROM PayCharge WHERE DocId = ? ORDER BY SNo",
        (docid,), cn=cn)
    return [_map_payment(r) for r in cn.cursor().fetchall()]


def payment_receive_get(docid: str, sno: int, cn=None) -> dict | None:
    rows = db.query(
        "SELECT DocId, SNo, Vtype, VNo, Site_Code, VPrefix, Vdate, VTime, "
        "GuestProf, EmpCode, CompCode, Comments, PayCode, PayType, "
        "AmtCr, AmtDr, TipAmt, RoomCat, RoomType, RoomNo, FolioNo, "
        "CardNo, CardHolder, ChqNo, ChqDate, ExpDate, BookNo, BookType, "
        "U_Name, U_EntDt, U_AE, RestCode, BillAmount, ContraDocID, "
        "TaxPer, OnAmt, Split, Bill_No, SettleDate, BatchNo, Remarks, "
        "RefNo, PlanCode, SeqNo, RefDocId, LogSite_Code, U_Name, U_EntDt, U_AE "
        "FROM PayCharge WHERE DocId = ? AND SNo = ?",
        (docid, sno), cn=cn)
    row = db.fetchone()
    return _map_payment(row) if row else None


def payment_receive_insert(rec: dict, cn=None, commit: bool = True) -> int:
    """Insert a payment receipt line (Vtype='REC' for receipt)."""
    sno_rows = db.query(
        "SELECT MAX(SNo) FROM PayCharge WHERE DocId = ?",
        (rec["docid"],), cn=cn)
    sno = (sno_rows[0][0] or 0) + 1 if sno_rows and sno_rows[0][0] else 1

    return db.execute(
        "INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, Site_Code, VPrefix, "
        "Vdate, VTime, GuestProf, EmpCode, CompCode, Comments, PayCode, "
        "PayType, AmtCr, AmtDr, TipAmt, RoomCat, RoomType, RoomNo, FolioNo, "
        "CardNo, CardHolder, ChqNo, ChqDate, ExpDate, BookNo, BookType, "
        "U_Name, U_EntDt, U_AE, RestCode, BillAmount, ContraDocID, "
        "TaxPer, OnAmt, Split, Bill_No, SettleDate, BatchNo, Remarks, "
        "RefNo, PlanCode, SeqNo, RefDocId, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
        "?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?, ?, ?, ?, "
        "?, ?, ?, ?, ?, ?, ?)",
        (rec["docid"], int(rec.get("sno") or 0), rec.get("vtype", "REC"),
         int(rec.get("vno") or 0), SITE_CODE, rec.get("vprefix", ""),
         rec.get("vdate"), rec.get("vtime", ""),
         rec.get("guestprof", ""), rec.get("empcode", ""),
         rec.get("compcode", ""), rec.get("comments", ""),
         rec.get("paycode", ""), rec.get("paytype", ""),
         float(rec.get("amtcr") or 0), float(rec.get("amtdr") or 0),
         float(rec.get("tipamt") or 0),
         rec.get("roomcat", ""), rec.get("roomtype", ""),
         rec.get("roomno", ""), rec.get("foliono", ""),
         rec.get("cardno", ""), rec.get("cardholder", ""),
         rec.get("chqno", ""), rec.get("chqdate"), rec.get("expdate"),
         rec.get("bookno", ""), rec.get("booktype", ""),
         USER, rec.get("restcode", ""),
         float(rec.get("billamount") or 0), rec.get("contradocid", ""),
         float(rec.get("taxper") or 0), float(rec.get("onamt") or 0),
         rec.get("split", ""), rec.get("bill_no", ""),
         rec.get("settledate"), rec.get("batchno", ""),
         rec.get("remarks", ""), rec.get("refno", ""),
         rec.get("plancode", ""), int(rec.get("seqno") or 0),
         rec.get("refdocid", ""), SITE_CODE),
        cn=cn, commit=commit)


def payment_receive_delete(docid: str, cn=None, commit: bool = True) -> int:
    return db.execute("DELETE FROM PayCharge WHERE DocId = ?", (docid,),
                      cn=cn, commit=commit)


# ──────────────────────────────────────────────────────────────────────
# Voucher Type / PayType lookup
# ──────────────────────────────────────────────────────────────────────

def payment_type_list(cn=None) -> list[dict]:
    """Get all payment types from RevMast (VB6 REVMAST where PAYTYPE in payment types)."""
    rows = db.query(
        "SELECT Code, Name, ShortName, PAYTYPE, Type, "
        "U_Name, U_EntDt, U_AE "
        "FROM RevMast WHERE PAYTYPE IN ('Cash', 'Cheque', 'Credit Card', 'Company', 'Room', 'Hold', 'Complementary') ORDER BY Code", cn=cn)
    return [{"code": r[0] or "", "name": r[1] or "",
             "short": r[2] or "", "category": r[3] or "",
             "type": r[4] or "", "u_name": r[5] or "",
             "u_entdt": r[5], "u_ae": r[5] or ""} for r in rows]


def payment_type_get(code: str, cn=None) -> dict | None:
    rows = db.query(
        "SELECT Code, Name, ShortName, PAYTYPE, Type, "
        "U_Name, U_EntDt, U_AE "
        "FROM RevMast WHERE Code = ? AND PAYTYPE IN ('Cash', 'Cheque', 'Credit Card', 'Company', 'Room', 'Hold', 'Complementary')", (code,), cn=cn)
    if not rows:
        return None
    r = rows[0]
    return {"code": r[0] or "", "name": r[1] or "",
            "short": r[2] or "", "category": r[3] or "",
            "type": r[4] or "", "u_name": r[4] or "",
            "u_entdt": r[5], "u_ae": r[5] or ""}


# ──────────────────────────────────────────────────────────────────────
# Employee / Company / Agent / Member lookups
# ──────────────────────────────────────────────────────────────────────

def employee_list(cn=None) -> list[dict]:
    rows = db.query(
        "SELECT Code, Name, Designation, Department, MobileNo, Email "
        "FROM EmpMast WHERE Cancel = 'N' ORDER BY Code", cn=cn)
    return [{"code": r[0] or "", "name": r[1] or "",
             "designation": r[2] or "", "department": r[3] or "",
             "mobile": r[3] or "", "email": r[4] or ""} for r in rows]


def employee_get(code: str, cn=None) -> dict | None:
    rows = db.query(
        "SELECT Code, Name, Designation, Department, MobileNo, Email "
        "FROM EmpMast WHERE Code = ? AND Cancel = 'N'", (code,), cn=cn)
    if not rows:
        return None
    r = rows[0]
    return {"code": r[0] or "", "name": r[1] or "",
            "designation": r[2] or "", "department": r[3] or "",
            "mobile": r[3] or "", "email": r[4] or ""}


def company_list(cn=None) -> list[dict]:
    rows = db.query(
        "SELECT SubCode, Name, CompanyType FROM SubGroup "
        "WHERE CompanyType IN ('Company', 'Agent') AND Cancel = 'N' "
        "ORDER BY Name", cn=cn)
    return [{"code": r[0] or "", "name": r[1] or "",
             "type": r[2] or ""} for r in rows]


def agent_list(cn=None) -> list[dict]:
    rows = db.query(
        "SELECT SubCode, Name FROM SubGroup "
        "WHERE CompanyType = 'Agent' AND Cancel = 'N' ORDER BY Name", cn=cn)
    return [{"code": r[0] or "", "name": r[1] or ""} for r in rows]


def member_list(cn=None) -> list[dict]:
    rows = db.query(
        "SELECT SubCode, Name, MemberCategory, MobileNo "
        "FROM MembershipMast WHERE Cancel = 'N' ORDER BY Name", cn=cn)
    return [{"code": r[0] or "", "name": r[1] or "",
             "category": r[2] or "", "mobile": r[3] or ""} for r in rows]


def paytype_list(cn=None) -> list[dict]:
    rows = db.query(
        "SELECT Code, Name, ShortName FROM RevMast "
        "WHERE Category = 'PayType' ORDER BY Code", cn=cn)
    return [{"code": r[0] or "", "name": r[1] or "",
             "short": r[2] or ""} for r in rows]


def room_list(cn=None) -> list[dict]:
    rows = db.query(
        "SELECT Code, Name, RoomCat, RoomStat FROM RoomMast "
        "WHERE Type = 'RO' AND Cancel = 'N' ORDER BY Code", cn=cn)
    return [{"code": r[0] or "", "name": r[1] or "",
             "cat": r[2] or "", "status": r[3] or ""} for r in rows]


# ──────────────────────────────────────────────────────────────────────
# Core Payment Receive Functions
# ──────────────────────────────────────────────────────────────────────

def payment_receive_create(docid: str, rec: dict, cn=None, commit: bool = True) -> int:
    """Create a new payment receipt document with first line."""
    vtype = "REC"
    vno_rows = db.query(
        "SELECT MAX(VNo) FROM PayCharge WHERE Site_Code = ? AND Vtype = ?",
        (SITE_CODE, "REC"), cn=cn)
    vno = (vno_rows[0][0] or 0) + 1 if vno_rows and vno_rows[0][0] else 1

    # Create DocId: D + Site + REC + Year + VNo (21 chars)
    docid = f"D{SITE_CODE}REC{datetime.now().year}{str(vno).rjust(8)}"

    db.execute(
        "INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, Site_Code, VPrefix, "
        "Vdate, VTime, GuestProf, EmpCode, CompCode, Comments, PayCode, "
        "PayType, AmtCr, AmtDr, TipAmt, RoomCat, RoomType, RoomNo, FolioNo, "
        "CardNo, CardHolder, ChqNo, ChqDate, ExpDate, BookNo, BookType, "
        "U_Name, U_EntDt, U_AE, RestCode, BillAmount, ContraDocID, "
        "TaxPer, OnAmt, Split, Bill_No, SettleDate, BatchNo, Remarks, "
        "RefNo, PlanCode, SeqNo, RefDocId, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
        "?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?, ?, ?, ?, "
        "?, ?, ?, ?, ?, ?, ?)",
        (docid, 1, "REC", 1, SITE_CODE, str(datetime.now().year),
         date.today(), datetime.now().strftime("%H:%M"),
         "", "", "", "", "", "REC", "REC",
         0.0, 0.0, 0.0, "", "", "", "",
         USER, "", 0.0, "",
         0.0, 0.0, "", "",
         datetime.now(), "", "", "", SITE_CODE),
        cn=None, commit=commit)

    # Add first line
    return 1


def payment_receive_add_line(docid: str, rec: dict, cn=None, commit: bool = True) -> int:
    """Add a payment line to existing document."""
    sno_rows = db.query(
        "SELECT MAX(SNo) FROM PayCharge WHERE DocId = ?",
        (docid,), cn=cn)
    sno = (sno_rows[0][0] or 0) + 1 if sno_rows and sno_rows[0][0] else 1

    return db.execute(
        "INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, Site_Code, VPrefix, "
        "Vdate, VTime, GuestProf, EmpCode, CompCode, Comments, PayCode, "
        "PayType, AmtCr, AmtDr, TipAmt, RoomCat, RoomType, RoomNo, FolioNo, "
        "CardNo, CardHolder, ChqNo, ChqDate, ExpDate, BookNo, BookType, "
        "U_Name, U_EntDt, U_AE, RestCode, BillAmount, ContraDocID, "
        "TaxPer, OnAmt, Split, Bill_No, SettleDate, BatchNo, Remarks, "
        "RefNo, PlanCode, SeqNo, RefDocId, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
        "?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?, ?, ?, ?, "
        "?, ?, ?, ?, ?, ?, ?)",
        (rec["docid"], int(rec.get("sno") or 0), rec.get("vtype", "REC"),
         int(rec.get("vno") or 0), SITE_CODE, rec.get("vprefix", ""),
         rec.get("vdate"), rec.get("vtime", ""),
         rec.get("guestprof", ""), rec.get("empcode", ""),
         rec.get("compcode", ""), rec.get("comments", ""),
         rec.get("paycode", ""), rec.get("paytype", ""),
         float(rec.get("amtcr") or 0), float(rec.get("amtdr") or 0),
         float(rec.get("tipamt") or 0),
         rec.get("roomcat", ""), rec.get("roomtype", ""),
         rec.get("roomno", ""), rec.get("foliono", ""),
         rec.get("cardno", ""), rec.get("cardholder", ""),
         rec.get("chqno", ""), rec.get("chqdate"), rec.get("expdate"),
         rec.get("bookno", ""), rec.get("booktype", ""),
         USER, rec.get("restcode", ""),
         float(rec.get("billamount") or 0), rec.get("contradocid", ""),
         float(rec.get("taxper") or 0), float(rec.get("onamt") or 0),
         rec.get("split", ""), rec.get("bill_no", ""),
         rec.get("settledate"), rec.get("batchno", ""),
         rec.get("remarks", ""), rec.get("refno", ""),
         rec.get("plancode", ""), int(rec.get("seqno") or 0),
         rec.get("refdocid", ""), SITE_CODE),
        cn=cn, commit=commit)


def payment_receive_total(docid: str, cn=None) -> dict:
    """Get total credit/debit for a payment receipt."""
    rows = db.query(
        "SELECT SUM(AmtCr) as total_cr, SUM(AmtDr) as total_dr "
        "FROM PayCharge WHERE DocId = ?", (docid,), cn=cn)
    if rows and rows[0]:
        return {"total_cr": float(rows[0][0] or 0),
                "total_dr": float(rows[0][1] or 0)}
    return {"total_cr": 0.0, "total_dr": 0.0}