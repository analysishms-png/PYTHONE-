"""Scheme/HappyHours/TDS UI (VB6 POSMAST idx-9/10/11 + FaTDSCat/FaTDSChal/FaTDSCertificate port).

Run: python -m HMS_py.ui.scheme_tds_ui
Menu wiring:
- 'Scheme Master' (POS) -> open_scheme()
- 'Happy Hours' (POS) -> open_happyhours()
- 'T.D.S. Category' (Finance) -> open_tdscat()
- 'T.D.S. Challan' (Finance) -> open_tdschal()
- 'T.D.S. Certificate' (Finance) -> open_tdscerti()

All use BaseMasterForm CRUD pattern (list_all/get/exists/insert/update/delete).
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtWidgets import (QApplication, QDialog, QHBoxLayout, QLabel,
                             QPushButton, QTableWidget, QTableWidgetItem,
                             QTabWidget, QVBoxLayout, QWidget)

from HMS_py.core.reporting import scheme as sch
from HMS_py.core.billing import fa_tds_ops as tds
from HMS_py.ui.main_window.base_master import BaseMasterForm, Field, MasterConfig


# ------------------------------------------------------------- TDS Category
def tdscat_config() -> MasterConfig:
    return MasterConfig(
        title="T.D.S. Category - HMS_py",
        columns=[("Code", "code"), ("Name", "name"),
                 ("TDS Limit", "tdslimit"), ("TDS %", "tdsper")],
        fields=[
            Field("code", "Code", max_len=20, required=True),
            Field("name", "Category Name", max_len=100, required=True),
            Field("tdslimit", "TDS Limit", default="0"),
            Field("tdsper", "TDS Percentage", default="0"),
        ],
        api=tds.TDSCatAPI,
        delete_guard=make_delete_guard("PYT"),
    )


def make_delete_guard(tag: str):
    def guard(code: str) -> str | None:
        if not str(code).upper().startswith(tag):
            return (f"only {tag}* test rows can be deleted "
                    "(production data is protected)")
        return None
    return guard


def open_tdscat(parent=None):
    BaseMasterForm(tdscat_config(), parent).exec()


# ------------------------------------------------------------- TDS Challan
def tdschal_config() -> MasterConfig:
    return MasterConfig(
        title="T.D.S. Challan - HMS_py",
        columns=[("DocId", "docid"), ("Chal Type", "chaltype"),
                 ("Chal No", "chalno"), ("Chal Date", "chaldate"),
                 ("Bank Code", "bankcode"), ("Month", "monthno"),
                 ("TDS Amt", "tdsamt")],
        fields=[
            Field("docid", "DocId", max_len=20, required=True),
            Field("chaltype", "Chal Type", max_len=10, required=True),
            Field("chalno", "Chal No", max_len=15, required=True),
            Field("chaldate", "Chal Date (YYYY-MM-DD)", required=True),
            Field("v_prefix", "V Prefix", max_len=10),
            Field("bankcode", "Bank Code", max_len=20, required=True),
            Field("monthno", "Month No", max_len=2, required=True),
            Field("tdsamt", "TDS Amount", default="0"),
            Field("chq_no", "Cheque No", max_len=20),
            Field("chq_date", "Cheque Date (YYYY-MM-DD)"),
            Field("bank_name", "Bank Name", max_len=100),
        ],
        api=tds.TDSChalAPI,
        delete_guard=make_delete_guard("PYT"),
    )


def open_tdschal(parent=None):
    BaseMasterForm(tdschal_config(), parent).exec()


# ------------------------------------------------------------- TDS Certificate
def tdscerti_config() -> MasterConfig:
    return MasterConfig(
        title="T.D.S. Certificate - HMS_py",
        columns=[("Certi No", "certi_no"), ("Certi Date", "certi_date"),
                 ("Code", "code"), ("From Date", "from_date"),
                 ("To Date", "to_date"), ("TDS Amt", "tds_amt"),
                 ("Full Name", "full_name"), ("Designation", "desig")],
        fields=[
            Field("certi_no", "Certificate No", max_len=20, required=True),
            Field("certi_date", "Certificate Date (YYYY-MM-DD)", required=True),
            Field("code", "Code", max_len=20, required=True),
            Field("site_code", "Site Code", max_len=10),
            Field("from_date", "From Date (YYYY-MM-DD)", required=True),
            Field("to_date", "To Date (YYYY-MM-DD)", required=True),
            Field("tds_amt", "TDS Amount", default="0"),
            Field("full_name", "Full Name of Sign.Auth.", max_len=100),
            Field("desig", "Designation", max_len=50),
        ],
        api=tds.TDSCertificateAPI,
        delete_guard=make_delete_guard("PYT"),
    )


def open_tdscerti(parent=None):
    BaseMasterForm(tdscerti_config(), parent).exec()


# ------------------------------------------------------------- TDS Main Dialog (Tabs)
class TDSMainDialog(QDialog):
    """Tabbed TDS interface matching VB6 menu structure."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("TDS Operations - HMS_py")
        self.resize(900, 600)
        root = QVBoxLayout(self)

        self.tabs = QTabWidget()
        root.addWidget(self.tabs)

        # Tab 1: TDS Category
        self.tab_tdscat = QWidget()
        self.tabs.addTab(self.tab_tdscat, "T.D.S. Category")
        self._setup_tdscat_tab()

        # Tab 2: TDS Challan
        self.tab_tdschal = QWidget()
        self.tabs.addTab(self.tab_tdschal, "T.D.S. Challan")
        self._setup_tdschal_tab()

        # Tab 3: TDS Certificate
        self.tab_tdscerti = QWidget()
        self.tabs.addTab(self.tab_tdscerti, "T.D.S. Certificate")
        self._setup_tdscerti_tab()

        # Buttons
        btns = QHBoxLayout()
        btns.addStretch(1)
        b_close = QPushButton("Close")
        b_close.clicked.connect(self.close)
        btns.addWidget(b_close)
        root.addLayout(btns)

    def _setup_tdscat_tab(self):
        layout = QVBoxLayout(self.tab_tdscat)
        b = QPushButton("Open TDS Category Master")
        b.setMinimumHeight(40)
        b.clicked.connect(lambda: open_tdscat(self))
        layout.addWidget(b)
        layout.addWidget(QLabel("VB6: FaTDSCat.frm — TDS Category Master (Code, Name, Limit, %)"))

    def _setup_tdschal_tab(self):
        layout = QVBoxLayout(self.tab_tdschal)
        b = QPushButton("Open TDS Challan Master")
        b.setMinimumHeight(40)
        b.clicked.connect(lambda: open_tdschal(self))
        layout.addWidget(b)
        layout.addWidget(QLabel("VB6: FaTDSChal.frm — TDS Challan Entry (Header + Detail Grid)"))
        layout.addWidget(QLabel("Operations: Add/Edit/Delete/Find/Print Challans"))

    def _setup_tdscerti_tab(self):
        layout = QVBoxLayout(self.tab_tdscerti)
        b = QPushButton("Open TDS Certificate Master")
        b.setMinimumHeight(40)
        b.clicked.connect(lambda: open_tdscerti(self))
        layout.addWidget(b)
        layout.addWidget(QLabel("VB6: FaTDSCertificate.frm — TDS Certificate Entry (CertiNo, Dates, Party, Grid)"))


def open_tds_main(parent=None):
    """Open tabbed TDS interface."""
    TDSMainDialog(parent).exec()


# ------------------------------------------------------------- Scheme
def scheme_config() -> MasterConfig:
    return MasterConfig(
        title="Scheme Master (POS) - HMS_py",
        columns=[("Code", "code"), ("Name", "name"), ("From", "startdate"),
                 ("To", "enddate"), ("Time", "fromtime"), ("Active", "active")],
        fields=[
            Field("code", "Scheme Code", max_len=sch.LIMITS["code"],
                  required=True),
            Field("name", "Scheme Name", max_len=sch.LIMITS["name"],
                  required=True),
            Field("startdate", "Start Date (YYYY-MM-DD)"),
            Field("enddate", "End Date (YYYY-MM-DD)"),
            Field("fromtime", "From Time (HH:MM)", max_len=sch.LIMITS["time"]),
            Field("totime", "To Time (HH:MM)", max_len=sch.LIMITS["time"]),
            Field("days", "Days (0-6)", max_len=sch.LIMITS["days"]),
            Field("active", "Active Y/N", max_len=1, default="Y"),
        ],
        api=_SchemeAPI(),
        delete_guard=make_delete_guard("PYT"),
    )


class _SchemeAPI:
    """BaseMasterForm contract par SchemeMast (get/exists single-code)."""

    def list_all(self, cn=None):
        return sch.scheme_list(cn=cn)

    def get(self, pk, cn=None):
        return sch.scheme_get(pk, cn=cn)

    def exists(self, pk, cn=None):
        return sch.scheme_get(pk, cn=cn) is not None

    def insert(self, rec, cn=None, commit=True):
        return sch.scheme_insert(rec, cn=cn, commit=commit)

    def update(self, pk, rec, cn=None, commit=True):
        return sch.scheme_update(pk, rec, cn=cn, commit=commit)

    def delete(self, pk, cn=None, commit=True):
        return sch.scheme_delete(pk, cn=cn, commit=commit)


def open_scheme(parent=None):
    BaseMasterForm(scheme_config(), parent).exec()


# ------------------------------------------------- Happy Hours (viewer)
class HappyHoursViewer(QDialog):
    """Read-only: SchemeCode se HappyHoursHead + HappyHours rows."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Happy Hours - HMS_py")
        self.resize(780, 460)
        root = QVBoxLayout(self)
        root.addWidget(QLabel(
            "VB6 pHappyHours/NewHappyHours port (read-only viewer).\n"
            "HappyHoursHead = scheme-level setup; HappyHours = item discounts."))
        self.tbl = QTableWidget(0, 0)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        root.addWidget(self.tbl)
        btns = QHBoxLayout()
        b = QPushButton("Reload")
        b.setToolTip("Reload happy hours data")
        b.clicked.connect(self._load)
        btns.addWidget(b)
        btns.addStretch(1)
        root.addLayout(btns)
        self._load()

    def _load(self):
        heads = sch.happyhead_list()
        self.tbl.clear()
        cols = ["SchemeCode", "ItemCat", "ItemGroup", "RestCode", "AppDate",
                "From", "To", "DiscType"]
        self.tbl.setColumnCount(len(cols))
        self.tbl.setHorizontalHeaderLabels(cols)
        self.tbl.setRowCount(0)
        for h in heads:
            r = self.tbl.rowCount()
            self.tbl.insertRow(r)
            vals = [h["schemecode"], h["itemcat"], h["itemgroup"],
                    h["restcode"], h["appdate"], h["fromtime"], h["totime"],
                    h["discounttype"]]
            for c, v in enumerate(vals):
                it = QTableWidgetItem("" if v is None else str(v))
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                self.tbl.setItem(r, c, it)
        self.tbl.resizeColumnsToContents()


def open_happyhours(parent=None):
    HappyHoursViewer(parent).exec()


if __name__ == "__main__":
    os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
    from PyQt6.QtWidgets import QApplication
    app = QApplication([])
    open_tds_main()
