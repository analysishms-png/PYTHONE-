"""Members Management Masters (VB6: Main Setup -> Members Mgmt).

Database evidence (live HMS):
- MemCatMast: Member categories - EXISTS (1 row)
  Schema: Code varchar(6) PK, Name varchar(30), ShortName varchar(6),
  Subscription float, Corporate float, ChildAgeLmt smallint,
  FBilling varchar(1), Status varchar(10), MessAcYN varchar(1),
  Surcharge float, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code
- FacilityMast: Club facilities - EXISTS (0 rows)
  Schema: Code varchar(6) PK, Name varchar(30), ShortName varchar(6),
  ChargeType varchar(10), ChargeUnit varchar(10), AcCode varchar(10),
  TaxStru varchar(6), UnitRate float, ActiveYN varchar(1),
  RoundOff float, ROffType varchar(5), MeterReading varchar(1),
  SACCode varchar(20), Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code

NOTE: MemberMast/Member table does NOT exist - members managed via
GuestProf in this installation (single-site HMS with no active membership
module). MemberCategory = MemCatMast. CorporateMember = CompanyMast.
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()


def _f(v, default: float = 0.0) -> float:
    try:
        if v in (None, ""):
            return default
        return float(v)
    except (TypeError, ValueError):
        return default


def _i(v, default: int = 0) -> int:
    try:
        if v in (None, ""):
            return default
        return int(float(v))
    except (TypeError, ValueError):
        return default


# ============================================================
# Member Category Master (MemCatMast)
# ============================================================
MEMCAT_LIMITS = {"code": 6, "name": 30, "short": 6, "status": 10}
MEMCAT_COLS = ("Code, Name, ShortName, Subscription, Corporate, "
               "ChildAgeLmt, FBilling, Status, MessAcYN, Surcharge, "
               "U_Name, U_EntDt, U_AE")


def _map_memcat(r) -> dict:
    try:
        return {"code": r.Code, "name": (r.Name or "").strip(),
                "short": (r.ShortName or "").strip(),
                "subscription": _f(r.Subscription),
                "corporate": _f(r.Corporate),
                "childage": _i(r.ChildAgeLmt),
                "fbilling": r.FBilling or "N",
                "status": r.Status or "",
                "messac": r.MessAcYN or "N",
                "surcharge": _f(r.Surcharge),
                "u_name": r.U_Name or "", "u_ae": r.U_AE or ""}
    except AttributeError:
        c, n, sn, sub, corp, ca, fb, st, ma, sur, un, _, uae = r
        return {"code": c, "name": (n or "").strip(),
                "short": (sn or "").strip(),
                "subscription": _f(sub),
                "corporate": _f(corp),
                "childage": _i(ca), "fbilling": fb or "N",
                "status": st or "", "messac": ma or "N",
                "surcharge": _f(sur),
                "u_name": un or "", "u_ae": uae or ""}


def memcat_list(cn=None) -> list[dict]:
    return [_map_memcat(r) for r in db.query(
        f"SELECT {MEMCAT_COLS} FROM MemCatMast ORDER BY Code", cn=cn)]


def memcat_get(code: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {MEMCAT_COLS} FROM MemCatMast WHERE Code = ?", (code,), cn=cn)
    return _map_memcat(rows[0]) if rows else None


def memcat_exists(code: str, cn=None) -> bool:
    return bool(db.query("SELECT 1 FROM MemCatMast WHERE Code = ?", (code,), cn=cn))


def memcat_insert(rec: dict, cn=None, commit=True) -> int:
    if not rec.get("code", "").strip():
        raise ValueError("Code zaroori hai")
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    return db.execute(
        "INSERT INTO MemCatMast (Code, Name, ShortName, Subscription, "
        "Corporate, ChildAgeLmt, FBilling, Status, MessAcYN, Surcharge, "
        "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (rec["code"], rec["name"], rec.get("short", ""),
         float(rec.get("subscription") or 0),
         float(rec.get("corporate") or 0),
         int(rec.get("childage") or 0),
         rec.get("fbilling", "N"), rec.get("status", ""),
         rec.get("messac", "N"), float(rec.get("surcharge") or 0),
         SITE_CODE, USER, SITE_CODE), cn=cn, commit=commit)


def memcat_update(code: str, rec: dict, cn=None, commit=True) -> int:
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    return db.execute(
        "UPDATE MemCatMast SET Name = ?, ShortName = ?, Subscription = ?, "
        "Corporate = ?, ChildAgeLmt = ?, FBilling = ?, Status = ?, "
        "MessAcYN = ?, Surcharge = ?, "
        "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE Code = ?",
        (rec["name"], rec.get("short", ""),
         float(rec.get("subscription") or 0),
         float(rec.get("corporate") or 0),
         int(rec.get("childage") or 0),
         rec.get("fbilling", "N"), rec.get("status", ""),
         rec.get("messac", "N"), float(rec.get("surcharge") or 0),
         USER, code), cn=cn, commit=commit)


def memcat_delete(code: str, cn=None, commit=True) -> int:
    return db.execute(
        "DELETE FROM MemCatMast WHERE Code = ?", (code,), cn=cn, commit=commit)


class _MemCatAPI:
    LIMITS = MEMCAT_LIMITS
    @staticmethod
    def list_all(cn=None): return memcat_list(cn)
    @staticmethod
    def get(code, cn=None): return memcat_get(code, cn)
    @staticmethod
    def exists(code, cn=None): return memcat_exists(code, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return memcat_insert(rec, cn, commit)
    @staticmethod
    def update(code, rec, cn=None, commit=True): return memcat_update(code, rec, cn, commit)
    @staticmethod
    def delete(code, cn=None, commit=True): return memcat_delete(code, cn, commit)

MemCatAPI = _MemCatAPI()


# ============================================================
# Facility Master (club facilities/amenities)
# ============================================================
FACILITY_LIMITS = {"code": 6, "name": 30, "short": 6,
                   "chargetype": 10, "chargeunit": 10,
                   "accode": 10, "taxstru": 6, "saccode": 20}
FACILITY_COLS = ("Code, Name, ShortName, ChargeType, ChargeUnit, AcCode, "
                 "TaxStru, UnitRate, ActiveYN, RoundOff, SACCode, "
                 "U_Name, U_EntDt, U_AE")


def _map_facility(r) -> dict:
    try:
        return {"code": r.Code, "name": (r.Name or "").strip(),
                "short": (r.ShortName or "").strip(),
                "chargetype": r.ChargeType or "",
                "chargeunit": r.ChargeUnit or "",
                "accode": r.AcCode or "",
                "taxstru": r.TaxStru or "",
                "unitrate": float(r.UnitRate or 0),
                "active": r.ActiveYN or "Y",
                "roundoff": float(r.RoundOff or 0),
                "saccode": (r.SACCode or "").strip(),
                "u_name": r.U_Name or "", "u_ae": r.U_AE or ""}
    except AttributeError:
        c, n, sn, ct, cu, ac, ts, ur, act, ro, sac, un, _, uae = r
        return {"code": c, "name": (n or "").strip(),
                "short": (sn or "").strip(),
                "chargetype": ct or "", "chargeunit": cu or "",
                "accode": ac or "", "taxstru": ts or "",
                "unitrate": float(ur or 0), "active": act or "Y",
                "roundoff": float(ro or 0), "saccode": (sac or "").strip(),
                "u_name": un or "", "u_ae": uae or ""}


def facility_list(cn=None) -> list[dict]:
    return [_map_facility(r) for r in db.query(
        f"SELECT {FACILITY_COLS} FROM FacilityMast ORDER BY Code", cn=cn)]


def facility_get(code: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {FACILITY_COLS} FROM FacilityMast WHERE Code = ?", (code,), cn=cn)
    return _map_facility(rows[0]) if rows else None


def facility_exists(code: str, cn=None) -> bool:
    return bool(db.query("SELECT 1 FROM FacilityMast WHERE Code = ?", (code,), cn=cn))


def facility_insert(rec: dict, cn=None, commit=True) -> int:
    if not rec.get("code", "").strip():
        raise ValueError("Code zaroori hai")
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    return db.execute(
        "INSERT INTO FacilityMast (Code, Name, ShortName, ChargeType, "
        "ChargeUnit, AcCode, TaxStru, UnitRate, ActiveYN, RoundOff, "
        "SACCode, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (rec["code"], rec["name"], rec.get("short", ""),
         rec.get("chargetype", ""), rec.get("chargeunit", ""),
         rec.get("accode", ""), rec.get("taxstru", ""),
         float(rec.get("unitrate") or 0), rec.get("active", "Y"),
         float(rec.get("roundoff") or 0), rec.get("saccode", ""),
         SITE_CODE, USER, SITE_CODE), cn=cn, commit=commit)


def facility_update(code: str, rec: dict, cn=None, commit=True) -> int:
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    return db.execute(
        "UPDATE FacilityMast SET Name = ?, ShortName = ?, ChargeType = ?, "
        "ChargeUnit = ?, AcCode = ?, TaxStru = ?, UnitRate = ?, "
        "ActiveYN = ?, RoundOff = ?, SACCode = ?, "
        "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE Code = ?",
        (rec["name"], rec.get("short", ""), rec.get("chargetype", ""),
         rec.get("chargeunit", ""), rec.get("accode", ""),
         rec.get("taxstru", ""), float(rec.get("unitrate") or 0),
         rec.get("active", "Y"), float(rec.get("roundoff") or 0),
         rec.get("saccode", ""), USER, code), cn=cn, commit=commit)


def facility_delete(code: str, cn=None, commit=True) -> int:
    return db.execute(
        "DELETE FROM FacilityMast WHERE Code = ?", (code,), cn=cn, commit=commit)


class _FacilityAPI:
    LIMITS = FACILITY_LIMITS
    @staticmethod
    def list_all(cn=None): return facility_list(cn)
    @staticmethod
    def get(code, cn=None): return facility_get(code, cn)
    @staticmethod
    def exists(code, cn=None): return facility_exists(code, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return facility_insert(rec, cn, commit)
    @staticmethod
    def update(code, rec, cn=None, commit=True): return facility_update(code, rec, cn, commit)
    @staticmethod
    def delete(code, cn=None, commit=True): return facility_delete(code, cn, commit)

FacilityAPI = _FacilityAPI()


MEMREV_LIMITS = {
    "code": 6,
    "desc": 50,
    "acountyn": 1,
    "acposting": 10,
    "taxstru": 6,
    "subsdetails": 20,
    "refundableyn": 1,
    "subschargeyn": 1,
    "accode": 8,
    "status": 10,
}
MEMREV_COLS = (
    "Code, Description, AcountYN, ACPosting, TaxStru, SubsDetails, "
    "RefundableYN, SubsChargeYN, AcCode, Status, Site_Code, LogSite_Code, "
    "U_Name, U_EntDt, U_AE"
)


def _memrev_text(value) -> str:
    return str(value if value is not None else "").strip()


def _memrev_value(row, name: str, index: int, default=None):
    try:
        return getattr(row, name)
    except AttributeError:
        try:
            return row[index]
        except (IndexError, KeyError, TypeError):
            return default


def _memrev_scope(logsite_code=None) -> str:
    return _memrev_text(logsite_code) or SITE_CODE


def _memrev_read(sql: str, params=(), cn=None):
    try:
        return db.query(sql, params, cn=cn)
    except Exception as exc:
        if "invalid object name" in str(exc).lower() and "membershiprevmast" in str(exc).lower():
            return []
        raise


def _map_memrev(row) -> dict:
    return {
        "code": _memrev_text(_memrev_value(row, "Code", 0, "")),
        "desc": _memrev_text(_memrev_value(row, "Description", 1, "")),
        "acountyn": _memrev_text(_memrev_value(row, "AcountYN", 2, "N")) or "N",
        "acposting": _memrev_text(_memrev_value(row, "ACPosting", 3, "")),
        "taxstru": _memrev_text(_memrev_value(row, "TaxStru", 4, "")),
        "subsdetails": _memrev_text(_memrev_value(row, "SubsDetails", 5, "")),
        "refundableyn": _memrev_text(_memrev_value(row, "RefundableYN", 6, "N")) or "N",
        "subschargeyn": _memrev_text(_memrev_value(row, "SubsChargeYN", 7, "N")) or "N",
        "accode": _memrev_text(_memrev_value(row, "AcCode", 8, "")),
        "status": _memrev_text(_memrev_value(row, "Status", 9, "")),
        "site_code": _memrev_text(_memrev_value(row, "Site_Code", 10, "")),
        "logsite_code": _memrev_text(_memrev_value(row, "LogSite_Code", 11, "")),
        "u_name": _memrev_text(_memrev_value(row, "U_Name", 12, "")),
        "u_entdt": _memrev_value(row, "U_EntDt", 13),
        "u_ae": _memrev_text(_memrev_value(row, "U_AE", 14, "")),
    }


def _memrev_choice(value, choices, label, default=""):
    text = _memrev_text(value)
    if not text and default:
        return default
    for choice in choices:
        if text.casefold() == choice.casefold():
            return choice
    raise ValueError(f"{label} invalid")


def _memrev_yn(value, label, default="N"):
    text = _memrev_text(value)
    if not text:
        return default
    normalized = {"YES": "Y", "NO": "N"}.get(text.upper(), text.upper())
    if normalized not in ("Y", "N"):
        raise ValueError(f"{label} Yes/No hona chahiye")
    return normalized


def validate_memrev(rec: dict) -> dict:
    code = _memrev_text(rec.get("code"))
    desc = _memrev_text(rec.get("desc"))
    if not code:
        raise ValueError("Code zaroori hai")
    if len(code) > MEMREV_LIMITS["code"]:
        raise ValueError("Code max 6 chars")
    if not desc:
        raise ValueError("Description zaroori hai")
    if len(desc) > MEMREV_LIMITS["desc"]:
        raise ValueError("Description max 50 chars")

    account_yn = _memrev_yn(rec.get("acountyn"), "Account Y/N")
    refundable_yn = _memrev_yn(rec.get("refundableyn"), "Refundable Y/N")
    subs_charge_yn = _memrev_yn(rec.get("subschargeyn"), "Subscription Charge Y/N")
    subsdetails = _memrev_choice(
        rec.get("subsdetails"), ("Once", "Recurring"), "Subscription Details"
    )
    status = _memrev_choice(
        rec.get("status"), ("Active", "Non Active"), "Status", "Active"
    )
    acposting = _memrev_text(rec.get("acposting"))
    if acposting:
        acposting = _memrev_choice(
            acposting, ("Detailed", "Summerised"), "A/C Posting"
        )
    if account_yn == "Y":
        if not _memrev_text(rec.get("accode")):
            raise ValueError("Account Code zaroori hai")
        if not acposting:
            raise ValueError("A/C Posting zaroori hai")
    else:
        acposting = ""
    acode = _memrev_text(rec.get("accode"))
    if len(acode) > MEMREV_LIMITS["accode"]:
        raise ValueError("Account Code max 8 chars")
    taxstru = _memrev_text(rec.get("taxstru"))
    if not taxstru:
        raise ValueError("Tax Structure zaroori hai")
    if len(taxstru) > MEMREV_LIMITS["taxstru"]:
        raise ValueError("Tax Structure max 6 chars")
    return {
        "code": code,
        "desc": desc,
        "acountyn": account_yn,
        "acposting": acposting,
        "taxstru": taxstru,
        "subsdetails": subsdetails,
        "refundableyn": refundable_yn,
        "subschargeyn": subs_charge_yn,
        "accode": acode,
        "status": status,
    }


def memrev_list(logsite_code=None, cn=None) -> list[dict]:
    site = _memrev_scope(logsite_code)
    rows = _memrev_read(
        f"SELECT {MEMREV_COLS} FROM MembershipRevMast "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Code",
        (site,),
        cn=cn,
    )
    return [_map_memrev(row) for row in rows]


def memrev_get(code: str, logsite_code=None, cn=None) -> dict | None:
    site = _memrev_scope(logsite_code)
    rows = _memrev_read(
        f"SELECT {MEMREV_COLS} FROM MembershipRevMast "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') AND Code = ?",
        (site, _memrev_text(code)),
        cn=cn,
    )
    return _map_memrev(rows[0]) if rows else None


def memrev_exists(code: str, logsite_code=None, cn=None) -> bool:
    site = _memrev_scope(logsite_code)
    return bool(_memrev_read(
        "SELECT 1 FROM MembershipRevMast "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') AND Code = ?",
        (site, _memrev_text(code)),
        cn=cn,
    ))


def _memrev_run_transaction(work, cn=None, commit=True):
    own = cn is None
    connection = cn or db.connect()
    completed = False
    try:
        result = work(connection)
        if commit:
            connection.commit()
        completed = True
        return result
    except Exception:
        try:
            connection.rollback()
        except Exception:
            pass
        raise
    finally:
        if own:
            if not commit and completed:
                try:
                    connection.rollback()
                except Exception:
                    pass
            try:
                connection.close()
            except Exception:
                pass


def memrev_next_code(logsite_code=None, cn=None) -> str:
    site = _memrev_scope(logsite_code)
    rows = _memrev_read(
        "SELECT ISNULL(MAX(CAST(SUBSTRING(Code,3,4) AS INT)),0)+1 AS MyCode "
        "FROM MembershipRevMast WHERE Site_Code = ?",
        (site,),
        cn=cn,
    )
    value = _memrev_value(rows[0], "MyCode", 0, 1) if rows else 1
    return f"{site}{int(value or 0):04d}"


def _memrev_duplicate_description(description, exclude_code=None, cn=None):
    site = _memrev_scope()
    sql = (
        "SELECT COUNT(*) FROM MembershipRevMast "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') "
        "AND Description = ?"
    )
    params = [site, _memrev_text(description)]
    if exclude_code is not None:
        sql += " AND Code <> ?"
        params.append(_memrev_text(exclude_code))
    rows = _memrev_read(sql, tuple(params), cn=cn)
    return bool(rows and int(_memrev_value(rows[0], 0, 0, 0) or 0))


def memrev_insert(rec: dict, cn=None, commit=True) -> int:
    def work(connection):
        record = dict(rec)
        if not _memrev_text(record.get("code")):
            record["code"] = memrev_next_code(cn=connection)
        normalized = validate_memrev(record)
        if _memrev_duplicate_description(normalized["desc"], cn=connection):
            raise ValueError("Description already exists")
        db.require_absent(
            "MembershipRevMast", "Code", normalized["code"],
            "Membership Revenue Code", cn=connection,
        )
        return db.execute(
            "INSERT INTO MembershipRevMast (Code, Description, AcountYN, "
            "ACPosting, TaxStru, SubsDetails, RefundableYN, SubsChargeYN, "
            "AcCode, Status, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
            (
                normalized["code"], normalized["desc"], normalized["acountyn"],
                normalized["acposting"], normalized["taxstru"],
                normalized["subsdetails"], normalized["refundableyn"],
                normalized["subschargeyn"], normalized["accode"],
                normalized["status"], SITE_CODE, USER, SITE_CODE,
            ),
            cn=connection,
            commit=False,
        )

    _memrev_run_transaction(work, cn=cn, commit=commit)
    return 1


def memrev_update(code: str, rec: dict, cn=None, commit=True) -> int:
    def work(connection):
        normalized = validate_memrev({**rec, "code": code})
        if _memrev_duplicate_description(
            normalized["desc"], exclude_code=code, cn=connection
        ):
            raise ValueError("Description already exists")
        return db.execute(
            "UPDATE MembershipRevMast SET Description = ?, AcountYN = ?, "
            "ACPosting = ?, TaxStru = ?, SubsDetails = ?, RefundableYN = ?, "
            "SubsChargeYN = ?, AcCode = ?, Status = ?, SITE_CODE = ?, "
            "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE Code = ?",
            (
                normalized["desc"], normalized["acountyn"],
                normalized["acposting"], normalized["taxstru"],
                normalized["subsdetails"], normalized["refundableyn"],
                normalized["subschargeyn"], normalized["accode"],
                normalized["status"], SITE_CODE, USER, _memrev_text(code),
            ),
            cn=connection,
            commit=False,
        )

    _memrev_run_transaction(work, cn=cn, commit=commit)
    return 1


def memrev_delete(code: str, cn=None, commit=True) -> int:
    def work(connection):
        return db.execute(
            "DELETE FROM MembershipRevMast WHERE Code = ?",
            (_memrev_text(code),),
            cn=connection,
            commit=False,
        )

    return _memrev_run_transaction(work, cn=cn, commit=commit)


class _MemRevAPI:
    LIMITS = MEMREV_LIMITS

    @staticmethod
    def list_all(cn=None, logsite_code=None):
        return memrev_list(logsite_code=logsite_code, cn=cn)

    @staticmethod
    def get(code, cn=None, logsite_code=None):
        return memrev_get(code, logsite_code=logsite_code, cn=cn)

    @staticmethod
    def exists(code, cn=None, logsite_code=None):
        return memrev_exists(code, logsite_code=logsite_code, cn=cn)

    @staticmethod
    def insert(rec, cn=None, commit=True):
        return memrev_insert(rec, cn=cn, commit=commit)

    @staticmethod
    def update(code, rec, cn=None, commit=True):
        return memrev_update(code, rec, cn=cn, commit=commit)

    @staticmethod
    def delete(code, cn=None, commit=True):
        return memrev_delete(code, cn=cn, commit=commit)


MemRevAPI = _MemRevAPI()
