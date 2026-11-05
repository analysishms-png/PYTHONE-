"""VB6 MISSING-forms port: Block Master + Reward Points + FA Find + Site.

VB6 originals:
  frmBlockMast.frm      'Block Master'              (House Keeping module)
  RewardPointParam1.frm 'Reward Points Parameter I' (Members Mgmt module)
  FAFind.frm            'Help.?'  (FA find dialog - ledger/option search)
  FrmChangeSite.frm     'Login Site' (site-switch dialog at login)
  FrmMsgBox / FrmNAMessageA/B/C / frmmessageKey / frmMessage / FrmCalender /
  LockForm / repTouchDate / RsTouchScreenFAFind / RsTouchScreenKeyBoard /
  CsehDemoForm -> VB6 utility shells; Qt me QMessageBox/QCalendarWidget/
  QInputDialog/QRubberBand equivalents already hain, isliye skip.

Run: python -m HMS_py.ui.block_master_ui
Offscreen screenshot: HMS_POC_SHOT=<path> env var.
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtWidgets import (QApplication, QDialog, QFormLayout, QGroupBox,
                             QHBoxLayout, QLabel, QLineEdit, QMainWindow,
                             QMessageBox, QPushButton, QTableWidget,
                             QTableWidgetItem, QVBoxLayout, QWidget)

from HMS_py.core import blockmast, featuremast, ledger, rwparameter
from HMS_py.core.sys_config import SiteAPI
from HMS_py.ui.base_master import (BaseMasterForm, Field, MasterConfig,
                                   make_delete_guard)
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


# ── Block Master (VB6 frmBlockMast) ─────────────────────────────
def block_config() -> MasterConfig:
    return MasterConfig(
        title="Block Master - HMS_py",
        columns=[("Code", "code"), ("Name", "name"),
                 ("Short", "short"), ("Status", "status")],
        fields=[
            Field("code", "Block Code", max_len=blockmast.LIMITS["code"],
                  required=True),
            Field("name", "Block Name", max_len=blockmast.LIMITS["name"],
                  required=True),
            Field("short", "Short Name", max_len=blockmast.LIMITS["short"]),
            Field("status", "Status", max_len=blockmast.LIMITS["status"]),
        ],
        api=blockmast,
        delete_guard=make_delete_guard("PYT"),
    )


def open_block_master(parent=None):
    return BaseMasterForm(block_config(), parent)


# ── Venue Feature (VB6 FrmVenueFeat 'VenueFeature') ─────────────
def venuefeature_config() -> MasterConfig:
    return MasterConfig(
        title="VenueFeature - HMS_py",
        columns=[("Code", "code"), ("Name", "name"),
                 ("Status", "status")],
        fields=[
            Field("code", "Feature Code",
                  max_len=featuremast.LIMITS["code"], required=True),
            Field("name", "Feature Name",
                  max_len=featuremast.LIMITS["name"], required=True),
            Field("status", "Status", max_len=featuremast.LIMITS["status"]),
        ],
        api=featuremast,
        delete_guard=make_delete_guard("PYT"),
    )


def open_venue_feature(parent=None):
    return BaseMasterForm(venuefeature_config(), parent)


# ── Reward Points Parameter (VB6 RewardPointParam1) ─────────────
def rwparam_config() -> MasterConfig:
    return MasterConfig(
        title="Reward Points Parameter - HMS_py",
        columns=[("Code", "code"), ("Name", "name"),
                 ("Category", "category"), ("PointOnAmt", "rpointonamt"),
                 ("Point", "rpoint"), ("PointValue", "rpointvalue")],
        fields=[
            Field("code", "Param Code", max_len=rwparameter.LIMITS["code"],
                  required=True),
            Field("name", "Parameter Name",
                  max_len=rwparameter.LIMITS["name"], required=True),
            Field("category", "Category", max_len=rwparameter.LIMITS["category"]),
            Field("rpointonamt", "Point On Amount", default="0"),
            Field("rpoint", "Reward Points", default="0"),
            Field("rpointvalue", "Point Value", default="0"),
            Field("limitlow", "Limit Low", default="0"),
            Field("limitup", "Limit Up", default="0"),
            Field("redeemper", "Redeem %", default="0"),
            Field("appuptodiscper", "Applicable Upto Disc %", default="0"),
            Field("compoperator", "Comp Operator",
                  max_len=rwparameter.LIMITS["compoperator"]),
            Field("condapp", "Condition Applicable",
                  max_len=rwparameter.LIMITS["condapp"]),
            Field("limitappon", "Limit Applicable On",
                  max_len=rwparameter.LIMITS["limitappon"]),
            Field("pointevalon", "Point Evaluation On",
                  max_len=rwparameter.LIMITS["pointevalon"]),
        ],
        api=rwparameter,
        delete_guard=make_delete_guard("PYT"),
    )


def open_reward_points(parent=None):
    return BaseMasterForm(rwparam_config(), parent)


# ── FA Find (VB6 FAFind 'Help.?') ───────────────────────────────
class FAFindDialog(QDialog):
    """Ledger (SubGroup) search dialog — VB6 FAFind grid-search port.

    VB6: text dalo -> LIKE search -> grid me SubCode/Name -> pick.
    Qt: ledger.search() + double-click to accept.
    """

    def __init__(self, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopMasterForm")
        self.setWindowTitle("FA Find - HMS_py")
        self.resize(560, 420)
        self.selected = None

        root = QVBoxLayout(self)
        root.setContentsMargins(14, 12, 14, 12)
        root.setSpacing(10)

        form = QFormLayout()
        self.txt_find = QLineEdit()
        self.txt_find.setPlaceholderText("Ledger name se search karo...")
        self.txt_find.setMinimumHeight(32)
        form.addRow("Find:", self.txt_find)
        root.addLayout(form)

        grp = QGroupBox("Matching Ledgers")
        glay = QVBoxLayout(grp)
        self.tbl = QTableWidget(0, 2)
        self.tbl.setHorizontalHeaderLabels(["SubCode", "Name"])
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.verticalHeader().setVisible(False)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.itemDoubleClicked.connect(self._pick)
        glay.addWidget(self.tbl)
        root.addWidget(grp, stretch=1)

        btns = QHBoxLayout()
        btns.addStretch()
        btn_pick = QPushButton("  Select  ")
        btn_pick.setProperty("accent", True)
        btn_pick.clicked.connect(self._pick)
        btn_close = QPushButton("  Close  ")
        btn_close.clicked.connect(self.reject)
        btns.addWidget(btn_pick)
        btns.addWidget(btn_close)
        root.addLayout(btns)

        self.txt_find.textChanged.connect(self._fill)
        self._fill()

    def _fill(self, *_):
        part = self.txt_find.text().strip()
        rows = ledger.search(part) if part else ledger.list_all(top=100)
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            c0 = QTableWidgetItem(str(rec.get("code", "")))
            c1 = QTableWidgetItem(str(rec.get("name", "")))
            for c in (c0, c1):
                c.setFlags(c.flags() & ~Qt.ItemFlag.ItemIsEditable)
            self.tbl.setItem(r, 0, c0)
            self.tbl.setItem(r, 1, c1)

    def _pick(self, *_):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "FA Find",
                                    "Pehle ek ledger select karo")
            return
        self.selected = {
            "code": self.tbl.item(r, 0).text(),
            "name": self.tbl.item(r, 1).text(),
        }
        self.accept()


def open_fa_find(parent=None):
    dlg = FAFindDialog(parent)
    dlg.exec()
    return dlg.selected


# ── Login Site (VB6 FrmChangeSite) ──────────────────────────────
class ChangeSiteDialog(QDialog):
    """Site switch at login — VB6 FrmChangeSite 'Login Site' port.

    Site list SiteAPI se, pick karne par Analysis.ini key update
    (site_code) taaki agla login usi site pe ho.
    """

    def __init__(self, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopMasterForm")
        self.setWindowTitle("Login Site - HMS_py")
        self.setFixedSize(420, 300)
        self.selected = None

        root = QVBoxLayout(self)
        root.setContentsMargins(16, 14, 16, 14)
        root.setSpacing(12)

        title = QLabel("Select Login Site")
        title.setStyleSheet("font-size: 13pt; font-weight: bold;")
        root.addWidget(title)

        self.tbl = QTableWidget(0, 2)
        self.tbl.setHorizontalHeaderLabels(["Site Code", "Site Name"])
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.verticalHeader().setVisible(False)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.setFixedHeight(160)
        self.tbl.itemDoubleClicked.connect(self._pick)
        root.addWidget(self.tbl)

        btns = QHBoxLayout()
        btns.addStretch()
        btn_ok = QPushButton("  Login  ")
        btn_ok.setProperty("accent", True)
        btn_ok.clicked.connect(self._pick)
        btn_cancel = QPushButton("  Cancel  ")
        btn_cancel.clicked.connect(self.reject)
        btns.addWidget(btn_ok)
        btns.addWidget(btn_cancel)
        root.addLayout(btns)

        self._fill()

    def _fill(self):
        try:
            rows = SiteAPI.list_all()
        except Exception:
            rows = []
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            code = str(rec.get("code", rec.get("site_code", "")))
            name = str(rec.get("name", rec.get("site_name", "")))
            c0 = QTableWidgetItem(code)
            c1 = QTableWidgetItem(name)
            for c in (c0, c1):
                c.setFlags(c.flags() & ~Qt.ItemFlag.ItemIsEditable)
            self.tbl.setItem(r, 0, c0)
            self.tbl.setItem(r, 1, c1)

    def _pick(self, *_):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Login Site",
                                    "Pehle site select karo")
            return
        self.selected = self.tbl.item(r, 0).text()
        self.accept()


def open_change_site(parent=None):
    dlg = ChangeSiteDialog(parent)
    dlg.exec()
    return dlg.selected


# ── Standalone launcher ─────────────────────────────────────────
class BlockMasterLauncher(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("HMS_py - VB6 Missing Forms Port")
        self.resize(360, 200)
        c = QWidget()
        lay = QVBoxLayout(c)
        for lbl, fn in (
            ("Block Master", open_block_master),
            ("Venue Feature", open_venue_feature),
            ("Reward Points Parameter", open_reward_points),
            ("FA Find (Help)", open_fa_find),
            ("Login Site", open_change_site),
        ):
            b = QPushButton(lbl)
            b.clicked.connect(fn)
            lay.addWidget(b)
        self.setCentralWidget(c)


def main() -> int:
    app = QApplication(sys.argv)
    w = BlockMasterLauncher()
    w.show()
    rc = app.exec()
    return rc


if __name__ == "__main__":
    shot = os.environ.get("HMS_POC_SHOT")
    if shot:
        os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
        app = QApplication(sys.argv)
        form = open_block_master()
        form.resize(760, 560)
        form.show()
        app.processEvents()
        form.grab().save(shot)
        print("saved", shot)
        sys.exit(0)
    sys.exit(main())
