"""Module registry: 14 manual modules -> menuHelp groups + code + leaves.

Source of truth:
- module_names: live menuHelp Module_Name values (discovered 2026-09-25,
  see 00_GLOBAL/MenuHelp_Module_Map.md) grouped per business module.
- sidebar: MainWindow._on_sidebar_click mod_target (menuHelp sidebar roots).
- leaves: curated registry leaf names (ui/shell.py _form_registry keys)
  for the Masters/Operations/Reports split + screenshot targets.
"""
from __future__ import annotations
from dataclasses import dataclass, field


@dataclass
class Module:
    key: str                      # folder name, e.g. "04_FrontOffice"
    no: int
    name: str                     # display name
    sidebar: str                  # sidebar mod_target (lowercase)
    module_names: tuple[str, ...] = ()    # menuHelp Module_Name values
    master_modules: tuple[str, ...] = ()  # Module_Name values = masters layer
    core_files: tuple[str, ...] = ()      # HMS_py/core/<name>.py (no ext)
    leaves: dict = field(default_factory=dict)


MODULES: list[Module] = [
    Module("01_Finance", 1, "Finance", "finance",
           module_names=("FA", "FAT", "fate", "farp", "FAREPORT", "fae",
                         "fame", "TallyRPTS", "TallyPOSRPT"),
           master_modules=("fame",),
           core_files=("fa_voucher", "fa_ledger_ops", "fa_masters_ops",
                       "fa_reports", "fa_tds_ops", "fa_enviro", "ledger",
                       "acgroup", "narr", "tdscat", "tdscerti", "tally_export"),
           leaves={"masters": ["Ledger Accounts Entry", "Group Accounts Entry",
                               "Global Narration", "T.D.S.Category Entry"],
                    "operations": ["Voucher Entry", "Bank Reconciliation",
                                   "Ledger Adjustment"],
                   "reports": ["Trial Balance", "Ledger", "Cash Book"]}),
    Module("02_MainSetup", 2, "Main Setup", "main setup",
           module_names=("Mast", "GEN", "GENMas", "Mas", "HL", "HallM",
                         "CCenter", "CCenterMas", "Util", "UTL"),
           master_modules=("GENMas", "Mas", "HallM", "CCenterMas", "UTL"),
           core_files=("roommaster", "roomcategory", "plans", "company",
                       "guestprof", "depart", "unit", "item", "taxmaster",
                       "paymenttype", "marketsegment", "general_setup",
                       "sys_config", "sundry", "sundry_type"),
           leaves={"masters": ["Room Master", "Room Category", "Plan Master",
                               "Guest Profile", "Department Master"],
                   "operations": [],
                   "reports": []}),
    Module("03_Reservation", 3, "Reservation", "reservation",
           module_names=("Reserv", "ReservationEnt", "ResOpEnt", "ResStatusRpt",
                         "AdvRecdRpt", "ReservationMIS"),
           master_modules=(),
           core_files=("reservation", "booking", "guestprof"),
           leaves={"masters": [],
                   "operations": ["Booking Operations", "Reservation/Cancellation",
                                  "Reservation With History"],
                   "reports": ["Reservation Status Report", "Reservation Status",
                               "Reservation Status Arrival",
                               "Reservation Status In-House"]}),
    Module("04_FrontOffice", 4, "Front Office", "front office",
           module_names=("FrontDesk", "FDO", "FDOMenu", "FDOForms", "FDORep",
                         "FDOReports", "TFDOForms", "FDOMIS", "FDOMISRep",
                         "FDOTax", "FDOTaxr"),
           master_modules=(),
           core_files=("checkin", "checkout", "folio", "fo_ops", "guestprof",
                       "guest_folio", "guest_services", "roomstatus",
                       "room_occ", "account_merge", "booking", "reservation"),
           leaves={"masters": ["Guest Profile", "Guest Registration",
                               "Room Master", "Room Category", "Plan Master"],
                   "operations": ["Check In", "Check In Browser", "Check Out",
                                  "Booking Operations", "Room Change",
                                  "Folio Log", "Room Check Out",
                                  "Guest Services"],
                   "reports": ["Room Status", "Room Display",
                               "Reservation Status Report", "Guest History",
                               "Guest Ledger"]}),
    Module("05_HouseKeeping", 5, "House Keeping", "house keeping",
           module_names=("HouseKeeping", "TransHK", "HouseEnt", "ReportsHK",
                         "HouseREP"),
           master_modules=(),
           core_files=("roomstatus", "room_occ"),
           leaves={"masters": [], "operations": ["Room Status"],
                   "reports": []}),
    Module("06_Inventory", 6, "Inventory", "inventory",
           module_names=("Purchase", "Matop", "Purch", "MatLok", "MatStat",
                         "MatReports", "MatVat", "MatVatR"),
           master_modules=("MatLok", "MatStat"),
           core_files=("inventory", "purchase", "item", "unit", "sundry"),
            leaves={"masters": ["Indent"],
                    "operations": ["GIN / Purchase Receipt", "Stock Transfer"],
                   "reports": ["Stock Summary", "Stock Register",
                               "Purchase Register"]}),
    Module("07_POS", 7, "Point Of Sale", "point of sale",
           module_names=("Restaurant", "POSEnt", "POSMas", "POSRep",
                         "POSReports", "POSMIS", "MISREP", "PosTax",
                         "PosTaxRep"),
           master_modules=("POSMas",),
           core_files=("pos", "pos_entry", "pos_kot", "pos_sales", "pos_stock",
                       "pos_table", "pos_masters", "pos_hall", "pos_packing",
                       "pos_delivery", "pos_happy"),
           leaves={"masters": ["Restaurant Master"],
                   "operations": ["KOT Entry", "Table Change Entry",
                                  "KOT Transfer"],
                   "reports": ["Sales Register"]}),
    Module("08_Banquet", 8, "Banquet", "banquet",
           module_names=("Banquet", "oper", "Hallop", "HallReport", "BanqRep",
                         "HallMIS", "BanqRepMIS", "HallTax", "HallTaxP",
                         "HallM"),
           master_modules=("HallM",),
           core_files=("hall_booking", "banquet_ops", "banquet_masters",
                       "venue", "packagemaster", "seasonmaster"),
           leaves={"masters": ["Venue Master"],
                   "operations": ["Banquet Booking"],
                   "reports": ["Banquet Taxwise Details"]}),
    Module("09_NightAudit", 9, "Night Audit", "night audit",
           module_names=("NightAudit", "NightAudito", "NightAuditoR",
                         "NightAuditR", "NightAuditRR", "NightAuditL",
                         "NightAuditLR", "NightAuditGST", "NightAuditGSTR",
                         "NightAuditMenu"),
           master_modules=(),
           core_files=("nightaudit", "year_end", "guest_folio", "folio"),
            leaves={"masters": [], "operations": ["Night Audit Log"],
                    "reports": ["Occupancy Analysis"]}),
    Module("10_HRPayroll", 10, "HR & Payroll", "hr/payroll",
           module_names=("PR", "PRM", "PayRoll", "PayO", "PayOpr", "PayR",
                         "PayRep"),
           master_modules=("PRM",),
           core_files=("hr_masters", "hr_payroll"),
            leaves={"masters": ["Employee Master"],
                    "operations": ["HR Payroll"],
                    "reports": ["Pay Slip"]}),
    Module("11_EPABX", 11, "EPABX", "epabx",
           module_names=(),           # discovery 2026-09-25: menuHelp me
                                      # EPABX rows hain hi nahi (gap, manual me note)
           master_modules=(),
           core_files=("epabx_masters", "epabx_ops"),
           leaves={"masters": ["Call Type"],            # shell:1170 open_calltype
                   "operations": ["Telephone Call Entry"],  # shell:1425 EPABX_Data log
                   "reports": []}),
    Module("12_Messaging", 12, "Messaging", "extras",
           module_names=("SMSSETUP", "EXTSMSSETUP", "SMSOPR", "EXTSMSOPR",
                         "EXTRSMS", "EXTSMS"),
           master_modules=("SMSSETUP", "EXTSMSSETUP"),
           core_files=("sms_comm", "sms_enviro", "sms_http"),
           leaves={"masters": ["SMS (API)"],
                   "operations": ["SMS (Scheduled)"],
                   "reports": []}),
    Module("13_MembersMgmt", 13, "Members Mgmt", "extras",
           module_names=("Mem", "MemMas", "MemOpr"),
           master_modules=("MemMas",),
           core_files=("members_masters", "member_billing",
                       "facility_billing"),
           leaves={"masters": ["Member Select Category"],
                   "operations": ["Member Billing"],
                   "reports": []}),
    Module("14_SaleMarketing", 14, "Sale & Marketing", "extras",
           module_names=(),           # discovery 2026-09-25: koi dedicated
                                      # module nahi — Business Source rows
                                      # Module_Name='Mas' (02_MainSetup) me
           master_modules=(),
           core_files=("marketsegment", "businesssource", "guestprof"),
           leaves={"masters": ["Market Segment"],        # shell:1124 fm.open_marketsegment
                   "operations": ["Business Source"],    # shell:1125 fm.open_businesssource
                   "reports": []}),
]


def get(key_or_no) -> Module:
    """Module lookup by folder key ('04_FrontOffice') ya number (4)."""
    if isinstance(key_or_no, int):
        for m in MODULES:
            if m.no == key_or_no:
                return m
        raise KeyError(f"no module no={key_or_no}")
    for m in MODULES:
        if m.key == key_or_no:
            return m
    raise KeyError(f"no module key={key_or_no!r}")
