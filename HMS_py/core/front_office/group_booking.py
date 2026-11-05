# ──────────────────────────────────────────────────────────────────────
# Group Reservation (VB6: resGroup.frm)
# ──────────────────────────────────────────────────────────────────────

"""Group Reservation (VB6: resGroup.frm)

VB6 Pattern:
- Master booking (GroupProf) with sub-bookings for each room
- Each sub-booking gets its own Booking record linked via GroupBookingDetails
- Master folio tracks the group, sub-folios for each room
- TopCtrl1 navigation: Previous/Next/Print/Exit
- DGHelp for group profile lookup
- DGCity, DGTravelAg, DGBusiness, DGMarketSeg for lookups
- FGrid for room details grid
"""

from __future__ import annotations

import datetime

from HMS_py.core import db
from HMS_py.core.reservation import next_bookno, make_docid, VTYPE, VPREFIX

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()


def create_group_booking(master_rec: dict, sub_bookings: list[dict],
                         cn=None, commit: bool = True,
                         site: str = SITE_CODE, user: str = USER) -> dict:
    """Create a group reservation with master folio and sub-bookings.

    VB6 resGroup.frm pattern:
    - Master booking (GroupProf) with sub-bookings for each room
    - Each sub-booking gets its own Booking record linked via GroupBookingDetails
    - Master folio tracks the group, sub-folios for each room
    """
    if not master_rec.get("guestname", "").strip():
        raise ValueError("Group master guest name zaroori hai")
    if not sub_bookings:
        raise ValueError("Kam se kam ek sub-booking zaroori hai")

    own = cn is None
    cn = cn or db.connect()
    try:
        # 1. Create master booking
        bookno = next_bookno(cn=cn, site=site)
        master_docid = make_docid(site, VPREFIX, bookno, vtype="RES")
        nodays = (master_rec.get("depdate", date.today()) - master_rec.get("arrdate", date.today())).days
        if nodays < 1:
            nodays = 1

        db.execute(
            "INSERT INTO Booking (DocId, Vtype, BookNo, Site_Code, Vprefix, "
            "VDate, GuestName, ArrDate, DepDate, NoDays, Adult, Child, "
            "NoofRooms, RoomRate, Remarks, Cancel, U_Name, U_EntDt, U_AE, "
            "LogSite_Code, MobNo, Email, GuestProf, ResStatus) "
            "VALUES (?, ?, ?, ?, ?, getdate(), ?, ?, ?, ?, ?, ?, ?, ?, ?, 'N', "
            "?, getdate(), 'A', ?, ?, ?, ?, 'Group')",
            (make_docid(site, VPREFIX, bookno, vtype="RES"), "RES", bookno, site, VPREFIX,
             master_rec.get("guestname", ""), master_rec.get("arrdate", date.today()),
             master_rec.get("depdate", date.today() + datetime.timedelta(days=1)),
             nodays, master_rec.get("adult", 1), master_rec.get("child", 0),
             len(sub_bookings), 0.0, master_rec.get("remarks", "."),
             user, site,
             master_rec.get("mobno", ""), master_rec.get("email", ""),
             master_rec.get("guestprof", "")), cn=cn, commit=False)

        # 2. Create GroupBookingDetails linking master to sub-bookings
        group_docid = make_docid(site, VPREFIX, bookno, vtype="RES")
        for i, sub in enumerate(sub_bookings):
            sno = i + 1
            sub_bookno = next_bookno(cn=cn, site=site)
            sub_docid = make_docid(site, VPREFIX, sub_bookno, vtype="RES")
            sub_nodays = (sub.get("depdate", date.today()) - sub.get("arrdate", date.today())).days
            if sub_nodays < 1:
                sub_nodays = 1

            # Create sub-booking
            db.execute(
                "INSERT INTO Booking (DocId, Vtype, BookNo, Site_Code, Vprefix, "
                "VDate, GuestName, ArrDate, DepDate, NoDays, Adult, Child, "
                "NoofRooms, RoomRate, Remarks, Cancel, U_Name, U_EntDt, U_AE, "
                "LogSite_Code, MobNo, Email, GuestProf, ResStatus, RoomNo, RoomCat) "
                "VALUES (?, ?, ?, ?, ?, getdate(), ?, ?, ?, ?, ?, ?, ?, ?, ?, 'N', "
                "?, getdate(), 'A', ?, ?, ?, ?, 'Confirm', ?, ?)",
                (make_docid(site, VPREFIX, sub_bookno, vtype="RES"), "RES", sub_bookno, site, VPREFIX,
                 sub.get("guestname", ""), sub.get("arrdate", date.today()),
                 sub.get("depdate", date.today() + datetime.timedelta(days=1)),
                 sub.get("nodays", 1), sub.get("adult", 1), sub.get("child", 0),
                 1, sub.get("roomrate", 0.0), sub.get("remarks", "."),
                 user, site,
                 sub.get("mobno", ""), sub.get("email", ""),
                 sub.get("guestprof", ""), sub.get("roomno", ""), sub.get("roomcat", "")),
                cn=cn, commit=False)

            # Link sub-booking to master group
            db.execute(
                "INSERT INTO GrpBookingDetails (BookingDocId, Sno, DocId, Sno1, "
                "ArrDate, DepDate, NoDays, Adult, NoOfRooms, RoomRate, "
                "Remarks, RoomType, RoomCat, Cancel, U_Name, U_EntDt, U_AE, "
                "LogSite_Code) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'N', ?, getdate(), 'A', ?)",
                (group_docid, sno, make_docid(site, VPREFIX, sub_bookno, vtype="RES"), sno,
                 sub.get("arrdate", date.today()), sub.get("depdate", date.today() + datetime.timedelta(days=1)),
                 sub.get("nodays", 1), sub.get("adult", 1), 1, sub.get("roomrate", 0.0),
                 sub.get("remarks", "."), "", sub.get("roomcat", ""), "N", user, site),
                cn=cn, commit=False)

        if commit:
            cn.commit()
        return {"master_bookno": bookno, "master_docid": group_docid, "sub_bookings": len(sub_bookings)}
    except Exception:
        try:
            cn.rollback()
        except Exception:
            pass
        raise
    finally:
        if own:
            cn.close()


def list_group_bookings(cn=None, site: str = SITE_CODE, vprefix: str = VPREFIX,
                        limit: int = 500) -> list[dict]:
    """List all group bookings (master bookings with ResStatus='Group')."""
    rows = db.query(
        f"SELECT TOP {int(limit)} DocId, BookNo, Vtype, Vprefix, VDate, GuestName, "
        "ArrDate, DepDate, NoDays, Adult, NoofRooms, RoomRate, Remarks, "
        "Cancel, Site_Code, U_Name, U_AE, ResStatus "
        f"FROM Booking WHERE Site_Code = ? AND Vprefix = ? AND ResStatus = 'Group' "
        "ORDER BY BookNo DESC",
        (site, vprefix), cn=cn)
    return [_map(r) for r in rows]


def get_group_details(master_bookno: int, cn=None, site: str = SITE_CODE,
                      vprefix: str = VPREFIX) -> dict | None:
    """Get master booking + all linked sub-bookings."""
    master = get(master_bookno, site=site, cn=cn)
    if not master or master.get("resstatus") != "Group":
        return None

    # Get sub-bookings from GrpBookingDetails
    rows = db.query(
        "SELECT B.BookNo, B.DocId, B.GuestName, B.ArrDate, B.DepDate, "
        "B.NoDays, B.Adult, B.NoofRooms, B.RoomRate, B.ResStatus, B.RoomNo, B.RoomCat "
        "FROM GrpBookingDetails G "
        "INNER JOIN Booking B ON B.DocId = G.DocId "
        "WHERE G.BookingDocId = ? AND G.Cancel = 'N' "
        "ORDER BY G.Sno",
        (get(master_bookno, site=site)["docid"],), cn=cn)

    sub_bookings = []
    for r in rows:
        sub_bookings.append({
            "bookno": r[0], "docid": r[1], "guestname": r[2],
            "arrdate": r[3], "depdate": r[4], "nodays": r[4],
            "adult": r[5], "noofrooms": r[6], "roomrate": r[7],
            "resstatus": r[8], "roomno": r[9], "roomcat": r[10],
        })

    return {**master, "sub_bookings": sub_bookings}


def cancel_group_booking(master_bookno: int, user: str = USER, cn=None,
                         commit: bool = True, site: str = SITE_CODE,
                         vprefix: str = VPREFIX) -> dict:
    """Cancel entire group booking (master + all sub-bookings)."""
    from HMS_py.core.reservation import cancel as _res_cancel

    own = cn is None
    cn = cn or db.connect()
    try:
        master = get(master_bookno, site=site, cn=cn)
        if not master or master.get("resstatus") != "Group":
            raise ValueError(f"Group booking #{master_bookno} nahi mila")

        # Cancel all sub-bookings first
        sub_rows = db.query(
            "SELECT DocId FROM GrpBookingDetails WHERE BookingDocId = ? AND Cancel = 'N'",
            (master["docid"],), cn=cn)
        cancelled = 0
        errors = []
        for r in sub_rows:
            sub_docid = r[0]
            # Get sub bookno
            sub_rows = db.query("SELECT BookNo FROM Booking WHERE DocId = ?", (sub_docid,), cn=cn)
            if sub_rows:
                sub_bookno = sub_rows[0][0]
                try:
                    _res_cancel(sub_bookno, user=user, cn=cn, commit=False, site=site, vprefix=vprefix)
                    cancelled += 1
                except Exception as e:
                    errors.append({"bookno": sub_bookno, "error": str(e)})

        # Cancel master
        _res_cancel(master_bookno, user=user, cn=cn, commit=False, site=site, vprefix=vprefix)

        if commit:
            cn.commit()
        return {"cancelled": 1 + cancelled, "errors": errors, "master_bookno": master_bookno}
    except Exception:
        try:
            cn.rollback()
        except Exception:
            pass
        raise
    finally:
        if own:
            cn.close()