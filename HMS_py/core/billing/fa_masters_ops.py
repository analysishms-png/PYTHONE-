"""FA Masters Ops — PARTIAL bucket parity (VB6 forms: FaTDSCat, FaGrEnt,
FaSubGroup, FaGlobeNarr, DepOpStk, FaReports, DepartMast cascade).

Tables (live-verified schema):
- TDSCAT: Code, Name, TDSLimit, TDSPercentage + audit cols (VB6 FaTDSCat)
- AcGroup: GroupCode PK, GroupName, GroupNature(A/E/L/R), Nature(Dr/Cr),
  MainGrCode, SubLedYN, AliasYN, SysGroup, TradingYN (VB6 FaGrEnt)
- SubGroup: SubCode PK, Name, GroupCode, CityCode, Add1..3, Phone... (VB6 FaSubGroup)
- NarrMast: Name list (VB6 FaGlobeNarr global narration picker)
- KClStk with Vtype='DOPR': Location-wise Opening Stock (VB6 DepOpStk)
- Budget view join (VB6 FaReports budget browse)

All ops go through HMS_py.core.db (single connection policy).
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()


# ============================================================
# TDSCAT — T.D.S. Category Entry (VB6 FaTDSCat)
# ============================================================
def tdscat_list(cn=None) -> list[dict]:
    rows = db.query(
        "SELECT Code, Name, ISNULL(TDSLimit, 0), ISNULL(TDSPercentage, 0), "
        "ISNULL(U_Name, ''), ISNULL(U_AE, '') "
        "FROM TDSCAT ORDER BY Name", cn=cn)
    return [{"code": str(r[0] or ""), "name": (r[1] or "").strip(),
             "limit": float(r[2] or 0), "pct": float(r[3] or 0),
             "u_name": (r[4] or "").strip(), "u_ae": (r[5] or "").strip()}
            for r in rows]


def tdscat_next_code(cn=None) -> str:
    """VB6: '1' + Format(n, "0000") site-prefixed auto-number (e.g. KK00005)."""
    rows = db.query(
        "SELECT MAX(CASE WHEN ISNUMERIC(SUBSTRING(Code, 3, 20)) = 1 "
        "THEN CAST(SUBSTRING(Code, 3, 20) AS INT) END) FROM TDSCAT", cn=cn)
    n = int(rows[0][0] or 0) if rows and rows[0][0] is not None else 0
    return f"{SITE_CODE[:2]}{n + 1:04d}"


def tdscat_name_exists(name: str, exclude_code: str = "", cn=None) -> bool:
    """VB6 Txt_Validate: 'Name Already Exists' duplicate guard."""
    rows = db.query(
        "SELECT 1 FROM TDSCAT WHERE RTRIM(Name) = ? AND RTRIM(Code) <> ?",
        (name.strip(), exclude_code.strip()), cn=cn)
    return bool(rows)


def tdscat_insert(name: str, limit: float, pct: float, cn=None,
                  commit: bool = True) -> str:
    name = (name or "").strip()
    if not name:
        raise ValueError("Description zaroori hai")
    if tdscat_name_exists(name, cn=cn):
        raise ValueError("Name Already Exists")
    code = tdscat_next_code(cn=cn)
    db.execute(
        "INSERT INTO TDSCAT (code, name, TDSLimit, TDSPercentage, "
        "U_Name, U_EntDt, U_AE, Site_Code, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, GETDATE(), 'A', ?, ?)",
        (code, name, float(limit or 0), float(pct or 0), USER,
         SITE_CODE, SITE_CODE), cn=cn, commit=commit)
    return code


def tdscat_update(code: str, name: str, limit: float, pct: float, cn=None,
                  commit: bool = True) -> int:
    code = (code or "").strip()
    name = (name or "").strip()
    if not code:
        raise ValueError("Code zaroori hai")
    if not name:
        raise ValueError("Description zaroori hai")
    if tdscat_name_exists(name, exclude_code=code, cn=cn):
        raise ValueError("Name Already Exists")
    return db.execute(
        "UPDATE TDSCAT SET name = ?, TDSLimit = ?, TDSPercentage = ?, "
        "U_Name = ?, U_EntDt = GETDATE(), U_AE = 'E' "
        "WHERE RTRIM(Code) = ?",
        (name, float(limit or 0), float(pct or 0), USER, code),
        cn=cn, commit=commit)


def tdscat_delete(code: str, cn=None, commit: bool = True) -> int:
    """VB6: Delete From TDSCAT Where code='...' (transaction-wrapped)."""
    return db.execute("DELETE FROM TDSCAT WHERE RTRIM(Code) = ?",
                      ((code or "").strip(),), cn=cn, commit=commit)


# ============================================================
# AcGroup — Group Accounts Entry (VB6 FaGrEnt)
# ============================================================
def acgroup_list(cn=None) -> list[dict]:
    """VB6 grid fill: MainGrCode<>'999', with parent name + nature decode."""
    rows = db.query(
        "SELECT G.GroupCode, G.GroupName, ISNULL(G.GroupNature, ''), "
        "ISNULL(G.Nature, ''), ISNULL(G.MainGrCode, ''), "
        "ISNULL(P.GroupName, ''), ISNULL(G.SubLedYN, 'N'), "
        "ISNULL(G.AliasYN, 'N'), ISNULL(G.SysGroup, 'N'), "
        "ISNULL(G.TradingYN, 'N'), ISNULL(G.CurrentBalance, 0) "
        "FROM AcGroup G LEFT JOIN AcGroup P ON G.MainGrCode = P.GroupCode "
        "WHERE ISNULL(G.MainGrCode, '') <> '999' "
        "ORDER BY G.GroupName", cn=cn)
    return [{"code": (r[0] or "").strip(), "name": (r[1] or "").strip(),
             "gnature": (r[2] or "").strip(), "nature": (r[3] or "").strip(),
             "main_code": (r[4] or "").strip(), "main_name": (r[5] or "").strip(),
             "subled": (r[6] or "").strip(), "alias": (r[7] or "").strip(),
             "sys": (r[8] or "").strip(), "trading": (r[9] or "").strip(),
             "bal": float(r[10] or 0)} for r in rows]


def acgroup_parent_options(cn=None) -> list[tuple[str, str]]:
    """VB6 Under-combo: (GroupCode, GroupName) where AliasYN<>'Y'."""
    rows = db.query(
        "SELECT GroupCode, GroupName FROM AcGroup "
        "WHERE ISNULL(AliasYN, 'N') <> 'Y' ORDER BY GroupName", cn=cn)
    return [((r[0] or "").strip(), (r[1] or "").strip()) for r in rows]


def acgroup_next_code(cn=None) -> str:
    """VB6: site-prefixed zero-filled numeric code (e.g. KK00073)."""
    rows = db.query(
        "SELECT MAX(CASE WHEN ISNUMERIC(SUBSTRING(GroupCode, 3, 20)) = 1 "
        "THEN CAST(SUBSTRING(GroupCode, 3, 20) AS INT) END) FROM AcGroup", cn=cn)
    n = int(rows[0][0] or 0) if rows and rows[0][0] is not None else 0
    return f"{SITE_CODE[:2]}{n + 1:04d}"


def acgroup_insert(rec: dict, cn=None, commit: bool = True) -> str:
    name = (rec.get("name") or "").strip()
    if not name:
        raise ValueError("Group Name zaroori hai")
    gnature = (rec.get("gnature") or "A").strip().upper()
    if gnature not in ("A", "E", "L", "R", "O"):
        raise ValueError("Group Nature sirf A/E/L/R/O")
    nature = (rec.get("nature") or "Dr").strip().title()
    code = (rec.get("code") or "").strip() or acgroup_next_code(cn=cn)
    db.require_absent("AcGroup", "GroupCode", code, "Group Code")
    db.execute(
        "INSERT INTO AcGroup (GroupCode, Site_Code, GroupName, GroupNature, "
        "Nature, MainGrCode, SubLedYN, AliasYN, SysGroup, TradingYN, "
        "U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, GETDATE(), 'A', ?)",
        (code, SITE_CODE, name, gnature, nature,
         (rec.get("main_code") or "").strip(),
         (rec.get("subled") or "N").strip().upper(),
         (rec.get("alias") or "N").strip().upper(),
         (rec.get("sys") or "N").strip().upper(),
         (rec.get("trading") or "N").strip().upper(),
         USER, SITE_CODE), cn=cn, commit=commit)
    return code


def acgroup_update(code: str, rec: dict, cn=None, commit: bool = True) -> int:
    code = (code or "").strip()
    name = (rec.get("name") or "").strip()
    if not code:
        raise ValueError("GroupCode zaroori hai")
    if not name:
        raise ValueError("Group Name zaroori hai")
    return db.execute(
        "UPDATE AcGroup SET GroupName = ?, GroupNature = ?, Nature = ?, "
        "MainGrCode = ?, SubLedYN = ?, TradingYN = ?, "
        "U_Name = ?, U_EntDt = GETDATE(), U_AE = 'E' "
        "WHERE RTRIM(GroupCode) = ?",
        (name, (rec.get("gnature") or "A").strip().upper(),
         (rec.get("nature") or "Dr").strip().title(),
         (rec.get("main_code") or "").strip(),
         (rec.get("subled") or "N").strip().upper(),
         (rec.get("trading") or "N").strip().upper(),
         USER, code), cn=cn, commit=commit)


def acgroup_delete(code: str, cn=None, commit: bool = True) -> int:
    """VB6 guard: SysGroup / child references block delete (UI-level too)."""
    code = (code or "").strip()
    kids = db.query("SELECT 1 FROM AcGroup WHERE RTRIM(MainGrCode) = ?",
                    (code,), cn=cn)
    if kids:
        raise ValueError("Pehle child groups delete/transfer karo")
    subs = db.query("SELECT 1 FROM SubGroup WHERE RTRIM(GroupCode) = ?",
                    (code,), cn=cn)
    if subs:
        raise ValueError("Is group me ledgers hain — delete nahi ho sakta")
    return db.execute("DELETE FROM AcGroup WHERE RTRIM(GroupCode) = ?",
                      (code,), cn=cn, commit=commit)


# ============================================================
# SubGroup — Ledger Accounts Entry (VB6 FaSubGroup)
# ============================================================
def subgroup_list(cn=None, limit: int = 500) -> list[dict]:
    """VB6 fill join: SubGroup + AcGroup(under) + City."""
    rows = db.query(
        "SELECT TOP " + str(int(limit)) + " S.SubCode, S.Name, "
        "ISNULL(G.GroupName, ''), ISNULL(S.ActiveYN, 1), "
        "ISNULL(S.Add1, ''), ISNULL(S.Phone, ''), ISNULL(S.Mobile, ''), "
        "ISNULL(S.EMail, ''), ISNULL(C.CityName, ''), "
        "ISNULL(S.GroupCode, '') "
        "FROM (SubGroup S LEFT JOIN AcGroup G ON S.GroupCode = G.GroupCode) "
        "LEFT JOIN City C ON S.CityCode = C.CityCode "
        "WHERE ISNULL(G.AliasYN, 'N') <> 'Y' OR G.GroupCode IS NULL "
        "ORDER BY S.Name", cn=cn)
    return [{"code": (r[0] or "").strip(), "name": (r[1] or "").strip(),
             "under": (r[2] or "").strip(), "active": r[3],
             "add1": (r[4] or "").strip(), "phone": (r[5] or "").strip(),
             "mobile": (r[6] or "").strip(), "email": (r[7] or "").strip(),
             "city": (r[8] or "").strip(),
             "group_code": (r[9] or "").strip()} for r in rows]


def subgroup_group_options(cn=None) -> list[tuple[str, str]]:
    """A/c Group combo (SysGroup='Y' first, VB6 order)."""
    rows = db.query(
        "SELECT GroupCode, GroupName FROM AcGroup "
        "WHERE ISNULL(AliasYN, 'N') <> 'Y' "
        "ORDER BY CASE WHEN ISNULL(SysGroup, 'N') = 'Y' THEN 0 ELSE 1 END, "
        "GroupName", cn=cn)
    return [((r[0] or "").strip(), (r[1] or "").strip()) for r in rows]


def subgroup_city_options(cn=None) -> list[tuple[str, str]]:
    rows = db.query(
        "SELECT CityCode, CityName FROM City ORDER BY CityName", cn=cn)
    return [((r[0] or "").strip(), (r[1] or "").strip()) for r in rows]


def subgroup_insert(rec: dict, cn=None, commit: bool = True) -> str:
    name = (rec.get("name") or "").strip()
    if not name:
        raise ValueError("Account Name zaroori hai")
    gcode = (rec.get("group_code") or "").strip()
    if not gcode:
        raise ValueError("A/c Group zaroori hai")
    code = (rec.get("code") or "").strip()
    if not code:
        rows = db.query(
            "SELECT MAX(CASE WHEN ISNUMERIC(SUBSTRING(SubCode, 3, 20)) = 1 "
            "THEN CAST(SUBSTRING(SubCode, 3, 20) AS INT) END) FROM SubGroup", cn=cn)
        n = int(rows[0][0] or 0) if rows and rows[0][0] is not None else 0
        code = f"{SITE_CODE[:2]}{n + 1:06d}"  # site-prefixed, VB6 style (KK002409)
    db.require_absent("SubGroup", "SubCode", code, "Ledger Code")
    active = rec.get("active", 1)
    if isinstance(active, str):
        active = 1 if active.strip().upper() in ("Y", "YES", "1") else 0
    db.execute(
        "INSERT INTO SubGroup (SubCode, Site_Code, Name, GroupCode, "
        "CityCode, Add1, Phone, Mobile, EMail, ActiveYN, "
        "U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, GETDATE(), 'A', ?)",
        (code, SITE_CODE, name, gcode,
         (rec.get("city_code") or "").strip(),
         (rec.get("add1") or "").strip(),
         (rec.get("phone") or "").strip(),
         (rec.get("mobile") or "").strip(),
         (rec.get("email") or "").strip(),
         1 if active else 0, USER, SITE_CODE), cn=cn, commit=commit)
    return code


def subgroup_update(code: str, rec: dict, cn=None, commit: bool = True) -> int:
    code = (code or "").strip()
    name = (rec.get("name") or "").strip()
    if not code:
        raise ValueError("SubCode zaroori hai")
    if not name:
        raise ValueError("Account Name zaroori hai")
    active = rec.get("active", 1)
    if isinstance(active, str):
        active = 1 if active.strip().upper() in ("Y", "YES", "1") else 0
    return db.execute(
        "UPDATE SubGroup SET Name = ?, GroupCode = ?, CityCode = ?, "
        "Add1 = ?, Phone = ?, Mobile = ?, EMail = ?, ActiveYN = ?, "
        "U_Name = ?, U_EntDt = GETDATE(), U_AE = 'E' "
        "WHERE RTRIM(SubCode) = ?",
        (name, (rec.get("group_code") or "").strip(),
         (rec.get("city_code") or "").strip(),
         (rec.get("add1") or "").strip(),
         (rec.get("phone") or "").strip(),
         (rec.get("mobile") or "").strip(),
         (rec.get("email") or "").strip(),
         1 if active else 0, USER, code), cn=cn, commit=commit)


def subgroup_delete(code: str, cn=None, commit: bool = True) -> int:
    """VB6 guard: ledger postings block delete."""
    code = (code or "").strip()
    posts = db.query("SELECT 1 FROM Ledger WHERE RTRIM(SubCode) = ?",
                     (code,), cn=cn)
    if posts:
        raise ValueError("Is ledger me postings hain — delete nahi ho sakta")
    return db.execute("DELETE FROM SubGroup WHERE RTRIM(SubCode) = ?",
                      (code,), cn=cn, commit=commit)


# ============================================================
# NarrMast — Global Narration picker (VB6 FaGlobeNarr)
# ============================================================
def narr_list(cn=None) -> list[dict]:
    rows = db.query("SELECT Name FROM NarrMast ORDER BY Name", cn=cn)
    return [{"name": (r[0] or "").strip()} for r in rows]


def narr_insert(name: str, cn=None, commit: bool = True) -> int:
    name = (name or "").strip()
    if not name:
        raise ValueError("Narration zaroori hai")
    dup = db.query("SELECT 1 FROM NarrMast WHERE RTRIM(Name) = ?",
                   (name,), cn=cn)
    if dup:
        raise ValueError("Narration pehle se hai")
    return db.execute(
        "INSERT INTO NarrMast (Name) VALUES (?)", (name,),
        cn=cn, commit=commit)


def narr_delete(name: str, cn=None, commit: bool = True) -> int:
    return db.execute("DELETE FROM NarrMast WHERE RTRIM(Name) = ?",
                      ((name or "").strip(),), cn=cn, commit=commit)


# ============================================================
# DepOpStk — Location wise Opening Stock (VB6 DepOpStk, KClStk Vtype='DOPR')
# ============================================================
DOPR_VTYPE = "DOPR"


def _dep_opstk_next_vno(vprefix: str, cn=None) -> int:
    """Race-safe DOPR VNo (kitchen_clstk BUG-015 pattern).

    VB6 Voucher_Prefix se leta tha, par live DB me DOPR prefix row hi
    nahi hai (KClStk khali) - isliye table ka MAX(VNo) hi source of
    truth, UPDLOCK+HOLDLOCK se concurrent add safe.
    """
    rows = db.query(
        "SELECT MAX(VNo) FROM KClStk WITH (UPDLOCK, HOLDLOCK) "
        "WHERE Vtype = ? AND Site_Code = ? AND Vprefix = ?",
        (DOPR_VTYPE, SITE_CODE, vprefix), cn=cn)
    return int(rows[0][0] or 0) + 1 if rows else 1


def resolve_item_code(name_or_code: str, cn=None) -> str:
    """ItemMast.Code lao (VB6 browse: S.Item=I.Code).

    Accept karta hai ya to Code, ya exact Name. Nahi mila to ValueError.
    """
    t = (name_or_code or "").strip()
    if not t:
        raise ValueError("Item zaroori hai")
    rows = db.query(
        "SELECT TOP 1 Code FROM ItemMast WHERE Code = ? OR Name = ? "
        "ORDER BY CASE WHEN ItemType = 'Store' THEN 0 ELSE 1 END, Code",
        (t, t), cn=cn)
    if not rows:
        raise ValueError(f"Item '{t}' ItemMast me nahi mila")
    return (rows[0][0] or "").strip()


def dep_opstk_create(lines: list[dict], vdate, vprefix: str = "2026",
                     user: str = USER, cn=None, commit: bool = True) -> dict:
    """lines: [{"item", "godown", "qty", "unit", "remarks"}].

    VB6 DepOpStk: Insert Into KClStk (DocId,SNo,VType,VPrefix,Site_Code,
    VNo,VDate,DepartCode,Item,Qty,Unit,U_Name,U_EntDt,U_AE) - item
    ItemMast.Code hota hai (stock reports S.Item=I.Code join karte hain).
    Shared kclstk_insert use hota hai (duplicated SQL nahi).
    """
    if not lines:
        raise ValueError("At least one line required")
    from HMS_py.core import purchase

    own = cn is None
    cn = cn or db.connect()
    try:
        vno = _dep_opstk_next_vno(vprefix, cn=cn)
        # DocId = D + site(2) + VType.ljust(6) + Vprefix.ljust(4) + VNo(8)
        docid = ("D" + SITE_CODE.ljust(2) + DOPR_VTYPE.ljust(6) +
                 vprefix.ljust(4) + str(vno).rjust(8))[:21]
        for i, ln in enumerate(lines, 1):
            qty = float(ln.get("qty") or 0)
            if qty <= 0:
                raise ValueError(f"Line {i}: Qty > 0 zaroori hai")
            item_code = resolve_item_code(ln.get("item", ""), cn=cn)
            purchase.kclstk_insert({
                "docid": docid, "sno": i, "vtype": DOPR_VTYPE,
                "vno": vno, "vprefix": vprefix, "vdate": vdate,
                "item": item_code, "qty": qty,
                "unit": (ln.get("unit") or "").strip(),
                "dept_code": (ln.get("godown") or "").strip(),
                "remarks": (ln.get("remarks") or "").strip(),
                "user": user,
            }, cn=cn, commit=False)
        if commit:
            cn.commit()
        return {"docid": docid, "vno": vno, "vtype": DOPR_VTYPE,
                "lines": len(lines)}
    except Exception:
        if own:
            try:
                cn.rollback()
            except Exception:
                pass
        raise
    finally:
        if own:
            cn.close()


def dep_opstk_list(cn=None, limit: int = 200) -> list[dict]:
    """VB6 browse: KClStk LEFT JOIN GodownMast + ItemMast (ItemName)."""
    rows = db.query(
        "SELECT TOP " + str(int(limit)) + " K.DocId, K.Vtype, K.VNo, "
        "CONVERT(VARCHAR(10), K.Vdate, 103), ISNULL(GM.Name, ''), "
        "K.Item, ISNULL(I.Name, ''), K.Qty, K.Unit, K.Sno "
        "FROM KClStk K "
        "LEFT JOIN GodownMast GM ON K.DepartCode = GM.Code "
        # ItemMast me Code RestCode-wise repeat hota hai (260 dup codes) ->
        # plain JOIN se row fan-out. OUTER APPLY + TOP 1 se ek hi naam,
        # Store item ko preference (VB6 kClStk.frm:735 ItemType='Store').
        "OUTER APPLY (SELECT TOP 1 I.Name FROM ItemMast I "
        " WHERE I.Code = K.Item "
        " ORDER BY CASE WHEN I.ItemType = 'Store' THEN 0 ELSE 1 END, "
        "          I.RestCode) I "
        "WHERE K.Vtype = ? ORDER BY K.VNo DESC, K.Sno",
        (DOPR_VTYPE,), cn=cn)
    return [{"docid": (r[0] or "").strip(), "vtype": (r[1] or "").strip(),
             "vno": int(r[2] or 0), "vdate": r[3] or "",
             "location": (r[4] or "").strip(),
             "item_code": (r[5] or "").strip(),
             "item_name": (r[6] or "").strip(),
             "item": (r[6] or r[5] or "").strip(),
             "qty": float(r[7] or 0), "unit": (r[8] or "").strip(),
             "sno": int(r[9] or 0)} for r in rows]


def dep_opstk_delete(docid: str, cn=None, commit: bool = True) -> int:
    """VB6: full-doc delete cascade (KClStk single-table here)."""
    return db.execute("DELETE FROM KClStk WHERE DocId = ?",
                      ((docid or "").strip(),), cn=cn, commit=commit)


# ============================================================
# Budget view — VB6 FaReports budget browse
# ============================================================
def budget_view(cn=None, limit: int = 500) -> list[dict]:
    """VB6: Budget B + SubGroup(AcName) + AcGroup(AcGroupName)."""
    rows = db.query(
        "SELECT TOP " + str(int(limit)) + " B.FromDate, B.ToDate, "
        "ISNULL(B.AcCode, ''), ISNULL(SG.Name, ''), "
        "ISNULL(B.AcGroupCode, ''), ISNULL(AC.GroupName, ''), "
        "ISNULL(B.BudgetDRAmt, 0), ISNULL(B.BudgetCRAmt, 0) "
        "FROM (Budget B LEFT JOIN SubGroup SG ON B.AcCode = SG.SubCode) "
        "LEFT JOIN AcGroup AC ON B.AcGroupCode = AC.GroupCode "
        "ORDER BY B.FromDate", cn=cn)
    return [{"from": r[0], "to": r[1],
             "ac_code": (r[2] or "").strip(), "ac_name": (r[3] or "").strip(),
             "grp_code": (r[4] or "").strip(), "grp_name": (r[5] or "").strip(),
             "dr": float(r[6] or 0), "cr": float(r[7] or 0)} for r in rows]


# ============================================================
# DepartMast cascade — VB6: Delete Depart + RevMast together
# ============================================================
def depart_delete_with_rev(code: str, cn=None, commit: bool = True) -> int:
    """VB6 DepartMast delete: 'Delete From Depart Where Code' + 'Delete From
    RevMast Where Code' in one transaction."""
    code = (code or "").strip()
    if not code:
        raise ValueError("Code zaroori hai")
    own = cn is None
    cn = cn or db.connect()
    try:
        n1 = db.execute("DELETE FROM Depart WHERE RTRIM(Code) = ?",
                        (code,), cn=cn, commit=False)
        try:
            db.execute("DELETE FROM RevMast WHERE RTRIM(Code) = ?",
                       (code,), cn=cn, commit=False)
        except Exception:
            pass  # RevMast row optional
        if commit:
            cn.commit()
        return n1
    except Exception:
        if own:
            try:
                cn.rollback()
            except Exception:
                pass
        raise
    finally:
        if own:
            cn.close()
