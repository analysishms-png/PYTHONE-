"""Check-Out core (VB6: Front Office -> Check-Out / Reverse Check-Out).

LIVE DB EVIDENCE:
- GuestFolio table does NOT contain CheckOutYN / CheckOutDate / CheckOutUser.
- Actual checkout state is tracked on RoomOcc via ChkOutDate, ChkOutTime,
  ChkoutUser, Type='O' for occupied rows; reverse checkout reopens by setting
  ChkOutDate=NULL, ChkOutTime='', Type='' (or NULL) and preserving the row.
- Before checkout: balance verification (AmtDr - AmtCr in PayCharge for
  this folio's DocId = outstanding balance).
- FolioLog: flag='C' (Checkout) on checkout, 'R' on Reverse Checkout.
- PYT-guard: production check-outs VB6 EXE se hi; hum PYT* folios test.
"""
from __future__ import annotations

import datetime

from HMS_py.core import db
from HMS_py.core.front_office import checkin

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()


def _get_checkout_type(cn=None) -> str:
    """Read checkout validation type from the live Enviro settings.

    Live schema evidence: the column is named 'Checkout' (with the same
    value used by VB6 for the checkout-time rule label), not 'CheckOutType'.
    Some legacy code references a non-existent column, so we fall back safely.

    BUG-016 fix: f-string column probing ki jagah ek hi parameterized
    query jo sirf existing columns ko try karti hai; pehla non-empty
    value return hota hai. Non-column errors swallow nahi hote.
    """
    # Live DB me jo column exist karta hai wahi order me try karo.
    # Each candidate pe ek targeted query - 'Invalid column name'
    # errors pe hi next candidate, baaki errors propagate.
    for col in ("Checkout", "CheckOutType", "CheckoutType", "CheckOut"):
        try:
            rows = db.query(
                f"SELECT [{col}] FROM Enviro WHERE LogSite_Code = ? OR LogSite_Code = 'HO'",
                (SITE_CODE,), cn=cn,
            )
        except db.pyodbc.Error as e:
            # SQL Server error 207 = Invalid column name -> next candidate
            if "207" in str(e) or "Invalid column name" in str(e):
                continue
            raise
        if rows and rows[0][0] not in (None, ""):
            return str(rows[0][0])
    return "Standard"


def folio_balance(folio: int, cn=None,
                  vprefix: str = "2026") -> dict:
    """Outstanding balance for a folio (Dr - Cr from PayCharge).

    Returns: {folio, docid, charges_dr, payments_cr, balance, currency}
    Positive balance = guest owes money.
    """
    rec = checkin.get(folio, cn=cn, vprefix=vprefix)
    if not rec:
        raise ValueError(f"Folio #{folio} nahi mila")
    rows = db.query(
        "SELECT ISNULL(SUM(AmtDr),0), ISNULL(SUM(AmtCr),0) "
        "FROM PayCharge WHERE FolioNoDocid = ? AND Site_Code = ?",
        (rec["docid"], SITE_CODE), cn=cn)
    dr = float(rows[0][0]) if rows else 0.0
    cr = float(rows[0][1]) if rows else 0.0
    return {
        "folio": folio, "docid": rec["docid"],
        "charges_dr": dr, "payments_cr": cr,
        "balance": round(dr - cr, 2),
        "name": rec["name"], "depdate": rec["depdate"],
    }


def list_active_folios(cn=None, vprefix: str = "2026",
                       top: int = 200) -> list[dict]:
    """Checked-in folios still open in RoomOcc (ChkOutDate IS NULL)."""
    rows = db.query(
        f"SELECT TOP {int(top)} ro.DocId, gf.FolioNo, gf.Name, gf.GuestProf, gf.City, "
        "gf.NoDays, gf.DepDate, ro.ChkOutDate, ro.ChkoutUser, gf.U_Name, gf.U_AE, ro.RoomNo "
        "FROM RoomOcc ro INNER JOIN GuestFolio gf ON gf.DocId = ro.DocId "
        "WHERE ro.Site_Code = ? AND ro.Vprefix = ? AND ro.ChkOutDate IS NULL "
        "ORDER BY gf.FolioNo DESC",
        (SITE_CODE, vprefix), cn=cn)
    out = []
    for r in rows:
        doc, fno, name, gp, city, nod, dep, cod, cou, un, uae, room = r
        out.append({
            "docid": doc, "folio": fno,
            "name": (name or "").strip(),
            "guestprof": gp or "", "city": city or "",
            "roomno": (room or "").strip(),
            "nodays": nod or 0,
            "depdate": dep.date() if isinstance(dep, datetime.datetime) else dep,
            "checkout_date": cod,
            "checkout_user": cou or "",
            "u_name": un or "", "u_ae": uae or "",
        })
    return out


def list_checked_out(cn=None, vprefix: str = "2026",
                     top: int = 200) -> list[dict]:
    """Already checked-out folios via RoomOcc.ChkOutDate IS NOT NULL."""
    rows = db.query(
        "SELECT TOP (?) ro.DocId, gf.FolioNo, gf.Name, gf.DepDate, ro.ChkOutDate, ro.ChkoutUser "
        "FROM RoomOcc ro INNER JOIN GuestFolio gf ON gf.DocId = ro.DocId "
        "WHERE ro.Site_Code = ? AND ro.Vprefix = ? AND ro.ChkOutDate IS NOT NULL "
        "ORDER BY gf.FolioNo DESC",
        (int(top), SITE_CODE, vprefix), cn=cn)
    out = []
    for r in rows:
        doc, fno, name, dep, cod, cou = r
        out.append({
            "docid": doc, "folio": fno,
            "name": (name or "").strip(),
            "depdate": dep.date() if isinstance(dep, datetime.datetime) else dep,
            "checkout_date": cod.date() if isinstance(cod, datetime.datetime) else cod,
            "checkout_user": cou or "",
        })
    return out


def do_checkout(folio: int, user: str = USER, cn=None,
                commit: bool = True, vprefix: str = "2026",
                site: str = SITE_CODE) -> dict:
    """VB6 checkout flow using the live RoomOcc status fields.

    1. Folio exists and is currently active.
    2. Validate checkout type from Enviro settings.
    3. Mark RoomOcc row as checked out: ChkOutDate=getdate(), ChkoutUser=user,
       ChkOutTime=now, Type='O'.
    4. FolioLog: flag='C'.
    Returns balance info dict.
    """
    rec = checkin.get(folio, cn=cn, vprefix=vprefix)
    if not rec:
        raise ValueError(f"Folio #{folio} nahi mila")

    rows = db.query(
        "SELECT DocId, ChkOutDate, Type FROM RoomOcc WHERE Site_Code = ? AND "
        "Vprefix = ? AND FolioNo = ? AND ChkOutDate IS NULL ORDER BY SNo",
        (site, vprefix, folio), cn=cn)
    if not rows:
        raise ValueError(f"Folio #{folio} checked-out ya room row missing hai")

# Validate checkout type from Enviro (VB6 FdCheckOut.frm:3202)
    checkout_type = _get_checkout_type(cn=cn)
    bal = folio_balance(folio, cn=cn, vprefix=vprefix)

    # VB6 FdCheckOut.frm:3202 — checkout blocks while guest balance != 0
    # ONLY for "Strict" type. "Standard" type allows non-zero balance
    # (Settlement is the separate fdReSetlement flow).
    if checkout_type == "Strict" and abs(bal["balance"]) > 0.005:
        raise ValueError(f"Checkout type '{checkout_type}' requires zero balance")

    # VB6 FdCheckOut.frm:3465-3482: RoomCheckOutClearanceYN enabled hone
    # par clearance pending ho to checkout block.
    clr = check_clearance(folio, cn=cn)
    if clr["enabled"] and not clr["cleared"]:
        raise ValueError("Room Check Out Clearance Is Still Pending.")

    own = cn is None
    cn_use = cn or db.connect()
    try:
        db.execute(
            "UPDATE RoomOcc SET ChkOutDate = getdate(), ChkOutTime = CONVERT(varchar(5), getdate(), 108), "
            "ChkoutUser = ?, Type = 'O', U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
            "WHERE Site_Code = ? AND Vprefix = ? AND FolioNo = ? AND ChkOutDate IS NULL",
            (user, user, site, vprefix, folio),
            cn=cn_use, commit=False)

        log_rows = db.query(
            "SELECT MAX(Id) FROM FolioLog WHERE LogSite_Code = ?",
            (site,), cn=cn_use)
        logid = (log_rows[0][0] or 0) + 1 if log_rows and log_rows[0][0] else 1
        db.execute(
            "INSERT INTO FolioLog (Id, FolionoDocid, Flag, Site_Code, "
            "U_Name, U_EntDt, U_AE, LogSite_Code) "
            "VALUES (?, ?, 'C', ?, ?, getdate(), 'A', ?)",
            (logid, rec["docid"], site, user, site),
            cn=cn_use, commit=False)

        if commit:
            cn_use.commit()
        return bal
    finally:
        if own:
            cn_use.close()


def reverse_checkout(folio: int, user: str = USER, cn=None,
                     commit: bool = True, vprefix: str = "2026",
                     site: str = SITE_CODE) -> int:
    """VB6 reverse checkout: reopen the live RoomOcc row."""
    rows = db.query(
        "SELECT DocId, ChkOutDate FROM RoomOcc WHERE Site_Code = ? AND "
        "Vprefix = ? AND FolioNo = ? AND ChkOutDate IS NOT NULL ORDER BY SNo",
        (site, vprefix, folio), cn=cn)
    if not rows:
        raise ValueError(f"Folio #{folio} checked-out nahi hai")

    own = cn is None
    cn_use = cn or db.connect()
    try:
        n = db.execute(
            "UPDATE RoomOcc SET ChkOutDate = NULL, ChkOutTime = '', "
            "ChkoutUser = NULL, UserChkOutDate = NULL, Type = '', "
            "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
            "WHERE Site_Code = ? AND Vprefix = ? AND FolioNo = ? AND ChkOutDate IS NOT NULL",
            (user, site, vprefix, folio), cn=cn_use, commit=False)

        # VB6 FdRevCheckOut.frm:1482: group members (MFolioNoDocid link)
        # bhi reverse - UserChkOutDate/ChkOutUser clear on Type='O' rows.
        gf = db.query(
            "SELECT MFolioNoDocid FROM GuestFolio WHERE DocId = ?",
            (rows[0][0],), cn=cn_use)
        mfdocid = (gf[0][0] or "").strip() if gf and gf[0][0] else ""
        if mfdocid:
            db.execute(
                "UPDATE RoomOcc SET ChkOutDate = NULL, ChkOutTime = '', "
                "ChkoutUser = NULL, UserChkOutDate = NULL, Type = '', "
                "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
                "WHERE Site_Code = ? AND Type = 'O' AND DocId IN ("
                "SELECT DocId FROM GuestFolio WHERE MFolioNoDocid = ?)",
                (user, site, mfdocid), cn=cn_use, commit=False)

        # VB6 FdRevCheckOut.frm:1490-1503: settle marks reverse
        db.execute(
            "UPDATE PayCharge SET SettleDate = NULL, Bill_No = NULL "
            "WHERE Site_Code = ? AND VPrefix = ? AND FolioNo = ? AND "
            "Vtype NOT IN ('ARRES', 'ADRES')",
            (site, vprefix, folio), cn=cn_use, commit=False)
        db.execute(
            "UPDATE PayCharge SET ModeSet = '' WHERE Site_Code = ? AND "
            "VPrefix = ? AND FolioNo = ? AND ModeSet = 'S' AND "
            "PayCode <> ?",
            (site, vprefix, folio, "KKROFF"), cn=cn_use, commit=False)
        db.execute(
            "UPDATE FOMBillDetails SET Status = 'CANCEL', U_Name = ?, "
            "U_EntDt = getdate(), U_AE = 'E' WHERE FolioNo = ? AND "
            "SiteCode = ? AND Status = 'SETTLE'",
            (user, folio, site), cn=cn_use, commit=False)

        log_rows = db.query(
            "SELECT MAX(Id) FROM FolioLog WHERE LogSite_Code = ?",
            (site,), cn=cn_use)
        logid = (log_rows[0][0] or 0) + 1 if log_rows and log_rows[0][0] else 1
        db.execute(
            "INSERT INTO FolioLog (Id, FolionoDocid, Flag, Site_Code, "
            "U_Name, U_EntDt, U_AE, LogSite_Code) "
            "VALUES (?, ?, 'R', ?, ?, getdate(), 'A', ?)",
            (logid, rows[0][0], site, user, site),
            cn=cn_use, commit=False)

        if commit:
            cn_use.commit()
        return n
    finally:
        if own:
            cn_use.close()


# ============================================================
# Checkout Clearance (VB6: HRoomCheckOutClearance)
# ============================================================

def get_clearance_flag(cn=None) -> str:
    """Read RoomCheckOutClearanceYN from Enviro. Returns 'Yes'/'No'."""
    rows = db.query(
        "SELECT RoomCheckOutClearanceYN FROM Enviro WHERE LogSite_Code = ?",
        (SITE_CODE,), cn=cn)
    if rows and rows[0][0]:
        return str(rows[0][0]).strip()
    return "No"


def check_clearance(folio: int, cn=None) -> dict:
    """Check checkout clearance for a folio (VB6 HRoomCheckOutClearance).

    Returns: {
        "enabled": bool,        # Is clearance required?
        "cleared": bool,        # All checks passed?
        "bill_settled": bool,   # FOMBillDetails status = SETTLE
        "balance_zero": bool,   # Outstanding balance = 0
        "bill_status": str,     # SETTLE/PENDING/NONE
        "balance": float,       # Outstanding amount
        "message": str,         # Human-readable status
    }
    """
    flag = get_clearance_flag(cn=cn)
    enabled = flag.lower() == "yes"

    # Check FOMBillDetails status
    bill_rows = db.query(
        "SELECT TOP 1 Status, BillAmt FROM FOMBillDetails "
        "WHERE FolioNo = ? AND SiteCode = ? ORDER BY Bill_No DESC",
        (folio, SITE_CODE), cn=cn)
    if bill_rows:
        bill_status = str(bill_rows[0][0] or "").strip().upper()
        bill_settled = bill_status == "SETTLE"
    else:
        bill_status = "NONE"
        bill_settled = True  # No bill = no issue

    # Check outstanding balance
    try:
        bal_info = folio_balance(folio, cn=cn)
        balance = bal_info.get("balance", 0)
    except ValueError:
        balance = 0  # Folio not found = no outstanding
    balance_zero = abs(balance) < 0.01

    cleared = bill_settled and balance_zero

    if not enabled:
        msg = "Clearance not required (RoomCheckOutClearanceYN=No)"
    elif cleared:
        msg = "All cleared - OK to checkout"
    else:
        issues = []
        if not bill_settled:
            issues.append(f"Bill status={bill_status}")
        if not balance_zero:
            issues.append(f"Balance outstanding={balance:.2f}")
        msg = "NOT cleared: " + "; ".join(issues)

    return {
        "enabled": enabled,
        "cleared": cleared,
        "bill_settled": bill_settled,
        "balance_zero": balance_zero,
        "bill_status": bill_status,
        "balance": balance,
        "message": msg,
    }


def clearance_list(cn=None, top: int = 100) -> list:
    """List recent settled bills for clearance review (FOMBillDetails browse)."""
    rows = db.query(
        f"SELECT TOP {int(top)} Bill_No, Bill_Date, FolioNo, Guestname, "
        "BillAmt, SettMode, SettAmt, Status "
        "FROM FOMBillDetails WHERE SiteCode = ? "
        "ORDER BY Bill_Date DESC, Bill_No DESC",
        (SITE_CODE,), cn=cn)
    return [{"bill_no": r.Bill_No or "", "bill_date": r.Bill_Date,
             "folio": r.FolioNo, "guest": (r.Guestname or "").strip(),
             "bill_amt": float(r.BillAmt or 0),
             "sett_mode": (r.SettMode or "").strip(),
             "sett_amt": float(r.SettAmt or 0),
             "status": (r.Status or "").strip()} for r in rows]


# ──────────────────────────────────────────────────────────────────────
# Group Check-Out (VB6: FdGrpCheckOut.frm)
# ──────────────────────────────────────────────────────────────────────

def group_checkout(master_folio: int, user: str = USER, cn=None,
                   commit: bool = True, site: str = SITE_CODE,
                   vprefix: str = "2026") -> dict:
    """
    VB6 Group Check-Out (FdGrpCheckOut.frm): settle + checkout multiple
    linked folios together under a master folio.

    VB6 Logic (FdGrpCheckOut.frm):
    - Master folio (MFolioNo=0) has sub-folios linked via MFolioNo
    - All sub-folios share the same guest/group booking
    - Settlement: can pay consolidated bill or split across folios
    - Advance deposits on master folio applied to sub-folios
    - Single consolidated bill print option
    - All sub-folios checked out together

    Returns: {"settled": N, "checked_out": N, "errors": [...], "master_folio": master_folio}
    """
    from HMS_py.core import folio as folio_mod
    from HMS_py.core.front_office import checkin as checkin_mod

    # 1. Validate master folio exists
    master_rec = checkin_mod.get(master_folio, cn=cn, vprefix=vprefix)
    if not master_rec:
        raise ValueError(f"Master folio #{master_folio} nahi mila")

    # 2. Get all sub-folios (MFolioNo = master_folio)
    sub_folios = db.query(
        "SELECT FolioNo FROM GuestFolio WHERE Site_Code = ? AND Vprefix = ? "
        "AND MFolioNo = ? AND MFolioNoDocid = ?",
        (site, vprefix, master_folio, master_rec["docid"]), cn=cn)
    sub_folio_nos = [r[0] for r in sub_folios] if sub_folios else []

    if not sub_folio_nos:
        raise ValueError(f"Master folio #{master_folio} ke saath koi sub-folio linked nahi hai")

    # 3. Get consolidated balance across all folios
    total_dr = total_cr = 0.0
    folio_details = []
    for fno in sub_folio_nos:
        bal = folio_balance(fno, cn=cn, vprefix=vprefix)
        total_dr += bal["charges_dr"]
        total_cr += bal["payments_cr"]
        folio_details.append({
            "folio": fno,
            "name": bal["name"],
            "depdate": bal["depdate"],
            "charges_dr": bal["charges_dr"],
            "payments_cr": bal["payments_cr"],
            "balance": bal["balance"],
            "docid": bal["docid"],
        })

    total_balance = total_dr - total_cr

    # 4. Validate each sub-folio can be checked out
    checkout_type = _get_checkout_type(cn=cn)
    checkout_errors = []
    for fd in folio_details:
        fno = fd["folio"]
        # Check if already checked out
        rows = db.query(
            "SELECT COUNT(*) FROM RoomOcc WHERE Site_Code = ? AND Vprefix = ? "
            "AND FolioNo = ? AND ChkOutDate IS NOT NULL",
            (site, vprefix, fno), cn=cn)
        if rows and rows[0][0]:
            checkout_errors.append({"folio": fno, "error": "Already checked out"})
            continue

        # Check clearance
        clr = check_clearance(fno, cn=cn)
        if clr["enabled"] and not clr["cleared"]:
            checkout_errors.append({"folio": fno, "error": clr["message"]})
            continue

        # Strict mode balance check
        if checkout_type == "Strict" and abs(fd["balance"]) > 0.005:
            checkout_errors.append({"folio": fno, "error": "Non-zero balance in Strict mode"})

    if checkout_errors:
        return {
            "settled": 0,
            "checked_out": 0,
            "errors": checkout_errors,
            "master_folio": master_folio,
            "sub_folios": sub_folio_nos,
        }

    # 5. Execute group settlement + checkout in single transaction
    own = cn is None
    cn = cn or db.connect()
    settled = 0
    checked_out = 0
    try:
        for fd in folio_details:
            fno = fd["folio"]

            # 5a. Settle folio (create FOMBillDetails, update PayCharge)
            folio_mod.settle_folio(fno, user=user, cn=cn, commit=False,
                                   site=site, vprefix=vprefix)

            # 5b. Check out (update RoomOcc, FolioLog)
            do_checkout(fno, user=user, cn=cn, commit=False,
                        site=site, vprefix=vprefix)
            checked_out += 1

        if commit:
            cn.commit()
        settled = len(folio_details)

        return {
            "settled": settled,
            "checked_out": checked_out,
            "errors": [],
            "master_folio": master_folio,
            "sub_folios": sub_folio_nos,
            "total_charges": total_dr,
            "total_payments": total_cr,
            "total_balance": total_balance,
        }
    except Exception as ex:
        try:
            cn.rollback()
        except Exception:
            pass
        raise
    finally:
        if own:
            cn.close()


def get_group_folios(master_folio: int, cn=None,
                     site: str = SITE_CODE, vprefix: str = "2026") -> list[dict]:
    """Get all sub-folios for a master folio (VB6 FdGrpCheckOut grid)."""
    from HMS_py.core.front_office import checkin as checkin_mod
    master_rec = checkin.get(master_folio, cn=cn, vprefix=vprefix)
    if not master_rec:
        return []

    rows = db.query(
        "SELECT gf.FolioNo, gf.Name, gf.DepDate, gf.NoDays, gf.DocId, "
        "gf.MFolioNo, gf.MFolioNoDocid, "
        "ro.RoomNo, ro.ChkInDate, ro.ChkOutDate, "
        "gf.U_Name, gf.U_AE "
        "FROM GuestFolio gf "
        "LEFT JOIN RoomOcc ro ON ro.DocId = gf.DocId AND ro.Site_Code = ? "
        "WHERE gf.Site_Code = ? AND gf.Vprefix = ? "
        "AND gf.MFolioNo = ? AND gf.MFolioNoDocid = ? "
        "ORDER BY gf.FolioNo",
        (site, site, vprefix, master_folio, master_rec["docid"]), cn=cn)

    out = []
    for r in rows:
        fno, name, depdate, nodays, docid, mfolio, mfoliodocid, roomno, chk_in, chk_out, u_name, u_ae = r
        bal = folio_balance(fno, cn=cn, vprefix=vprefix)
        out.append({
            "folio": fno,
            "name": (name or "").strip(),
            "depdate": depdate.date() if isinstance(depdate, datetime.datetime) else depdate,
            "nodays": nodays or 0,
            "docid": (docid or "").strip(),
            "mfolio": mfolio,
            "mfoliodocid": (mfoliodocid or "").strip(),
            "roomno": (roomno or "").strip(),
            "chk_in": chk_in.date() if isinstance(chk_in, datetime.datetime) else chk_in,
            "chk_out": chk_out.date() if isinstance(chk_out, datetime.datetime) else chk_out,
            "u_name": u_name or "",
            "u_ae": u_ae or "",
            "charges_dr": bal["charges_dr"],
            "payments_cr": bal["payments_cr"],
            "balance": bal["balance"],
        })
    return out


def group_checkout_preview(master_folio: int, cn=None,
                           site: str = SITE_CODE, vprefix: str = "2026") -> dict:
    """Preview group check-out: show consolidated balance without executing."""
    from HMS_py.core.front_office import checkin as checkin_mod

    master_rec = checkin_mod.get(master_folio, cn=cn, vprefix=vprefix)
    if not master_rec:
        raise ValueError(f"Master folio #{master_folio} nahi mila")

    sub = get_group_folios(master_folio, cn=cn, site=site, vprefix=vprefix)

    total_dr = sum(f["charges_dr"] for f in sub)
    total_cr = sum(f["payments_cr"] for f in sub)

    return {
        "master_folio": master_folio,
        "master_name": master_rec["name"],
        "master_docid": master_rec["docid"],
        "sub_folios": sub,
        "total_folios": len(sub),
        "total_charges": total_dr,
        "total_payments": total_cr,
        "total_balance": total_dr - total_cr,
    }
