"""Folio core (P4-b): settle/checkout + FolioLog viewer + amend (room-move).

EVIDENCE (live):
- FOMBillDetails 14 cols; Bill_No varchar but numeric ('99'..'330') ->
  next BillNo = MAX(Cast(Bill_No As Int)) + 1. FolioNoDocid = GuestFolio.DocId
  link. Sample: ('328', 2026-06-01, 463, 'SUMIT TOMAR', 0.0, ' ', 'SETTLE',...).
- SettMode sample ' ' (empty) — VB6 me cash/card type; hum '' default
  (evidence-first, guess nahi).
- FolioLog 8 cols (BookingLog pattern): Max(Id)+1 per LogSite_Code.
- GuestFolioAmend 12 cols: FolioNo, Site_Code, GuestProf, RoomNo,
  OldDepDate, OldDepTime, DepDate, DepTime, U_Name, U_EntDt, U_AE,
  LogSite_Code (sample row: OldDepDate -> DepDate shift by Deepak/SA).
- PYT-guard: sirf PYT* folio settle/delete honge UI/tests se.
"""
from __future__ import annotations

import datetime

from HMS_py.core import db
from HMS_py.core.front_office import checkin as checkin_mod

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()
VPREFIX = "2026"


def next_billno(cn=None) -> int:
    rows = db.query(
        "SELECT MAX(Cast(Bill_No As Int)) FROM FOMBillDetails "
        "WHERE LogSite_Code = ?", (SITE_CODE,), cn=cn)
    return (rows[0][0] or 0) + 1 if rows and rows[0][0] else 1


def folio_charges(folio: int, cn=None, vprefix: str = VPREFIX) -> list:
    """Ek folio ki charges (PayCharge, folio-linked)."""
    rows = db.query(
        "SELECT SNo, PayCode, PayType, Comments, AmtDr, AmtCr, Vdate "
        "FROM PayCharge WHERE Site_Code = ? AND VPrefix = ? AND FolioNo = ? "
        "ORDER BY SNo", (SITE_CODE, vprefix, folio), cn=cn)
    return [{"sno": r.SNo, "paycode": r.PayCode or "",
             "paytype": (r.PayType or "").strip(),
             "comments": (r.Comments or "").strip(),
             "dr": r.AmtDr or 0.0, "cr": r.AmtCr or 0.0,
             "vdate": r.Vdate} for r in rows]


def _resolve_folio(site: str, folio: int, vprefix: str, cn=None):
    """Exact FY match first, then same-site folio fallback across other years.
    This preserves the production safety check when a live folio exists under a
    different fiscal year but the default 2026 prefix is in use.
    """
    rows = db.query(
        "SELECT TOP 1 DocId, Name, GuestProf, Vprefix FROM GuestFolio WHERE "
        "Site_Code = ? AND Vprefix = ? AND FolioNo = ?",
        (site, vprefix, folio), cn=cn)
    if rows:
        return rows[0]
    rows = db.query(
        "SELECT TOP 1 DocId, Name, GuestProf, Vprefix FROM GuestFolio WHERE "
        "Site_Code = ? AND FolioNo = ? ORDER BY Vprefix DESC",
        (site, folio), cn=cn)
    return rows[0] if rows else None


def folio_balance(folio: int, cn=None, vprefix: str = VPREFIX) -> float:
    """Balance = SUM(Dr - Cr)."""
    rows = db.query(
        "SELECT SUM(AmtDr - AmtCr) FROM PayCharge WHERE Site_Code = ? AND "
        "VPrefix = ? AND FolioNo = ?", (SITE_CODE, vprefix, folio), cn=cn)
    return float(rows[0][0] or 0.0)


def _get_settle_mode(cn=None) -> str:
    """Enviro.Checkout padho: 'Strict' = settle pe non-zero block,
    'Standard' = non-zero allow (VB6 settle-mode semantics).

    Unreadable/missing/empty -> 'Strict' (hard-block; safe default).
    Evidence: live Enviro.Checkout='Standard'; moondata.sql default ''."""
    try:
        rows = db.query(
            "SELECT [Checkout] FROM Enviro WHERE LogSite_Code = ? OR "
            "LogSite_Code = 'HO'", (SITE_CODE,), cn=cn)
    except db.pyodbc.Error as e:
        if "207" in str(e) or "Invalid column name" in str(e):
            return "Strict"
        raise
    if not rows or rows[0][0] in (None, ""):
        return "Strict"
    return str(rows[0][0]).strip() or "Strict"


def settle_folio(folio: int, user: str = USER, cn=None, commit: bool = True,
                 site: str = SITE_CODE, vprefix: str = VPREFIX,
                 sett_mode: str = "Cash") -> int:
    """Check-out settle (VB6 FOMBillDetails INSERT pattern):
    Bill_No = MAX+1, Status='SETTLE', FolioNoDocid = GuestFolio.DocId.

    Settle mode (FO gap): Enviro.Checkout='Strict' -> balance MUST be
    zero; 'Standard' -> non-zero allow. Unreadable/empty -> Strict
    (hard-block; _get_settle_mode default)."""
    rows = db.query(
        "SELECT DocId, Name FROM GuestFolio WHERE Site_Code = ? AND "
        "Vprefix = ? AND FolioNo = ?", (site, vprefix, folio), cn=cn)
    if not rows:
        raise ValueError(f"Folio #{folio} nahi mila")
    if not str(rows[0][1] or "").upper().startswith("PYT"):
        raise ValueError(
            "Safety: sirf PYT* folio settle honge (production VB6 EXE se)")
    already = db.query(
        "SELECT 1 FROM FOMBillDetails WHERE FolioNoDocid = ? AND "
        "Status = 'SETTLE'", (rows[0][0],), cn=cn)
    if already:
        raise ValueError(f"Folio #{folio} pehle se settled hai")
    # Settle mode: Strict blocks non-zero; Standard allows (VB6 rule)
    mode = _get_settle_mode(cn=cn)
    bal = folio_balance(folio, cn=cn, vprefix=vprefix)
    if mode != "Standard" and abs(bal) > 0.005:
        raise ValueError(
            f"Folio #{folio} balance {bal:.2f} hai "
            f"(settle mode '{mode}' zero balance require karta hai)")
    own = cn is None
    cn = cn or db.connect()
    try:
        billno = next_billno(cn=cn)
        arows = db.query(
            "SELECT ISNULL(SUM(AmtDr), 0), ISNULL(SUM(AmtCr), 0) "
            "FROM PayCharge WHERE Site_Code = ? AND VPrefix = ? AND "
            "FolioNo = ?", (site, vprefix, folio), cn=cn)
        bill_amt = float(arows[0][0] or 0.0) if arows else 0.0
        sett_amt = float(arows[0][1] or 0.0) if arows else 0.0
        db.execute(
            "INSERT INTO FOMBillDetails (Bill_No, Bill_Date, FolioNo, "
            "Guestname, BillAmt, SettMode, SettAmt, Status, U_Name, "
            "SiteCode, U_EntDt, U_AE, FolioNoDocid, LogSite_Code) "
            "VALUES (?, getdate(), ?, ?, ?, ?, ?, 'SETTLE', ?, ?, "
            "getdate(), 'A', ?, ?)",
            (str(billno), folio, rows[0][1], bill_amt, sett_mode, sett_amt,
             user, site, rows[0][0], site), cn=cn, commit=False)
        db.execute(
            "UPDATE PayCharge SET Bill_No = ?, SettleDate = getdate() "
            "WHERE Site_Code = ? AND VPrefix = ? AND FolioNo = ? AND "
            "Vtype NOT IN ('ARRES', 'ADRES')",
            (str(billno), site, vprefix, folio), cn=cn, commit=False)
        _log(rows[0][0], "S", user, cn, site)
        if commit:
            cn.commit()
        return billno
    finally:
        if own:
            cn.close()


def _log(docid: str, flag: str, user: str, cn, site: str = SITE_CODE):
    rows = db.query("SELECT MAX(Id) FROM FolioLog WHERE LogSite_Code = ?",
                    (site,), cn=cn)
    logid = (rows[0][0] or 0) + 1 if rows and rows[0][0] else 1
    db.execute(
        "INSERT INTO FolioLog (Id, FolionoDocid, Flag, Site_Code, "
        "U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, getdate(), ?, ?)",
        (logid, docid, flag, site, user, "A", site), cn=cn, commit=False)


# --------------------------------------------------------------- P4-c:
# VB6 missing logic #1: room-charge posting (folio pe charge lagana).
# EVIDENCE (HMS.bas:90023 31-col INSERT + live folio #462):
#   DocId 'DKKRC    2026  <VNo:8>'  (Vtype='RC') | VNo = MAX(VNo)+1 per
#   FY-RC series (live: 599 @ folio 462) | SNo = MAX(SNo)+1 us folio me |
#   KKRMCH=Room, KKCGSS=CGST5%, KKSGSS=SGST5% | AmtDr=charge, AmtCr=receipt.
PAY_CODE = "KKRMCH"
CGST_CODE = "KKCGSS"
SGST_CODE = "KKSGSS"
GST_RATE = 0.05  # live #462: 3000 -> 75 + 75
VTYPE_RC = "RC"  # live census: Vtype 'RC   ' 1350 rows, VNo max 602


def post_room_charge(folio: int, amount: float, roomno: str = "",
                     paycode: str = PAY_CODE, user: str = USER,
                     cn=None, commit: bool = True, site: str = SITE_CODE,
                     vprefix: str = VPREFIX,
                     with_gst: bool = True) -> int:
    """Room charge post (VB6 FoGuestFolio charge-entry, HMS.bas:90023
    31-col INSERT pattern): PayCharge row + FolioLog 'P'.
    GST: amount*5% CGST + amount*5% SGST (live #462 evidence) - sirf
    KKRMCH (room charge) pe, ek baar me teen rows banti hain."""
    rows = db.query(
        "SELECT DocId, Name, GuestProf FROM GuestFolio WHERE Site_Code = ? AND "
        "Vprefix = ? AND FolioNo = ?", (site, vprefix, folio), cn=cn)
    if not rows:
        raise ValueError(f"Folio #{folio} nahi mila")
    if not str(rows[0][1] or "").upper().startswith("PYT"):
        raise ValueError("Safety: sirf PYT* folio pe charge post hoga")
    if amount <= 0:
        raise ValueError("Amount > 0 hona chahiye")
    own = cn is None
    cn = cn or db.connect()
    try:
        # BUG-015: race-safe VNo (UPDLOCK/HOLDLOCK) - concurrent posts ko
        # same number nahi milega. Same cn: lock INSERT commit tak hold.
        vno = db.next_vno("PayCharge", "RC", vprefix, site=site, cn=cn)
        srows = db.query(
            "SELECT MAX(SNo) FROM PayCharge WHERE FolioNo = ? AND "
            "Site_Code = ?", (folio, site), cn=cn)
        base_sno = (srows[0][0] or 0) if srows and srows[0][0] else 0
        today = datetime.date.today()

        def _pc(sno, paycode, amt):
            # FolioNoDocid = GuestFolio.DocId link (live pattern: production
            # RC/REC rows carry the folio link; VB6 fdPaymentCharge INSERT).
            # Use GuestProf code (auto-generated KK#######) not guest name.
            # GuestProf column is varchar(8) - use actual code from GuestFolio
            guestprof_code = (rows[0][2] or "")[:8]  # GuestProf - max 8 chars
            db.execute(
                "INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, Site_Code, "
                "VPrefix, Vdate, GuestProf, Comments, PayCode, FolioNo, "
                "FolioNoDocid, RoomNo, AmtDr, U_Name, U_EntDt, U_AE, "
                "LogSite_Code) "
                "VALUES (?, ?, 'RC', ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
                "getdate(), 'A', ?)",
                (make_pc_docid(site, vprefix, vno), sno, vno, site,
                 vprefix, today, guestprof_code, "", paycode, folio,
                 rows[0][0], roomno or "", amt, user, site), cn=cn, commit=False)

        _pc(base_sno + 1, paycode, float(amount))
        next_sno = base_sno + 2
        if with_gst and paycode == PAY_CODE:
            gst = round(float(amount) * GST_RATE, 2)
            if gst > 0:
                _pc(next_sno, CGST_CODE, gst)
                next_sno += 1
                _pc(next_sno, SGST_CODE, gst)
        _log(rows[0][0], "P", user, cn, site)
        if commit:
            cn.commit()
        return vno
    finally:
        if own:
            cn.close()


def make_pc_docid(site: str, vprefix: str, vno: int) -> str:
    """'D'+site(2)+'RC'.ljust(6)+year(4).ljust(4)+VNo.rjust(8) = 21 char
    (live sample 'DKKRC    2026     599' byte-exact)."""
    return ("D" + site + "RC".ljust(6) + vprefix.ljust(4) +
            str(vno).rjust(8))


def charges_detail(folio: int, cn=None, site: str = SITE_CODE,
                   vprefix: str = VPREFIX) -> list:
    """Folio ki saari PayCharge rows (UI drill-down ke liye)."""
    rows = db.query(
        "SELECT SNo, RTRIM(PayCode), RTRIM(PayType), AmtDr, AmtCr, Vdate "
        "FROM PayCharge WHERE FolioNo = ? AND Site_Code = ? AND "
        "VPrefix = ? ORDER BY SNo", (folio, site, vprefix), cn=cn)
    # index-access (proven: named attr kisi driver state me fail hota hai)
    return [{"sno": r[0], "paycode": (r[1] or "").strip(),
             "paytype": (r[2] or "").strip(), "dr": r[3] or 0.0,
             "cr": r[4] or 0.0, "vdate": r[5]} for r in rows]


# --------------------------------------------------------------- P4-c:
# VB6 missing logic #2: booking -> check-in conversion (front-office
# 'Check In' from reservation). Live evidence: folio 2361 DocId
# 'DKKCHK   2025    2361' BookingDocId 'DKKRES   2025     103', name
# match, NoDays carry. VB6 flow: booking fields folio me copy hote
# hain aur check-in ban jaata hai (booking cancel NahiN hota).
def from_booking(booking_docid: str, user: str = USER, cn=None,
                 commit: bool = True, site: str = SITE_CODE,
                 vprefix: str = VPREFIX) -> int:
    """Active booking ko check-in folio me convert karo (VB6 front-desk
    conversion): GuestFolio INSERT with BookingDocId link + FolioLog 'A'.
    Guard: booking exist + cancelled nahi + pehle se convert nahi hua +
    PYT* guest (test-safety)."""
    brows = db.query(
        "SELECT DocId, RTRIM(GuestName), ArrDate, DepDate, "
        "RTRIM(RoomNo), RTRIM(Cancel) FROM Booking WHERE DocId = ?",
        (booking_docid,), cn=cn)
    if not brows:
        raise ValueError(f"Booking {booking_docid.strip()} nahi mili")
    b = brows[0]
    if (b[5] or "").strip().upper() == "Y":
        raise ValueError("Cancelled booking convert nahi ho sakti")
    already = db.query(
        "SELECT FolioNo FROM GuestFolio WHERE BookingDocId = ?",
        (booking_docid,), cn=cn)
    if already:
        raise ValueError(
            f"Booking pehle se folio #{already[0][0]} me convert ho chuki")
    name = (b[1] or "").strip()
    if not name.upper().startswith("PYT"):
        raise ValueError("Safety: sirf PYT* bookings convert hongi")
    arr = b[2] or datetime.date.today()
    dep = b[3] or (arr + datetime.timedelta(days=1))
    if hasattr(arr, "date"):
        arr = arr.date()
    if hasattr(dep, "date"):
        dep = dep.date()
    own = cn is None
    cn = cn or db.connect()
    try:
        # Ek hi transaction: checkin + FolioLog (create_checkin 'A' log
        # khud likhta hai) — atomic conversion.
        return checkin_mod.create_checkin(
            "", name, arr, dep, bookingdocid=(b[0] or "").strip(),
            user=user, cn=cn, commit=commit, site=site, vprefix=vprefix)
    finally:
        if own:
            cn.close()


def log_list(cn=None, top: int = 200) -> list:
    rows = db.query(
        f"SELECT TOP {int(top)} Id, FolionoDocid, Flag, U_Name, U_EntDt, "
        "U_AE FROM FolioLog WHERE Site_Code = ? ORDER BY Id DESC",
        (SITE_CODE,), cn=cn)
    return [{"id": int(r.Id), "docid": (r.FolionoDocid or "").strip(),
             "flag": r.Flag or "", "user": r.U_Name or "",
             "dt": r.U_EntDt, "ae": r.U_AE or ""} for r in rows]


# ---------------------------------------------------------------------------
# Amend Stay (VB6 fdAmendEntry.frm)
# ---------------------------------------------------------------------------
# VB6 Form_Load grid (fdAmendEntry.frm:772-773) joins RoomMast -> RoomOcc ->
# GuestFolio -> GuestProf -> SubGroup -> RoomCat -> GuestStat and lists every
# occupied room.  The analysis database is not referentially complete (e.g.
# the open RoomOcc row points at a missing GuestProf and RoomCat code), so the
# lookup joins are LEFT joins here: a row with missing master data must still
# be amendable.  Documented deviation from the VB6 INNER JOIN.
_AMEND_GRID_SQL = """
SELECT TOP {limit} rm.Code AS RoomNo, rm.Name AS RoomName,
       ro.ChkInDate, ro.ChkInTime, ro.DepDate, ro.DepTime,
       COALESCE(gp.Name, gf.Name) AS GuestName, gp.GuestStatus,
       sg.Name AS CompanyName,
       gf.GuestProf AS GuestCode, gf.Company AS CompanyCode,
       gf.FolioNo, gf.DocId, gf.Vprefix, gf.Vdate AS FolioDate,
       ro.Site_Code AS RoomSite, gf.Site_Code AS FolioSite,
       ro.RoomNo AS RoomOccRoom, ro.Type AS RoomOccType
FROM RoomMast rm
INNER JOIN RoomOcc ro ON rm.Code = ro.RoomNo
INNER JOIN GuestFolio gf ON ro.DocId = gf.DocId
LEFT JOIN GuestProf gp ON gf.GuestProf = gp.Code
LEFT JOIN SubGroup sg ON gf.Company = sg.SubCode
LEFT JOIN RoomCat rc ON ro.RoomCat = rc.Code
LEFT JOIN GuestStat gs ON gs.Code = gp.GuestStatus
WHERE rm.Type = 'RO'
  AND ISNULL(ro.Type, '') NOT IN ('C', 'O')
  AND ro.ChkOutDate IS NULL
  AND (rm.Code LIKE ? OR gp.Name LIKE ? OR gf.Name LIKE ?
       OR gf.DocId LIKE ? OR CAST(gf.FolioNo AS varchar(20)) = ?)
{site_clause}
ORDER BY rm.Code, ro.ChkOutDate DESC
"""


def amend_targets(term: str = "", cn=None, site: str | None = None,
                  limit: int = 500) -> list[dict]:
    """In-house rooms available for Amend Stay (VB6 fdAmendEntry grid).

    ``site`` is optional: the analysis database keeps RoomMast/RoomOcc under a
    different Site_Code than GuestFolio, so filtering by one site would hide
    every row.  Callers pass ``site=None`` (default) to see all in-house stays.
    """
    like = f"%{(term or '').strip()}%"
    exact = (term or "").strip()
    sql = _AMEND_GRID_SQL.format(
        limit=max(1, int(limit)),
        site_clause="AND ro.Site_Code = ?" if site else "",
    )
    params: list = [like, like, like, like, exact]
    if site:
        params.append(site)
    rows = db.query(sql, tuple(params), cn=cn)
    return [
        {
            "room_no": (r.RoomNo or "").strip(),
            "room_name": (r.RoomName or "").strip(),
            "chkin_date": r.ChkInDate,
            "chkin_time": (r.ChkInTime or "").strip(),
            "dep_date": r.DepDate,
            "dep_time": (r.DepTime or "").strip(),
            "guest_name": (r.GuestName or "").strip(),
            "guest_status": (r.GuestStatus or "").strip(),
            "company": (r.CompanyName or "").strip(),
            "guest_code": (r.GuestCode or "").strip(),
            "company_code": (r.CompanyCode or "").strip(),
            "folio_no": r.FolioNo,
            "docid": (r.DocId or "").strip(),
            "vprefix": (r.Vprefix or "").strip(),
            "folio_date": r.FolioDate,
            "room_site": (r.RoomSite or "").strip(),
            "folio_site": (r.FolioSite or "").strip(),
        }
        for r in rows
    ]


def amend_target(docid: str = "", folio: int | None = None, cn=None,
                 vprefix: str | None = None) -> dict | None:
    """One stay in the shape Amend Stay needs (by DocId first, then FolioNo).

    VB6 always amends by ``GuestFolio.DocId`` (the grid row's tag).  FolioNo is
    only a fallback and is resolved to the newest fiscal year when *vprefix* is
    not supplied, because FolioNo repeats across years.
    """
    docid = (docid or "").strip()
    if docid:
        rows = db.query(
            "SELECT DocId, FolioNo, Vprefix, Vdate, DepDate, GuestProf, Name, "
            "Company, NoDays, Site_Code FROM GuestFolio WHERE DocId = ?",
            (docid,), cn=cn)
    elif folio is not None:
        if vprefix:
            rows = db.query(
                "SELECT DocId, FolioNo, Vprefix, Vdate, DepDate, GuestProf, "
                "Name, Company, NoDays, Site_Code FROM GuestFolio "
                "WHERE FolioNo = ? AND Vprefix = ?",
                (folio, str(vprefix)), cn=cn)
        else:
            rows = db.query(
                "SELECT DocId, FolioNo, Vprefix, Vdate, DepDate, GuestProf, "
                "Name, Company, NoDays, Site_Code FROM GuestFolio "
                "WHERE FolioNo = ? ORDER BY Vdate DESC",
                (folio,), cn=cn)
    else:
        return None
    if not rows:
        return None
    r = rows[0]
    folio_docid = (r.DocId or "").strip()
    folio_site = (r.Site_Code or "").strip()

    occ = db.query(
        "SELECT TOP 1 RoomNo, ChkInDate, ChkInTime, DepDate, DepTime, "
        "ChkOutDate, Type, Site_Code FROM RoomOcc WHERE DocId = ? "
        "ORDER BY CASE WHEN ChkOutDate IS NULL THEN 0 ELSE 1 END, SNo DESC",
        (folio_docid,), cn=cn)
    room_no = room_name = guest_status = company = ""
    chkin_date = chkin_time = dep_date = dep_time = None
    room_site = ""
    if occ:
        o = occ[0]
        room_no = (o.RoomNo or "").strip()
        chkin_date = o.ChkInDate
        chkin_time = (o.ChkInTime or "").strip()
        dep_date = o.DepDate or r.DepDate
        dep_time = (o.DepTime or "").strip()
        room_site = (o.Site_Code or "").strip()
        rm = db.query("SELECT TOP 1 Name FROM RoomMast WHERE Code = ?",
                      (room_no,), cn=cn)
        room_name = (rm[0][0] or "").strip() if rm else ""
    gp = db.query("SELECT TOP 1 Name, GuestStatus FROM GuestProf WHERE Code = ?",
                  ((r.GuestProf or "").strip(),), cn=cn)
    if gp:
        guest_status = (gp[0].GuestStatus or "").strip()
    if (r.Company or "").strip():
        sg = db.query("SELECT TOP 1 Name FROM SubGroup WHERE SubCode = ?",
                      ((r.Company or "").strip(),), cn=cn)
        company = (sg[0][0] or "").strip() if sg else ""

    return {
        "docid": folio_docid,
        "folio_no": r.FolioNo,
        "vprefix": (r.Vprefix or "").strip(),
        "folio_date": r.Vdate,
        "folio_site": folio_site,
        "room_site": room_site,
        "room_no": room_no,
        "room_name": room_name,
        "guest_code": (r.GuestProf or "").strip(),
        "guest_name": (r.Name or "").strip(),
        "guest_status": guest_status,
        "company": company,
        "chkin_date": chkin_date,
        "chkin_time": chkin_time,
        "dep_date": dep_date or r.DepDate,
        "dep_time": dep_time or "12:00",
        "no_days": r.NoDays or 0,
    }


def amend_history(folio: int, site: str | None = None, cn=None,
                  top: int = 50) -> list[dict]:
    """GuestFolioAmend rows for *folio* (newest first)."""
    sql = ("SELECT FolioNo, Site_Code, GuestProf, RoomNo, OldDepDate, "
           "OldDepTime, DepDate, DepTime, U_Name, U_EntDt, U_AE, LogSite_Code "
           "FROM GuestFolioAmend WHERE FolioNo = ?")
    params: list = [folio]
    if site:
        sql += " AND Site_Code = ?"
        params.append(site)
    sql += " ORDER BY U_EntDt DESC"
    return [
        {
            "folio_no": r.FolioNo,
            "site": (r.Site_Code or "").strip(),
            "guest_code": (r.GuestProf or "").strip(),
            "room_no": (r.RoomNo or "").strip(),
            "old_dep_date": r.OldDepDate,
            "old_dep_time": (r.OldDepTime or "").strip(),
            "dep_date": r.DepDate,
            "dep_time": (r.DepTime or "").strip(),
            "user": (r.U_Name or "").strip(),
            "entered": r.U_EntDt,
            "ae": (r.U_AE or "").strip(),
        }
        for r in db.query(sql, tuple(params), cn=cn)
    ]


def _as_date(value) -> datetime.date | None:
    if isinstance(value, datetime.datetime):
        return value.date()
    if isinstance(value, datetime.date):
        return value
    if isinstance(value, str) and value.strip():
        return datetime.date.fromisoformat(value.strip()[:10])
    return None


def _norm_time(value, default: str = "12:00") -> str:
    """'9:5' / '09:05' / '0905' / time -> 'HH:MM' (VB6 DepTime is varchar)."""
    if isinstance(value, datetime.datetime):
        return f"{value:%H:%M}"
    if isinstance(value, datetime.time):
        return f"{value:%H:%M}"
    text = ("" if value is None else str(value)).strip()
    if not text:
        text = default
    if ":" in text:
        head, _, tail = text.partition(":")
        try:
            hh, mm = int(head), int(tail[:2] or 0)
        except ValueError:
            raise ValueError(f"Invalid Time '{value}'")
    else:
        digits = "".join(ch for ch in text if ch.isdigit())
        if len(digits) not in (3, 4):
            raise ValueError(f"Invalid Time '{value}'")
        digits = digits.zfill(4)
        hh, mm = int(digits[:2]), int(digits[2:])
    if not (0 <= hh <= 23 and 0 <= mm <= 59):
        raise ValueError(f"Invalid Time '{value}'")
    return f"{hh:02d}:{mm:02d}"


def amend_stay(docid: str = "", folio: int | None = None, new_dep=None,
               dep_time=None, user: str = USER, cn=None, commit: bool = True,
               site: str | None = None, vprefix: str | None = None,
               allow_live: bool = False) -> dict:
    """Amend a guest's departure (VB6 fdAmendEntry.frm, TopCtrl save).

    VB6 order of operations, all inside one transaction:
      1. Guards: new dep date >= today; new dep date >= check-in date;
         new dep date+time strictly after check-in date+time
         ("Check New Departure Date and Time").
      2. DELETE the previous GuestFolioAmend row for this folio + old date
         + site (fdAmendEntry.frm:1046-1052).
      3. INSERT GuestFolioAmend (FolioNo, Site_Code, GuestProf, RoomNo,
         OldDepDate, OldDepTime, DepDate, DepTime, audit) (:1079-1083).
      4. UPDATE GuestFolio SET DepDate (:1085-1093).
      5. UPDATE RoomOcc SET DepDate, DepTime (:1113-1117).
      6. UPDATE PlanDetails SET NoofDays, matched on the OLD NoofDays
         (:1127-1128).
      7. FolioLog 'M' entry.

    Deviations (documented):
      * GuestFolio.NoDays is also refreshed from Vdate->new DepDate.  VB6
        leaves it stale, which breaks night-audit day counts.
      * PYT* safety guard by default; ``allow_live=True`` (UI asks twice)
        permits a real folio, matching VB6 reach.
    """
    target = amend_target(docid=docid, folio=folio, cn=cn, vprefix=vprefix)
    if not target:
        ref = (docid or "").strip() or f"#{folio}"
        raise ValueError(f"Folio {ref} nahi mila")
    if not allow_live and not target["guest_name"].upper().startswith("PYT"):
        raise ValueError(
            "Safety: sirf PYT* folio amend honge "
            "(production amend ke liye allow_live=True)")

    old_dep = _as_date(target["dep_date"])
    chkin = _as_date(target["chkin_date"]) or _as_date(target["folio_date"])
    new_day = _as_date(new_dep)
    if new_day is None:
        raise ValueError("New Departure Date zaroori hai")
    if old_dep is None:
        raise ValueError("Folio ki current Departure Date missing hai")
    if chkin is None:
        raise ValueError("Folio ki Check-in Date missing hai")

    today = datetime.date.today()
    if new_day < today:
        raise ValueError("Departure Date Can't be Less than Current Date")
    if new_day < chkin:
        raise ValueError("Departure Date Can't be Less than Check in Date")

    old_time = _norm_time(target["dep_time"], "12:00")
    chkin_time = _norm_time(target["chkin_time"], "12:00")
    new_time = _norm_time(dep_time, old_time)
    if (datetime.datetime.combine(new_day, datetime.time(*map(int, new_time.split(":"))))
            <= datetime.datetime.combine(chkin, datetime.time(*map(int, chkin_time.split(":"))))):
        raise ValueError("Check New Departure Date and Time")

    folio_site = target["folio_site"] or (site or SITE_CODE)
    room_site = target["room_site"] or folio_site
    room_no = target["room_no"]
    old_nodays = int(target["no_days"] or 0)
    new_nodays = max((new_day - chkin).days, 1)

    own = cn is None
    cn = cn or db.connect()
    try:
        deleted = db.execute(
            "DELETE FROM GuestFolioAmend WHERE FolioNo = ? AND Site_Code = ? "
            "AND CAST(OldDepDate AS date) = ?",
            (target["folio_no"], folio_site, old_dep), cn=cn, commit=False)
        db.execute(
            "INSERT INTO GuestFolioAmend (FolioNo, Site_Code, GuestProf, "
            "RoomNo, OldDepDate, OldDepTime, DepDate, DepTime, "
            "U_Name, U_EntDt, U_AE, LogSite_Code) "
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
            (target["folio_no"], folio_site, target["guest_code"], room_no,
             old_dep, old_time, new_day, new_time, user, folio_site),
            cn=cn, commit=False)
        folio_rows = db.execute(
            "UPDATE GuestFolio SET DepDate = ?, NoDays = ?, U_Name = ?, "
            "U_EntDt = getdate(), U_AE = 'E' WHERE DocId = ?",
            (new_day, new_nodays, user, target["docid"]), cn=cn, commit=False)
        room_rows = db.execute(
            "UPDATE RoomOcc SET DepDate = ?, DepTime = ?, U_Name = ?, "
            "U_EntDt = getdate(), U_AE = 'E' WHERE DocId = ?",
            (new_day, new_time, user, target["docid"]), cn=cn, commit=False)
        plan_rows = 0
        if room_no:
            plan_rows = db.execute(
                "UPDATE PlanDetails SET NoofDays = ?, U_Name = ?, "
                "U_EntDt = getdate(), U_AE = 'E' "
                "WHERE FolioNo = ? AND Site_Code = ? AND RoomNo = ? "
                "AND DocId = ? AND NoofDays = ?",
                (new_nodays, user, target["folio_no"], folio_site, room_no,
                 target["docid"], old_nodays), cn=cn, commit=False)
        _log(target["docid"], "M", user, cn, folio_site)
        if commit:
            cn.commit()
        return {
            "docid": target["docid"],
            "folio_no": target["folio_no"],
            "room_no": room_no,
            "old_dep_date": old_dep,
            "old_dep_time": old_time,
            "new_dep_date": new_day,
            "new_dep_time": new_time,
            "no_days": new_nodays,
            "amend_deleted": deleted,
            "folio_rows": folio_rows,
            "room_rows": room_rows,
            "plan_rows": plan_rows,
        }
    except Exception:
        try:
            cn.rollback()
        except Exception:
            pass
        raise
    finally:
        if own:
            cn.close()


def amend_departure(folio: int, new_dep, user: str = USER, cn=None,
                    commit: bool = True, site: str = SITE_CODE,
                    vprefix: str = VPREFIX) -> int:
    """Backward-compatible wrapper: date-only amend by FolioNo."""
    result = amend_stay(folio=folio, new_dep=new_dep, user=user, cn=cn,
                        commit=commit, site=site, vprefix=vprefix)
    return result["folio_rows"]


PAY_TYPES = {  # VB6 fdPaymentCharge combo categories (complete list)
    "KKCASH": "Cash", "KKCRED": "Company", "KKVISA": "Credit Card",
    "KK0006": "Other", "KKCHEQ": "Cheque", "KKSTFF": "Staff",
    "KKMEMB": "Member", "KKROOM": "Room Transfer", "KKVOID": "Void",
}

# VB6 contra entry paycodes (credit card settlements create contra)
CONTRA_PAYCODES = {"KKVISA", "KKCRED", "KK0006"}


def receive_payment(folio: int, amount: float, paycode: str = "KKCASH",
                    comments: str = "CASH RECD.", user: str = USER,
                    cn=None, commit: bool = True, site: str = SITE_CODE,
                    vprefix: str = VPREFIX, cardno: str = "",
                    cardholder: str = "", chqno: str = "", chqdate=None,
                    txnno: str = "", expdate=None, batchno=None,
                    billamount=None, tipamt=0.0, **kwargs) -> int:
    """Payment receive (VB6 fdPaymentCharge.frm:4467 REC 35-col INSERT,
    live #1072 evidence: KKCASH 'CASH RECD.' 11000 + KK0002 'BY UPI' 434):
    AmtCr = payment (credit), FolioNoDocid = checkin DocId link,
    SNo = MAX(SNo)+1 per folio, ModeSet='S', RestCode='KKFOM'.
    Instrument cols: CardNo/CardHolder/ChqNo/ChqDate/TxnNo/ExpDate/
    BatchNo/BillAmount/TipAmt. PYT-guard (safety).
    VB6 extra: contra entry for credit card, credit check for company."""
    row = _resolve_folio(site, folio, vprefix, cn=cn)
    if not row:
        raise ValueError(f"Folio #{folio} nahi mila")
    if not str(row[1] or "").upper().startswith("PYT"):
        raise ValueError(
            "Safety: sirf PYT* folio pe payment receive hoga")
    if amount <= 0:
        raise ValueError("Amount > 0 hona chahiye")
    # VB6 credit check: company payments check AllowCredit/CreditLimit
    if paycode == "KKCRED":
        _check_company_credit(row[2] or "", amount, cn=cn)
    own = cn is None
    cn = cn or db.connect()
    try:
        # BUG-015: race-safe VNo (UPDLOCK/HOLDLOCK)
        vno = db.next_vno("PayCharge", "REC", vprefix, site=site, cn=cn)
        # DocId 'D'+site+'REC'.ljust(6)+year(4).ljust(4)+VNo.rjust(8) = 21
        docid = ("D" + site + "REC".ljust(6) + vprefix.ljust(4) +
                 str(vno).rjust(8))
        # Context cols from RoomOcc
        orows = db.query(
            "SELECT TOP 1 RoomCat, RoomType, RoomNo FROM RoomOcc "
            "WHERE DocId = ?", (row[0],), cn=cn)
        roomcat = (orows[0][0] or "") if orows else ""
        roomtype = (orows[0][1] or "") if orows else ""
        roomno = (orows[0][2] or "") if orows else ""
        paytype = PAY_TYPES.get(paycode)
        if paytype is None:
            raise ValueError(
                f"Unknown paycode '{paycode}' (known: " +
                ", ".join(sorted(PAY_TYPES)) + ")")
        srows = db.query(
            "SELECT MAX(SNo) FROM PayCharge WHERE FolioNo = ? AND "
            "Site_Code = ?", (folio, site), cn=cn)
        base_sno = (srows[0][0] or 0) if srows and srows[0][0] else 0
        today = datetime.date.today()
        if chqdate == "":
            chqdate = None
        if expdate == "":
            expdate = None
        if batchno == "":
            batchno = None
        bill_amt = (float(billamount) if billamount not in (None, "")
                    else float(amount))
        tip_amt = float(tipamt) if tipamt not in (None, "") else 0.0
        db.execute(
            "INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, Site_Code, "
            "VPrefix, Vdate, VTime, GuestProf, Comments, PayCode, PayType, "
            "BillAmount, AmtCr, TipAmt, RoomCat, RoomType, RoomNo, FolioNo, "
            "CardNo, CardHolder, ChqNo, ChqDate, TxnNo, ExpDate, "
            "U_Name, U_EntDt, U_AE, RestCode, ModeSet, BatchNo, "
            "FolioNoDocid, LogSite_Code) "
            "VALUES (?, ?, 'REC', ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
            "?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', 'KKFOM', 'S', ?, "
            "?, ?)",
            (docid, base_sno + 1, vno, site, vprefix, today,
             datetime.datetime.now().strftime("%H:%M"), (row[2] or ""),
             (comments or "CASH RECD."), paycode, paytype, bill_amt,
             float(amount), tip_amt, roomcat, roomtype, roomno, folio,
             (cardno or ""), (cardholder or ""), (chqno or ""), chqdate,
             (txnno or ""), expdate, user, batchno, row[0], site),
            cn=cn, commit=False)
        # VB6 pattern: contra entry for credit card/company payments
        if paycode in CONTRA_PAYCODES:
            _create_contra(docid, amount, site, vprefix, user, cn)
        if commit:
            cn.commit()
        return vno
    finally:
        if own:
            cn.close()


def _check_company_credit(guestprof: str, amount: float, cn=None):
    """VB6 credit check: Subgroup.AllowCredit + CreditLimit validation."""
    rows = db.query(
        "SELECT SG.AllowCredit, SG.CreditLimit FROM SubGroup SG "
        "INNER JOIN GuestProf GP ON GP.Code = ? "
        "WHERE GP.Company = SG.Code", (guestprof,), cn=cn)
    if not rows:
        return  # No company linked = no credit check
    allow = (rows[0][0] or "Y").strip().upper()
    limit = float(rows[0][1] or 0)
    if allow == "N":
        raise ValueError("Credit payment not allowed for this company")
    if limit > 0 and amount > limit:
        raise ValueError(
            f"Amount {amount:.2f} exceeds credit limit {limit:.2f}")


def _create_contra(ref_docid: str, amount: float, site: str,
                   vprefix: str, user: str, cn):
    """VB6 pattern: contra entry for credit card settlements.
    Creates a second PayCharge row with reversed Dr/Cr linked via ContraDocId."""
    vno = db.next_vno("PayCharge", "CONTRA", vprefix, site=site, cn=cn)
    docid = ("D" + site + "CONTRA".ljust(6) + vprefix.ljust(4) +
             str(vno).rjust(8))
    today = datetime.date.today()
    db.execute(
        "INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, Site_Code, "
        "VPrefix, Vdate, GuestProf, Comments, PayCode, AmtDr, "
        "U_Name, U_EntDt, U_AE, ContraDocId, ModeSet, LogSite_Code) "
        "VALUES (?, 1, 'CONTRA', ?, ?, ?, ?, '', 'Contra entry', "
        "'KKCNTR', ?, ?, getdate(), 'A', ?, 'C', ?)",
        (docid, vno, site, vprefix, today, amount, user, ref_docid, site),
        cn=cn, commit=False)


def log_before_delete(docid: str, cn=None, user: str = USER,
                      site: str = SITE_CODE) -> bool:
    """VB6 pattern: copy PayCharge to PayChargeLog before delete (audit trail).
    P12b: VB6 SQL = plain `Select * from PayCharge WHERE DOCID=...` —
    PayChargeLog ke 61 columns PayCharge ke barabar hain; port me jo
    `SELECT *, getdate(), ?` (63 values) tha wo hamesha column-count
    error deta tha. user param API-compat ke liye rakha (VB6 copy me
    stamp nahi hota)."""
    rows = db.query(
        "SELECT 1 FROM PayCharge WHERE DocId = ? AND Site_Code = ?",
        (docid, site), cn=cn)
    if not rows:
        return False
    db.execute(
        "INSERT INTO PayChargeLog SELECT * FROM PayCharge WHERE DocId = ?",
        (docid,), cn=cn, commit=True)
    return True


# ============================================================
# Guest Charges Summary (VB6 fdPrintScreen — ACTION QUEUE port)
# ============================================================
def charges_summary_folios(q: str = "", cn=None, top: int = 100,
                           site: str = SITE_CODE,
                           vprefix: str = VPREFIX) -> list[dict]:
    """Folio browser rows — fdPrintScreen ke search-LEFT-grid ka port.

    VB6 SQL (frm:1619) ka live-DB parity: RoomMast×RoomOcc×GuestFolio×
    GuestProf (+LEFT SubGroup company, +LEFT RoomCat) — GUESTSTAT join
    hata (live DB me GUESTSTAT.Name ka data khali hai), status ke liye
    RoomOcc.ChkOutDate presence use hota hai.
    """
    like = f"%{(q or '').strip()}%"
    rows = db.query(
        f"SELECT TOP {int(top)} "
        "GuestFolio.FolioNo, GuestFolio.Name, ISNULL(SubGroup.Name,'') "
        "AS Company, RoomOcc.DocId, GuestFolio.GuestProf, "
        "GuestProf.Add1 + ' ' + GuestProf.CityName AS Addr, "
        "RoomOcc.ChkInDate, RoomOcc.DepDate, RoomOcc.ChkOutDate "
        "FROM (((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) "
        "INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) "
        "INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) "
        "LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode "
        "WHERE GuestFolio.Site_Code = ? AND GuestFolio.VPrefix = ? "
        "AND (GuestFolio.Name LIKE ? OR CAST(GuestFolio.FolioNo AS varchar(20)) LIKE ? "
        "OR GuestProf.Code LIKE ?) "
        "ORDER BY GuestFolio.FolioNo DESC",
        (site, vprefix, like, like, like), cn=cn)
    return [{"folio": int(r.FolioNo or 0),
             "guest": (r.Name or "").strip(),
             "company": (r.Company or "").strip(),
             "docid": (r.DocId or "").strip(),
             "guestprof": (r.GuestProf or "").strip(),
             "addr": (r.Addr or "").strip(),
             "arr": r.ChkInDate, "dep": r.DepDate,
             "out": r.ChkOutDate} for r in rows]


def charges_summary_detail(foliono: int, cn=None,
                           site: str = SITE_CODE,
                           vprefix: str = VPREFIX) -> dict:
    """Ek folio ka charges summary — fdPrintScreen RIGHT grid port.

    VB6 (frm:1813): per-paycode aggregate — ContraDocId filter sahi
    ('' bhi check hota tha), aur SirName/amounts int-cast fix (VB6 me
    string columns the). Live-DB me AmtDr/AmtCr float hain.
    Returns {folio, guest, rows: [{revname, paycode, dr, cr}], dr, cr, net}
    """
    foliono = int(foliono)
    agg = db.query(
        "SELECT MAX(RevMast.Name) AS RevName, PC.PayCode, "
        "SUM(PC.AmtDr) AS AmtDr, SUM(PC.AmtCr) AS AmtCr "
        "FROM PayCharge PC LEFT JOIN RevMast ON PC.PayCode = RevMast.Code "
        "WHERE (PC.ContraDocId IS NULL OR PC.ContraDocId = '') "
        "AND PC.FolionoDocid = (SELECT TOP 1 DocId FROM GuestFolio "
        "WHERE FolioNo = ? AND Site_Code = ? AND VPrefix = ? "
        "ORDER BY DocId DESC) GROUP BY PC.PayCode",
        (foliono, site, vprefix), cn=cn)
    rows = []
    for r in agg:
        paycode = (r.PayCode or "").strip()
        rows.append({"revname": (r.RevName or paycode or "?").strip(),
                     "paycode": paycode,
                     "dr": float(r.AmtDr or 0.0),
                     "cr": float(r.AmtCr or 0.0)})
    dr = round(sum(x["dr"] for x in rows), 2)
    cr = round(sum(x["cr"] for x in rows), 2)
    head = db.query(
        "SELECT TOP 1 Name, GuestProf FROM GuestFolio "
        "WHERE FolioNo = ? AND Site_Code = ? AND VPrefix = ? "
        "ORDER BY DocId DESC", (foliono, site, vprefix), cn=cn)
    guest = (head[0].Name or "").strip() if head else ""
    return {"folio": foliono, "guest": guest, "rows": rows,
            "dr": dr, "cr": cr, "net": round(cr - dr, 2)}


def list_payments(cn=None, top: int = 200, site: str = SITE_CODE,
                  vprefix: str = VPREFIX) -> list:
    """Recent REC payments (VB6 fdPaymentCharge receipt register)."""
    rows = db.query(
        f"SELECT TOP {int(top)} DocId, VNo, Vdate, GuestProf, Comments, "
        "PayCode, PayType, AmtCr, FolioNo FROM PayCharge WHERE Vtype = 'REC' "
        "AND Site_Code = ? AND VPrefix = ? ORDER BY VNo DESC",
        (site, vprefix), cn=cn)
    return [{"docid": (r.DocId or "").strip(), "vno": int(r.VNo or 0),
             "vdate": r.Vdate, "guestprof": (r.GuestProf or "").strip(),
             "comments": (r.Comments or "").strip(),
             "paycode": (r.PayCode or "").strip(),
             "paytype": (r.PayType or "").strip(), "amt": r.AmtCr or 0.0,
             "folio": int(r.FolioNo or 0)} for r in rows]


def delete_payment(vno: int, user: str = USER, cn=None, commit: bool = True,
                   site: str = SITE_CODE, vprefix: str = VPREFIX) -> int:
    """PYT*-folio REC payment cleanup (test hygiene).
    VB6 pattern: copy to PayChargeLog before delete (audit trail)."""
    rows = db.query(
        "SELECT pc.DocId, gf.Name FROM PayCharge pc LEFT JOIN GuestFolio "
        "gf ON gf.DocId = pc.FolioNoDocid WHERE pc.Vtype = 'REC' AND "
        "pc.VNo = ? AND pc.Site_Code = ? AND pc.VPrefix = ?",
        (vno, site, vprefix), cn=cn)
    if not rows:
        raise ValueError(f"REC payment #{vno} nahi mila")
    if not str(rows[0][1] or "").upper().startswith("PYT"):
        raise ValueError("Safety: sirf PYT folio ka payment delete hoga")
    own = cn is None
    cn = cn or db.connect()
    try:
        # VB6 pattern: log before delete (P12b: VB6-exact Select * copy)
        db.execute(
            "INSERT INTO PayChargeLog SELECT * FROM PayCharge WHERE DocId = ?",
            (rows[0][0],), cn=cn, commit=False)
        n = db.execute(
            "DELETE FROM PayCharge WHERE DocId = ?",
            (rows[0][0],), cn=cn, commit=False)
        # Also delete contra entry if exists
        db.execute(
            "DELETE FROM PayCharge WHERE ContraDocId = ?",
            (rows[0][0],), cn=cn, commit=False)
        if commit:
            cn.commit()
        return n
    finally:
        if own:
            cn.close()


def delete_settle(folio: int, user: str = USER,
                  cn=None, commit: bool = True, site: str = SITE_CODE) -> int:
    """PYT-guarded settle-row cleanup (test hygiene)."""
    rows = db.query(
        "SELECT FolioNoDocid FROM FOMBillDetails WHERE FolioNo = ? AND "
        "SiteCode = ?", (folio, site), cn=cn)
    if not rows:
        raise ValueError(f"Folio #{folio} ka settle-row nahi mila")
    own = cn is None
    cn = cn or db.connect()
    try:
        n = db.execute(
            "DELETE FROM FOMBillDetails WHERE FolioNo = ? AND SiteCode = ? "
            "AND FolioNoDocid = ?",
            (folio, site, rows[0][0]), cn=cn, commit=False)
        db.execute("DELETE FROM FolioLog WHERE FolionoDocid = ? AND "
                   "U_Name = ?", (rows[0][0], user), cn=cn, commit=False)
        if commit:
            cn.commit()
        return n
    finally:
        if own:
            cn.close()


# ─── Advance Deposit (VB6 BookingMore / DepositeReq) ─────────────────────

def post_advance_deposit(folio: int, amount: float, paycode: str = "KKCASH",
                         remarks: str = "ADVANCE DEPOSIT", user: str = USER,
                         cn=None, commit: bool = True, site: str = SITE_CODE,
                         vprefix: str = VPREFIX) -> int:
    """VB6 advance deposit: booking advance received before check-in.
    Posts as REC to folio, marked as deposit for settlement at checkout."""
    rec = checkin_mod.get(folio, cn=cn, vprefix=vprefix)
    if not rec:
        raise ValueError(f"Folio #{folio} nahi mila")
    if amount <= 0:
        raise ValueError("Deposit amount > 0 hona chahiye")
    return receive_payment(folio, amount, paycode=paycode,
                           comments=remarks, user=user, cn=cn,
                           commit=commit, site=site, vprefix=vprefix)


# ─── NCUR Update (VB6 FDNCURUpdate) ─────────────────────────────────────

def update_ncur(folio: int, dep_date, user: str = USER, cn=None,
                commit: bool = True, site: str = SITE_CODE,
                vprefix: str = VPREFIX) -> bool:
    """VB6 FDNCURUpdate: update NoDays + DepDate on GuestFolio
    when departure date changes (extended stay / early checkout)."""
    rec = checkin_mod.get(folio, cn=cn, vprefix=vprefix)
    if not rec:
        raise ValueError(f"Folio #{folio} nahi mila")
    new_dep = dep_date if isinstance(dep_date, datetime.date) else dep_date.date()
    old_vdate = rec["vdate"]
    nodays = max((new_dep - old_vdate).days, 1)
    own = cn is None
    cn = cn or db.connect()
    try:
        db.execute(
            "UPDATE GuestFolio SET DepDate = ?, NoDays = ?, U_EntDt = getdate(), "
            "U_Name = ? WHERE Site_Code = ? AND Vprefix = ? AND FolioNo = ?",
            (new_dep, nodays, user, site, vprefix, folio),
            cn=cn, commit=False)
        _log(rec["docid"], "E", user, cn, site)
        if commit:
            cn.commit()
        return True
    finally:
        if own:
            cn.close()


# ─── Token Reset (VB6 Token Reset pattern) ───────────────────────────────

def reset_tokens(folio: int, user: str = USER, cn=None,
                 commit: bool = True, site: str = SITE_CODE,
                 vprefix: str = VPREFIX) -> bool:
    """VB6 token reset: clear any pending charges/payments (fresh start).
    Used when folio needs to be reset before new billing cycle."""
    rec = checkin_mod.get(folio, cn=cn, vprefix=vprefix)
    if not rec:
        raise ValueError(f"Folio #{folio} nahi mila")
    if not str(rec["name"] or "").upper().startswith("PYT"):
        raise ValueError("Safety: sirf PYT* folios reset ho sakte hain")
    own = cn is None
    cn = cn or db.connect()
    try:
        # Log before delete (audit trail) — P12b: VB6-exact Select * copy
        db.execute(
            "INSERT INTO PayChargeLog SELECT * FROM PayCharge "
            "WHERE FolioNoDocid = ?",
            (rec["docid"],), cn=cn, commit=False)
        # Delete all charges for this folio
        db.execute(
            "DELETE FROM PayCharge WHERE FolioNoDocid = ?",
            (rec["docid"],), cn=cn, commit=False)
        # Delete any settle rows
        db.execute(
            "DELETE FROM FOMBillDetails WHERE FolioNoDocid = ?",
            (rec["docid"],), cn=cn, commit=False)
        _log(rec["docid"], "T", user, cn, site)
        if commit:
            cn.commit()
        return True
    finally:
        if own:
            cn.close()


# ─── Diplomat Tax Exemption (VB6 Diplomat pattern) ───────────────────────

def apply_diplomat_exemption(folio: int, user: str = USER, cn=None,
                             commit: bool = True, site: str = SITE_CODE,
                             vprefix: str = VPREFIX) -> bool:
    """VB6 diplomat check: if SubGroup.Diplomat='Y', exempt from tax.
    Updates RoomOcc.RoomCat = 'DIPLOMAT' for tax-free billing."""
    rec = checkin_mod.get(folio, cn=cn, vprefix=vprefix)
    if not rec:
        raise ValueError(f"Folio #{folio} nahi mila")
    rows = db.query(
        "SELECT SG.Diplomat FROM SubGroup SG "
        "INNER JOIN GuestProf GP ON GP.Code = ? "
        "WHERE GP.Company = SG.Code", (rec["guestprof"],), cn=cn)
    if not rows or (rows[0][0] or "").strip().upper() != "Y":
        return False
    own = cn is None
    cn = cn or db.connect()
    try:
        db.execute(
            "UPDATE RoomOcc SET RoomCat = 'DIPLOMAT', U_EntDt = getdate(), "
            "U_Name = ? WHERE DocId = ?",
            (user, rec["docid"]), cn=cn, commit=False)
        _log(rec["docid"], "D", user, cn, site)
        if commit:
            cn.commit()
        return True
    finally:
        if own:
            cn.close()


# ─── Amount to Words (VB6 CommonFunction ToWords) ────────────────────────

def amount_to_words(amount: float) -> str:
    """VB6 amount_to_words: converts number to Indian currency words."""
    if amount == 0:
        return "Rupees Zero Only"
    ones = ["", "One", "Two", "Three", "Four", "Five", "Six", "Seven",
            "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen",
            "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen",
            "Nineteen"]
    tens = ["", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty",
            "Seventy", "Eighty", "Ninety"]

    def _conv(n):
        if n == 0:
            return ""
        elif n < 20:
            return ones[n]
        elif n < 100:
            return tens[n // 10] + " " + ones[n % 10]
        else:
            return ones[n // 100] + " Hundred " + _conv(n % 100)

    int_part = int(amount)
    dec_part = round((amount - int_part) * 100)
    result = "Rupees "
    if int_part >= 10000000:
        result += _conv(int_part // 10000000) + " Crore "
        int_part %= 10000000
    if int_part >= 100000:
        result += _conv(int_part // 100000) + " Lakh "
        int_part %= 100000
    if int_part >= 1000:
        result += _conv(int_part // 1000) + " Thousand "
        int_part %= 1000
    if int_part > 0:
        result += _conv(int_part)
    if dec_part > 0:
        result += f" and {dec_part} Paise"
    result += " Only"
    return result.strip()
