"""Inconsistency Check — read-only data-integrity detector.

VB6 reference: `LOGIC/VISUALBASIC/FrmInc.frm` ("Inconsistency Check" /
"Integrity Check"). The VB6 form exposes one button per data area
(Purchase, House Keeping/Kitchen, Godown, Banquet, FrontDesk, PaymentTypes,
F.O.M., Accounts, Voucher Types, Account Group, Tax, Unit, Sundry Master,
Sundry Type Fix, Restaurant, Room Service) and each button runs
detect-then-fix SQL.

This module ports the **detection** half only. Every statement here is a
`SELECT`; nothing is updated, deleted or inserted. Auto-fix is deliberately
NOT ported because the migration rules forbid destructive SQL without an
explicit, audited repair path. The UI shows the offending rows so an operator
can correct them through the normal entry forms.

Contract
--------
`check_inconsistencies(cn=None, site=None)` returns::

    {
      "site": "KK",
      "generated_at": "2026-11-04T12:00:00",
      "checks": [
        {
          "key": "roomocc_without_roommast",
          "title": "Open RoomOcc rows whose room is missing from RoomMast",
          "severity": "error",            # "error" | "warn"
          "count": 3,
          "columns": ["DocId", "RoomNo"],
          "rows": [[...], [...]],
          "error": None,                  # populated when the probe failed
        },
        ...
      ],
      "totals": {"error": 1, "warn": 0, "checks_run": 14, "checks_failed": 0},
    }

The function never raises for a single failed probe — the failure is recorded
on that check so the UI can show "table not available" instead of dying.
"""

from __future__ import annotations

from datetime import datetime

from HMS_py.core import db

SITE_CODE = db.get_site_code()

# SQL Server stores Vtype padded to 5 chars ('RC   '), so always RTRIM().
_RC = "RTRIM(p.Vtype) = 'RC'"


def _rows(cn, sql: str, params: tuple = ()) -> list[list]:
    """Run a read-only probe and flatten rows to plain lists."""
    out = []
    for row in db.query(sql, params, cn=cn):
        out.append([None if v is None else v for v in row])
    return out


# Each check: (key, title, severity, sql, param_builder, columns)
# param_builder(site) -> tuple of params for the SQL.
def _p1(site: str) -> tuple:
    return (site,)


CHECKS = [
    (
        "site_split",
        "Core tables do not share one Site_Code",
        "error",
        "SELECT 'RoomMast' AS Tbl, Site_Code, COUNT(*) AS Cnt FROM RoomMast "
        "GROUP BY Site_Code "
        "UNION ALL SELECT 'GuestFolio', Site_Code, COUNT(*) FROM GuestFolio "
        "GROUP BY Site_Code "
        "UNION ALL SELECT 'PayCharge', Site_Code, COUNT(*) FROM PayCharge "
        "GROUP BY Site_Code "
        "UNION ALL SELECT 'RoomOcc', Site_Code, COUNT(*) FROM RoomOcc "
        "GROUP BY Site_Code "
        "ORDER BY Tbl, Site_Code",
        lambda site: (),
        ["Table", "Site_Code", "Rows"],
    ),
    (
        "roomocc_without_roommast",
        "Open RoomOcc rows whose RoomNo is missing from RoomMast",
        "error",
        "SELECT ro.DocId, ro.FolioNo, ro.RoomNo "
        "FROM RoomOcc ro "
        "WHERE ro.Site_Code = ? AND ro.ChkOutDate IS NULL "
        "  AND (ro.RoomNo IS NULL OR ro.RoomNo = '' OR NOT EXISTS ("
        "        SELECT 1 FROM RoomMast rm "
        "        WHERE rm.Code = ro.RoomNo AND rm.Site_Code = ro.Site_Code))",
        _p1,
        ["DocId", "FolioNo", "RoomNo"],
    ),
    (
        "roomocc_without_guestfolio",
        "RoomOcc rows whose DocId has no GuestFolio header",
        "error",
        "SELECT ro.DocId, ro.FolioNo, ro.RoomNo, ro.ChkInDate, ro.ChkOutDate "
        "FROM RoomOcc ro "
        "WHERE ro.Site_Code = ? AND NOT EXISTS ("
        "        SELECT 1 FROM GuestFolio gf "
        "        WHERE gf.DocId = ro.DocId AND gf.Site_Code = ro.Site_Code)",
        _p1,
        ["DocId", "FolioNo", "RoomNo", "ChkInDate", "ChkOutDate"],
    ),
    (
        "guestfolio_without_roomocc",
        "GuestFolio headers with no RoomOcc row (may be historical)",
        "warn",
        "SELECT gf.DocId, gf.FolioNo, gf.Name, gf.Vdate, gf.Vprefix "
        "FROM GuestFolio gf "
        "WHERE gf.Site_Code = ? AND NOT EXISTS ("
        "        SELECT 1 FROM RoomOcc ro "
        "        WHERE ro.DocId = gf.DocId AND ro.Site_Code = gf.Site_Code)",
        _p1,
        ["DocId", "FolioNo", "Name", "Vdate", "Vprefix"],
    ),
    (
        "paycharge_without_guestfolio",
        "PayCharge lines whose FolioNoDocid has no GuestFolio header",
        "error",
        "SELECT p.DocId, p.FolioNo, p.FolioNoDocid, p.Vtype, p.VNo, "
        "       p.AmtDr, p.AmtCr "
        "FROM PayCharge p "
        "WHERE p.Site_Code = ? AND NOT EXISTS ("
        "        SELECT 1 FROM GuestFolio gf "
        "        WHERE gf.DocId = p.FolioNoDocid AND gf.Site_Code = p.Site_Code)",
        _p1,
        ["DocId", "FolioNo", "FolioNoDocid", "Vtype", "VNo", "AmtDr", "AmtCr"],
    ),
    (
        "paycharge_rc_without_roomocc",
        "Room-charge lines (Vtype RC) with no RoomOcc row for the folio",
        "error",
        "SELECT p.DocId, p.FolioNo, p.FolioNoDocid, p.RoomNo, "
        "       p.AmtDr, p.AmtCr, p.Vdate "
        "FROM PayCharge p "
        "WHERE p.Site_Code = ? AND " + _RC + " AND NOT EXISTS ("
        "        SELECT 1 FROM RoomOcc ro "
        "        WHERE ro.DocId = p.FolioNoDocid AND ro.Site_Code = p.Site_Code)",
        _p1,
        ["DocId", "FolioNo", "FolioNoDocid", "RoomNo", "AmtDr", "AmtCr", "Vdate"],
    ),
    (
        "paycharge_dr_cr_both",
        "PayCharge lines with both AmtDr and AmtCr non-zero",
        "error",
        "SELECT p.DocId, p.FolioNo, p.Vtype, p.AmtDr, p.AmtCr "
        "FROM PayCharge p "
        "WHERE p.Site_Code = ? AND ISNULL(p.AmtDr, 0) <> 0 "
        "  AND ISNULL(p.AmtCr, 0) <> 0",
        _p1,
        ["DocId", "FolioNo", "Vtype", "AmtDr", "AmtCr"],
    ),
    (
        "paycharge_negative_amount",
        "PayCharge lines with a negative amount",
        "warn",
        "SELECT p.DocId, p.FolioNo, p.Vtype, p.AmtDr, p.AmtCr "
        "FROM PayCharge p "
        "WHERE p.Site_Code = ? AND (ISNULL(p.AmtDr, 0) < 0 "
        "  OR ISNULL(p.AmtCr, 0) < 0)",
        _p1,
        ["DocId", "FolioNo", "Vtype", "AmtDr", "AmtCr"],
    ),
    (
        "voucher_type_without_prefix",
        "Voucher_Type rows with no Voucher_Prefix for the site",
        "warn",
        "SELECT vt.V_Type, vt.Description "
        "FROM Voucher_Type vt "
        "WHERE vt.Site_Code = ? AND NOT EXISTS ("
        "        SELECT 1 FROM Voucher_Prefix vp "
        "        WHERE vp.V_Type = vt.V_Type AND vp.Site_Code = vt.Site_Code)",
        _p1,
        ["V_Type", "Description"],
    ),
    (
        "ledger_without_ledgerm",
        "Ledger lines whose DocId has no LedgerM header",
        "error",
        "SELECT l.DocId, l.V_Type, l.V_No, l.V_Date, l.AmtDr, l.AmtCr "
        "FROM Ledger l "
        "WHERE l.Site_Code = ? AND NOT EXISTS ("
        "        SELECT 1 FROM LedgerM m "
        "        WHERE m.DocId = l.DocId AND m.Site_Code = l.Site_Code)",
        _p1,
        ["DocId", "V_Type", "V_No", "V_Date", "AmtDr", "AmtCr"],
    ),
    (
        "ledgerm_without_ledger",
        "LedgerM headers with no Ledger lines",
        "warn",
        "SELECT m.DocId, m.V_Type, m.V_No, m.V_Date "
        "FROM LedgerM m "
        "WHERE m.Site_Code = ? AND NOT EXISTS ("
        "        SELECT 1 FROM Ledger l "
        "        WHERE l.DocId = m.DocId AND l.Site_Code = m.Site_Code)",
        _p1,
        ["DocId", "V_Type", "V_No", "V_Date"],
    ),
    (
        "itemmast_bad_unit",
        "ItemMast rows whose Unit is missing from UnitMast",
        "warn",
        "SELECT i.Code, i.Name, i.Unit "
        "FROM ItemMast i "
        "WHERE i.Site_Code = ? AND i.Unit IS NOT NULL AND i.Unit <> '' "
        "  AND NOT EXISTS ("
        "        SELECT 1 FROM UnitMast u "
        "        WHERE u.Name = i.Unit AND u.Site_Code = i.Site_Code)",
        _p1,
        ["Code", "Name", "Unit"],
    ),
    (
        "acgroup_orphan",
        "AcGroup rows whose MainGrCode has no matching group",
        "error",
        "SELECT g.GroupCode, g.GroupName, g.MainGrCode "
        "FROM AcGroup g "
        "WHERE g.Site_Code = ? AND g.MainGrCode IS NOT NULL "
        "  AND g.MainGrCode <> '' AND NOT EXISTS ("
        "        SELECT 1 FROM AcGroup p "
        "        WHERE p.GroupCode = g.MainGrCode AND p.Site_Code = g.Site_Code)",
        _p1,
        ["GroupCode", "GroupName", "MainGrCode"],
    ),
    (
        "sundrytype_without_sundrymast",
        "SundryType rows whose SundryCode has no SundryMast",
        "error",
        "SELECT s.V_Type, s.SundryCode, s.DispName "
        "FROM SundryType s "
        "WHERE s.SiteCode = ? AND NOT EXISTS ("
        "        SELECT 1 FROM SundryMast m "
        "        WHERE m.Code = s.SundryCode AND m.Site_Code = s.SiteCode)",
        _p1,
        ["V_Type", "SundryCode", "DispName"],
    ),
    (
        "sundrytypefix_without_sundrymast",
        "SundryTypeFix rows whose SundryCode has no SundryMast",
        "error",
        "SELECT f.SundryCode, f.DispName, f.SNo "
        "FROM SundryTypeFix f "
        "WHERE f.Site_Code = ? AND NOT EXISTS ("
        "        SELECT 1 FROM SundryMast m "
        "        WHERE m.Code = f.SundryCode AND m.Site_Code = f.Site_Code)",
        _p1,
        ["SundryCode", "DispName", "SNo"],
    ),
]


def check_inconsistencies(cn=None, site: str | None = None,
                          include_rows: bool = True) -> dict:
    """Run every read-only integrity probe and return a structured report."""
    site = (site or SITE_CODE or "").strip()
    own = cn is None
    cn = cn or db.connect()
    results = []
    n_err = n_warn = n_failed = 0
    try:
        for key, title, severity, sql, param_builder, columns in CHECKS:
            entry = {
                "key": key,
                "title": title,
                "severity": severity,
                "columns": columns,
                "count": 0,
                "rows": [],
                "error": None,
            }
            try:
                rows = _rows(cn, sql, param_builder(site))
                entry["count"] = len(rows)
                if include_rows:
                    entry["rows"] = rows
                if entry["count"]:
                    if severity == "error":
                        n_err += 1
                    else:
                        n_warn += 1
            except Exception as exc:  # table/column missing on this DB
                entry["error"] = f"{type(exc).__name__}: {exc}"
                n_failed += 1
            results.append(entry)
    finally:
        if own:
            cn.close()

    return {
        "site": site,
        "generated_at": datetime.now().isoformat(timespec="seconds"),
        "checks": results,
        "totals": {
            "error": n_err,
            "warn": n_warn,
            "checks_run": len(results),
            "checks_failed": n_failed,
        },
    }


def summary_counts(report: dict) -> dict:
    """Flatten a report into {key: count} for quick assertions/UI badges."""
    return {c["key"]: c["count"] for c in report.get("checks", [])}
