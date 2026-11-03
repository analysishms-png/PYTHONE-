"""Package Master CRUD and child-line persistence for PlanMast records."""
from __future__ import annotations

from HMS_py.core import db


SITE_CODE = db.get_site_code()
USER = db.get_user()
PACKAGE_TYPE = "Package"
LIMITS = {"code": 5, "name": 25, "plan_package": 7}
SELECT_COLS = (
    "Code, Name, Total, Plan_Package, PercentApp, ActiveYN, "
    "RoomPer, RoomRate, PackageAmount, DiscAppYN, DiscAppON, "
    "Nights, Adults, Childs, RRIncTax, RoomCat, Tariff, "
    "RoomTaxStru, MapCode, U_Name, U_EntDt, U_AE"
)


def _value(row, name, index, default=None):
    try:
        value = getattr(row, name)
    except AttributeError:
        try:
            value = row[index]
        except (IndexError, KeyError, TypeError):
            return default
    return default if value is None else value


def _map(row) -> dict:
    return {
        "code": _value(row, "Code", 0, ""),
        "name": str(_value(row, "Name", 1, "") or "").strip(),
        "total": float(_value(row, "Total", 2, 0) or 0),
        "plan_package": _value(row, "Plan_Package", 3, "") or "",
        "percent_app": _value(row, "PercentApp", 4, "") or "",
        "active": _value(row, "ActiveYN", 5, "Y") or "Y",
        "room_per": float(_value(row, "RoomPer", 6, 0) or 0),
        "room_rate": float(_value(row, "RoomRate", 7, 0) or 0),
        "pkg_amount": float(_value(row, "PackageAmount", 8, 0) or 0),
        "disc_yn": _value(row, "DiscAppYN", 9, "") or "",
        "disc_on": _value(row, "DiscAppON", 10, "") or "",
        "nights": int(_value(row, "Nights", 11, 0) or 0),
        "adults": int(_value(row, "Adults", 12, 0) or 0),
        "childs": int(_value(row, "Childs", 13, 0) or 0),
        "rr_inc_tax": _value(row, "RRIncTax", 14, "") or "",
        "room_cat": _value(row, "RoomCat", 15, "") or "",
        "tariff": _value(row, "Tariff", 16, "") or "",
        "room_tax_stru": _value(row, "RoomTaxStru", 17, "") or "",
        "map_code": _value(row, "MapCode", 18, "") or "",
        "u_name": _value(row, "U_Name", 19, "") or "",
        "u_ae": _value(row, "U_AE", 20, "") or "",
    }


def _number(record, key, default=0):
    try:
        return float(record.get(key) or default)
    except (TypeError, ValueError):
        raise ValueError(f"{key} numeric hona chahiye")


def _validate(record: dict):
    code = str(record.get("code") or "").strip()
    name = str(record.get("name") or "").strip()
    if not code:
        raise ValueError("Code zaroori hai")
    if len(code) > LIMITS["code"]:
        raise ValueError(f"Code max {LIMITS['code']} chars")
    if not name:
        raise ValueError("Name zaroori hai")
    if len(name) > LIMITS["name"]:
        raise ValueError(f"Name max {LIMITS['name']} chars")
    plan_package = str(record.get("plan_package") or "").strip()
    if len(plan_package) > LIMITS["plan_package"]:
        raise ValueError(f"Plan_Package max {LIMITS['plan_package']} chars")
    for key in ("total", "room_per", "room_rate", "pkg_amount"):
        _number(record, key)
    for key in ("nights", "adults", "childs"):
        try:
            int(float(record.get(key) or 0))
        except (TypeError, ValueError):
            raise ValueError(f"{key} numeric hona chahiye")
    if "pkg_amount" in record and record.get("pkg_amount") not in (None, ""):
        if abs(_number(record, "total") - _number(record, "pkg_amount")) > 0.005:
            raise ValueError("Package Amount Mismatched")


def _package_record(record: dict, kind=PACKAGE_TYPE) -> dict:
    if kind not in ("Plan", PACKAGE_TYPE):
        raise ValueError("kind Plan ya Package hona chahiye")
    result = dict(record)
    result["plan_package"] = kind
    return result


def _read_filter(plan_package):
    if plan_package is None:
        return "", ()
    return " WHERE Plan_Package = ?", (str(plan_package),)


def list_all(cn=None, plan_package=PACKAGE_TYPE) -> list[dict]:
    where, params = _read_filter(plan_package)
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM PlanMast{where} ORDER BY Code",
        params, cn=cn)
    return [_map(row) for row in rows]


def get(code: str, cn=None, plan_package=PACKAGE_TYPE) -> dict | None:
    where, params = _read_filter(plan_package)
    if where:
        where += " AND Code = ?"
    else:
        where = " WHERE Code = ?"
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM PlanMast{where}",
        params + (str(code).strip(),), cn=cn)
    return _map(rows[0]) if rows else None


def exists(code: str, cn=None, plan_package=PACKAGE_TYPE) -> bool:
    where, params = _read_filter(plan_package)
    if where:
        where += " AND Code = ?"
    else:
        where = " WHERE Code = ?"
    return bool(db.query(
        f"SELECT 1 FROM PlanMast{where}",
        params + (str(code).strip(),), cn=cn))


def _insert_header(record: dict, cn=None, commit=True) -> int:
    return db.execute(
        "INSERT INTO PlanMast (Code, Name, Total, Plan_Package, "
        "PercentApp, ActiveYN, RoomPer, RoomRate, PackageAmount, "
        "DiscAppYN, DiscAppON, Nights, Adults, Childs, RRIncTax, "
        "RoomCat, Tariff, RoomTaxStru, MapCode, "
        "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code, App_Date) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
        "?, ?, getdate(), 'A', ?, getdate())",
        (record["code"], record["name"], _number(record, "total"),
         record.get("plan_package", PACKAGE_TYPE),
         record.get("percent_app", ""),
         record.get("active", "Y"), _number(record, "room_per"),
         _number(record, "room_rate"), _number(record, "pkg_amount"),
         record.get("disc_yn", ""), record.get("disc_on", ""),
         int(float(record.get("nights") or 0)),
         int(float(record.get("adults") or 0)),
         int(float(record.get("childs") or 0)),
         record.get("rr_inc_tax", ""), record.get("room_cat", ""),
         record.get("tariff", ""), record.get("room_tax_stru", ""),
         record.get("map_code", ""), SITE_CODE, USER, SITE_CODE),
        cn=cn, commit=commit)


def insert(record: dict, cn=None, commit=True, kind=PACKAGE_TYPE) -> int:
    record = _package_record(record, kind)
    _validate(record)
    db.require_absent("PlanMast", "Code", record["code"],
                      "Package Code", cn=cn)
    return _insert_header(record, cn=cn, commit=commit)


def _update_header(code: str, record: dict, cn=None, commit=True) -> int:
    return db.execute(
        "UPDATE PlanMast SET Name = ?, Total = ?, Plan_Package = ?, "
        "PercentApp = ?, ActiveYN = ?, RoomPer = ?, RoomRate = ?, "
        "PackageAmount = ?, DiscAppYN = ?, DiscAppON = ?, "
        "Nights = ?, Adults = ?, Childs = ?, RRIncTax = ?, "
        "RoomCat = ?, Tariff = ?, RoomTaxStru = ?, MapCode = ?, "
        "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE Code = ?",
        (record["name"], _number(record, "total"),
         record.get("plan_package", PACKAGE_TYPE),
         record.get("percent_app", ""), record.get("active", "Y"),
         _number(record, "room_per"), _number(record, "room_rate"),
         _number(record, "pkg_amount"), record.get("disc_yn", ""),
         record.get("disc_on", ""), int(float(record.get("nights") or 0)),
         int(float(record.get("adults") or 0)),
         int(float(record.get("childs") or 0)),
         record.get("rr_inc_tax", ""), record.get("room_cat", ""),
         record.get("tariff", ""), record.get("room_tax_stru", ""),
         record.get("map_code", ""), USER, str(code).strip()),
        cn=cn, commit=commit)


def update(code: str, record: dict, cn=None, commit=True,
           kind=PACKAGE_TYPE) -> int:
    record = _package_record(record, kind)
    _validate(record)
    return _update_header(code, record, cn=cn, commit=commit)


def _row_value(row: dict, key: str, default=""):
    if key in row:
        return row[key]
    lower = key.lower()
    for candidate, value in row.items():
        if str(candidate).lower() == lower:
            return value
    return default


def _row_number(row: dict, key: str, default=0):
    try:
        return float(_row_value(row, key, default) or default)
    except (TypeError, ValueError):
        raise ValueError(f"{key} numeric hona chahiye")


def _validate_plan_row(row: dict):
    if not str(_row_value(row, "ChrgCode", "")).strip():
        raise ValueError("Plan1 ChrgCode zaroori hai")
    if not str(_row_value(row, "RevCode", "")).strip():
        raise ValueError("Plan1 RevCode zaroori hai")
    for key in ("FlatRate", "Adult", "Child", "ExtraAdult", "ExtraChild",
                "NoOfDays", "PlanPer", "PerDayAmount", "NetAmount"):
        try:
            float(_row_value(row, key, 0) or 0)
        except (TypeError, ValueError):
            raise ValueError(f"Plan1 {key} numeric hona chahiye")


def _validate_token_row(row: dict):
    if not str(_row_value(row, "ChrgCode", "")).strip():
        raise ValueError("PlanTokenDetails ChrgCode zaroori hai")
    try:
        float(_row_value(row, "Rate", 0) or 0)
    except (TypeError, ValueError):
        raise ValueError("PlanTokenDetails Rate numeric hona chahiye")


def _insert_plan_row(code: str, row: dict, index: int, cn) -> int:
    _validate_plan_row(row)
    return db.execute(
        "INSERT INTO Plan1 (Code, ChrgCode, RevCode, TaxInc, FixRate, "
        "TaxStru, PrintOption, PostingMethod, ChargeType, FlatRate, "
        "Adult, Child, ExtraAdult, ExtraChild, NoOfDays, Site_Code, "
        "U_Name, U_EntDT, U_AE, PlanPer, App_Date, LogSite_Code, "
        "PerDayAmount, NetAmount) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
        "?, ?, ?, ?, ?, ?, ?, getdate(), ?, ?, getdate(), ?, ?, ?)",
        (code, _row_value(row, "ChrgCode"), _row_value(row, "RevCode"),
         _row_value(row, "TaxInc"), _row_value(row, "FixRate"),
         _row_value(row, "TaxStru"), _row_value(row, "PrintOption"),
         _row_value(row, "PostingMethod"), _row_value(row, "ChargeType"),
         _row_number(row, "FlatRate"), int(_row_number(row, "Adult")),
         int(_row_number(row, "Child")), int(_row_number(row, "ExtraAdult")),
         int(_row_number(row, "ExtraChild")), int(_row_number(row, "NoOfDays")),
         SITE_CODE, USER, "A" if index == 0 else "E",
         _row_number(row, "PlanPer"), SITE_CODE,
         _row_number(row, "PerDayAmount"), _row_number(row, "NetAmount")),
        cn=cn, commit=False)


def _insert_token_row(code: str, row: dict, index: int, cn) -> int:
    _validate_token_row(row)
    sno = int(float(_row_value(row, "SNo", index + 1) or index + 1))
    return db.execute(
        "INSERT INTO PlanTokenDetails (SNo, PlanCode, ChrgCode, Rate, "
        "Remarks, App_Date, Site_Code, U_Name, U_EntDT, U_AE, "
        "LogSite_Code) VALUES (?, ?, ?, ?, ?, getdate(), ?, ?, getdate(), "
        "?, ?)",
        (sno, code, _row_value(row, "ChrgCode"), _row_number(row, "Rate"),
         _row_value(row, "Remarks"), SITE_CODE, USER, "A" if index == 0 else "E",
         SITE_CODE),
        cn=cn, commit=False)


def list_plan1(code: str, cn=None) -> list[dict]:
    rows = db.query(
        "SELECT Code, ChrgCode, RevCode, TaxInc, FixRate, TaxStru, "
        "PrintOption, PostingMethod, ChargeType, FlatRate, Adult, Child, "
        "ExtraAdult, ExtraChild, NoOfDays, PlanPer, PerDayAmount, "
        "NetAmount FROM Plan1 WHERE Code = ? ORDER BY ChrgCode, RevCode",
        (str(code).strip(),), cn=cn)
    names = ("code", "chrgcode", "revcode", "taxinc", "fixrate", "taxstru",
             "printoption", "postingmethod", "chargetype", "flatrate", "adult",
             "child", "extraadult", "extrachild", "nodays", "planper",
             "perdayamount", "netamount")
    return [dict(zip(names, row)) for row in rows]


def list_token_details(code: str, cn=None) -> list[dict]:
    rows = db.query(
        "SELECT SNo, PlanCode, ChrgCode, Rate, Remarks FROM "
        "PlanTokenDetails WHERE PlanCode = ? ORDER BY SNo",
        (str(code).strip(),), cn=cn)
    names = ("sno", "plancode", "chrgcode", "rate", "remarks")
    return [dict(zip(names, row)) for row in rows]


def save_with_children(record: dict, plan_rows=None, token_rows=None,
                       mode: str = "insert", kind=PACKAGE_TYPE,
                       cn=None, commit: bool = True) -> int:
    if mode not in ("insert", "update"):
        raise ValueError("mode insert ya update hona chahiye")
    record = _package_record(record, kind)
    _validate(record)
    own = cn is None
    connection = cn or db.connect()
    try:
        if mode == "insert":
            db.require_absent("PlanMast", "Code", record["code"],
                              "Package Code", cn=connection)
            _insert_header(record, cn=connection, commit=False)
        else:
            _update_header(record["code"], record, cn=connection, commit=False)
        db.execute("DELETE FROM PlanTokenDetails WHERE PlanCode = ?",
                   (record["code"],), cn=connection, commit=False)
        db.execute("DELETE FROM Plan1 WHERE Code = ?",
                   (record["code"],), cn=connection, commit=False)
        for index, row in enumerate(plan_rows or []):
            _insert_plan_row(record["code"], row, index, connection)
        for index, row in enumerate(token_rows or []):
            _insert_token_row(record["code"], row, index, connection)
        if commit:
            connection.commit()
        return 1
    except Exception:
        connection.rollback()
        raise
    finally:
        if own:
            connection.close()


def delete(code: str, cn=None, commit: bool = True) -> int:
    own = cn is None
    connection = cn or db.connect()
    try:
        db.execute("DELETE FROM PlanTokenDetails WHERE PlanCode = ?",
                   (str(code).strip(),), cn=connection, commit=False)
        db.execute("DELETE FROM Plan1 WHERE Code = ?",
                   (str(code).strip(),), cn=connection, commit=False)
        result = db.execute("DELETE FROM PlanMast WHERE Code = ?",
                            (str(code).strip(),), cn=connection, commit=False)
        if commit:
            connection.commit()
        return result
    except Exception:
        connection.rollback()
        raise
    finally:
        if own:
            connection.close()
