"""EPABX Setup Masters (VB6: Main Setup -> EPABX).

Database evidence (live HMS):
- TelCallType: Call type master (Local/STD/ISD etc.)
  Schema: Code varchar(6) PK, CallType varchar(30), ShortName varchar(10),
  ACCode varchar(10), TaxStru varchar(6), audit cols
- TelCallCode: STD code master (area codes)
  Schema: STDCode varchar(6) PK, CallTypeCode varchar(6) FK->TelCallType,
  Description varchar(30), PulseInSec float, audit cols
- TelExt: Extension master (phone extensions mapped to rooms/shops)
  Schema: Code varchar(6) PK, Description varchar(30),
  Extension varchar(10), Type varchar(10), RoomNo varchar(6),
  ShopNo varchar(6), DepCode varchar(6), PulseRate float, audit cols
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()


CALLTYPE_LIMITS = {"code": 5, "calltype": 15, "shortname": 5,
                   "accode": 8, "taxstru": 6}
CALLTYPE_COLS = (
    "Code, CallType, ShortName, ACCode, TaxStru, Site_Code, LogSite_Code, "
    "U_Name, U_EntDt, U_AE"
)


def _calltype_text(value) -> str:
    return str(value if value is not None else "").strip()


def _calltype_value(row, name: str, index: int, default=None):
    try:
        return getattr(row, name)
    except AttributeError:
        try:
            return row[index]
        except (IndexError, KeyError, TypeError):
            return default


def _calltype_scope(logsite_code=None) -> str:
    return _calltype_text(logsite_code) or SITE_CODE


def _calltype_read(sql: str, params=(), cn=None):
    try:
        return db.query(sql, params, cn=cn)
    except Exception as exc:
        if "invalid object name" in str(exc).lower() and "telcalltype" in str(exc).lower():
            return []
        raise


def _map_calltype(row) -> dict:
    return {
        "code": _calltype_text(_calltype_value(row, "Code", 0, "")),
        "calltype": _calltype_text(_calltype_value(row, "CallType", 1, "")),
        "shortname": _calltype_text(_calltype_value(row, "ShortName", 2, "")),
        "accode": _calltype_text(_calltype_value(row, "ACCode", 3, "")),
        "taxstru": _calltype_text(_calltype_value(row, "TaxStru", 4, "")),
        "site_code": _calltype_text(_calltype_value(row, "Site_Code", 5, "")),
        "logsite_code": _calltype_text(_calltype_value(row, "LogSite_Code", 6, "")),
        "u_name": _calltype_text(_calltype_value(row, "U_Name", 7, "")),
        "u_entdt": _calltype_value(row, "U_EntDt", 8),
        "u_ae": _calltype_text(_calltype_value(row, "U_AE", 9, "")),
    }


def calltype_list(logsite_code=None, cn=None) -> list[dict]:
    site = _calltype_scope(logsite_code)
    rows = _calltype_read(
        f"SELECT {CALLTYPE_COLS} FROM TelCallType "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') "
        "ORDER BY CallType, Code",
        (site,),
        cn=cn,
    )
    return [_map_calltype(row) for row in rows]


def calltype_get(code: str, logsite_code=None, cn=None) -> dict | None:
    site = _calltype_scope(logsite_code)
    rows = _calltype_read(
        f"SELECT {CALLTYPE_COLS} FROM TelCallType "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') AND Code = ?",
        (site, _calltype_text(code)),
        cn=cn,
    )
    return _map_calltype(rows[0]) if rows else None


def calltype_exists(code: str, logsite_code=None, cn=None) -> bool:
    site = _calltype_scope(logsite_code)
    return bool(_calltype_read(
        "SELECT 1 FROM TelCallType "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') AND Code = ?",
        (site, _calltype_text(code)),
        cn=cn,
    ))


def calltype_insert(*args, **kwargs):
    raise PermissionError("TelCallType writer is disabled until RevMast transaction parity is complete")


def calltype_update(*args, **kwargs):
    raise PermissionError("TelCallType writer is disabled until RevMast transaction parity is complete")


def calltype_delete(*args, **kwargs):
    raise PermissionError("TelCallType writer is disabled until RevMast transaction parity is complete")


class _CallTypeAPI:
    LIMITS = CALLTYPE_LIMITS

    @staticmethod
    def list_all(cn=None, logsite_code=None):
        return calltype_list(logsite_code=logsite_code, cn=cn)

    @staticmethod
    def get(code, cn=None, logsite_code=None):
        return calltype_get(code, logsite_code=logsite_code, cn=cn)

    @staticmethod
    def exists(code, cn=None, logsite_code=None):
        return calltype_exists(code, logsite_code=logsite_code, cn=cn)

    @staticmethod
    def insert(*args, **kwargs):
        return calltype_insert(*args, **kwargs)

    @staticmethod
    def update(*args, **kwargs):
        return calltype_update(*args, **kwargs)

    @staticmethod
    def delete(*args, **kwargs):
        return calltype_delete(*args, **kwargs)


CallTypeAPI = _CallTypeAPI()



CALLCODE_LIMITS = {"stdcode": 10, "calltype": 15, "desc": 35}
CALLCODE_COLS = (
    "STDCode, CallTypeCode, Description, PulseInSec, Site_Code, "
    "LogSite_Code, U_Name, U_EntDt, U_AE"
)


def _callcode_text(value) -> str:
    return str(value if value is not None else "").strip()


def _callcode_value(row, name: str, index: int, default=None):
    try:
        return getattr(row, name)
    except AttributeError:
        try:
            return row[index]
        except (IndexError, KeyError, TypeError):
            return default


def _callcode_scope(logsite_code=None) -> str:
    return _callcode_text(logsite_code) or SITE_CODE


def _callcode_read(sql: str, params=(), cn=None):
    try:
        return db.query(sql, params, cn=cn)
    except Exception as exc:
        if "invalid object name" in str(exc).lower() and "telcallcode" in str(exc).lower():
            return []
        raise


def _map_callcode(row) -> dict:
    return {
        "stdcode": _callcode_text(_callcode_value(row, "STDCode", 0, "")),
        "calltype": _callcode_text(_callcode_value(row, "CallTypeCode", 1, "")),
        "desc": _callcode_text(_callcode_value(row, "Description", 2, "")),
        "pulse": float(_callcode_value(row, "PulseInSec", 3, 0) or 0),
        "site_code": _callcode_text(_callcode_value(row, "Site_Code", 4, "")),
        "logsite_code": _callcode_text(_callcode_value(row, "LogSite_Code", 5, "")),
        "u_name": _callcode_text(_callcode_value(row, "U_Name", 6, "")),
        "u_entdt": _callcode_value(row, "U_EntDt", 7),
        "u_ae": _callcode_text(_callcode_value(row, "U_AE", 8, "")),
    }


def _validate_callcode(rec: dict):
    stdcode = _callcode_text(rec.get("stdcode"))
    if not stdcode:
        raise ValueError("STDCode zaroori hai")
    if len(stdcode) > CALLCODE_LIMITS["stdcode"]:
        raise ValueError("STDCode max 10 chars")
    if len(_callcode_text(rec.get("calltype"))) > CALLCODE_LIMITS["calltype"]:
        raise ValueError("CallTypeCode max 15 chars")
    if len(_callcode_text(rec.get("desc"))) > CALLCODE_LIMITS["desc"]:
        raise ValueError("Description max 35 chars")
    pulse = rec.get("pulse")
    if pulse not in (None, ""):
        try:
            float(pulse)
        except (TypeError, ValueError) as exc:
            raise ValueError("PulseInSec number hona chahiye") from exc


def callcode_list(logsite_code=None, cn=None) -> list[dict]:
    site = _callcode_scope(logsite_code)
    rows = _callcode_read(
        f"SELECT {CALLCODE_COLS} FROM TelCallCode "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') "
        "ORDER BY CallTypeCode, STDCode, Description",
        (site,),
        cn=cn,
    )
    return [_map_callcode(row) for row in rows]


def callcode_get(code: str, logsite_code=None, cn=None) -> dict | None:
    site = _callcode_scope(logsite_code)
    rows = _callcode_read(
        f"SELECT {CALLCODE_COLS} FROM TelCallCode "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') AND STDCode = ?",
        (site, _callcode_text(code)),
        cn=cn,
    )
    return _map_callcode(rows[0]) if rows else None


def callcode_exists(code: str, logsite_code=None, cn=None) -> bool:
    site = _callcode_scope(logsite_code)
    return bool(_callcode_read(
        "SELECT 1 FROM TelCallCode "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') AND STDCode = ?",
        (site, _callcode_text(code)),
        cn=cn,
    ))


def callcode_insert(rec: dict, cn=None, commit=True) -> int:
    _validate_callcode(rec)
    db.require_absent("TelCallCode", "STDCode", rec["stdcode"], "STD Code", cn=cn)
    return db.execute(
        "INSERT INTO TelCallCode (STDCode, CallTypeCode, Description, "
        "PulseInSec, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (
            _callcode_text(rec["stdcode"]),
            _callcode_text(rec.get("calltype")),
            _callcode_text(rec.get("desc")),
            float(rec.get("pulse") or 0),
            SITE_CODE,
            USER,
            SITE_CODE,
        ),
        cn=cn,
        commit=commit,
    )


def callcode_update(code: str, rec: dict, cn=None, commit=True) -> int:
    _validate_callcode({**rec, "stdcode": code})
    return db.execute(
        "UPDATE TelCallCode SET CallTypeCode = ?, Description = ?, "
        "PulseInSec = ?, U_Name = ?, U_EntDt = getdate(), "
        "U_AE = 'E' WHERE STDCode = ?",
        (
            _callcode_text(rec.get("calltype")),
            _callcode_text(rec.get("desc")),
            float(rec.get("pulse") or 0),
            USER,
            _callcode_text(code),
        ),
        cn=cn,
        commit=commit,
    )


def callcode_delete(code: str, cn=None, commit=True) -> int:
    return db.execute(
        "DELETE FROM TelCallCode WHERE STDCode = ?",
        (_callcode_text(code),),
        cn=cn,
        commit=commit,
    )


class _CallCodeAPI:
    LIMITS = CALLCODE_LIMITS

    @staticmethod
    def list_all(cn=None, logsite_code=None):
        return callcode_list(logsite_code=logsite_code, cn=cn)

    @staticmethod
    def get(code, cn=None, logsite_code=None):
        return callcode_get(code, logsite_code=logsite_code, cn=cn)

    @staticmethod
    def exists(code, cn=None, logsite_code=None):
        return callcode_exists(code, logsite_code=logsite_code, cn=cn)

    @staticmethod
    def insert(rec, cn=None, commit=True):
        return callcode_insert(rec, cn=cn, commit=commit)

    @staticmethod
    def update(code, rec, cn=None, commit=True):
        return callcode_update(code, rec, cn=cn, commit=commit)

    @staticmethod
    def delete(code, cn=None, commit=True):
        return callcode_delete(code, cn=cn, commit=commit)


CallCodeAPI = _CallCodeAPI()



# ============================================================
# Tel Extension Master
# Table: TelExt - Code varchar PK, Description varchar,
#        Extension varchar, Type varchar, RoomNo varchar,
#        ShopNo varchar, DepCode varchar, PulseRate float, audit cols
# ============================================================
TELEXT_LIMITS = {"code": 5, "desc": 35, "extension": 10, "type": 10,
                 "room": 5, "shop": 10, "dept": 5}
TELEXT_COLS = (
    "Code, Description, Extension, Type, RoomNo, ShopNo, DepCode, "
    "PulseRate, Site_Code, LogSite_Code, U_Name, U_EntDt, U_AE"
)


def _telext_text(value) -> str:
    return str(value if value is not None else "").strip()


def _telext_value(row, name: str, index: int, default=None):
    try:
        return getattr(row, name)
    except AttributeError:
        try:
            return row[index]
        except (IndexError, KeyError, TypeError):
            return default


def _telext_scope(logsite_code=None) -> str:
    return _telext_text(logsite_code) or SITE_CODE


def _telext_read(sql: str, params=(), cn=None):
    try:
        return db.query(sql, params, cn=cn)
    except Exception as exc:
        if "invalid object name" in str(exc).lower() and "telext" in str(exc).lower():
            return []
        raise


def _map_telext(row) -> dict:
    return {
        "code": _telext_text(_telext_value(row, "Code", 0, "")),
        "desc": _telext_text(_telext_value(row, "Description", 1, "")),
        "extension": _telext_value(row, "Extension", 2, ""),
        "type": _telext_text(_telext_value(row, "Type", 3, "")),
        "room": _telext_text(_telext_value(row, "RoomNo", 4, "")),
        "shop": _telext_text(_telext_value(row, "ShopNo", 5, "")),
        "dept": _telext_text(_telext_value(row, "DepCode", 6, "")),
        "pulserate": float(_telext_value(row, "PulseRate", 7, 0) or 0),
        "site_code": _telext_text(_telext_value(row, "Site_Code", 8, "")),
        "logsite_code": _telext_text(_telext_value(row, "LogSite_Code", 9, "")),
        "u_name": _telext_text(_telext_value(row, "U_Name", 10, "")),
        "u_entdt": _telext_value(row, "U_EntDt", 11),
        "u_ae": _telext_text(_telext_value(row, "U_AE", 12, "")),
    }


def validate_telext(rec: dict) -> dict:
    code = _telext_text(rec.get("code"))
    desc = _telext_text(rec.get("desc"))
    if not code:
        raise ValueError("Code zaroori hai")
    if len(code) > TELEXT_LIMITS["code"]:
        raise ValueError("Code max 5 chars")
    if not desc:
        raise ValueError("Description zaroori hai")
    if len(desc) > TELEXT_LIMITS["desc"]:
        raise ValueError("Description max 35 chars")
    kind = _telext_text(rec.get("type"))
    kind = {"room": "Room", "shop": "Shop", "department": "Department"}.get(
        kind.casefold(), kind
    )
    if kind not in ("Room", "Shop", "Department"):
        raise ValueError("Type Room/Shop/Department hona chahiye")
    try:
        extension = int(_telext_text(rec.get("extension")))
    except (TypeError, ValueError) as exc:
        raise ValueError("Extension number hona chahiye") from exc
    if extension < 1:
        raise ValueError("Extension positive number hona chahiye")
    try:
        pulserate = float(_telext_text(rec.get("pulserate")))
    except (TypeError, ValueError) as exc:
        raise ValueError("Pulse Rate number hona chahiye") from exc
    if pulserate <= 0:
        raise ValueError("Pulse Rate greater than zero hona chahiye")
    room = _telext_text(rec.get("room"))
    shop = _telext_text(rec.get("shop"))
    dept = _telext_text(rec.get("dept"))
    if kind == "Room" and not room:
        raise ValueError("Room Number zaroori hai")
    if kind == "Shop" and not shop:
        raise ValueError("Shop Description zaroori hai")
    if kind == "Department" and not dept:
        raise ValueError("Department Number zaroori hai")
    if len(room) > TELEXT_LIMITS["room"]:
        raise ValueError("Room No max 5 chars")
    if len(shop) > TELEXT_LIMITS["shop"]:
        raise ValueError("Shop No max 10 chars")
    if len(dept) > TELEXT_LIMITS["dept"]:
        raise ValueError("Department Code max 5 chars")
    return {
        "code": code,
        "desc": desc,
        "extension": extension,
        "type": kind,
        "room": room,
        "shop": shop,
        "dept": dept,
        "pulserate": pulserate,
    }


def telext_list(logsite_code=None, cn=None) -> list[dict]:
    site = _telext_scope(logsite_code)
    rows = _telext_read(
        f"SELECT {TELEXT_COLS} FROM TelExt "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') "
        "ORDER BY Description, Code",
        (site,),
        cn=cn,
    )
    return [_map_telext(row) for row in rows]


def telext_get(code: str, logsite_code=None, cn=None) -> dict | None:
    site = _telext_scope(logsite_code)
    rows = _telext_read(
        f"SELECT {TELEXT_COLS} FROM TelExt "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') AND Code = ?",
        (site, _telext_text(code)),
        cn=cn,
    )
    return _map_telext(rows[0]) if rows else None


def telext_exists(code: str, logsite_code=None, cn=None) -> bool:
    site = _telext_scope(logsite_code)
    return bool(_telext_read(
        "SELECT 1 FROM TelExt "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') AND Code = ?",
        (site, _telext_text(code)),
        cn=cn,
    ))


def telext_insert(rec: dict, cn=None, commit=True) -> int:
    normalized = validate_telext(rec)
    db.require_absent("TelExt", "Code", normalized["code"], "Extension Code", cn=cn)
    return db.execute(
        "INSERT INTO TelExt (Code, Description, Extension, Type, "
        "RoomNo, ShopNo, DepCode, PulseRate, "
        "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (
            normalized["code"], normalized["desc"], normalized["extension"],
            normalized["type"], normalized["room"], normalized["shop"],
            normalized["dept"], normalized["pulserate"],
            SITE_CODE, USER, SITE_CODE,
        ),
        cn=cn,
        commit=commit,
    )


def telext_update(code: str, rec: dict, cn=None, commit=True) -> int:
    normalized = validate_telext({**rec, "code": code})
    return db.execute(
        "UPDATE TelExt SET Description = ?, Extension = ?, Type = ?, "
        "RoomNo = ?, ShopNo = ?, DepCode = ?, PulseRate = ?, "
        "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE Code = ?",
        (
            normalized["desc"], normalized["extension"], normalized["type"],
            normalized["room"], normalized["shop"], normalized["dept"],
            normalized["pulserate"], USER, _telext_text(code),
        ),
        cn=cn,
        commit=commit,
    )


def telext_delete(code: str, cn=None, commit=True) -> int:
    return db.execute(
        "DELETE FROM TelExt WHERE Code = ?",
        (_telext_text(code),),
        cn=cn,
        commit=commit,
    )


class _TelExtAPI:
    LIMITS = TELEXT_LIMITS

    @staticmethod
    def list_all(cn=None, logsite_code=None):
        return telext_list(logsite_code=logsite_code, cn=cn)

    @staticmethod
    def get(code, cn=None, logsite_code=None):
        return telext_get(code, logsite_code=logsite_code, cn=cn)

    @staticmethod
    def exists(code, cn=None, logsite_code=None):
        return telext_exists(code, logsite_code=logsite_code, cn=cn)

    @staticmethod
    def insert(rec, cn=None, commit=True):
        return telext_insert(rec, cn=cn, commit=commit)

    @staticmethod
    def update(code, rec, cn=None, commit=True):
        return telext_update(code, rec, cn=cn, commit=commit)

    @staticmethod
    def delete(code, cn=None, commit=True):
        return telext_delete(code, cn=cn, commit=commit)


TelExtAPI = _TelExtAPI()
