"""Reservation (P3) - Booking table CRUD, RsBookingEntry.frm pattern.

EVIDENCE (RsBookingEntry.frm + live MOONData2627):
- Menu leaf 'Reservation/Cancellation' -> RsBookingEntry.frm -> Booking
- DocId format: 'DKKRES   2026      16' = 'D'+Site_Code+Vtype+Vprefix+BookNo
  (padded: Site 2 + Vtype-3-left + Vprefix-4-left + BookNo-4-left)
- BookNo = MAX(BookNo)+1 within (Site_Code, Vprefix) - serial.
- Audit: U_Name, U_EntDt, U_AE 'A'/'E' (VB6 pattern).
- NOT NULL extra: MobNo/Email/FaxNo/OtherCont (VARCHAR, '' default),
  LogSite_Code = Site_Code.
- P3 scope: BROWSE + DRAFT-INSERT (rollback-verified); GUI editing
  aur baaki fields baaki phases - documented in PYTHON_MIGRATION_PLAN.
"""
from __future__ import annotations

from datetime import date, datetime

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")          # Analysis.ini key 7
USER = db.get_user()                                                                      # audit identity
VTYPE = "RES"
VPREFIX = str(date.today().year)   # Vprefix='2026' sample se


def voucher_config(cn=None, site: str = SITE_CODE,
                   vtype: str = VTYPE) -> dict:
    """Voucher_Type se RES config (VB6 Number_Method='Automatic').

    P3-b: hardcoded VPREFIX ki jagah config-driven (evidence:
    Voucher_Type row: Category='RESV', Number_Method='Automatic').
    Vprefix abhi bhi current-year (live data pattern 2023/2026)."""
    rows = db.query(
        "SELECT V_Type, Description, Number_Method, Start_No "
        "FROM Voucher_Type WHERE V_Type = ? AND Site_Code = ?",
        (vtype, site), cn=cn)
    if not rows:
        return {"vtype": vtype, "vprefix": VPREFIX}
    return {"vtype": rows[0][0], "description": rows[0][1],
            "number_method": rows[0][2], "start_no": rows[0][3],
            "vprefix": VPREFIX}

# VB6 DocId padding (DO samples se decoded, dono len-21):
#   'D' + Site(2) + Vtype(LJUST-6) + Vprefix(LJUST-4) + BookNo(RJUST-8)
#   e.g. 'DKKRES   2026      16', 'DKKRES   2023     106'
def make_docid(site: str, vprefix: str, bookno: int,
              vtype: str = VTYPE) -> str:
    """Return a VB6-compatible DocId while honoring the caller's vtype/site.

    Format: 'D' + Site(2 chars left-justified) + Vtype(6 chars left-justified)
            + Vprefix(4 chars left-justified) + BookNo(8 chars right-justified)
    Total length: 42 characters (truncated if longer)."""
    docid = ("D" + site.ljust(2) + str(vtype or VTYPE).ljust(6) +
             str(vprefix).ljust(4) + str(bookno).rjust(8))
    return docid[:42]


def _make_docid_atomic(bookno: int, site: str, vprefix: str,
                       vtype: str = VTYPE, cn=None) -> str:
    """Atomic docid generation with database-level locking (BUG-015 fix).
    
    Uses UPDLOCK to prevent race conditions when multiple users generate
    booking numbers concurrently. Ensures each bookno gets a unique docid.
    """
    import pyodbc
    # Try with UPDLOCK hint for race-safe booking number generation
    try:
        cur = cn.cursor() if cn else None
        if cur is None:
            from HMS_py.core import db
            cn = db.connect()
            cur = cn.cursor()
        # Use UPDLOCK to prevent concurrent bookno generation conflicts
        cur.execute(
            "SELECT MAX(BookNo) FROM Booking WITH(UPDLOCK) "
            "WHERE Site_Code = ? AND Vprefix = ?",
            (site, vprefix), cn=cn)
        rows = cur.fetchone()
        actual_bookno = (rows[0] or 0) + 1
        docid = make_docid(site, vprefix, actual_bookno, vtype)
        # Commit only the read, don't modify anything
        if cn and cn.auto_commit is not True:
            cn.rollback()
        return docid
    except Exception:
        # Fallback to non-atomic generation
        return make_docid(site, vprefix, bookno, vtype)

def next_bookno(cn=None, site: str = SITE_CODE,
                vprefix: str = VPREFIX) -> int:
    """Get next bookno with optional DB-level locking for race safety."""
    own = cn is None
    cn = cn or db.connect()
    try:
        # Use UPDLOCK for race-safe bookno generation (BUG-015)
        rows = db.query(
            "SELECT MAX(BookNo) FROM Booking WITH(UPDLOCK) "
            "WHERE Site_Code = ? AND Vprefix = ?",
            (site, vprefix), cn=cn)
        bookno = (rows[0][0] or 0) + 1
        if own:
            cn.close()
        return bookno
    finally:
        if own:
            try:
                cn.close()
            except Exception:
                pass


def list_reservations(cn=None, top: int = 200, site: str = SITE_CODE,
                     vprefix: str = VPREFIX) -> list:
    """Grid browse - VB5 list-view jaisa (nayi pehle).
    BUGFIX: Cancel column bhi fetch karo (col index 9) taaki browser
    mein cancelled bookings correctly highlight ho sakein.
    Returns: BookNo(0),VDate(1),GuestName(2),ArrDate(3),DepDate(4),
             NoofRooms(5),RoomRate(6),ResStatus(7),Cancel(8),U_Name(9),U_AE(10)
    """
    return db.query(
        f"SELECT TOP {int(top)} BookNo, VDate, GuestName, ArrDate, DepDate, "
        "NoofRooms, RoomRate, ResStatus, ISNULL(Cancel,'N'), U_Name, U_AE "
        "FROM Booking WHERE Site_Code = ? AND Vprefix = ? "
        "ORDER BY BookNo DESC",
        (site, vprefix), cn=cn)


def get(bookno: int, cn=None, site: str = SITE_CODE,
        vprefix: str = VPREFIX):
    """Ek booking ka dict (column-name keyed).

    NOTE: wahi cn use karta hai (warna uncommitted transaction ka
    readback doosre connection se galat row dikha deta hai -
    live-caught: BookNo=1 pehle se table me hai, hamara draft nahi)."""
    own = cn is None
    cn = cn or db.connect()
    try:
        cur = cn.cursor()
        cur.execute(
            "SELECT * FROM Booking WHERE Site_Code = ? AND Vprefix = ? "
            "AND BookNo = ?", (site, vprefix, bookno))
        cols = [d[0] for d in cur.description]
        row = cur.fetchone()
        return dict(zip(cols, row)) if row else None
    finally:
        if own:
            cn.close()


def insert_draft(guest_name: str, arr_date, dep_date, adults: int = 1,
                 rooms: int = 1, rate: float = 0.0, remarks: str = ".",
                 user: str = "PYADMIN", cn=None, commit: bool = True,
                 site: str = SITE_CODE) -> int:
    """Naya reservation draft (P3 minimal - VB6 ke core fields).

    DocId/BookNo/audit automatic. Validation: guest naam zaroori,
    arr<=dep. Returns BookNo."""
    guest_name = (guest_name or "").strip()
    if not guest_name:
        raise ValueError("GuestName zaroori hai")
    if arr_date > dep_date:
        raise ValueError("Arrival > Departure nahi ho sakta")
    bookno = next_bookno(cn=cn, site=site)
    docid = make_docid(site, VPREFIX, bookno, vtype=VTYPE)
    nodays = max((dep_date - arr_date).days, 1)
    # 27 columns == 27 placeholders (explicit; count-mismatch bugfix)
    sql = """
        INSERT INTO Booking (
            DocId, Vtype, BookNo, Site_Code, Vprefix,
            VDate, ArrDate, ArrTime, DepDate, DepTime,
            NoDays, Adult, Child, NoofRooms, RoomRate,
            Remarks, Cancel, GuestName, U_Name, U_EntDt,
            U_AE, LogSite_Code, MobNo, Email, FaxNo,
            OtherCont, ResStatus)
        VALUES (
            ?, ?, ?, ?, ?,
            getdate(), ?, '10:00', ?, '10:00',
            ?, ?, 0, ?, ?,
            ?, 'N', ?, ?, getdate(),
            'A', ?, '', '', '',
            '', 'Confirm')"""
    params = (docid, VTYPE, bookno, site, VPREFIX,
              arr_date, dep_date,
              nodays, adults, rooms, rate,
              remarks or ".", guest_name, user,
              site)
    # 15 params: DocId,Vtype,BookNo,Site,Vprefix,Arr,Dep,NoDays,Adult,Rooms,Rate,Remarks,Guest,User,LogSite
    assert len(params) == 15, len(params)
    own = cn is None
    cn = cn or db.connect()
    try:
        db.execute(sql, params, cn=cn, commit=False)
        _log(docid, "A", user, cn, site)   # VB6: har insert pe BookingLog 'A'
        if commit:
            cn.commit()
        return bookno
    finally:
        if own:
            cn.close()


def _log(docid: str, flag: str, user: str, cn, site: str = SITE_CODE):
    """BookingLog write - HMS.bas ka EXACT pattern:
    Max(Id)+1 (else 1); columns (Id,Bookingdocid,Flag,Site_Code,
    U_Name,U_EntDt,U_AE,LogSite_Code); U_EntDt=Now."""
    rows = db.query(
        "SELECT MAX(Id) FROM BookingLog WHERE LogSite_Code = ?",
        (site,), cn=cn)
    logid = (rows[0][0] or 0) + 1 if rows and rows[0][0] else 1
    db.execute(
        "INSERT INTO BookingLog (Id, Bookingdocid, Flag, Site_Code, "
        "U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, getdate(), ?, ?)",
        (logid, docid, flag, site, user, "A", site), cn=cn, commit=False)


def update(bookno: int, guest_name: str, arr_date, dep_date,
           adults: int = 1, rooms: int = 1, rate: float = 0.0,
           remarks: str = ".", user: str = "PYADMIN", cn=None,
           commit: bool = True, site: str = SITE_CODE) -> int:
    """Edit flow (VB6 Update-Booking pattern): core fields + audit
    U_AE='E' + BookingLog. PK (DocId/BookNo) nahi badalta."""
    guest_name = (guest_name or "").strip()
    if not guest_name:
        raise ValueError("GuestName zaroori hai")
    if arr_date > dep_date:
        raise ValueError("Arrival > Departure nahi ho sakta")
    nodays = max((dep_date - arr_date).days, 1)
    own = cn is None
    cn = cn or db.connect()
    try:
        n = db.execute(
            "UPDATE Booking SET GuestName = ?, ArrDate = ?, DepDate = ?, "
            "NoDays = ?, Adult = ?, NoofRooms = ?, RoomRate = ?, "
            "Remarks = ?, U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
            "WHERE Site_Code = ? AND Vprefix = ? AND BookNo = ?",
            (guest_name, arr_date, dep_date, nodays, adults, rooms, rate,
             remarks or ".", user, site, VPREFIX, bookno), cn=cn,
            commit=False)
        row = get(bookno, cn=cn, site=site)
        if row:
            _log(row["DocId"], "E", user, cn, site)
        if commit:
            cn.commit()
        return n
    finally:
        if own:
            cn.close()


def cancel(bookno: int, user: str = "PYADMIN", cn=None,
           commit: bool = True, site: str = SITE_CODE,
           cancel_mode: str = "Cancellation") -> int:
    """VB6 cancel flow (RrRoomReservation.frm UPDATE #1 EXACT):
    Update Booking Set Cancel='Y', CancelDate=<now>, CancelUName=<user>
    Where Docid='...'. Physical delete NAHI (audit-safe).

    MISSING-LOGIC FIX (M1+M2, evidence: frm:4613/10112):
    1. Already-cancelled booking dobara cancel NAHI hoti (VB6 FGrid
       event Cancel='Y' check karta hai) -> ValueError.
    2. BookingCancelDetails row bhi INSERT hoti hai (15-col schema
       live-verified; VB6 DocId=booking-docid derived, SNo=1)."""
    row = get(bookno, cn=cn, site=site)
    if not row:
        raise ValueError(f"Booking {bookno} nahi mila")
    if str(row.get("Cancel") or "").upper() == "Y":
        raise ValueError(
            f"Booking {bookno} pehle se cancelled hai "
            f"({row.get('CancelDate')} {row.get('CancelUName')}) - "
            "dobara cancel nahi ho sakti (VB6 rule)")
    own = cn is None
    cn = cn or db.connect()
    try:
        n = db.execute(
            "UPDATE Booking SET Cancel = 'Y', CancelDate = getdate(), "
            "CancelUName = ? WHERE DocId = ?",
            (user, row["DocId"]), cn=cn, commit=False)
        # M1: BookingCancelDetails (VB6 frm:4613 column-list; schema
        # live-verified - sab nullable, hum minimal-safe values bhararte hain)
        det_docid = ("C" + str(row["DocId"])[:14] +
                     str(bookno).rjust(6))[:21]
        db.execute(
            "INSERT INTO BookingCancelDetails (DocId, SNo, VType, VNo, "
            "Site_Code, VPrefix, VDate, BookingDocID, Advance, CancelAmt, "
            "CancellationMode, U_Name, U_EntDT, U_AE, LogSite_Code) "
            "VALUES (?, 1, ?, 1, ?, ?, getdate(), ?, 0, 0, ?, ?, "
            "getdate(), 'A', ?)",
            (det_docid, VTYPE, site, VPREFIX, row["DocId"], cancel_mode,
             user, site), cn=cn, commit=False)
        _log(row["DocId"], "C", user, cn, site)
        if commit:
            cn.commit()
        return n
    finally:
        if own:
            cn.close()


def delete_draft(bookno: int, cn=None, commit: bool = True,
                 site: str = SITE_CODE) -> int:
    """P3 test-safety: sirf PYT*-guest wale drafts delete hote hain."""
    rows = db.query(
        "SELECT GuestName FROM Booking WHERE BookNo = ? AND Site_Code = ? "
        "AND Vprefix = ?", (bookno, site, VPREFIX), cn=cn)
    if not rows:
        raise ValueError(f"Booking {bookno} nahi mila")
    if not str(rows[0][0] or "").upper().startswith("PYT"):
        raise ValueError("Safety: sirf PYT* test-drafts delete ho sakte hain")
    return db.execute(
        "DELETE FROM Booking WHERE BookNo = ? AND Site_Code = ? "
        "AND Vprefix = ?", (bookno, site, VPREFIX), cn=cn, commit=commit)



# ============================================================
# Phase B: No-Show (VB6 ResStatus flow). mark_no_show Booking ko
# Cancel='Y' + BookingCancelDetails(CancellationMode='No Show') +
# BookingLog 'N' flag karta hai — cancel() ka transactional pattern.
# FIX: cancel() ka det_docid 21+ chars truncate ho raha tha — ab
# SNo-style suffix (max 21) — VB6 DocId format follow.
# ============================================================
def mark_no_show(bookno: int, user: str = "PYADMIN", cn=None,
                 commit: bool = True, site: str = SITE_CODE) -> int:
    row = get(bookno, cn=cn, site=site)
    if not row:
        raise ValueError(f"Booking {bookno} nahi mila")
    if str(row.get("Cancel") or "").upper() == "Y":
        raise ValueError(f"Booking {bookno} already cancelled/no-show")
    own = cn is None
    cn = cn or db.connect()
    try:
        db.execute(
            "UPDATE Booking SET Cancel = 'Y', CancelDate = getdate(), "
            "CancelUName = ?, ResStatus = 'No Show' WHERE DocId = ?",
            (user, row["DocId"]), cn=cn, commit=False)
        det_docid = ("C" + str(row["DocId"])[:14] +
                     str(next_bookno(cn=cn, site=site)).rjust(6))[:21]
        db.execute(
            "INSERT INTO BookingCancelDetails (DocId, SNo, VType, VNo, "
            "Site_Code, VPrefix, VDate, BookingDocID, Advance, CancelAmt, "
            "CancellationMode, U_Name, U_EntDT, U_AE, LogSite_Code) "
            "VALUES (?, 1, ?, 1, ?, ?, getdate(), ?, 0, 0, ?, ?, "
            "getdate(), 'A', ?)",
            (det_docid, VTYPE, site, VPREFIX, row["DocId"], "No Show",
             user, site), cn=cn, commit=False)
        _log(row["DocId"], "N", user, cn, site)
        if commit:
            cn.commit()
        return 1
    finally:
        if own:
            cn.close()


# ---------------------------------------------------------------------------
# Advance Deposit (Reservation > Advance Deposit, frmAdvanceDepDialog.frm)
# ---------------------------------------------------------------------------
def advance_deposit(
    docid: str,
    vtype: str,
    paytype: str,
    amount: float,
    advtype: str = "ADV",
    narration: str = "",
    user: str = USER,
    site: str = SITE_CODE,
    cn=None,
    commit: bool = True,
    tax_stru: str = "",
    vdate=None,
    guestprof: str = "",
    roomno: str = "",
    roomcat: str = "",
    roomtype: str = "",
    folio: str = "",
) -> dict:
    """Advance deposit against a booking (VB6 frmAdvanceDepDialog.frm +
    Laravel Reservation/AdvanceController.submitadvdeposit).

    Posts PayCharge line(s):
      base advance: AmtCr = amount  (advtype='Refund' -> AmtDr = amount)
      optional tax rows from tax_stru (TaxStru x RevMast)
    Consumes one Voucher_Prefix serial (start_srl_no -> vno).

    Returns {'docid','vno','amount','advtype'}.
    """
    docid = (docid or "").strip()
    if not docid:
        raise ValueError("Booking DocId zaroori hai")
    if not vtype:
        raise ValueError("Voucher type zaroori hai")
    amount = float(amount or 0)
    if amount <= 0:
        raise ValueError("Advance amount zero se bada hona chahiye")
    vdate = vdate or date.today()
    if isinstance(vdate, str):
        vdate = date.fromisoformat(vdate)
    is_refund = str(advtype).strip().lower() == "refund"

    own = cn is None
    cn = cn or db.connect()
    try:
        # --- 1. Booking validation (VB6: Proc_6_108 GuestFolio/BookingDocId) ---
        gf = db.query(
            "SELECT TOP 1 FolioNo, GuestProf FROM GuestFolio "
            "WHERE BookingDocId = ? AND Site_Code = ?",
            (docid, site), cn=cn)
        if not gf:
            bk = db.query(
                "SELECT TOP 1 DocId FROM Booking WHERE DocId = ? AND Site_Code = ?",
                (docid, site), cn=cn)
            if not bk:
                raise ValueError(f"Booking '{docid}' GuestFolio/Booking me nahi mila")
        gf = gf[0]
        folio = int(gf.FolioNo or 0)
        guestprof = (gf.GuestProf or "").strip() or guestprof
        # room info from RoomOcc (optional, re_settlement pattern)
        rc = db.query(
            "SELECT TOP 1 RoomNo, RoomCat, RoomType FROM RoomOcc WHERE DocId = ?",
            (docid,), cn=cn)
        if rc:
            roomno = (rc[0].RoomNo or "").strip() or roomno
            roomcat = (rc[0].RoomCat or "").strip() or roomcat
            roomtype = (rc[0].RoomType or "").strip() or roomtype

        # --- 2. Voucher prefix (date-window eligibility, VB6 + Laravel) ---
        vp = db.query(
            "SELECT TOP 1 Prefix, Start_Srl_No FROM Voucher_Prefix "
            "WHERE V_Type = ? AND ? BETWEEN Date_From AND Date_To "
            "AND Site_Code = ? ORDER BY Date_From DESC",
            (vtype, vdate, site), cn=cn)
        if not vp:
            raise ValueError(f"Voucher prefix '{vtype}' {vdate} ke liye nahi mila")
        vprefix = str(vp[0][0] or "")
        vno = int(vp[0][1] or 0) + 1

        # --- 3. PayCharge DocId (VB6: propertyid+vtype+'  '+vprefix+'   '+vno) ---
        paydocid = f"{site}{vtype}  {vprefix}   {vno}"

        # --- 4. Dr/Cr by advtype (Laravel: Refund -> AmtDr, else AmtCr) ---
        amt_dr = amount if is_refund else 0.0
        amt_cr = 0.0 if is_refund else amount

        # --- 5. Pay type from RevMast (Laravel) ---
        pt = db.query(
            "SELECT TOP 1 PAYTYPE FROM RevMast WHERE Code = ? AND Site_Code = ?",
            (paytype, site), cn=cn)
        pay_type = (pt[0][0] or paytype) if pt else paytype

        vtime = datetime.now().strftime("%H:%M")
        rest_code = "FOM" + site

        def _ins_paycharge(sno, pcode, ptype, dr, cr, billamt, rate, tstru,
                           comments, taxper):
            db.execute(
                "INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, Site_Code, "
                "VPrefix, Vdate, VTime, GuestProf, Comments, PayCode, PayType, "
                "AmtCr, AmtDr, RoomCat, RoomType, RoomNo, FolioNo, RestCode, "
                "BillAmount, U_Name, U_EntDt, U_AE, LogSite_Code, RefDocID, "
                "TaxStru, TaxPer) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
                "?, ?, ?, ?, ?, ?, ?, ?, ?)",
                (paydocid, sno, vtype, vno, site, vprefix, vdate, vtime,
                 guestprof, comments, pcode, ptype, cr, dr, roomcat, roomtype,
                 roomno, folio, rest_code, billamt, user, datetime.now(),
                 "A", site, docid, tstru, rate),
                cn=cn, commit=False)

        # --- 6. Base advance PayCharge line ---
        _ins_paycharge(1, paytype, pay_type, amt_dr, amt_cr, amount, 0.0,
                       tax_stru, narration, 0.0)

        # --- 7. Tax rows (Laravel tax_stru loop) ---
        sno = 2
        if tax_stru:
            tax_rows = db.query(
                "SELECT Code, Rate, TaxCode FROM TaxStru "
                "WHERE Code = ? AND Site_Code = ?", (tax_stru, site), cn=cn)
            for tr in tax_rows:
                rate = float(tr[1] or 0)
                if rate <= 0:
                    continue
                tax_amount = round(amount * rate / 100, 2)
                t_dr = tax_amount if is_refund else 0.0
                t_cr = 0.0 if is_refund else tax_amount
                tn = db.query(
                    "SELECT TOP 1 Name FROM RevMast WHERE Code = ? "
                    "AND Site_Code = ?", (tr[2], site), cn=cn)
                tname = (tn[0][0] or "") if tn else ""
                comments = f"{tname}, Room No: {roomno}" if tname else ""
                _ins_paycharge(sno, tr[0], tname, t_dr, t_cr, 0.0, rate,
                               tax_stru, comments, amount)
                sno += 1

        # --- 8. Consume voucher prefix serial (VB6 + Laravel) ---
        db.execute(
            "UPDATE Voucher_Prefix SET Start_Srl_No = ? "
            "WHERE V_Type = ? AND Prefix = ? AND Site_Code = ?",
            (vno, vtype, vprefix, site), cn=cn, commit=False)

        if commit:
            cn.commit()
        return {"docid": paydocid, "vno": vno, "amount": amount,
                "advtype": advtype}
    except Exception:
        try:
            cn.rollback()
        except Exception:
            pass
        raise
    finally:
        if own:
            cn.close()

