"""Guest Registration Card (GRC) core - VB6 FrmGrcBlank.frm pattern.

Reads guest registration data from existing tables (GuestProf, GuestFolio,
RoomOcc) for printing blank GRC forms. No new tables are created - all data
is read from existing live tables.

Tables read (read-only):
- GuestProf: guest profile (name, address, city, nationality, mobile, etc.)
- GuestFolio: folio info (room, dates, etc.)
- RoomOcc: room occupancy (room number, checkin date, etc.)
"""

from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()


def get_inhouse_guests(cn=None, site: str = SITE_CODE, vprefix: str = "2026"):
    """Get list of in-house guests for GRC selection.

    Returns list of dicts with folio_no, guest_name, room_no, guestprof_code.
    """
    rows = db.query(
        """SELECT gf.FolioNo, gf.Name, gf.GuestProf, ro.RoomNo, gf.Vdate,
                  gf.DepDate, gf.NoDays, gf.PurVisit
        FROM GuestFolio gf
        LEFT JOIN RoomOcc ro ON ro.DocId = gf.DocId AND ro.Site_Code = gf.Site_Code
        WHERE gf.Site_Code = ? AND gf.Vprefix = ?
          AND gf.DocId IN (
            SELECT DISTINCT DocId FROM RoomOcc
            WHERE Site_Code = ? AND ChkOutDate IS NULL
          )
        ORDER BY gf.Name""",
        (site, vprefix, site), cn=cn)
    return [
        {
            "docid": (r.DocId or "").strip(),
            "folio_no": r.FolioNo,
            "guest_name": (r.Name or "").strip(),
            "guestprof_code": (r.GuestProf or "").strip(),
            "room_no": (r.RoomNo or "").strip(),
            "vdate": r.Vdate,
            "dep_date": r.DepDate,
            "no_days": r.NoDays or 0,
            "pur_visit": (r.PurVisit or "").strip(),
        }
        for r in rows
    ]


def get_guest_details(docid: str, cn=None, site: str = SITE_CODE,
                       vprefix: str = "2026"):
    """Get full guest details for GRC printing.

    Returns dict with guest profile and folio info.
    """
    gf = db.query(
        """SELECT gf.DocId, gf.FolioNo, gf.Vtype, gf.Vdate, gf.Site_Code,
                  gf.Vprefix, gf.GuestProf, gf.Name, gf.Add1, gf.Add2,
                  gf.City, gf.NoDays, gf.PurVisit, gf.Nationality,
                  gf.ArrFrom, gf.Destination, gf.TravelMode,
                  gf.DepDate, ro.RoomNo, ro.RoomCat, ro.RoomType
        FROM GuestFolio gf
        LEFT JOIN RoomOcc ro ON ro.DocId = gf.DocId AND ro.Site_Code = gf.Site_Code
        WHERE gf.DocId = ? AND gf.Site_Code = ?""",
        (docid, site), cn=cn)
    if not gf:
        return None
    r = gf[0]
    return {
        "docid": r.DocId or "",
        "folio_no": r.FolioNo or 0,
        "vtype": r.Vtype or "",
        "vdate": r.Vdate,
        "site_code": r.Site_Code or "",
        "vprefix": r.Vprefix or "",
        "guestprof": r.GuestProf or "",
        "name": r.Name or "",
        "add1": r.Add1 or "",
        "add2": r.Add2 or "",
        "city": r.City or "",
        "no_days": r.NoDays or 0,
        "pur_visit": r.PurVisit or "",
        "nationality": r.Nationality or "",
        "arr_from": r.ArrFrom or "",
        "destination": r.Destination or "",
        "travel_mode": r.TravelMode or "",
        "dep_date": r.DepDate,
        "room_no": r.RoomNo or "",
        "room_cat": r.RoomCat or "",
        "room_type": r.RoomType or "",
    }
