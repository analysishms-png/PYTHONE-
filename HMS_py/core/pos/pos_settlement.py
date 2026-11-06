"""POS Settlement / Night Audit Posting (VB6: fdNDAcPostChrg.frm, fdAcPostChrg.frm).

Tables (live schema):
- PayCharge: DocId, SNo, Vtype, VNo, Vdate, VTime, Site_Code, VPrefix, GuestProf, 
  EmpCode, CompCode, Comments, PayCode, PayType, AmtCr, AmtDr, TipAmt, RoomCat,
  RoomType, RoomNo, FolioNo, CardNo, CardHolder, ChqNo, ChqDate, ExpDate, BookNo,
  BookType, U_Name, U_EntDt, U_AE, RestCode, BillAmount, ContraDocID, TaxPer, OnAmt,
  Split, Bill_No, MarkEntry, ModeSet, SettleDate, BatchNo, OldBill_No, PlanCharge,
  FixedChargeCode, RelatedFolioNo, FolioNoDocid, LogSite_Code, RefNo, PlanCode,
  SeqNo, RelatedFolionoDocId, RefDocId, Remarks, AU_Name, AU_EntDt, TaxCondAmt,
  TaxStru, AgAc, TxnNo

VB6 Forms:
- fdNDAcPostChrg.frm: Posting Utility (Main settlement entry)
- fdAcPostChrg.frm: Night Audit Process (Network-based terminal lock/unlock)
"""

from __future__ import annotations

import datetime
from typing import Optional

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()


def _map_paycharge(r) -> dict:
    """Map PayCharge row to dict."""
    try:
        return {
            "docid": r.DocId or "",
            "sno": int(r.SNo or 0),
            "vtype": r.Vtype or "",
            "vno": int(r.VNo or 0),
            "site_code": r.Site_Code or "",
            "vprefix": r.VPrefix or "",
            "vdate": r.Vdate,
            "vtime": r.VTime or "",
            "guestprof": r.GuestProf or "",
            "empcode": r.EmpCode or "",
            "compcode": r.CompCode or "",
            "comments": r.Comments or "",
            "paycode": r.PayCode or "",
            "paytype": r.PayType or "",
            "amtcr": float(r.AmtCr or 0),
            "amtdr": float(r.AmtDr or 0),
            "tipamt": float(r.TipAmt or 0),
            "roomcat": r.RoomCat or "",
            "roomtype": r.RoomType or "",
            "roomno": r.RoomNo or "",
            "foliono": r.FolioNo or "",
            "cardno": r.CardNo or "",
            "cardholder": r.CardHolder or "",
            "chqno": r.ChqNo or "",
            "chqdate": r.ChqDate,
            "expdate": r.ExpDate,
            "bookno": r.BookNo or "",
            "booktype": r.BookType or "",
            "u_name": r.U_Name or "",
            "u_entdt": r.U_EntDt,
            "u_ae": r.U_AE or "",
            "restcode": r.RestCode or "",
            "billamount": float(r.BillAmount or 0),
            "contradocid": r.ContraDocID or "",
            "taxper": float(r.TaxPer or 0),
            "onamt": float(r.OnAmt or 0),
            "split": r.Split or "",
            "bill_no": r.Bill_No or "",
            "markentry": r.MarkEntry or "",
            "modeset": r.ModeSet or "",
            "settledate": r.SettleDate,
            "batchno": r.BatchNo or "",
            "oldbill_no": r.OldBill_No or "",
            "plancharge": r.PlanCharge or "",
            "fixedchargecode": r.FixedChargeCode or "",
            "relatedfoliono": r.RelatedFolioNo or "",
            "folionodocid": r.FolioNoDocid or "",
            "logsite_code": r.LogSite_Code or "",
            "refno": r.RefNo or "",
            "plancode": r.PlanCode or "",
            "seqno": int(r.SeqNo or 0),
            "relatedfolionodocid": r.RelatedFolionoDocId or "",
            "refdocid": r.RefDocId or "",
            "remarks": r.Remarks or "",
            "au_name": r.AU_Name or "",
            "au_entdt": r.AU_EntDt,
            "taxcondamt": float(r.TaxCondAmt or 0),
            "taxstru": r.TaxStru or "",
            "agac": r.AgAc or "",
            "txnno": r.TxnNo or "",
        }
    except AttributeError:
        # Fallback for pyodbc rows
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
            "tipamt": float(vals[16] or 0), "roomcat": vals[17] or "",
            "roomtype": vals[18] or "", "roomno": vals[19] or "",
            "foliono": vals[20] or "", "cardno": vals[21] or "",
            "cardholder": vals[22] or "", "chqno": vals[23] or "",
            "chqdate": vals[24], "expdate": vals[25],
            "bookno": vals[26] or "", "booktype": vals[27] or "",
            "u_name": vals[28] or "", "u_entdt": vals[29],
            "u_ae": vals[30] or "", "restcode": vals[31] or "",
            "billamount": float(vals[32] or 0), "contradocid": vals[33] or "",
            "taxper": float(vals[34] or 0), "onamt": float(vals[35] or 0),
            "split": vals[36] or "", "bill_no": vals[37] or "",
            "markentry": vals[38] or "", "modeset": vals[39] or "",
            "settledate": vals[40], "batchno": vals[41] or "",
            "oldbill_no": vals[42] or "", "plancharge": vals[43] or "",
            "fixedchargecode": vals[44] or "", "relatedfoliono": vals[45] or "",
            "folionodocid": vals[46] or "", "logsite_code": vals[47] or "",
            "refno": vals[48] or "", "plancode": vals[49] or "",
            "seqno": int(vals[50] or 0), "relatedfolionodocid": vals[51] or "",
            "refdocid": vals[52] or "", "remarks": vals[53] or "",
            "au_name": vals[54] or "", "au_entdt": vals[55],
            "taxcondamt": float(vals[56] or 0), "taxstru": vals[57] or "",
            "agac": vals[58] or "", "txnno": vals[59] or "",
        }


def get_unsettled_paycharges(
    cn=None,
    site: str = SITE_CODE,
    from_date: Optional[datetime.date] = None,
    to_date: Optional[datetime.date] = None
) -> list[dict]:
    """Get unsettled paycharges (Bill_No IS NULL OR Bill_No = '').
    
    VB6 Query: Select Distinct Bill_no, SettleDate, FolioNo from PayCharge 
    where Bill_No is Not NULL and Bill_No <>'' and SettleDate<=date order by SettleDate
    """
    where = ["(LogSite_Code = ? OR LogSite_Code = 'HO')"]
    params = [site]
    
    if from_date:
        where.append("SettleDate >= ?")
        params.append(from_date)
    if to_date:
        where.append("SettleDate <= ?")
        params.append(to_date)
    
    # VB6 filters for settled bills (has Bill_No), we want unsettled
    # But VB6 query shows settled bills... let me check both
    where.append("(Bill_No IS NULL OR Bill_No = '')")
    
    sql = (
        "SELECT DocId, SNo, Vtype, VNo, Vdate, VTime, Site_Code, VPrefix, "
        "GuestProf, EmpCode, CompCode, Comments, PayCode, PayType, AmtCr, AmtDr, "
        "TipAmt, RoomCat, RoomType, RoomNo, FolioNo, CardNo, CardHolder, ChqNo, "
        "ChqDate, ExpDate, BookNo, BookType, U_Name, U_EntDt, U_AE, RestCode, "
        "BillAmount, ContraDocID, TaxPer, OnAmt, Split, Bill_No, MarkEntry, ModeSet, "
        "SettleDate, BatchNo, OldBill_No, PlanCharge, FixedChargeCode, RelatedFolioNo, "
        "FolioNoDocid, LogSite_Code, RefNo, PlanCode, SeqNo, RelatedFolionoDocId, "
        "RefDocId, Remarks, AU_Name, AU_EntDt, TaxCondAmt, TaxStru, AgAc, TxnNo "
        f"FROM PayCharge WHERE {' AND '.join(where)} ORDER BY SettleDate DESC, DocId DESC"
    )
    
    rows = db.query(sql, tuple(params), cn=cn)
    return [_map_paycharge(r) for r in rows]


def get_settled_paycharges(
    cn=None,
    site: str = SITE_CODE,
    from_date: Optional[datetime.date] = None,
    to_date: Optional[datetime.date] = None
) -> list[dict]:
    """Get settled paycharges (Bill_No IS NOT NULL AND Bill_No <> '')."""
    where = ["(LogSite_Code = ? OR LogSite_Code = 'HO')"]
    params = [site]
    
    if from_date:
        where.append("SettleDate >= ?")
        params.append(from_date)
    if to_date:
        where.append("SettleDate <= ?")
        params.append(to_date)
    
    where.append("Bill_No IS NOT NULL AND Bill_No <> ''")
    
    sql = (
        "SELECT DocId, SNo, Vtype, VNo, Vdate, VTime, Site_Code, VPrefix, "
        "GuestProf, EmpCode, CompCode, Comments, PayCode, PayType, AmtCr, AmtDr, "
        "TipAmt, RoomCat, RoomType, RoomNo, FolioNo, CardNo, CardHolder, ChqNo, "
        "ChqDate, ExpDate, BookNo, BookType, U_Name, U_EntDt, U_AE, RestCode, "
        "BillAmount, ContraDocID, TaxPer, OnAmt, Split, Bill_No, MarkEntry, ModeSet, "
        "SettleDate, BatchNo, OldBill_No, PlanCharge, FixedChargeCode, RelatedFolioNo, "
        "FolioNoDocid, LogSite_Code, RefNo, PlanCode, SeqNo, RelatedFolionoDocId, "
        "RefDocId, Remarks, AU_Name, AU_EntDt, TaxCondAmt, TaxStru, AgAc, TxnNo "
        f"FROM PayCharge WHERE {' AND '.join(where)} ORDER BY SettleDate DESC, DocId DESC"
    )
    
    rows = db.query(sql, tuple(params), cn=cn)
    return [_map_paycharge(r) for r in rows]


def get_paycharge_summary_by_date(
    cn=None,
    site: str = SITE_CODE,
    from_date: Optional[datetime.date] = None,
    to_date: Optional[datetime.date] = None
) -> list[dict]:
    """Get summary of paycharges grouped by settle date."""
    where = ["(LogSite_Code = ? OR LogSite_Code = 'HO')"]
    params = [site]
    
    if from_date:
        where.append("SettleDate >= ?")
        params.append(from_date)
    if to_date:
        where.append("SettleDate <= ?")
        params.append(to_date)
    
    sql = (
        "SELECT SettleDate, COUNT(*) as cnt, "
        "SUM(CASE WHEN Bill_No IS NULL OR Bill_No = '' THEN 1 ELSE 0 END) as unsettled, "
        "SUM(CASE WHEN Bill_No IS NOT NULL AND Bill_No <> '' THEN 1 ELSE 0 END) as settled, "
        "SUM(AMTDR) as total_dr, SUM(AMTCR) as total_cr "
        f"FROM PayCharge WHERE {' AND '.join(where)} "
        "GROUP BY SettleDate ORDER BY SettleDate DESC"
    )
    
    rows = db.query(sql, tuple(params), cn=cn)
    return [
        {
            "settledate": r[0],
            "total_count": int(r[1] or 0),
            "unsettled_count": int(r[2] or 0),
            "settled_count": int(r[3] or 0),
            "total_dr": float(r[4] or 0),
            "total_cr": float(r[5] or 0),
        }
        for r in rows
    ]


def post_charges_for_date(
    posting_date: datetime.date,
    bill_prefix: str = "BB",
    cn=None,
    commit: bool = True,
    site: str = SITE_CODE,
    user: str = USER
) -> dict:
    """Post charges for a specific date (Night Audit / Daily Posting).
    
    This mimics VB6 Proc_96_14_1F81C7C - generates bill numbers for unsettled charges.
    
    Returns: {"posted_count": int, "bill_no": str}
    """
    # Get next bill number
    bill_no = _get_next_bill_no(bill_prefix, posting_date, cn)
    
    own = cn is None
    cn = cn or db.connect()
    try:
        # Update unsettled charges for this date with the bill number
        result = db.execute(
            "UPDATE PayCharge SET Bill_No = ?, SettleDate = ?, U_Name = ?, U_EntDt = ?, U_AE = 'A' "
            "WHERE SettleDate = ? AND (Bill_No IS NULL OR Bill_No = '') "
            "AND (LogSite_Code = ? OR LogSite_Code = 'HO')",
            (bill_no, posting_date, user, datetime.datetime.now(), posting_date, site),
            cn=cn, commit=False
        )
        
        if commit:
            cn.commit()
        
        return {"posted_count": result, "bill_no": bill_no}
    except Exception:
        try:
            cn.rollback()
        except Exception:
            pass
        raise
    finally:
        if own:
            cn.close()


def _get_next_bill_no(prefix: str, date: datetime.date, cn=None) -> str:
    """Get next bill number for prefix and date."""
    # Format: BB + YYMMDD + sequential
    # e.g., BB2404050001
    date_str = date.strftime("%y%m%d")
    search_prefix = f"{prefix}{date_str}"
    
    rows = db.query(
        "SELECT MAX(Bill_No) FROM PayCharge WHERE Bill_No LIKE ?",
        (f"{search_prefix}%",), cn=cn
    )
    
    max_bill = rows[0][0] if rows and rows[0][0] else ""
    if max_bill and max_bill.startswith(search_prefix):
        try:
            seq = int(max_bill[len(search_prefix):]) + 1
        except ValueError:
            seq = 1
    else:
        seq = 1
    
    return f"{search_prefix}{seq:04d}"


def get_posting_types(cn=None, site: str = SITE_CODE) -> list[dict]:
    """Get posting types from Enviro table."""
    rows = db.query(
        "SELECT PostingType FROM Enviro WHERE (LogSite_Code = ? OR LogSite_Code = 'HO')",
        (site,), cn=cn
    )
    return [{"posting_type": r[0] or ""} for r in rows]


def lock_terminal(terminal_ip: str, lock_type: str = "LockMessage") -> bool:
    """Lock/unlock a remote terminal (VB6 fdAcPostChrg.frm socket logic).
    
    This is a placeholder for the socket-based terminal locking.
    In production, this would communicate with the terminal service.
    """
    # TODO: Implement actual socket communication
    # VB6 uses Winsock control on port 8004/8005
    return True


# ──────────────────────────────────────────────────────────────────────
# Night Audit / Batch Posting (VB6: fdAcPostChrg.frm)
# ──────────────────────────────────────────────────────────────────────

def get_active_terminals(cn=None, site: str = SITE_CODE) -> list[dict]:
    """Get list of active terminals for night audit."""
    rows = db.query(
        "SELECT RTRIM(Code), RTRIM(Name) FROM TerminalMaster "
        "WHERE Active = 1 AND (LogSite_Code = ? OR LogSite_Code = 'HO') "
        "ORDER BY Code", (site,), cn=cn)
    return [{"code": r[0] or "", "name": r[1] or ""} for r in rows]


def run_night_audit(
    posting_date: datetime.date,
    terminal_ips: list[str],
    lock_all: bool = False,
    cn=None,
    commit: bool = True,
    site: str = SITE_CODE,
    user: str = USER
) -> dict:
    """Run night audit process for multiple terminals.
    
    VB6 fdAcPostChrg.frm: Locks terminals, posts charges, unlocks terminals.
    """
    results = {"posted": 0, "bill_no": "", "terminals": []}
    
    # Lock terminals if requested
    if lock_all:
        for ip in terminal_ips:
            locked = lock_terminal(ip, "LockAll")
            results["terminals"].append({"ip": ip, "locked": locked})
    
    # Post charges
    post_result = post_charges_for_date(posting_date, cn=cn, commit=commit)
    results["posted"] = post_result["posted_count"]
    results["bill_no"] = post_result["bill_no"]
    
    # Unlock terminals
    if lock_all:
        for ip in terminal_ips:
            unlocked = lock_terminal(ip, "UnlockAll")
            results["terminals"][-1]["unlocked"] = unlocked
    
    return results