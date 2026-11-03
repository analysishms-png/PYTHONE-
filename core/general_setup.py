"""General Setup (VB6: Main Setup -> General Setup).

Database evidence (live HMS):
- Voucher_Type: Voucher type master - EXISTS (37 cols)
  Used as: Payment Type config + voucher series setup
  Key cols: V_Type varchar(10) PK, Category varchar(10), Description varchar(50),
  Number_Method varchar(20), Start_No int, Site_Code, U_NAME, U_EntDt, U_AE
- Enviro: System environment settings - EXISTS
  Key cols: Cash_Ac, DiscountAc, RoundOffAc, etc. (single-row config)
- RoomFeature: Room amenity features - EXISTS
  Schema: Code varchar(6) PK, Name varchar(30),
  Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code
- GodownMast: Inventory locations (used in General Setup Utility) - EXISTS
  Schema: Code varchar(6) PK, Name varchar(30), ShortName varchar(6),
  DepartCode varchar(6), SysYn varchar(1),
  Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code

NOTE: Parameter/HMSParam/RevGroup/PrintParam/RevenueGroup tables do NOT
exist in this DB. GuestParam exists as a configuration table.
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()

# ============================================================
# Enviro allowlist - editable operational flags only
# Financial fields are READ-ONLY (protected)
# ============================================================
ENVIRO_EDITABLE_FIELDS = frozenset({
    # Printing / KOT / POS operational flags
    "KOTPrinting", "KOTAtNightAudit", "POSBillAtNightAudit", "KOTOutletSelection",
    "KOTPrintEdited", "AutoPrintKOTYN", "AutoFillItemInKitchenClosingYN",
    "TOKENPrint", "RcptPrinting", "ReservationPrinting",
    "BillPrintingSummerised", "FomBillCopies",
    "POSSaleBillModification", "POSSaleBillEditLog", "POSBillCalcType",
    "POSSaleRevenueBifercation", "PostPOSDiscSeparately",
    "HideSettledBillsOnSaleBillYN", "ReprintingOnSaleBillYN",
    # Checkout / Settlement flags
    "Checkout", "CheckoutVar", "Variation", "VariationBefore",
    "RoomCheckOutClearanceYN", "RoomCheckInClearanceYN",
    "AllowRoomSettlement", "SplitYN", "PostComplimentaryBills",
    "PostNilLT", "AllowBillOnHoldSettlement",
    "PostRoomDiscSeparately", "IncCashPurchInFOCC",
    "RoomRentBefChkOut", "RoomRentChkOutPost",
    # Room rate editable flags
    "RoomRateEditable", "RoomIncTaxEditable", "RoomServiceChargeEditable",
    "RateEditableInPO", "RateEditableInStockIssue",
    # Tax / VAT settings
    "PurchaseTaxVAT", "SaleTaxVAT", "ExciseInvoiceTaxStru",
    "PostPOSDiscSeparately",
    # KOT / Kitchen settings
    "FreeItemInKOT", "NCKOTPercentage", "ResetTokenAtNightAudit",
    "KOTHeader1", "KOTHeader2", "KOTHeader3", "KOTHeader4",
    # Banquet / Catering
    "OutDoorCatering", "BanquetKitchen",
    # Display / UI settings
    "DisplayRackRow", "DisplayRackCol", "DisplayRackFontSize",
    "DisplayPort", "DisplayMode", "menuX", "menuY", "menuDISP",
    "ShowTitleBar", "ShowMenuBar", "ShowSubMenuBar", "ShowShortCutsBar",
    # Reservation settings
    "ArrDateTimeEdit", "ReservationExpandOnSaveYN",
    "IncReservationInBlankGRC", "SeperateReservationLetterAsPerStatusYN",
    "NewTarrifForOldGuest", "BlockInvalidTarrifIncTaxYN",
    "ResInstruction1", "ResInstruction2", "ResInstruction3", "ResInstruction4",
    "ResInstruction5", "ResInstruction6", "ResInstruction7", "ResInstruction8",
    "ResInstruction9", "ResInstruction10", "ResInstruction11", "ResInstruction12",
    # Guest / Mobile settings
    "SMSMessaging", "SMSOption", "MobileNo", "MobileSet", "SMSMessage",
    "MobileInfoMandatoryYN", "CoversMandatory", "MobileNoMandatory",
    "PANNOMandatoryYN",
    # Purchase / Stock settings
    "ImportOptionInPurchase", "ReqCompWise", "BarCodeFeatureInPurchase",
    "SmartPurchaseOrder", "NegativeStockAllowYN",
    "PurchaseGodown", "StockRecGodown",
    # Cash Card settings
    "CashCardApplYN", "CashCardInfoMandatoryYN", "CashCardDebitAc",
    "CashCardCreditAc", "CashCardSecurityAc",
    # Smart Card
    "SMARTCARDRECIEPTPrintingDW",
    # Other operational
    "Editopen", "AcFieldAlterable", "AddModifyEntryInBackDate",
    "PlanSelectionBasedOn", "PlanTariffNarration",
    "GuestChargesDeleteLog", "FOMBillReprintAutoRefresh",
    "UserWiseShowOutletYN",
})


ENVIRO_FINANCE_FIELDS = frozenset({
    # All financial account codes - READ ONLY
    "Cash_Ac", "DiscountAc", "RoundOffAc", "CommAC", "SALARY_AC",
    "Loan_AC", "AdvanceAc", "WagesAc", "LessFreightAc",
    "OutletDiscAc", "OutletRoundAc", "CommissionAc",
    "RoomChrgDueAc", "RoomTaxDueAc", "HallDiscAC", "HallRoundOff",
    "CashPurchAc", "CancellationAC", "BookingPartyAc",
    "CashPayType", "RoomPayType", "OutletDiscAc", "OutletRoundAc",
    "OutdoorSaleAC", "IndoorSaleAC", "OutdoorPartyAC", "IndoorPartyAC",
    "DummyTravelAc", "CatalogLimit", "BookingPartyAc",
    "CashCardDebitAc", "CashCardCreditAc", "CashCardSecurityAc",
    # Payroll / HR
    "PF_LIMIT", "PF_EMPLOYEE", "PF_EMPLOYER", "ESI_LIMIT",
    "esi_employee", "ESIBasic", "ESIDA", "ESIHRA", "ESIConvey",
    "ESIOther", "ESILTA",
    # Tax / VAT structure
    "TaxSummary", "SaleTaxVAT", "PurchaseTaxVAT",
    "ExciseInvoiceTaxStru",
    # Advance / Imprest
    "ImprestAmount", "AdvanceRRoomRent",
    # General ledger
    "Postingtype", "calcMethod", "NCUR",
    "SiteCode", "GAppCompYear", "GMonthConsidered",
    "GWorkingDaysInAMonth", "GDaysSalary",
    "AttendType", "PlanMastType", "PlanCalc", "PlanTariffNarration",
    "PlanSelectionBasedOn",
    # System
    "LogSite_Code", "U_AE_FOMBillSetE",
    "DTCPETakeEffectHeadToSite",
    "HTWCurDateEdit",
    "ServiceTaxOnServiceChargeYN",
    "CreditCardInfoMandatoryYN",
    "ExpMfdDateInMR",
    "BarCodeFeatureInPurchase",
    "RevenueGroupModule", "MemberShipModule",
    "HotelLogo", "PurchaseAdd1", "PurchaseDed1", "PurchaseAdd2", "PurchaseDed2",
    "SundryPassword", "Rate1", "Rate2", "Rate3", "Rate4", "Rate5",
    "DefCompGroup", "DefaultCrAc", "DefaultDrAc",
})


# ============================================================
# Room Feature Master (Main Setup -> FO -> Room Features)
# ============================================================
ROOMFEAT_LIMITS = {"code": 5, "name": 25}
ROOMFEAT_COLS = "Code, Name, U_Name, U_EntDt, U_AE"


def _map_roomfeat(r) -> dict:
    try:
        return {"code": r.Code, "name": (r.Name or "").strip(),
                "u_name": r.U_Name or "", "u_ae": r.U_AE or ""}
    except AttributeError:
        c, n, un, _, uae = r
        return {"code": c, "name": (n or "").strip(),
                "u_name": un or "", "u_ae": uae or ""}


def roomfeat_list(cn=None) -> list[dict]:
    return [_map_roomfeat(r) for r in db.query(
        f"SELECT {ROOMFEAT_COLS} FROM RoomFeature ORDER BY Code", cn=cn)]


def roomfeat_get(code: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {ROOMFEAT_COLS} FROM RoomFeature WHERE Code = ?", (code,), cn=cn)
    return _map_roomfeat(rows[0]) if rows else None


def roomfeat_exists(code: str, cn=None) -> bool:
    return bool(db.query("SELECT 1 FROM RoomFeature WHERE Code = ?", (code,), cn=cn))


def roomfeat_insert(rec: dict, cn=None, commit=True) -> int:
    if not rec.get("code", "").strip():
        raise ValueError("Code zaroori hai")
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    db.require_absent("RoomFeature", "Code", rec["code"], "Room Feature Code")
    return db.execute(
        "INSERT INTO RoomFeature (Code, Name, "
        "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, getdate(), 'A', ?)",
        (rec["code"], rec["name"], SITE_CODE, USER, SITE_CODE),
        cn=cn, commit=commit)


def roomfeat_update(code: str, rec: dict, cn=None, commit=True) -> int:
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    return db.execute(
        "UPDATE RoomFeature SET Name = ?, "
        "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE Code = ?",
        (rec["name"], USER, code), cn=cn, commit=commit)


def roomfeat_delete(code: str, cn=None, commit=True) -> int:
    return db.execute(
        "DELETE FROM RoomFeature WHERE Code = ?", (code,), cn=cn, commit=commit)


class _RoomFeatAPI:
    LIMITS = ROOMFEAT_LIMITS

    @staticmethod
    def list_all(cn=None): return roomfeat_list(cn)

    @staticmethod
    def get(code, cn=None): return roomfeat_get(code, cn)

    @staticmethod
    def exists(code, cn=None): return roomfeat_exists(code, cn)

    @staticmethod
    def insert(rec, cn=None, commit=True): return roomfeat_insert(rec, cn, commit)

    @staticmethod
    def update(code, rec, cn=None, commit=True): return roomfeat_update(code, rec, cn, commit)

    @staticmethod
    def delete(code, cn=None, commit=True): return roomfeat_delete(code, cn, commit)


RoomFeatAPI = _RoomFeatAPI()


# ============================================================
# Godown / Location Master (Inventory locations)
# ============================================================
GODOWN_LIMITS = {"code": 6, "name": 30, "short": 6, "dept": 6}
GODOWN_COLS = "Code, Name, ShortName, DepartCode, SysYn, U_Name, U_EntDt, U_AE"


def _map_godown(r) -> dict:
    try:
        return {"code": r.Code, "name": (r.Name or "").strip(),
                "short": (r.ShortName or "").strip(),
                "dept": r.DepartCode or "", "sysyn": r.SysYn or "N",
                "u_name": r.U_Name or "", "u_ae": r.U_AE or ""}
    except AttributeError:
        c, n, sn, dc, sy, un, _, uae = r
        return {"code": c, "name": (n or "").strip(), "short": (sn or "").strip(),
                "dept": dc or "", "sysyn": sy or "N",
                "u_name": un or "", "u_ae": uae or ""}


def godown_list(cn=None) -> list[dict]:
    return [_map_godown(r) for r in db.query(
        f"SELECT {GODOWN_COLS} FROM GodownMast ORDER BY Code", cn=cn)]


def godown_get(code: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {GODOWN_COLS} FROM GodownMast WHERE Code = ?", (code,), cn=cn)
    return _map_godown(rows[0]) if rows else None


def godown_exists(code: str, cn=None) -> bool:
    return bool(db.query("SELECT 1 FROM GodownMast WHERE Code = ?", (code,), cn=cn))


def godown_insert(rec: dict, cn=None, commit=True) -> int:
    if not rec.get("code", "").strip():
        raise ValueError("Code zaroori hai")
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    db.require_absent("GodownMast", "Code", rec["code"], "Godown Code")
    return db.execute(
        "INSERT INTO GodownMast (Code, Name, ShortName, DepartCode, SysYn, "
        "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (rec["code"], rec["name"], rec.get("short", ""),
         rec.get("dept", ""), rec.get("sysyn", "N"),
         SITE_CODE, USER, SITE_CODE), cn=cn, commit=commit)


def godown_update(code: str, rec: dict, cn=None, commit=True) -> int:
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    return db.execute(
        "UPDATE GodownMast SET Name = ?, ShortName = ?, DepartCode = ?, "
        "SysYn = ?, U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
        "WHERE Code = ?",
        (rec["name"], rec.get("short", ""), rec.get("dept", ""),
         rec.get("sysyn", "N"), USER, code), cn=cn, commit=commit)


def godown_delete(code: str, cn=None, commit=True) -> int:
    rows = db.query("SELECT SysYn FROM GodownMast WHERE Code = ?", (code,), cn=cn)
    if rows and str(rows[0][0] or "").upper() == "Y":
        raise ValueError(f"'{code}' system godown hai - delete nahi hota")
    return db.execute(
        "DELETE FROM GodownMast WHERE Code = ?", (code,), cn=cn, commit=commit)


class _GodownAPI:
    LIMITS = GODOWN_LIMITS

    @staticmethod
    def list_all(cn=None): return godown_list(cn)

    @staticmethod
    def get(code, cn=None): return godown_get(code, cn)

    @staticmethod
    def exists(code, cn=None): return godown_exists(code, cn)

    @staticmethod
    def insert(rec, cn=None, commit=True): return godown_insert(rec, cn, commit)

    @staticmethod
    def update(code, rec, cn=None, commit=True): return godown_update(code, rec, cn, commit)

    @staticmethod
    def delete(code, cn=None, commit=True): return godown_delete(code, cn, commit)


GodownAPI = _GodownAPI()


def _v_text(value) -> str:
    return str(value if value is not None else "").strip()


def _v_row_value(row, name: str, index: int, default=None):
    try:
        return getattr(row, name)
    except AttributeError:
        try:
            return row[index]
        except (IndexError, KeyError, TypeError):
            return default


def _v_query_read(sql: str, params=(), cn=None, table_name: str = ""):
    try:
        return db.query(sql, params, cn=cn)
    except Exception as exc:
        message = str(exc).lower()
        if "invalid object name" in message and table_name.lower() in message:
            return []
        raise


def _v_scope(logsite_code=None) -> str:
    return _v_text(logsite_code) or SITE_CODE


def voucher_type_list(logsite_code=None, cn=None) -> list[dict]:
    site = _v_scope(logsite_code)
    rows = _v_query_read(
        "SELECT V_Type, Category, NCat, Description, Number_Method, Start_No, "
        "Short_Name, Site_Code, LogSite_Code, U_NAME, U_EntDt, U_AE "
        "FROM Voucher_Type WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') "
        "ORDER BY Category, V_Type",
        (site,),
        cn=cn,
        table_name="Voucher_Type",
    )
    output = []
    for row in rows:
        output.append({
            "vtype": _v_text(_v_row_value(row, "V_Type", 0, "")),
            "category": _v_text(_v_row_value(row, "Category", 1, "")),
            "ncat": _v_text(_v_row_value(row, "NCat", 2, "")),
            "desc": _v_text(_v_row_value(row, "Description", 3, "")),
            "method": _v_text(_v_row_value(row, "Number_Method", 4, "")),
            "startno": _v_row_value(row, "Start_No", 5, 1) or 1,
            "short": _v_text(_v_row_value(row, "Short_Name", 6, "")),
            "site_code": _v_text(_v_row_value(row, "Site_Code", 7, "")),
            "logsite_code": _v_text(_v_row_value(row, "LogSite_Code", 8, "")),
            "u_name": _v_text(_v_row_value(row, "U_NAME", 9, "")),
            "u_entdt": _v_row_value(row, "U_EntDt", 10),
            "u_ae": _v_text(_v_row_value(row, "U_AE", 11, "")),
        })
    return output


def printing_settings_snapshot(cn=None) -> dict:
    """VB6-style printing settings snapshot for Main Setup -> Printing Setup.

    Source of truth:
    - Analysis.ini keys 2/3/4 = Reports/Temp/Printer path
    - Enviro row = operational flags like KOTPrinting, RcptPrinting,
      ReservationPrinting, etc.
    """
    cfg = db.load_config()
    keys = (
        "Bill_Header", "Bill_Footer", "KOTPrinting", "KOTPrintEdited",
        "TOKENPrint", "RcptPrinting", "ReservationPrinting",
        "KOTOutletSelection", "TaxSummary", "BillPrintingSummerised",
        "FomBillCopies", "POSBillAtNightAudit", "KOTAtNightAudit",
        "NoShowAtNightAudit", "Checkout", "CheckoutVar", "Variation",
        "AllowRoomSettlement", "SplitYN", "RoomRateEditable"
    )
    env = {}
    for k in keys:
        try:
            rows = db.query(
                f"SELECT [{k}] FROM Enviro WHERE LogSite_Code = ? OR LogSite_Code = 'HO'",
                (SITE_CODE,), cn=cn
            )
            if rows:
                env[k] = rows[0][0]
            else:
                env[k] = None
        except Exception:
            env[k] = None
    return {
        "reports": cfg.get("reports") or "",
        "temp": cfg.get("temp") or "",
        "printer": cfg.get("printer") or "Prn",
        "site": cfg.get("site") or SITE_CODE,
        "company": cfg.get("company") or "KK",
        "enviro": env,
    }


def enviro_update(field: str, value: str, cn=None, commit: bool = True) -> int:
    """Update a single Enviro field (operational flags only)."""
    if field not in ENVIRO_EDITABLE_FIELDS:
        raise ValueError(f"Field '{field}' is not editable (protected finance field)")
    return db.execute(
        f"UPDATE Enviro SET [{field}] = ?, U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
        f"WHERE LogSite_Code = ? OR LogSite_Code = 'HO'",
        (value, USER, SITE_CODE), cn=cn, commit=commit)


def enviro_get(field: str, cn=None) -> str | None:
    """Get a single Enviro field value."""
    try:
        rows = db.query(
            f"SELECT [{field}] FROM Enviro WHERE LogSite_Code = ? OR LogSite_Code = 'HO'",
            (SITE_CODE,), cn=cn
        )
        return rows[0][0] if rows else None
    except Exception:
        return None


VOUCHCAT_LIMITS = {"category": 10, "ncat": 5}
VOUCHCAT_COLS = "Category, NCat, Site_Code, LogSite_Code"


def _map_vouchcat(row) -> dict:
    return {
        "category": _v_text(_v_row_value(row, "Category", 0, "")),
        "ncat": _v_text(_v_row_value(row, "NCat", 1, "")),
        "site_code": _v_text(_v_row_value(row, "Site_Code", 2, "")),
        "logsite_code": _v_text(_v_row_value(row, "LogSite_Code", 3, "")),
    }


def vouchcat_list(logsite_code=None, cn=None) -> list[dict]:
    site = _v_scope(logsite_code)
    rows = _v_query_read(
        f"SELECT {VOUCHCAT_COLS} FROM VoucherCat "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') "
        "ORDER BY Category, NCat",
        (site,),
        cn=cn,
        table_name="VoucherCat",
    )
    return [_map_vouchcat(row) for row in rows]


def vouchcat_get(category: str, ncat: str, logsite_code=None, cn=None) -> dict | None:
    site = _v_scope(logsite_code)
    rows = _v_query_read(
        f"SELECT {VOUCHCAT_COLS} FROM VoucherCat "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') "
        "AND Category = ? AND NCat = ?",
        (site, _v_text(category), _v_text(ncat)),
        cn=cn,
        table_name="VoucherCat",
    )
    return _map_vouchcat(rows[0]) if rows else None


def vouchcat_exists(category: str, ncat: str, logsite_code=None, cn=None) -> bool:
    site = _v_scope(logsite_code)
    rows = _v_query_read(
        "SELECT 1 FROM VoucherCat "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') "
        "AND Category = ? AND NCat = ?",
        (site, _v_text(category), _v_text(ncat)),
        cn=cn,
        table_name="VoucherCat",
    )
    return bool(rows)


def vouchcat_insert(*args, **kwargs):
    raise PermissionError("VoucherCat is read-only in this parity slice")


def vouchcat_update(*args, **kwargs):
    raise PermissionError("VoucherCat is read-only in this parity slice")


def vouchcat_delete(*args, **kwargs):
    raise PermissionError("VoucherCat is read-only in this parity slice")


def _map_voucher_prefix(row) -> dict:
    return {
        "vtype": _v_text(_v_row_value(row, "V_Type", 0, "")),
        "date_from": _v_row_value(row, "Date_From", 1),
        "date_to": _v_row_value(row, "Date_To", 2),
        "prefix": _v_text(_v_row_value(row, "Prefix", 3, "")),
        "start_srl_no": _v_row_value(row, "Start_Srl_No", 4, 0),
        "site_code": _v_text(_v_row_value(row, "Site_Code", 5, "")),
        "u_entdt": _v_row_value(row, "U_EntDt", 6),
        "logsite_code": _v_text(_v_row_value(row, "LogSite_Code", 7, "")),
        "u_name": _v_text(_v_row_value(row, "U_Name", 8, "")),
        "u_ae": _v_text(_v_row_value(row, "U_AE", 9, "")),
    }


def _map_voucher_group(row) -> dict:
    return {
        "vtype": _v_text(_v_row_value(row, "V_Type", 0, "")),
        "group_code": _v_text(_v_row_value(row, "GroupCode", 1, "")),
        "dr": _v_text(_v_row_value(row, "Dr", 2, "")),
        "cr": _v_text(_v_row_value(row, "Cr", 3, "")),
        "site_code": _v_text(_v_row_value(row, "Site_Code", 4, "")),
        "u_entdt": _v_row_value(row, "U_EntDt", 5),
        "u_ae": _v_text(_v_row_value(row, "U_AE", 6, "")),
        "logsite_code": _v_text(_v_row_value(row, "LogSite_Code", 7, "")),
        "u_name": _v_text(_v_row_value(row, "U_Name", 8, "")),
    }


def voucher_prefix_list(vtype: str, logsite_code=None, cn=None) -> list[dict]:
    site = _v_scope(logsite_code)
    rows = _v_query_read(
        "SELECT V_Type, Date_From, Date_To, Prefix, Start_Srl_No, Site_Code, "
        "U_EntDt, LogSite_Code, U_Name, U_AE FROM Voucher_Prefix "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') AND V_Type = ? "
        "ORDER BY Date_From",
        (site, _v_text(vtype)),
        cn=cn,
        table_name="Voucher_Prefix",
    )
    return [_map_voucher_prefix(row) for row in rows]


def voucher_include_list(vtype: str, logsite_code=None, cn=None) -> list[dict]:
    site = _v_scope(logsite_code)
    rows = _v_query_read(
        "SELECT V_Type, GroupCode, Dr, Cr, Site_Code, U_EntDt, U_AE, "
        "LogSite_Code, U_Name FROM Voucher_Include "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') AND V_Type = ? "
        "ORDER BY GroupCode",
        (site, _v_text(vtype)),
        cn=cn,
        table_name="Voucher_Include",
    )
    return [_map_voucher_group(row) for row in rows]


def voucher_exclude_list(vtype: str, logsite_code=None, cn=None) -> list[dict]:
    site = _v_scope(logsite_code)
    rows = _v_query_read(
        "SELECT V_Type, GroupCode, Dr, Cr, Site_Code, U_EntDt, U_AE, "
        "LogSite_Code, U_Name FROM Voucher_Exclude "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') AND V_Type = ? "
        "ORDER BY GroupCode",
        (site, _v_text(vtype)),
        cn=cn,
        table_name="Voucher_Exclude",
    )
    return [_map_voucher_group(row) for row in rows]


class _VouchCatAPI:
    LIMITS = VOUCHCAT_LIMITS

    @staticmethod
    def list_all(cn=None, logsite_code=None):
        return vouchcat_list(logsite_code=logsite_code, cn=cn)

    @staticmethod
    def get(category, ncat, cn=None, logsite_code=None):
        return vouchcat_get(category, ncat, logsite_code=logsite_code, cn=cn)

    @staticmethod
    def exists(category, ncat, cn=None, logsite_code=None):
        return vouchcat_exists(category, ncat, logsite_code=logsite_code, cn=cn)

    @staticmethod
    def insert(*args, **kwargs):
        return vouchcat_insert(*args, **kwargs)

    @staticmethod
    def update(*args, **kwargs):
        return vouchcat_update(*args, **kwargs)

    @staticmethod
    def delete(*args, **kwargs):
        return vouchcat_delete(*args, **kwargs)


VouchCatAPI = _VouchCatAPI()
