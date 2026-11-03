"""Booking CRUD - extends reservation.py scope, full lifecycle management.

Tables: Booking, BookingMore, BookingPlanDetails
All tables verified in DB (KailashData2526) with exact column names.
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()
TABLE_PRIMARY = "Booking"


def _map(r) -> dict:
    try:
        return {
            "docid": r.DocId or "",
            "bookno": r.BookNo or 0,
            "vtype": r.Vtype or "",
            "vprefix": r.Vprefix or "",
            "vdate": r.VDate,
            "guestname": (r.GuestName or "").strip(),
            "arrdate": r.ArrDate,
            "depdate": r.DepDate,
            "nodays": r.NoDays or 0,
            "adult": r.Adult or 0,
            "child": r.Child or 0,
            "noofrooms": r.NoofRooms or 0,
            "roomrate": r.RoomRate or 0.0,
            "remarks": r.Remarks or "",
            "cancel": r.Cancel or "N",
            "site_code": r.Site_Code or "",
            "u_name": r.U_Name or "",
            "u_ae": r.U_AE or "",
            "resstatus": r.ResStatus or "",
            "mobno": r.MobNo or "",
            "email": r.Email or "",
            "guestprof": r.GuestProf or "",
            "roomno": r.RoomNo or "",
        }
    except AttributeError:
        return {"docid": str(r[0] or ""), "bookno": r[1] or 0}


def _validate(rec: dict):
    if not rec.get("guestname", "").strip():
        raise ValueError("GuestName zaroori hai")


def check_room_conflict(roomno: str, arr_date, dep_date,
                        exclude_bookno: int | None = None,
                        site: str = SITE_CODE, cn=None) -> list[dict]:
    """Room+date-overlap conflict check (kanpur txt: CHECK_AVAILABILITY;
    VB6 duplicate-check rule: same room + overlapping dates = conflict).

    Sources: Booking (ResStatus='Confirm', Cancel<>'Y') + RoomOcc
    (STATUS='Occupied'). Returns conflicting bookings list
    [{source, bookno/docid, guestname, arr, dep}]; empty = available.
    """
    conflicts: list[dict] = []
    ex = int(exclude_bookno or 0)
    rows = db.query(
        "SELECT BookNo, GuestName, ArrDate, DepDate, ResStatus, Cancel "
        "FROM Booking WHERE Site_Code = ? AND RTRIM(RoomNo) = ? "
        "AND Cancel <> 'Y' AND ResStatus = 'Confirm' "
        "AND ArrDate < ? AND DepDate > ? "
        "AND BookNo <> ?",
        (site, str(roomno or "").strip(), dep_date, arr_date, ex), cn=cn)
    for r in rows:
        conflicts.append({"source": "booking", "bookno": int(r[0] or 0),
                          "guestname": (r[1] or "").strip(),
                          "arr": r[2], "dep": r[3]})
    rows = db.query(
        "SELECT DocId, RoomNo, ChkInDate, DepDate FROM RoomOcc "
        "WHERE RTRIM(RoomNo) = ? AND ChkInDate < ? AND "
        "(DepDate IS NULL OR DepDate > ?)",
        (str(roomno or "").strip(), dep_date, arr_date), cn=cn)
    for r in rows:
        conflicts.append({"source": "roomocc", "docid": r[0] or "",
                          "roomno": (r[1] or "").strip(),
                          "arr": r[2], "dep": r[3]})
    return conflicts


def insert(rec: dict, cn=None, commit: bool = True, site: str = SITE_CODE,
           user: str = USER) -> dict:
    _validate(rec)
    # VB6 duplicate-check rule: same room + overlapping dates = conflict.
    # RoomNo + dates diye gaye hain to conflict pe insert block karo
    # (check_conflict=False se caller opt-out kar sakta hai).
    if rec.get("check_conflict", True) and rec.get("roomno") and \
            rec.get("arrdate") and rec.get("depdate"):
        conflicts = check_room_conflict(
            rec["roomno"], rec["arrdate"], rec["depdate"], site=site, cn=cn)
        if conflicts:
            c = conflicts[0]
            src = (f"Booking #{c['bookno']} ({c['guestname']})"
                   if c["source"] == "booking"
                   else f"In-house folio {c['docid']}")
            raise ValueError(
                f"Room {rec['roomno']} pe {src} ka conflict hai "
                f"({c['arr']} -> {c['dep']}) — dusra room ya date chunein")
    from datetime import date
    from HMS_py.core.reservation import next_bookno, make_docid, VTYPE, VPREFIX
    bookno = next_bookno(cn=cn, site=site)
    docid = make_docid(site, VPREFIX, bookno, vtype=VTYPE)
    db.execute(
        "INSERT INTO Booking (DocId, Vtype, BookNo, Site_Code, Vprefix, "
        "VDate, GuestName, ArrDate, DepDate, NoDays, Adult, Child, "
        "NoofRooms, RoomRate, Remarks, Cancel, U_Name, U_EntDt, U_AE, "
        "LogSite_Code, MobNo, Email, GuestProf, ResStatus) "
        "VALUES (?, ?, ?, ?, ?, getdate(), ?, ?, ?, ?, ?, ?, ?, ?, ?, 'N', "
        "?, getdate(), 'A', ?, ?, ?, ?, 'Confirm')",
        (docid, VTYPE, bookno, site, VPREFIX,
         rec.get("guestname", ""), rec.get("arrdate"), rec.get("depdate"),
         rec.get("nodays", 1), rec.get("adult", 1), rec.get("child", 0),
         rec.get("noofrooms", 1), rec.get("roomrate", 0.0),
         rec.get("remarks", "."), user, site,
         rec.get("mobno", ""), rec.get("email", ""),
         rec.get("guestprof", "")),
        cn=cn, commit=commit)
    return get(bookno, site=site, cn=cn)


def list_all(cn=None, limit=500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {int(limit)} DocId, BookNo, Vtype, Vprefix, VDate, GuestName, "
        "ArrDate, DepDate, NoDays, Adult, Child, NoofRooms, RoomRate, Remarks, "
        "Cancel, Site_Code, U_Name, U_AE, ResStatus, MobNo, Email, GuestProf, "
        "RoomNo FROM Booking ORDER BY BookNo DESC",
        cn=cn)
    return [_map(r) for r in rows]


def get(bookno: int, site: str = SITE_CODE, cn=None) -> dict | None:
    rows = db.query(
        "SELECT * FROM Booking WHERE Site_Code = ? AND BookNo = ?",
        (site, bookno), cn=cn)
    if not rows:
        return None
    cols = [d[0] for d in rows[0].cursor_description] if hasattr(rows[0], 'cursor_description') else []
    if cols:
        return dict(zip(cols, rows[0]))
    return _map(rows[0])


def search(term: str, site: str = SITE_CODE, cn=None, limit=100) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {int(limit)} DocId, BookNo, Vtype, Vprefix, VDate, GuestName, "
        "ArrDate, DepDate, NoDays, Adult, Child, NoofRooms, RoomRate, Remarks, "
        "Cancel, Site_Code, U_Name, U_AE, ResStatus, MobNo, Email, GuestProf, "
        "RoomNo FROM Booking WHERE Site_Code = ? AND "
        "(GuestName LIKE ? OR DocId LIKE ? OR MobNo LIKE ?) "
        "ORDER BY BookNo DESC",
        (site, f"%{term}%", f"%{term}%", f"%{term}%"), cn=cn)
    return [_map(r) for r in rows]


def insert(rec: dict, cn=None, commit: bool = True, site: str = SITE_CODE,
           user: str = USER) -> dict:
    _validate(rec)
    # VB6 duplicate-check rule: same room + overlapping dates = conflict.
    # RoomNo + dates diye gaye hain to conflict pe insert block karo
    # (check_conflict=False se caller opt-out kar sakta hai).
    if rec.get("check_conflict", True) and rec.get("roomno") and \
            rec.get("arrdate") and rec.get("depdate"):
        conflicts = check_room_conflict(
            rec["roomno"], rec["arrdate"], rec["depdate"], site=site, cn=cn)
        if conflicts:
            c = conflicts[0]
            src = (f"Booking #{c['bookno']} ({c['guestname']})"
                   if c["source"] == "booking"
                   else f"In-house folio {c['docid']}")
            raise ValueError(
                f"Room {rec['roomno']} pe {src} ka conflict hai "
                f"({c['arr']} -> {c['dep']}) — dusra room ya date chunein")
    from datetime import date
    from HMS_py.core.reservation import next_bookno, make_docid, VTYPE, VPREFIX
    bookno = next_bookno(cn=cn, site=site)
    docid = make_docid(site, VPREFIX, bookno, vtype=VTYPE)
    db.execute(
        "INSERT INTO Booking (DocId, Vtype, BookNo, Site_Code, Vprefix, "
        "VDate, GuestName, ArrDate, DepDate, NoDays, Adult, Child, "
        "NoofRooms, RoomRate, Remarks, Cancel, U_Name, U_EntDt, U_AE, "
        "LogSite_Code, MobNo, Email, GuestProf, ResStatus) "
        "VALUES (?, ?, ?, ?, ?, getdate(), ?, ?, ?, ?, ?, ?, ?, ?, ?, 'N', "
        "?, getdate(), 'A', ?, ?, ?, ?, 'Confirm')",
        (docid, VTYPE, bookno, site, VPREFIX,
         rec.get("guestname", ""), rec.get("arrdate"), rec.get("depdate"),
         rec.get("nodays", 1), rec.get("adult", 1), rec.get("child", 0),
         rec.get("noofrooms", 1), rec.get("roomrate", 0.0),
         rec.get("remarks", "."), user, site,
         rec.get("mobno", ""), rec.get("email", ""),
         rec.get("guestprof", "")),
        cn=cn, commit=commit)
    return get(bookno, site=site, cn=cn)


def update(bookno: int, rec: dict, cn=None, commit: bool = True,
           site: str = SITE_CODE, user: str = USER) -> dict:
    _validate(rec)
    sets = []
    params = []
    for fld in ("GuestName", "ArrDate", "DepDate", "NoDays", "Adult",
                "NoofRooms", "RoomRate", "Remarks", "MobNo", "Email",
                "ResStatus", "Cancel"):
        key = fld.lower()
        if key in rec:
            sets.append(f"{fld} = ?")
            params.append(rec[key])
    if not sets:
        raise ValueError("Koi field update nahi diya")
    sets.extend(["U_Name = ?", "U_EntDt = getdate()", "U_AE = 'E'"])
    params.extend([user, site, bookno])
    db.execute(
        "UPDATE Booking SET " + ", ".join(sets) +
        " WHERE Site_Code = ? AND BookNo = ?",
        params, cn=cn, commit=commit)
    return get(bookno, site=site, cn=cn)


def delete(bookno: int, cn=None, commit: bool = True,
           site: str = SITE_CODE) -> int:
    return db.execute(
        "DELETE FROM Booking WHERE Site_Code = ? AND BookNo = ?",
        (site, bookno), cn=cn, commit=commit)


def cancel(bookno: int, user: str = USER, cn=None,
           commit: bool = True, site: str = SITE_CODE) -> int:
    """Cancel a booking using reservation.cancel (proper VB6 flow with
    BookingCancelDetails INSERT and BookingLog audit)."""
    from HMS_py.core.reservation import cancel as _res_cancel
    return _res_cancel(bookno, user=user, cn=cn, commit=commit, site=site)


# ── BookingMore CRUD ──

def _map_more(r) -> dict:
    try:
        return {
            "docid": r.DocId or "",
            "sno": r.Sno or 0,
            "name": (r.Name or "").strip(),
            "site_code": r.Site_Code or "",
            "u_name": r.U_Name or "",
            "u_ae": r.U_AE or "",
        }
    except AttributeError:
        c, s, n = r[0], r[1], r[2]
        return {"docid": c or "", "sno": s or 0, "name": (n or "").strip()}


def _validate_more(rec: dict):
    if not rec.get("docid", "").strip():
        raise ValueError("DocId zaroori hai")


def list_more(docid: str, cn=None) -> list[dict]:
    rows = db.query(
        "SELECT DocId, Sno, Name, Site_Code, U_Name, U_EntDt, U_AE "
        "FROM BookingMore WHERE DocId = ? ORDER BY Sno",
        (docid,), cn=cn)
    return [_map_more(r) for r in rows]


def insert_more(rec: dict, cn=None, commit: bool = True,
                site: str = SITE_CODE, user: str = USER) -> dict:
    _validate_more(rec)
    sno_rows = db.query(
        "SELECT MAX(Sno) FROM BookingMore WHERE DocId = ?",
        (rec["docid"],), cn=cn)
    sno = (sno_rows[0][0] or 0) + 1 if sno_rows and sno_rows[0][0] else 1
    db.execute(
        "INSERT INTO BookingMore (DocId, Sno, Name, Site_Code, U_Name, "
        "U_EntDt, U_AE, LogSite_Code) VALUES (?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (rec["docid"], sno, rec.get("name", ""), site, user, site),
        cn=cn, commit=commit)
    return {"docid": rec["docid"], "sno": sno, "name": rec.get("name", "")}


def delete_more(docid: str, sno: int, cn=None, commit: bool = True) -> int:
    return db.execute(
        "DELETE FROM BookingMore WHERE DocId = ? AND Sno = ?",
        (docid, sno), cn=cn, commit=commit)


# ── BookingPlanDetails CRUD ──

def _map_plan(r) -> dict:
    try:
        return {
            "bookingdocid": r.BookingDocId or "",
            "sno": r.Sno or 0,
            "sno1": r.Sno1 or 0,
            "revcode": r.Revcode or "",
            "chrgcode": r.Chrgcode or "",
            "amount": r.Amount or 0.0,
            "plancode": r.PlanCode or "",
            "site_code": r.Site_Code or "",
            "u_name": r.U_Name or "",
            "u_ae": r.U_AE or "",
            "fixrate": r.FixRate or 0.0,
            "netamt": r.NetAmt or 0.0,
        }
    except AttributeError:
        return {"bookingdocid": str(r[0] or ""), "sno": r[1] or 0}


def _validate_plan(rec: dict):
    if not rec.get("bookingdocid", "").strip():
        raise ValueError("BookingDocId zaroori hai")


def list_plan_details(docid: str, cn=None) -> list[dict]:
    rows = db.query(
        "SELECT BookingDocId, Sno, Sno1, Revcode, Chrgcode, TaxInc, "
        "TaxStru, PrintOption, PostingMethod, ChargeType, FlatRate, Adult, "
        "Child, ExtraAdult, ExtraChild, NoOfDays, PlanPer, App_Date, "
        "Site_Code, U_Name, U_EntDt, U_AE, Amount, PlanCode, PlanPkgMode, "
        "RPackageAmt, NetPackageAmount, LogSite_Code, PlanDiscPer, "
        "PlanDiscAmt, PlanDiscAppOn, IncInRoomRate, RoomRate, NetRoomRate, "
        "Comment1, Comment2, DiscAmt, NetAmt, FixRate "
        "FROM BookingPlanDetails WHERE BookingDocId = ? ORDER BY Sno",
        (docid,), cn=cn)
    return [_map_plan(r) for r in rows]


def insert_plan_detail(rec: dict, cn=None, commit: bool = True,
                       site: str = SITE_CODE, user: str = USER) -> dict:
    _validate_plan(rec)
    sno_rows = db.query(
        "SELECT MAX(Sno) FROM BookingPlanDetails WHERE BookingDocId = ?",
        (rec["bookingdocid"],), cn=cn)
    sno = (sno_rows[0][0] or 0) + 1 if sno_rows and sno_rows[0][0] else 1
    db.execute(
        "INSERT INTO BookingPlanDetails (BookingDocId, Sno, Sno1, Revcode, "
        "Chrgcode, TaxInc, TaxStru, PrintOption, PostingMethod, ChargeType, "
        "FlatRate, Adult, Child, ExtraAdult, ExtraChild, NoOfDays, PlanPer, "
        "App_Date, Site_Code, U_Name, U_EntDt, U_AE, Amount, PlanCode, "
        "PlanPkgMode, RPackageAmt, NetPackageAmount, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
        "?, getdate(), 'A', ?, ?, ?, ?, ?, ?)",
        (rec["bookingdocid"], sno, rec.get("sno1", 0),
         rec.get("revcode", ""), rec.get("chrgcode", ""),
         rec.get("taxinc", ""), rec.get("taxstru", ""),
         rec.get("printoption", ""), rec.get("postingmethod", ""),
         rec.get("chargetype", ""), rec.get("flatrate", 0.0),
         rec.get("adult", 0), rec.get("child", 0),
         rec.get("extraadult", 0), rec.get("extrachild", 0),
         rec.get("nodays", 1), rec.get("planper", ""),
         rec.get("app_date"), site, user,
         rec.get("amount", 0.0), rec.get("plancode", ""),
         rec.get("planpkgmode", ""), rec.get("rpackageamt", 0.0),
         rec.get("netpackageamount", 0.0), site),
        cn=cn, commit=commit)
    return {"bookingdocid": rec["bookingdocid"], "sno": sno}


def delete_plan_detail(docid: str, sno: int, cn=None,
                       commit: bool = True) -> int:
    return db.execute(
        "DELETE FROM BookingPlanDetails WHERE BookingDocId = ? AND Sno = ?",
        (docid, sno), cn=cn, commit=commit)


class BookingAPI:
    def list_all(self, cn=None, limit=500):
        return list_all(cn=cn, limit=limit)

    def get(self, bookno, site=SITE_CODE, cn=None):
        return get(bookno, site=site, cn=cn)

    def search(self, term, site=SITE_CODE, cn=None, limit=100):
        return search(term, site=site, cn=cn, limit=limit)

    def insert(self, rec, cn=None, commit=True, site=SITE_CODE, user=USER):
        return insert(rec, cn=cn, commit=commit, site=site, user=user)

    def update(self, bookno, rec, cn=None, commit=True, site=SITE_CODE, user=USER):
        return update(bookno, rec, cn=cn, commit=commit, site=site, user=user)

    def delete(self, bookno, cn=None, commit=True, site=SITE_CODE):
        return delete(bookno, cn=cn, commit=commit, site=site)

    def cancel(self, bookno, user=USER, cn=None, commit=True, site=SITE_CODE):
        return cancel(bookno, user=user, cn=cn, commit=commit, site=site)

    def list_more(self, docid, cn=None):
        return list_more(docid, cn=cn)

    def insert_more(self, rec, cn=None, commit=True, site=SITE_CODE, user=USER):
        return insert_more(rec, cn=cn, commit=commit, site=site, user=user)

    def delete_more(self, docid, sno, cn=None, commit=True):
        return delete_more(docid, sno, cn=cn, commit=commit)

    def list_plan_details(self, docid, cn=None):
        return list_plan_details(docid, cn=cn)

    def insert_plan_detail(self, rec, cn=None, commit=True, site=SITE_CODE, user=USER):
        return insert_plan_detail(rec, cn=cn, commit=commit, site=site, user=user)

    def delete_plan_detail(self, docid, sno, cn=None, commit=True):
        return delete_plan_detail(docid, sno, cn=cn, commit=commit)
