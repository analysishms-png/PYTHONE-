"""P2 masters: Sundry + Narration + all Main Setup masters - BaseMasterForm config.

Run: python -m HMS_py.ui.p2_masters
Offscreen screenshot: HMS_POC_SHOT=<path> env var.
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QKeySequence, QShortcut
from PyQt6.QtWidgets import (QApplication, QDialog, QDialogButtonBox,
                             QFormLayout, QGroupBox, QHBoxLayout, QHeaderView,
                             QLabel, QMainWindow, QMessageBox, QPushButton, QTableWidget,
                             QTableWidgetItem, QVBoxLayout, QWidget)

from HMS_py.core import (acgroup, area, city, country, depart, fixcharge,
                         item, narr, state, sundry, unit, venue)
# New Main Setup masters (P2-complete)
from HMS_py.core import (roomcategory, roommaster, packagemaster,
                         seasonmaster, companymaster, usermaster, ratelist)
from HMS_py.ui.base_master import (BaseMasterForm, Field, MasterConfig,
                                   make_delete_guard)
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


def sundry_config() -> MasterConfig:
    return MasterConfig(
        title="Sundry Master (P2) - HMS_py",
        columns=[("Code", "code"), ("Name", "name"), ("Nature", "nature"),
                 ("Calc", "calc"), ("Sys", "sysyn")],
        fields=[
            Field("code", "Code", max_len=sundry.LIMITS["code"],
                  required=True),
            Field("name", "Name", max_len=sundry.LIMITS["name"],
                  required=True),
            Field("nature", "Nature", max_len=sundry.LIMITS["nature"],
                  required=True),
            Field("calc", "Calc +/-", max_len=sundry.LIMITS["calc"]),
        ],
        api=sundry,
        delete_guard=make_delete_guard("PYT"),
    )


def narr_config() -> MasterConfig:
    return MasterConfig(
        title="Narration Master (P2) - HMS_py",
        columns=[("Code", "code"), ("Name", "name")],
        fields=[
            Field("code", "Code", max_len=narr.LIMITS["code"],
                  required=True),
            Field("name", "Narration", max_len=narr.LIMITS["name"],
                  required=True),
        ],
        api=narr,
        delete_guard=make_delete_guard("PYT"),
    )


def city_config() -> MasterConfig:
    return MasterConfig(
        title="City Master (P2) - HMS_py",
        columns=[("CityCode", "code"), ("CityName", "name"),
                 ("Short", "short"), ("Zip", "zip"), ("State", "state")],
        fields=[
            Field("code", "CityCode", max_len=city.LIMITS["code"],
                  required=True),
            Field("name", "CityName", max_len=city.LIMITS["name"],
                  required=True),
            Field("short", "Short Name", max_len=city.LIMITS["short"]),
            Field("zip", "Zip Code", max_len=city.LIMITS["zip"]),
            Field("state", "State Code", max_len=city.LIMITS["state"]),
        ],
        api=city,
        delete_guard=make_delete_guard("PYT"),
    )


def area_config() -> MasterConfig:
    return MasterConfig(
        title="Area Master (P2) - HMS_py",
        columns=[("AreaCode", "code"), ("AreaName", "name"),
                 ("CityCode", "city")],
        fields=[
            Field("code", "AreaCODE", max_len=area.LIMITS["code"],
                  required=True),
            Field("name", "AreaNAME", max_len=area.LIMITS["name"],
                  required=True),
            Field("city", "CityCode (FK)", max_len=area.LIMITS["city"],
                  required=True),
        ],
        api=area,
        delete_guard=make_delete_guard("PYT"),
    )


def item_config() -> MasterConfig:
    return MasterConfig(
        title="Item Master (P2, F&B) - HMS_py",
        columns=[("Code", "code"), ("Name", "name"), ("Unit", "unit"),
                 ("Type", "type"), ("Rate", "rate")],
        fields=[
            Field("code", "Code", max_len=item.LIMITS["code"],
                  required=True),
            Field("name", "Name", max_len=item.LIMITS["name"],
                  required=True),
            Field("unit", "Unit", max_len=item.LIMITS["unit"]),
            Field("type", "Type", max_len=item.LIMITS["type"]),
            Field("group", "ItemGroup", max_len=item.LIMITS["group"]),
            Field("rate", "SaleRate", default="0"),
        ],
        api=item,
        delete_guard=make_delete_guard("PYT"),
    )


def item_group_config() -> MasterConfig:
    return MasterConfig(
        title="Item Group Master - HMS_py",
        columns=[("Code", "code"), ("Name", "name"),
                 ("Type", "type"), ("Status", "status")],
        fields=[
            Field("code", "Item Group Code",
                  max_len=item.ITEMGRP_LIMITS.get("code", 6), required=True),
            Field("name", "Item Group Name",
                  max_len=item.ITEMGRP_LIMITS.get("name", 30), required=True),
            Field("type", "Type", max_len=item.ITEMGRP_LIMITS.get("type", 10)),
            Field("status", "Status",
                  max_len=item.ITEMGRP_LIMITS.get("status", 10)),
            Field("rest", "Outlet / Rest Code",
                  max_len=item.ITEMGRP_LIMITS.get("rest", 6)),
            Field("choose_limit", "Choose Limit", default="0"),
            Field("cattype", "Category Type",
                  max_len=item.ITEMGRP_LIMITS.get("cattype", 10)),
            Field("commodity", "Commodity Code",
                  max_len=item.ITEMGRP_LIMITS.get("commodity", 6)),
        ],
        api=item.ItemGrpAPI,
        delete_guard=make_delete_guard("PYT"),
    )


def acgroup_config() -> MasterConfig:
    return MasterConfig(
        title="Account Group Master (P2) - HMS_py",
        columns=[("GroupCode", "code"), ("GroupName", "name"),
                 ("A/L", "gnature"), ("Nature", "nature"),
                 ("ID", "id")],
        fields=[
            Field("code", "GroupCode", max_len=acgroup.LIMITS["code"],
                  required=True),
            Field("name", "GroupName", max_len=acgroup.LIMITS["name"],
                  required=True),
            Field("gnature", "GroupNature A/L", max_len=1),
            Field("nature", "Nature", max_len=acgroup.LIMITS["type"]),
        ],
        api=acgroup,
        delete_guard=make_delete_guard("PYT"),
    )


def venue_config() -> MasterConfig:
    return MasterConfig(
        title="Venue Master (P2, Banquet) - HMS_py",
        columns=[("Code", "code"), ("Name", "name"),
                 ("Capacity", "capacity"), ("Seating", "seating"),
                 ("Status", "status")],
        fields=[
            Field("code", "Code", max_len=venue.LIMITS["code"],
                  required=True),
            Field("name", "Name", max_len=venue.LIMITS["name"],
                  required=True),
            Field("short", "ShortName", max_len=venue.LIMITS["short"]),
            Field("capacity", "Capacity", max_len=venue.LIMITS["capacity"]),
            Field("seating", "Seating", default="0"),
            Field("floating", "Floating", default="0"),
            Field("status", "Status", max_len=venue.LIMITS["status"]),
        ],
        api=venue,
        delete_guard=make_delete_guard("PYT"),
    )


def depart_config() -> MasterConfig:
    return MasterConfig(
        title="Department/Outlet Master (P2, F&B) - HMS_py",
        columns=[("Code", "code"), ("Name", "name"),
                 ("KOT", "kotyn"), ("POS", "pos")],
        fields=[
            Field("code", "Code", max_len=depart.LIMITS["code"],
                  required=True),
            Field("name", "Name", max_len=depart.LIMITS["name"],
                  required=True),
            Field("kotyn", "KOT Y/N", max_len=1),
            Field("pos", "POS Y/N", max_len=1),
            Field("phone", "Phone", max_len=depart.LIMITS["phone"]),
        ],
        api=depart,
        delete_guard=make_delete_guard("PYT"),
    )


# ---- Main Setup completion (P2-c): Country/State/Charge/Unit ----

def country_config() -> MasterConfig:
    return MasterConfig(
        title="Country Master (P2-c) - HMS_py",
        columns=[("Code", "code"), ("Name", "name"), ("Short", "short"),
                 ("Type", "type"), ("Nationality", "nationality")],
        fields=[
            Field("code", "Code", max_len=country.LIMITS["code"],
                  required=True),
            Field("name", "Name", max_len=country.LIMITS["name"],
                  required=True),
            Field("short", "ShortName", max_len=country.LIMITS["short"]),
            Field("type", "Type (India/Foreign)",
                  max_len=country.LIMITS["type"]),
            Field("nationality", "Nationality",
                  max_len=country.LIMITS["nationality"]),
        ],
        api=country,
        delete_guard=make_delete_guard("PYT"),
    )


def state_config() -> MasterConfig:
    return MasterConfig(
        title="State Master (P2-c) - HMS_py",
        columns=[("Code", "code"), ("Name", "name"), ("Short", "short"),
                 ("Country", "country")],
        fields=[
            Field("code", "Code", max_len=state.LIMITS["code"],
                  required=True),
            Field("name", "Name", max_len=state.LIMITS["name"],
                  required=True),
            Field("short", "State No (Short)",
                  max_len=state.LIMITS["short"]),
            Field("country", "Country Code (FK)",
                  max_len=state.LIMITS["country"]),
        ],
        api=state,
        delete_guard=make_delete_guard("PYT"),
    )


def fixcharge_config() -> MasterConfig:
    return MasterConfig(
        title="Charge Master / Fixed Charge (P2-c) - HMS_py",
        columns=[("Code", "code"), ("Name", "name"), ("Rev", "revcode"),
                 ("TaxInc", "taxinc"), ("Rate", "flatrate")],
        fields=[
            Field("code", "Code", max_len=fixcharge.LIMITS["code"],
                  required=True),
            Field("name", "Name", max_len=fixcharge.LIMITS["name"],
                  required=True),
            Field("sname", "Short", max_len=fixcharge.LIMITS["sname"]),
            Field("revcode", "RevCode", max_len=fixcharge.LIMITS["revcode"]),
            Field("taxinc", "TaxInc Y/N", max_len=fixcharge.LIMITS["taxinc"]),
            Field("taxstru", "TaxStru", max_len=fixcharge.LIMITS["taxstru"]),
            Field("chargetype", "ChargeType",
                  max_len=fixcharge.LIMITS["chargetype"]),
            Field("flatrate", "FlatRate", default="0"),
        ],
        api=fixcharge,
        delete_guard=make_delete_guard("PYT"),
    )


def unit_config() -> MasterConfig:
    return MasterConfig(
        title="Unit Master (P2-c, POS) - HMS_py",
        columns=[("Unit", "code"), ("PriceType", "pricetype"),
                 ("Status", "status")],
        fields=[
            Field("code", "Unit Name", max_len=unit.LIMITS["code"],
                  required=True),
            Field("pricetype", "PriceType (0/1)", default="0"),
            Field("status", "Status", max_len=unit.LIMITS["status"]),
        ],
        api=unit,
        delete_guard=make_delete_guard("PYT"),
    )


# ---- shell.py registry helpers: ek-ek master dialog ke roop me kholo ----
def _open_dialog(cfg_fn, parent=None):
    BaseMasterForm(cfg_fn(), parent).exec()


def open_sundry(parent=None):
    _open_dialog(sundry_config, parent)


def open_narr(parent=None):
    _open_dialog(narr_config, parent)


def open_city(parent=None):
    _open_dialog(city_config, parent)


def open_area(parent=None):
    _open_dialog(area_config, parent)


def open_item_group(parent=None):
    _open_dialog(item_group_config, parent)


def open_item(parent=None):
    _open_dialog(item_config, parent)


def open_acgroup(parent=None):
    _open_dialog(acgroup_config, parent)


def open_venue(parent=None):
    _open_dialog(venue_config, parent)


def open_depart(parent=None):
    _open_dialog(depart_config, parent)


def open_country(parent=None):
    _open_dialog(country_config, parent)


def open_state(parent=None):
    _open_dialog(state_config, parent)


def open_fixcharge(parent=None):
    _open_dialog(fixcharge_config, parent)


def open_unit(parent=None):
    _open_dialog(unit_config, parent)


# ---- Main Setup COMPLETE (P2-complete): Room Cat/Master, Package,
#      Season, Company Master, User Master ----

class RoomCategoryMasterForm(BaseMasterForm):
    """Room Category master + VB6 CmdRate parity: Rate editor button.

    VB6 FrmRoomCatMast me CmdRate click par RateList grid khulta hai
    (category-wise Single/Double/Multiple + Rate1..5/RateW/RateM).
    """

    def __init__(self, cfg: MasterConfig, parent=None):
        super().__init__(cfg, parent)
        self.btnRate = QPushButton("  Rate (Ctrl+R)")
        mark_desktop_action(self.btnRate)
        self.btnRate.setMinimumHeight(34)
        self.btnRate.setToolTip("Category Rate List (VB6 CmdRate)")
        # Exit button se pehle insert (VB6 button order)
        lay = self.btnExit.parentWidget().layout()
        lay.insertWidget(lay.indexOf(self.btnExit), self.btnRate)
        self.btnRate.clicked.connect(self._on_rate)
        QShortcut(QKeySequence("Ctrl+R"), self, activated=self._on_rate)

    def _on_rate(self):
        row = self.tbl.currentRow()
        cat = None
        if row >= 0:
            cat = (self.tbl.item(row, 0).text() or "").strip()
        if not cat:
            QMessageBox.information(self, "Rate List",
                                    "Pehle category select karo (grid row).")
            return
        open_ratelist_editor(cat, self)


def build_ratelist_editor(roomcat: str, parent=None):
    """VB6 CmdRate grid build (exec nahi karta - test/smoke friendly)."""
    dlg = QDialog(parent)
    apply_desktop_surface(dlg, "desktopRateListEditor")
    dlg.setWindowTitle(f"Rate List - Category {roomcat}")
    dlg.resize(720, 440)
    root = QVBoxLayout(dlg)
    grp = QGroupBox("Rates (OccType wise; Rate1..Rate5 + Weekday/Monthly)")
    fl = QVBoxLayout(grp)
    tbl = QTableWidget(0, 9)
    tbl.setHorizontalHeaderLabels(
        ["RoomNo", "OccType", "Rate1", "Rate2", "Rate3", "Rate4",
         "Rate5", "RateW", "RateM"])
    tbl.horizontalHeader().setStretchLastSection(True)
    fl.addWidget(tbl)
    root.addWidget(grp)

    def _reload():
        rows = ratelist.list_for_category(roomcat)
        tbl.setRowCount(0)
        for r in rows:
            i = tbl.rowCount()
            tbl.insertRow(i)
            vals = [r["roomno"], r["occtype"], r["rate1"], r["rate2"],
                    r["rate3"], r["rate4"], r["rate5"], r["ratew"],
                    r["ratem"]]
            for c, v in enumerate(vals):
                tbl.setItem(i, c, QTableWidgetItem("" if v is None
                                                   else str(v)))

    def _add_row():
        i = tbl.rowCount()
        tbl.insertRow(i)
        for c, v in enumerate(["*****", "Single", 0, 0, 0, 0, 0, 0, 0]):
            tbl.setItem(i, c, QTableWidgetItem(str(v)))

    def _del_row():
        r = tbl.currentRow()
        if r >= 0:
            tbl.removeRow(r)

    def _save():
        rows = []
        for i in range(tbl.rowCount()):
            def _v(c):
                it = tbl.item(i, c)
                return it.text().strip() if it else ""
            rows.append({
                "roomcat": roomcat,
                "roomno": _v(0) or ratelist.DEFAULT_ROOMNO,
                "occtype": _v(1),
                "rate1": _v(2), "rate2": _v(3), "rate3": _v(4),
                "rate4": _v(5), "rate5": _v(6), "ratew": _v(7),
                "ratem": _v(8),
            })
        try:
            n = ratelist.save_category_rates(rows, roomcat=roomcat)
            QMessageBox.information(dlg, "Rate List",
                                    f"{n} rate rows save ho gayi (delete->insert).")
            _reload()
        except Exception as e:
            QMessageBox.warning(dlg, "Rate List", f"Save fail: {e}")

    btns = QDialogButtonBox()
    b_add = btns.addButton("+ Row", QDialogButtonBox.ButtonRole.ActionRole)
    b_del = btns.addButton("- Row", QDialogButtonBox.ButtonRole.ActionRole)
    b_save = btns.addButton(QDialogButtonBox.StandardButton.Save)
    b_close = btns.addButton(QDialogButtonBox.StandardButton.Close)
    b_add.clicked.connect(_add_row)
    b_del.clicked.connect(_del_row)
    b_save.clicked.connect(_save)
    b_close.clicked.connect(dlg.accept)
    for button in btns.buttons():
        mark_desktop_action(button)
    root.addWidget(btns)
    _reload()
    return dlg


def open_ratelist_editor(roomcat: str, parent=None):
    """VB6 CmdRate grid modal: category ke RateList rows edit + save."""
    build_ratelist_editor(roomcat, parent).exec()


def roomcategory_config() -> MasterConfig:
    return MasterConfig(
        title="Room Category Master - HMS_py",
        columns=[("Code", "code"), ("Name", "name"), ("Short", "short"),
                 ("MaxPerson", "maxperson"), ("RevCode", "revcode")],
        fields=[
            Field("code", "CatCode", max_len=roomcategory.LIMITS["code"],
                  required=True),
            Field("name", "Category Name", max_len=roomcategory.LIMITS["name"],
                  required=True),
            Field("short", "Short Name", max_len=roomcategory.LIMITS["short"]),
            Field("maxperson", "Max Person", default="2"),
            Field("revcode", "Revenue Code",
                  max_len=roomcategory.LIMITS["revcode"]),
        ],
        api=roomcategory,
        delete_guard=make_delete_guard("PYT"),
    )


def roommaster_config() -> MasterConfig:
    return MasterConfig(
        title="Room Master - HMS_py",
        columns=[("RoomNo", "code"), ("Name", "name"), ("Category", "roomcat"),
                 ("RevCode", "revcode"), ("RoomStat", "roomstat")],
        fields=[
            Field("code", "Room No", max_len=roommaster.LIMITS["code"],
                  required=True),
            Field("name", "Room Name", max_len=roommaster.LIMITS["name"],
                  required=True),
            Field("roomcat", "Category Code (FK RoomCat)",
                  max_len=roommaster.LIMITS["roomcat"]),
            Field("revcode", "Revenue Code",
                  max_len=roommaster.LIMITS["revcode"]),
            Field("taxstru", "Tax Structure",
                  max_len=roommaster.LIMITS["taxstru"]),
            Field("roomstat", "Room Stat",
                  max_len=1, default=""),
        ],
        api=roommaster,
        delete_guard=make_delete_guard("PYT"),
    )


class _PlanPackageAPI:
    LIMITS = packagemaster.LIMITS

    def __init__(self, kind):
        self.kind = kind

    def list_all(self, cn=None):
        return packagemaster.list_all(cn=cn, plan_package=self.kind)

    def get(self, code, cn=None):
        return packagemaster.get(code, cn=cn, plan_package=self.kind)

    def exists(self, code, cn=None):
        return packagemaster.exists(code, cn=cn, plan_package=self.kind)

    def insert(self, record, cn=None, commit=True):
        return packagemaster.insert(record, cn=cn, commit=commit,
                                    kind=self.kind)

    def update(self, code, record, cn=None, commit=True):
        return packagemaster.update(code, record, cn=cn, commit=commit,
                                    kind=self.kind)

    def delete(self, code, cn=None, commit=True):
        return packagemaster.delete(code, cn=cn, commit=commit)


def packagemaster_config() -> MasterConfig:
    return MasterConfig(
        title="Package Master - HMS_py",
        columns=[("Code", "code"), ("Name", "name"),
                 ("Total", "total"), ("Room Rate", "room_rate"),
                 ("Package Amount", "pkg_amount"), ("Active", "active")],
        fields=[
            Field("code", "Pack Code", max_len=packagemaster.LIMITS.get("code", 5),
                  required=True),
            Field("name", "Pack Name", max_len=packagemaster.LIMITS.get("name", 25),
                  required=True),
            Field("total", "Total", default="0"),
            Field("room_per", "Room Per", default="1"),
            Field("room_rate", "Room Rate", default="0"),
            Field("pkg_amount", "Package Amount", default="0"),
            Field("nights", "Nights", default="1"),
            Field("adults", "Adults", default="2"),
            Field("childs", "Children", default="0"),
            Field("percent_app", "Percent Applicable", max_len=3),
            Field("rr_inc_tax", "Rate Includes Tax", max_len=3),
            Field("disc_yn", "Discount Applicable", max_len=3),
            Field("disc_on", "Discount On", max_len=25),
            Field("room_cat", "Room Category", max_len=6),
            Field("tariff", "Tariff", max_len=25),
            Field("room_tax_stru", "Room Tax Structure", max_len=6),
            Field("map_code", "Map Code", max_len=20),
            Field("active", "Active Y/N", max_len=1, default="Y"),
        ],
        api=packagemaster,
        delete_guard=make_delete_guard("PYT"),
    )


def planmaster_config() -> MasterConfig:
    base = packagemaster_config()
    return MasterConfig(
        title="Plan Master - HMS_py",
        columns=list(base.columns),
        fields=list(base.fields),
        api=_PlanPackageAPI("Plan"),
        delete_guard=base.delete_guard,
    )


def seasonmaster_config() -> MasterConfig:
    return MasterConfig(
        title="Season Master - HMS_py",
        columns=[("Code", "code"), ("Name", "name"),
                 ("From", "fromdate"), ("To", "todate"), ("Active", "active")],
        fields=[
            Field("code", "Season Code",
                  max_len=seasonmaster.LIMITS.get("ratecode", 2),
                  required=True),
            Field("name", "Season Name", max_len=30),
            Field("fromdate", "From Date (YYYY-MM-DD)"),
            Field("todate", "To Date (YYYY-MM-DD)"),
            Field("active", "Active Y/N", max_len=1, default="Y"),
        ],
        api=seasonmaster,
        delete_guard=make_delete_guard("PYT"),
    )


def companymaster_config() -> MasterConfig:
    return MasterConfig(
        title="Company Master (Corporate Clients) - HMS_py",
        columns=[("Code", "code"), ("Name", "name"), ("City", "city"),
                 ("Phone", "phone"), ("Contact", "contact"),
                 ("Active", "active")],
        fields=[
            Field("code", "Comp Code", max_len=companymaster.LIMITS.get("code", 8),
                  required=True),
            Field("name", "Company Name", max_len=companymaster.LIMITS.get("name", 50),
                  required=True),
            Field("add1", "Address 1", max_len=companymaster.LIMITS.get("add1", 50)),
            Field("add2", "Address 2", max_len=companymaster.LIMITS.get("add2", 50)),
            Field("city", "City Code", max_len=companymaster.LIMITS.get("city", 6)),
            Field("phone", "Phone", max_len=companymaster.LIMITS.get("phone", 35)),
            Field("contact", "Contact Person",
                  max_len=companymaster.LIMITS.get("contact", 35)),
            Field("creditdays", "Credit Days", default="0"),
            Field("creditlimit", "Credit Limit", default="0"),
            Field("active", "Active Y/N", max_len=1, default="Y"),
        ],
        api=companymaster,
        delete_guard=make_delete_guard("PYT"),
    )


def open_roomcategory(parent=None):
    RoomCategoryMasterForm(roomcategory_config(), parent).exec()


def open_roommaster(parent=None):
    _open_dialog(roommaster_config, parent)


class PackageMasterForm(BaseMasterForm):
    PLAN_COLUMNS = [
        ("ChrgCode", "chrgcode"), ("RevCode", "revcode"),
        ("TaxInc", "taxinc"), ("FixRate", "fixrate"),
        ("TaxStru", "taxstru"), ("FlatRate", "flatrate"),
        ("Adult", "adult"), ("Child", "child"),
    ]
    TOKEN_COLUMNS = [
        ("SNo", "sno"), ("ChrgCode", "chrgcode"),
        ("Rate", "rate"), ("Remarks", "remarks"),
    ]

    def __init__(self, cfg: MasterConfig, parent=None, kind="Package"):
        if kind not in ("Plan", packagemaster.PACKAGE_TYPE):
            raise ValueError("kind Plan ya Package hona chahiye")
        self.kind = kind
        self.api = _PlanPackageAPI(kind)
        cfg.api = self.api
        self._child_widgets_ready = False
        super().__init__(cfg, parent)
        self.setObjectName(
            "desktopPlanPackageMaster" if kind == "Plan"
            else "desktopPackageMaster")
        self._build_child_editor()
        self._child_widgets_ready = True
        self._clear_child_tables()
        self.reload()

    def _build_child_editor(self):
        group = QGroupBox("Package Components")
        group_layout = QVBoxLayout(group)
        self.plan_table = self._make_child_table(self.PLAN_COLUMNS)
        self.token_table = self._make_child_table(self.TOKEN_COLUMNS)
        group_layout.addWidget(QLabel("Plan1 charge lines"))
        group_layout.addWidget(self.plan_table)
        group_layout.addWidget(QLabel("PlanTokenDetails token lines"))
        group_layout.addWidget(self.token_table)
        controls = QHBoxLayout()
        self.btnAddPlan = QPushButton("+ Plan1 Row")
        self.btnRemovePlan = QPushButton("- Plan1 Row")
        self.btnAddToken = QPushButton("+ Token Row")
        self.btnRemoveToken = QPushButton("- Token Row")
        for button in (self.btnAddPlan, self.btnRemovePlan,
                       self.btnAddToken, self.btnRemoveToken):
            mark_desktop_action(button)
            controls.addWidget(button)
        controls.addStretch()
        group_layout.addLayout(controls)
        self.btnAddPlan.clicked.connect(
            lambda: self._append_row(self.plan_table))
        self.btnRemovePlan.clicked.connect(
            lambda: self._remove_row(self.plan_table))
        self.btnAddToken.clicked.connect(
            lambda: self._append_row(self.token_table))
        self.btnRemoveToken.clicked.connect(
            lambda: self._remove_row(self.token_table))
        self.layout().insertWidget(self.layout().count() - 1, group)

    @staticmethod
    def _make_child_table(columns):
        table = QTableWidget(0, len(columns))
        table.setHorizontalHeaderLabels([label for label, _ in columns])
        table.setAlternatingRowColors(True)
        table.horizontalHeader().setStretchLastSection(True)
        return table

    @staticmethod
    def _append_row(table):
        row = table.rowCount()
        table.insertRow(row)
        for col in range(table.columnCount()):
            table.setItem(row, col, QTableWidgetItem(""))

    @staticmethod
    def _remove_row(table):
        row = table.currentRow()
        if row >= 0:
            table.removeRow(row)

    def _clear_child_tables(self):
        self.plan_table.setRowCount(0)
        self.token_table.setRowCount(0)

    def _load_children(self, code):
        self._clear_child_tables()
        for record in packagemaster.list_plan1(code):
            row = self.plan_table.rowCount()
            self.plan_table.insertRow(row)
            for col, (_, key) in enumerate(self.PLAN_COLUMNS):
                self.plan_table.setItem(
                    row, col, QTableWidgetItem(str(record.get(key, ""))))
        for record in packagemaster.list_token_details(code):
            row = self.token_table.rowCount()
            self.token_table.insertRow(row)
            for col, (_, key) in enumerate(self.TOKEN_COLUMNS):
                self.token_table.setItem(
                    row, col, QTableWidgetItem(str(record.get(key, ""))))

    @staticmethod
    def _table_records(table, columns):
        records = []
        for row in range(table.rowCount()):
            values = []
            for col in range(table.columnCount()):
                item = table.item(row, col)
                values.append(item.text().strip() if item else "")
            if not any(values):
                continue
            records.append({key: value for (_, key), value
                            in zip(columns, values)})
        return records

    def _on_new(self):
        super()._on_new()
        self._clear_child_tables()

    def _on_edit(self):
        super()._on_edit()
        if self.state == "Edit" and self.edit_pk:
            self._load_children(self.edit_pk)

    def _on_cancel(self):
        super()._on_cancel()
        self._clear_child_tables()

    def _on_save(self):
        if (self.state == "Add" and not self._can_add) or (
            self.state == "Edit" and not self._can_edit
        ):
            return
        try:
            record = self.record_from_ui()
            code = record.get("code", "").strip()
            if not code:
                QMessageBox.warning(self, "Validation", "CODE is required")
                return
            for field in self.cfg.fields:
                if field.required and not record.get(field.name, "").strip():
                    QMessageBox.warning(
                        self, "Validation", f"{field.label} is required")
                    return
            packagemaster.save_with_children(
                record,
                plan_rows=self._table_records(self.plan_table,
                                               self.PLAN_COLUMNS),
                token_rows=self._table_records(self.token_table,
                                               self.TOKEN_COLUMNS),
                mode="insert" if self.state == "Add" else "update",
                kind=self.kind,
            )
        except ValueError as exc:
            QMessageBox.warning(self, "Save", str(exc))
            return
        except Exception as exc:
            QMessageBox.critical(self, "Database Error",
                                 f"Unable to save: {exc}")
            return
        self.edit_pk = None
        self.set_state(False)
        self.reload()

    def reload(self):
        rows = self.api.list_all()
        self.tbl.setRowCount(len(rows))
        for row_index, record in enumerate(rows):
            for col, value in enumerate(self.grid_row_values(record)):
                item = QTableWidgetItem(str(value))
                item.setFlags(item.flags() & ~Qt.ItemFlag.ItemIsEditable)
                self.tbl.setItem(row_index, col, item)
        if self._child_widgets_ready and self.edit_pk:
            self._load_children(self.edit_pk)
        elif self._child_widgets_ready:
            self._clear_child_tables()


class PlanMasterForm(PackageMasterForm):
    def __init__(self, parent=None):
        super().__init__(planmaster_config(), parent, kind="Plan")


def open_packagemaster(parent=None):
    PackageMasterForm(packagemaster_config(), parent).exec()


def open_planmaster(parent=None):
    PlanMasterForm(parent).exec()


def open_seasonmaster(parent=None, user="SA", editable=None):
    from HMS_py.ui import seasonmaster_ui
    if editable is None:
        editable = bool(seasonmaster_ui._season_rights(user))
    return seasonmaster_ui.open_seasonmaster(
        parent, editable=editable, user=user)


def open_companymaster(parent=None):
    _open_dialog(companymaster_config, parent)


def open_usermaster(parent=None, current_user: str = "SA"):
    """User Master - special UI (password field hai)."""
    from HMS_py.ui.usermaster_ui import UserMasterForm
    UserMasterForm(parent, current_user=current_user).exec()


class P2Launcher(QMainWindow):
    """Sab masters ek window se - VB6 menu jaisa."""
    def __init__(self):
        super().__init__()
        apply_desktop_surface(self, "desktopP2Launcher")
        self.setWindowTitle("HMS_py - All Masters")
        self.resize(440, 600)
        central = QWidget()
        lay = QVBoxLayout(central)
        for label, fn in (
            ("Sundry Master", open_sundry),
            ("Narration Master", open_narr),
            ("City Master", open_city),
            ("Area Master", open_area),
            ("Item Master (F&B)", open_item),
            ("Account Group Master", open_acgroup),
            ("Venue Master (Banquet)", open_venue),
            ("Department/Outlet (F&B)", open_depart),
            ("Country Master", open_country),
            ("State Master", open_state),
            ("Charge Master (Fixed)", open_fixcharge),
            ("Unit Master (POS)", open_unit),
            # Main Setup Complete (P2-complete):
            ("Room Category Master", open_roomcategory),
            ("Room Master", open_roommaster),
            ("Package Master", open_packagemaster),
            ("Season Master", open_seasonmaster),
            ("Company Master (Corporate)", open_companymaster),
            ("User Master", open_usermaster),
        ):
            b = QPushButton(label)
            mark_desktop_action(b)
            b.clicked.connect(fn)
            lay.addWidget(b)
        self.setCentralWidget(central)


def main() -> int:
    app = QApplication(sys.argv)
    win = P2Launcher()
    win.show()
    shot = os.environ.get("HMS_POC_SHOT")
    if shot:
        from PyQt6.QtTest import QTest
        QTest.qWait(500)
        win.grab().save(os.path.splitext(shot)[0] + "_launcher.png")
        for tag, cfg_fn in (("sundry", sundry_config),
                            ("city", city_config),
                            ("item", item_config),
                            ("acgroup", acgroup_config),
                            ("venue", venue_config),
                            ("depart", depart_config)):
            f = BaseMasterForm(cfg_fn())
            f.show()
            QTest.qWait(500)
            p2 = os.path.splitext(shot)[0] + "_" + tag + ".png"
            f.grab().save(p2)
            print("screenshot:", p2, "| rows:", f.tbl.rowCount())
        return 0
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())
