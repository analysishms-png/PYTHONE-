"""PARTIAL bucket UI ports (VB6 forms -> PyQt6), ACTION QUEUE top-10.

VB6 originals (project root *.frm) -> windows here:
  FaTDSCat      -> TdsCategoryWindow        ('T.D.S. Category')
  FaGrEnt       -> GroupAccountsWindow      ('Group Accounts Entry')
  FaSubGroup    -> LedgerAccountsWindow     ('Ledger Accounts Entry')
  FaGlobeNarr   -> GlobalNarrationWindow    (narration picker, verbatim caption)
  DepOpStk      -> LocationOpeningStockWindow ('Location wise Opening Stock')
  FaMagic       -> MagicWindow              ('Magic' — P&L/BS/Cash-F reports)
  FaReports     -> FaReportsWindow          ('Finance Reports')
  DepartMast    -> DepartmentMasterWindow   ('Department Master')
  FaChqClear    -> ChequeDDClearingWindow   ('Cheque/DD Clearing Entry')
  FaAdjustDel   -> AdjustmentDeleteWindow   ('Adjustment Delete')

Core ops: HMS_py.core.fa_masters_ops (fa_masters), fa_voucher, fa_reports.
Grid+form pattern follows fa_sub_forms_ui.py conventions.
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt, QDate
from PyQt6.QtGui import QColor, QFont
from PyQt6.QtWidgets import (QApplication, QCheckBox, QComboBox, QDateEdit,
                             QFormLayout, QGridLayout, QGroupBox,
                             QHBoxLayout, QHeaderView, QLabel, QLineEdit,
                             QMainWindow, QMessageBox, QPushButton,
                             QTableWidget, QTableWidgetItem, QVBoxLayout,
                             QWidget)

from HMS_py.core import fa_masters_ops as fmo
from HMS_py.core import fa_reports as fr
from HMS_py.core import fa_voucher as fv
from HMS_py.ui.theme import palette


def _cell(val, editable: bool = False) -> QTableWidgetItem:
    it = QTableWidgetItem("" if val is None else str(val))
    if not editable:
        it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    it.setForeground(QColor(palette()["text"]))
    return it


def _fill_grid(grid: QTableWidget, headers: list[str], rows: list[list]):
    grid.setColumnCount(len(headers))
    grid.setHorizontalHeaderLabels(headers)
    grid.setRowCount(len(rows))
    for i, row in enumerate(rows):
        for j, v in enumerate(row):
            grid.setItem(i, j, _cell(v))
    grid.horizontalHeader().setSectionResizeMode(
        QHeaderView.ResizeMode.ResizeToContents)


def _title(text: str) -> QLabel:
    lab = QLabel(text)
    lab.setFont(QFont("Segoe UI", 13, QFont.Weight.Bold))
    lab.setAlignment(Qt.AlignmentFlag.AlignCenter)
    lab.setStyleSheet("color:#000080; background:#d4d0c8; padding:4px;")
    return lab


def _msgbox_err(w, e: Exception):
    QMessageBox.critical(w, "Error", str(e))


# ────────────────────────────────────────────────────────────────
# 1. T.D.S. Category Entry (VB6 FaTDSCat)
# ────────────────────────────────────────────────────────────────
class TdsCategoryWindow(QMainWindow):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("T.D.S.Category Entry")
        self.resize(720, 480)
        self._build()
        self._load()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("T.D.S.Category Entry"))
        form = QGroupBox("Category Details")
        fl = QFormLayout(form)
        self.lbl_code = QLabel("(auto)")
        self.txt_name = QLineEdit()
        self.txt_limit = QLineEdit("0")
        self.txt_pct = QLineEdit("0")
        fl.addRow("Code:", self.lbl_code)
        fl.addRow("Description:", self.txt_name)
        fl.addRow("T.D.S.Limit:", self.txt_limit)
        fl.addRow("T.D.S.Percentage:", self.txt_pct)
        lay.addWidget(form)
        btns = QHBoxLayout()
        for cap, fn in (("Add", self._add), ("Update", self._update),
                        ("Delete", self._delete), ("Exit", self.close)):
            b = QPushButton(cap)
            b.clicked.connect(fn)
            btns.addWidget(b)
        lay.addLayout(btns)
        self.grid = QTableWidget()
        lay.addWidget(self.grid)

    def _load(self):
        try:
            rows = fmo.tdscat_list()
            _fill_grid(self.grid,
                       ["Code", "Description", "T.D.S.Limit", "T.D.S.%"],
                       [[r["code"], r["name"], r["limit"], r["pct"]]
                        for r in rows])
            self.statusBar().showMessage(f"{len(rows)} TDS categories")
        except Exception as e:
            self.statusBar().showMessage(f"Load error: {e}")

    def _row_sel(self):
        r = self.grid.currentRow()
        if r < 0:
            QMessageBox.warning(self, "Select", "Pehle row select karo.")
            return None
        return (self.grid.item(r, 0).text(), self.grid.item(r, 1).text(),
                self.grid.item(r, 2).text(), self.grid.item(r, 3).text())

    def _add(self):
        try:
            code = fmo.tdscat_insert(self.txt_name.text(),
                                     float(self.txt_limit.text() or 0),
                                     float(self.txt_pct.text() or 0))
            QMessageBox.information(self, "Saved", f"Code {code} saved.")
            self._load()
        except Exception as e:
            _msgbox_err(self, e)

    def _update(self):
        sel = self._row_sel()
        if not sel:
            return
        try:
            fmo.tdscat_update(sel[0], self.txt_name.text(),
                              float(self.txt_limit.text() or 0),
                              float(self.txt_pct.text() or 0))
            QMessageBox.information(self, "Saved", "Updated.")
            self._load()
        except Exception as e:
            _msgbox_err(self, e)

    def _delete(self):
        sel = self._row_sel()
        if not sel:
            return
        if QMessageBox.question(self, "Delete",
                                "Are You Sure to Delete This Record"
                                ) == QMessageBox.StandardButton.Yes:
            try:
                fmo.tdscat_delete(sel[0])
                self._load()
            except Exception as e:
                _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# 2. Group Accounts Entry (VB6 FaGrEnt)
# ────────────────────────────────────────────────────────────────
_GNATURES = [("A", "A S S E T S"), ("E", "E X P E N D I T U R E"),
             ("L", "L I A B I L I T Y"), ("R", "R E V E N U E"),
             ("O", "Others")]


class GroupAccountsWindow(QMainWindow):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Group Accounts Entry")
        self.resize(860, 520)
        self._build()
        self._load()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Group Accounts Entry"))
        form = QGroupBox("Group Details")
        fl = QFormLayout(form)
        self.lbl_code = QLabel("(auto)")
        self.txt_name = QLineEdit()
        self.cmb_under = QComboBox()
        self.cmb_gnature = QComboBox()
        for code, label in _GNATURES:
            self.cmb_gnature.addItem(label, code)
        self.cmb_nature = QComboBox()
        self.cmb_nature.addItems(["Dr", "Cr"])
        self.chk_subled = QCheckBox("Sub Ledger YN")
        self.chk_trading = QCheckBox("Trading A/C")
        fl.addRow("Code:", self.lbl_code)
        fl.addRow("Name:", self.txt_name)
        fl.addRow("Under:", self.cmb_under)
        fl.addRow("Nature:", self.cmb_gnature)
        fl.addRow("Dr/Cr:", self.cmb_nature)
        fl.addRow("", self.chk_subled)
        fl.addRow("", self.chk_trading)
        lay.addWidget(form)
        btns = QHBoxLayout()
        for cap, fn in (("Add", self._add), ("Update", self._update),
                        ("Delete", self._delete), ("Exit", self.close)):
            b = QPushButton(cap)
            b.clicked.connect(fn)
            btns.addWidget(b)
        lay.addLayout(btns)
        self.grid = QTableWidget()
        lay.addWidget(self.grid)

    def _load(self):
        try:
            rows = fmo.acgroup_list()
            _fill_grid(self.grid,
                       ["Code", "Name", "Nature", "Dr/Cr", "Under",
                        "SubLed", "Balance"],
                       [[r["code"], r["name"], r["gnature"], r["nature"],
                         r["main_name"] or r["main_code"], r["subled"],
                         r["bal"]] for r in rows])
            cur = self.cmb_under.currentText()
            self.cmb_under.clear()
            for code, name in fmo.acgroup_parent_options():
                self.cmb_under.addItem(name, code)
            if cur:
                self.cmb_under.setCurrentText(cur)
        except Exception as e:
            self.statusBar().showMessage(f"Load error: {e}")

    def _sel(self):
        r = self.grid.currentRow()
        if r < 0:
            QMessageBox.warning(self, "Select", "Pehle row select karo.")
            return None
        g = self.grid
        return {"code": g.item(r, 0).text(), "name": g.item(r, 1).text(),
                "gnature": g.item(r, 2).text(), "nature": g.item(r, 3).text()}

    def _rec(self):
        return {"name": self.txt_name.text(),
                "main_code": self.cmb_under.currentData() or "",
                "gnature": self.cmb_gnature.currentData() or "A",
                "nature": self.cmb_nature.currentText(),
                "subled": "Y" if self.chk_subled.isChecked() else "N",
                "trading": "Y" if self.chk_trading.isChecked() else "N"}

    def _add(self):
        try:
            code = fmo.acgroup_insert(self._rec())
            QMessageBox.information(self, "Saved", f"Group {code} saved.")
            self._load()
        except Exception as e:
            _msgbox_err(self, e)

    def _update(self):
        sel = self._sel()
        if not sel:
            return
        try:
            fmo.acgroup_update(sel["code"], self._rec())
            QMessageBox.information(self, "Saved", "Updated.")
            self._load()
        except Exception as e:
            _msgbox_err(self, e)

    def _delete(self):
        sel = self._sel()
        if not sel:
            return
        if QMessageBox.question(
                self, "Delete",
                f"Delete group '{sel['name']}'?"
                ) == QMessageBox.StandardButton.Yes:
            try:
                fmo.acgroup_delete(sel["code"])
                self._load()
            except Exception as e:
                _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# 3. Ledger Accounts Entry (VB6 FaSubGroup)
# ────────────────────────────────────────────────────────────────
class LedgerAccountsWindow(QMainWindow):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Ledger Accounts Entry")
        self.resize(900, 540)
        self._build()
        self._load()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Ledger Accounts Entry"))
        form = QGroupBox("Ledger Details")
        fl = QFormLayout(form)
        self.lbl_code = QLabel("(auto)")
        self.txt_name = QLineEdit()
        self.cmb_group = QComboBox()
        self.cmb_city = QComboBox()
        self.txt_add = QLineEdit()
        self.txt_phone = QLineEdit()
        self.txt_mobile = QLineEdit()
        self.txt_email = QLineEdit()
        self.chk_active = QCheckBox("Active")
        self.chk_active.setChecked(True)
        fl.addRow("Code:", self.lbl_code)
        fl.addRow("Account Name:", self.txt_name)
        fl.addRow("A/c Group:", self.cmb_group)
        fl.addRow("City Name:", self.cmb_city)
        fl.addRow("Address:", self.txt_add)
        fl.addRow("Phone:", self.txt_phone)
        fl.addRow("Mobile:", self.txt_mobile)
        fl.addRow("E-Mail:", self.txt_email)
        fl.addRow("", self.chk_active)
        lay.addWidget(form)
        btns = QHBoxLayout()
        for cap, fn in (("Add", self._add), ("Update", self._update),
                        ("Delete", self._delete), ("Exit", self.close)):
            b = QPushButton(cap)
            b.clicked.connect(fn)
            btns.addWidget(b)
        lay.addLayout(btns)
        self.grid = QTableWidget()
        lay.addWidget(self.grid)

    def _load(self):
        try:
            rows = fmo.subgroup_list(limit=400)
            _fill_grid(self.grid,
                       ["Code", "Account Name", "Under", "City", "Active",
                        "Phone"],
                       [[r["code"], r["name"], r["under"], r["city"],
                         "Yes" if r["active"] else "No", r["phone"]]
                        for r in rows])
            cur_g, cur_c = self.cmb_group.currentText(), \
                self.cmb_city.currentText()
            self.cmb_group.clear()
            for code, name in fmo.subgroup_group_options():
                self.cmb_group.addItem(name, code)
            self.cmb_city.clear()
            for code, name in fmo.subgroup_city_options():
                self.cmb_city.addItem(name, code)
            for cmb, cur in ((self.cmb_group, cur_g), (self.cmb_city, cur_c)):
                if cur:
                    cmb.setCurrentText(cur)
        except Exception as e:
            self.statusBar().showMessage(f"Load error: {e}")

    def _sel(self):
        r = self.grid.currentRow()
        if r < 0:
            QMessageBox.warning(self, "Select", "Pehle row select karo.")
            return None
        g = self.grid
        return {"code": g.item(r, 0).text(), "name": g.item(r, 1).text()}

    def _rec(self):
        return {"name": self.txt_name.text(),
                "group_code": self.cmb_group.currentData() or "",
                "city_code": self.cmb_city.currentData() or "",
                "add1": self.txt_add.text(),
                "phone": self.txt_phone.text(),
                "mobile": self.txt_mobile.text(),
                "email": self.txt_email.text(),
                "active": 1 if self.chk_active.isChecked() else 0}

    def _add(self):
        try:
            code = fmo.subgroup_insert(self._rec())
            QMessageBox.information(self, "Saved", f"Ledger {code} saved.")
            self._load()
        except Exception as e:
            _msgbox_err(self, e)

    def _update(self):
        sel = self._sel()
        if not sel:
            return
        try:
            fmo.subgroup_update(sel["code"], self._rec())
            QMessageBox.information(self, "Saved", "Updated.")
            self._load()
        except Exception as e:
            _msgbox_err(self, e)

    def _delete(self):
        sel = self._sel()
        if not sel:
            return
        if QMessageBox.question(
                self, "Delete",
                f"Delete ledger '{sel['name']}'?"
                ) == QMessageBox.StandardButton.Yes:
            try:
                fmo.subgroup_delete(sel["code"])
                self._load()
            except Exception as e:
                _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# 4. Global Narration picker (VB6 FaGlobeNarr — caption verbatim)
# ────────────────────────────────────────────────────────────────
class GlobalNarrationWindow(QMainWindow):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Global Narration")
        self.resize(640, 460)
        self.selected_name = ""
        self._picker_mode = False
        self._build()
        self._load()

    def closeEvent(self, ev):
        # picker-mode me close == QEventLoop end (VB6 'Unload Me' parity);
        # normal mode me QMainWindow default close.
        loop = getattr(self, "_loop", None)
        if self._picker_mode and loop is not None:
            loop.quit()
        ev.accept()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        form = QGroupBox("Narration Master")
        fl = QFormLayout(form)
        self.txt_name = QLineEdit()
        fl.addRow("Narration:", self.txt_name)
        lay.addWidget(form)
        btns = QHBoxLayout()
        self.btn_add = QPushButton("Add")
        self.btn_add.clicked.connect(self._add)
        self.btn_delete = QPushButton("Delete")
        self.btn_delete.clicked.connect(self._delete)
        self.btn_exit = QPushButton("Exit")
        self.btn_exit.clicked.connect(self.close)
        for b in (self.btn_add, self.btn_delete, self.btn_exit):
            btns.addWidget(b)
        btns.addWidget(QLabel(" Search:"))
        self.ed_search = QLineEdit()
        self.ed_search.setPlaceholderText("type to filter... (Enter=select, Esc=cancel)")
        self.ed_search.textChanged.connect(self._filter)
        self.ed_search.returnPressed.connect(self._accept_selected)
        btns.addWidget(self.ed_search)
        lay.addLayout(btns)
        self.grid = QTableWidget()
        self.grid.setEditTriggers(
            QTableWidget.EditTrigger.NoEditTriggers)
        self.grid.doubleClicked.connect(self._pick)
        lay.addWidget(self.grid)
        cap = QLabel("{Press <Esc> For Cancel && Exit} {Press <Enter> For "
                     "Select && Exit} {Press Ctrl+S to Sort the selected Row}")
        cap.setStyleSheet(
            "background:#ffffc0; color:#000; border:1px solid #808080; "
            "font-weight:bold; padding:3px;")
        lay.addWidget(cap)

    def _load(self):
        try:
            rows = fmo.narr_list()
            _fill_grid(self.grid, ["Name"],
                       [[r["name"]] for r in rows])
            self.statusBar().showMessage(f"{len(rows)} narrations")
        except Exception as e:
            self.statusBar().showMessage(f"Load error: {e}")

    def _add(self):
        try:
            fmo.narr_insert(self.txt_name.text())
            self.txt_name.clear()
            self._load()
        except Exception as e:
            _msgbox_err(self, e)

    def _delete(self):
        r = self.grid.currentRow()
        if r < 0:
            return
        name = self.grid.item(r, 0).text()
        if QMessageBox.question(self, "Delete", f"Delete '{name}'?"
                                ) == QMessageBox.StandardButton.Yes:
            try:
                fmo.narr_delete(name)
                self._load()
            except Exception as e:
                _msgbox_err(self, e)

    def _pick(self, *_):
        r = self.grid.currentRow()
        if r >= 0:
            self.selected_name = self.grid.item(r, 0).text()
            self.statusBar().showMessage(f"Selected: {self.selected_name}")

    # ---- VB6 FaGlobeNarr parity: search-box + Enter/Esc keyboard flow ----
    def _keyPressEvent(self, ev):
        # Form_KeyDown: Esc (0x1B) -> cancel & exit
        from PyQt6.QtCore import Qt as _Qt
        if ev.key() == _Qt.Key.Key_Escape:
            self.close()
            return
        super().keyPressEvent(ev)

    def keyPressEvent(self, ev):
        self._keyPressEvent(ev)

    def _filter(self, text: str):
        """TxtSearch parity: type-to-filter grid rows (case-insensitive)."""
        text = (text or "").strip().lower()
        for r in range(self.grid.rowCount()):
            it = self.grid.item(r, 0)
            row_txt = (it.text() if it else "").lower()
            self.grid.setRowHidden(r, bool(text) and text not in row_txt)

    def _accept_selected(self):
        """Enter (0x0D) parity: selected row -> selected_name + close.

        Picker-mode (open_global_narration_picker) me modal result; normal
        mode me sirf status-bar selection (purana behaviour).
        """
        r = self.grid.currentRow()
        if r >= 0 and self.grid.item(r, 0) is not None:
            self.selected_name = self.grid.item(r, 0).text()
        self.close()

    def pick_narration(self, parent=None) -> str:
        """VB6 FaGlobeNarr as-modal-picker API.

        Returns selected narration (ya '' cancel par). VB6 me parent form
        isi se .Show vbModal karke TextMatrix value leta tha.
        QMainWindow hai isliye QEventLoop modal-loop (QDialog.exec nahi).
        """
        from PyQt6.QtCore import QEventLoop
        from PyQt6.QtCore import Qt as _Qt
        self._picker_mode = True
        self.btn_add.setVisible(False)
        self.btn_delete.setVisible(False)
        self.setWindowModality(_Qt.WindowModality.ApplicationModal)
        self._loop = QEventLoop()
        self.show()
        self._loop.exec()
        return (self.selected_name or "").strip()


# ────────────────────────────────────────────────────────────────
# 5. Location wise Opening Stock Entry (VB6 DepOpStk — KClStk DOPR)
# ────────────────────────────────────────────────────────────────
class LocationOpeningStockWindow(QMainWindow):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Location wise Opening Stock Entry")
        self.resize(880, 560)
        self._build()
        self._load()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Location wise Opening Stock Entry"))
        form = QGroupBox("Document")
        fl = QFormLayout(form)
        self.cmb_godown = QComboBox()
        self.dt_date = QDateEdit(QDate.currentDate())
        self.dt_date.setCalendarPopup(True)
        fl.addRow("Location:", self.cmb_godown)
        fl.addRow("Date:", self.dt_date)
        lay.addWidget(form)
        lineform = QGroupBox("Line")
        lf = QFormLayout(lineform)
        self.cmb_item = QComboBox(editable=True)
        self.txt_qty = QLineEdit("0")
        self.txt_unit = QLineEdit()
        lf.addRow("Item:", self.cmb_item)
        lf.addRow("Qty:", self.txt_qty)
        lf.addRow("Unit:", self.txt_unit)
        lay.addWidget(lineform)
        btns = QHBoxLayout()
        for cap, fn in (("Add Line", self._add_line),
                        ("Remove Line", self._remove_line),
                        ("Save Opening Stock", self._save),
                        ("Delete Selected Doc", self._delete_doc),
                        ("Exit", self.close)):
            b = QPushButton(cap)
            b.clicked.connect(fn)
            btns.addWidget(b)
        lay.addLayout(btns)
        self.grid = QTableWidget()
        lay.addWidget(self.grid)

    def _load(self):
        try:
            from HMS_py.core import db
            self.cmb_godown.clear()
            for r in db.query("SELECT Code, Name FROM GodownMast "
                              "ORDER BY Name"):
                self.cmb_godown.addItem((r[1] or "").strip(), r[0])
            self.cmb_item.clear()
            for r in db.query("SELECT TOP 300 Code, Name FROM ItemMast "
                              "ORDER BY Name"):
                self.cmb_item.addItem((r[1] or "").strip(), r[0])
            rows = fmo.dep_opstk_list(limit=200)
            _fill_grid(self.grid,
                       ["DocId", "VNo", "Date", "Location", "Item", "Qty",
                        "Unit"],
                       [[r["docid"], r["vno"], r["vdate"], r["location"],
                         r["item"], r["qty"], r["unit"]] for r in rows])
            self.statusBar().showMessage(f"{len(rows)} DOPR lines")
        except Exception as e:
            self.statusBar().showMessage(f"Load error: {e}")

    def _add_line(self):
        if not self.cmb_item.currentText().strip():
            return
        r = self.grid.rowCount()
        self.grid.insertRow(r)
        docid = f"(new {self.cmb_godown.currentData() or ''})"
        self.grid.setItem(r, 0, _cell(docid))
        self.grid.setItem(r, 1, _cell(""))
        self.grid.setItem(r, 2, _cell(
            self.dt_date.date().toString("dd/MM/yyyy")))
        self.grid.setItem(r, 3, _cell(self.cmb_godown.currentText()))
        self.grid.setItem(r, 4, _cell(self.cmb_item.currentText()))
        self.grid.setItem(r, 5, _cell(self.txt_qty.text() or "0"))
        self.grid.setItem(r, 6, _cell(self.txt_unit.text()))

    def _remove_line(self):
        r = self.grid.currentRow()
        if r >= 0 and str(self.grid.item(r, 0).text()).startswith("(new"):
            self.grid.removeRow(r)

    def _save(self):
        lines = []
        for i in range(self.grid.rowCount()):
            doc = str(self.grid.item(i, 0).text())
            if not doc.startswith("(new"):
                continue
            godown = self.cmb_godown.currentData() or ""
            item = self.grid.item(i, 4).text()
            try:
                qty = float(self.grid.item(i, 5).text() or 0)
            except ValueError:
                qty = 0.0
            if not item or qty <= 0:
                continue
            lines.append({"item": item, "godown": godown, "qty": qty,
                          "unit": self.grid.item(i, 6).text()})
        if not lines:
            QMessageBox.information(self, "Opening Stock",
                                    "Koi new line nahi (Qty > 0 required).")
            return
        try:
            res = fmo.dep_opstk_create(
                lines, self.dt_date.date().toPyDate())
            QMessageBox.information(
                self, "Saved",
                f"Doc {res['docid']} ({len(lines)} lines) saved.")
            self._load()
        except Exception as e:
            _msgbox_err(self, e)

    def _delete_doc(self):
        r = self.grid.currentRow()
        if r < 0:
            return
        docid = self.grid.item(r, 0).text()
        if docid.startswith("(new"):
            return
        if QMessageBox.question(self, "Delete",
                                f"Delete document {docid} fully?"
                                ) == QMessageBox.StandardButton.Yes:
            try:
                fmo.dep_opstk_delete(docid)
                self._load()
            except Exception as e:
                _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# 6. Magic (VB6 FaMagic — F3..F9 finance reports)
# ────────────────────────────────────────────────────────────────
class MagicWindow(QMainWindow):
    REPORTS = [("Profit/Loss (F4)", "PL"), ("Balance sheet (F3)", "BS"),
               ("Cash/Bank Books (F9)", "CB"), ("Group Wise", "GW"),
               ("CashFlow (F7)", "CF"), ("FundFlow (F8)", "CF")]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Magic")
        self.resize(880, 540)
        self._build()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Magic"))
        top = QHBoxLayout()
        grp = QGroupBox("Report")
        gl = QVBoxLayout(grp)
        self.cmb_report = QComboBox()
        for cap, key in self.REPORTS:
            self.cmb_report.addItem(cap, key)
        gl.addWidget(self.cmb_report)
        top.addWidget(grp)
        dt = QGroupBox("Period")
        dl = QFormLayout(dt)
        self.dt_from = QDateEdit(QDate(QDate.currentDate().year(), 4, 1))
        self.dt_from.setCalendarPopup(True)
        self.dt_to = QDateEdit(QDate.currentDate())
        self.dt_to.setCalendarPopup(True)
        dl.addRow("From Date", self.dt_from)
        dl.addRow("To Date ", self.dt_to)
        top.addWidget(dt)
        opts = QGroupBox("Options")
        ol = QVBoxLayout(opts)
        self.chk_zero = QCheckBox("Show Zero Balance")
        self.chk_deb = QCheckBox("Show Only Debit")
        self.chk_cred = QCheckBox("Show Only Credit")
        ol.addWidget(self.chk_zero)
        ol.addWidget(self.chk_deb)
        ol.addWidget(self.chk_cred)
        top.addWidget(opts)
        lay.addLayout(top)
        self.btn_gen = QPushButton("Generate")
        self.btn_gen.clicked.connect(self._run)
        lay.addWidget(self.btn_gen)
        self.grid = QTableWidget()
        lay.addWidget(self.grid)

    def _run(self):
        key = self.cmb_report.currentData()
        d_from = self.dt_from.date().toPyDate()
        d_to = self.dt_to.date().toPyDate()
        try:
            if key == "PL":
                res = fv.profit_and_loss(d_from, d_to)
            elif key == "BS":
                res = fv.balance_sheet(as_on=d_to)
            elif key == "CB":
                res = fr.cash_bank_summary(date_to=d_to)
            elif key == "GW":
                res = fr.trial_balance_group(date_to=d_to)
            else:
                res = []
        except Exception as e:
            _msgbox_err(self, e)
            return
        rows = self._rows_of(res)
        _fill_grid(self.grid, ["Particulars", "Amount"], rows)
        self.statusBar().showMessage(f"{len(rows)} rows")

    @staticmethod
    def _rows_of(res) -> list[list]:
        rows: list[list] = []
        if isinstance(res, dict):
            def walk(d, prefix=""):
                for k, v in (d.items() if hasattr(d, "items") else []):
                    if isinstance(v, dict):
                        walk(v, prefix + str(k) + " / ")
                    elif isinstance(v, (int, float)):
                        rows.append([prefix + str(k), v])
                    elif isinstance(v, (list, tuple)):
                        for it in v:
                            if isinstance(it, dict):
                                rows.append([prefix + str(k) + " " +
                                             str(it.get("name", it.get(
                                                 "code", ""))),
                                             it.get("amount",
                                                    it.get("bal", it.get(
                                                        "total", 0)))])
            walk(res)
        elif isinstance(res, list):
            for it in res:
                if isinstance(it, dict):
                    rows.append([it.get("name", it.get("code", "")),
                                 it.get("amount", it.get("bal",
                                                         it.get("total", 0)))])
                else:
                    rows.append(list(it)[:2])
        return rows


# ────────────────────────────────────────────────────────────────
# 7. Finance Reports (VB6 FaReports 'ReprtForm')
# ────────────────────────────────────────────────────────────────
class FaReportsWindow(QMainWindow):
    REPORTS = ["Group Summary", "Group Detail", "Trial Balance (Group)",
               "Trial Balance (Ledger)", "Cash/Bank Summary",
               "Budget Report"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("ReprtForm")
        self.resize(880, 540)
        self._build()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Finance Reports"))
        top = QHBoxLayout()
        form = QGroupBox("Report")
        fl = QFormLayout(form)
        self.lst = QComboBox()
        self.lst.addItems(self.REPORTS)
        self.dt_to = QDateEdit(QDate.currentDate())
        self.dt_to.setCalendarPopup(True)
        fl.addRow("Report:", self.lst)
        fl.addRow("UpTo Date:", self.dt_to)
        top.addWidget(form)
        btns = QGroupBox("Print")
        bl = QVBoxLayout(btns)
        b_win = QPushButton("Windows &Print")
        b_win.clicked.connect(self._print)
        b_dos = QPushButton("&Dos Print")
        b_dos.clicked.connect(self._print)
        b_exit = QPushButton("E&xit")
        b_exit.clicked.connect(self.close)
        bl.addWidget(b_win)
        bl.addWidget(b_dos)
        bl.addWidget(b_exit)
        top.addWidget(btns)
        lay.addLayout(top)
        self.btn_gen = QPushButton("Generate")
        self.btn_gen.clicked.connect(self._run)
        lay.addWidget(self.btn_gen)
        self.grid = QTableWidget()
        lay.addWidget(self.grid)

    def _run(self):
        d_to = self.dt_to.date().toPyDate()
        name = self.lst.currentText()
        try:
            if name == "Group Summary":
                rows = fr.trial_balance_group(date_to=d_to)
            elif name == "Group Detail":
                rows = fr.trial_balance_ledger(date_to=d_to)
            elif name == "Trial Balance (Group)":
                rows = fr.trial_balance_group(date_to=d_to)
            elif name == "Trial Balance (Ledger)":
                rows = fr.trial_balance_ledger(date_to=d_to)
            elif name == "Cash/Bank Summary":
                rows = fr.cash_bank_summary(date_to=d_to)
            else:
                rows = [{"name": r["ac_name"] or r["grp_name"],
                         "dr": r["dr"], "cr": r["cr"]}
                        for r in fmo.budget_view()]
        except Exception as e:
            _msgbox_err(self, e)
            return
        out = []
        for it in (rows or []):
            if isinstance(it, dict):
                out.append([it.get("name", it.get("code", "")),
                            it.get("dr", it.get("debit", "")),
                            it.get("cr", it.get("credit", "")),
                            it.get("amount", it.get("bal", ""))])
            else:
                out.append(list(it)[:4])
        _fill_grid(self.grid, ["Particulars", "Dr", "Cr", "Amount"], out)
        self.statusBar().showMessage(f"{len(out)} rows")

    def _print(self):
        # VB6 FaReports: Dos/Windows print buttons delegate to Crystal;
        # port prints via status (documented stub).
        QMessageBox.information(
            self, "Print",
            "Print output: use OS print of this screen.\n"
            "(VB6 Crystal Report driver ka stub)")


# ────────────────────────────────────────────────────────────────
# 8. Department Master (VB6 DepartMast — Depart + RevMast cascade)
# ────────────────────────────────────────────────────────────────
class DepartmentMasterWindow(QMainWindow):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Department Master")
        self.resize(820, 500)
        self._build()
        self._load()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Department Master"))
        form = QGroupBox("Department")
        fl = QFormLayout(form)
        self.txt_code = QLineEdit()
        self.txt_code.setPlaceholderText("e.g. KKNEW1")
        self.txt_name = QLineEdit()
        self.chk_kot = QCheckBox("KOT")
        self.chk_pos = QCheckBox("POS")
        self.txt_phone = QLineEdit()
        fl.addRow("Code:", self.txt_code)
        fl.addRow("Department Name:", self.txt_name)
        fl.addRow("", self.chk_kot)
        fl.addRow("", self.chk_pos)
        fl.addRow("Phone:", self.txt_phone)
        lay.addWidget(form)
        btns = QHBoxLayout()
        for cap, fn in (("Add", self._add), ("Update", self._update),
                        ("Delete", self._delete), ("Exit", self.close)):
            b = QPushButton(cap)
            b.clicked.connect(fn)
            btns.addWidget(b)
        lay.addLayout(btns)
        self.grid = QTableWidget()
        lay.addWidget(self.grid)

    def _load(self):
        try:
            from HMS_py.core import depart as dep
            rows = dep.list_all()
            _fill_grid(self.grid,
                       ["Code", "Department Name", "Kot", "POS", "Phone"],
                       [[r["code"], r["name"], r["kotyn"], r["pos"],
                         r["phone"]] for r in rows])
        except Exception as e:
            self.statusBar().showMessage(f"Load error: {e}")

    def _sel(self):
        r = self.grid.currentRow()
        if r < 0:
            QMessageBox.warning(self, "Select", "Pehle row select karo.")
            return None
        return self.grid.item(r, 0).text()

    def _rec(self):
        return {"code": self.txt_code.text().strip(),
                "name": self.txt_name.text().strip(),
                "kotyn": "Y" if self.chk_kot.isChecked() else "N",
                "pos": "Y" if self.chk_pos.isChecked() else "N",
                "phone": self.txt_phone.text().strip()}

    def _add(self):
        try:
            from HMS_py.core import depart as dep
            dep.insert(self._rec())
            QMessageBox.information(self, "Saved", "Department saved.")
            self._load()
        except Exception as e:
            _msgbox_err(self, e)

    def _update(self):
        code = self._sel()
        if not code:
            return
        try:
            from HMS_py.core import depart as dep
            dep.update(code, self._rec())
            QMessageBox.information(self, "Saved", "Updated.")
            self._load()
        except Exception as e:
            _msgbox_err(self, e)

    def _delete(self):
        code = self._sel()
        if not code:
            return
        if QMessageBox.question(
                self, "Delete",
                f"Delete Department '{code}'? (RevMast bhi saaf hoga)"
                ) == QMessageBox.StandardButton.Yes:
            try:
                fmo.depart_delete_with_rev(code)
                self._load()
            except Exception as e:
                _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# 9. Cheque/DD Clearing Entry (VB6 FaChqClear browser flavour)
# ────────────────────────────────────────────────────────────────
class ChequeDDClearingWindow(QMainWindow):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Cheque/DD Clearing Entry")
        self.resize(940, 560)
        self._build()
        self._load_banks()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Cheque/DD Clearing Entry"))
        top = QHBoxLayout()
        form = QGroupBox("Filter")
        fl = QFormLayout(form)
        self.cmb_bank = QComboBox()
        self.cmb_status = QComboBox()
        self.cmb_status.addItems(["All", "Cleared", "UnCleared"])
        self.dt_upto = QDateEdit(QDate.currentDate())
        self.dt_upto.setCalendarPopup(True)
        fl.addRow("Bank Account:", self.cmb_bank)
        fl.addRow("Status(Clear./UnClea/All):", self.cmb_status)
        fl.addRow("UpTo Date:", self.dt_upto)
        top.addWidget(form)
        summ = QGroupBox("Balances")
        sl = QVBoxLayout(summ)
        self.lbl_bank = QLabel("Balance As Per Bank : 0.00")
        self.lbl_book = QLabel("Balance As Per Book : 0.00")
        sl.addWidget(self.lbl_bank)
        sl.addWidget(self.lbl_book)
        top.addWidget(summ)
        lay.addLayout(top)
        btns = QHBoxLayout()
        for cap, fn in (("Fill", self._fill), ("Mark Cleared", self._clear),
                        ("Exit", self.close)):
            b = QPushButton(cap)
            b.clicked.connect(fn)
            btns.addWidget(b)
        lay.addLayout(btns)
        self.grid = QTableWidget()
        lay.addWidget(self.grid)

    def _load_banks(self):
        try:
            from HMS_py.core import db
            rows = db.query(
                "SELECT SubCode, Name FROM SubGroup WHERE Nature IN "
                "('Bank') ORDER BY Name")
            for r in rows:
                self.cmb_bank.addItem((r[1] or "").strip(), r[0])
        except Exception as e:
            self.statusBar().showMessage(f"Bank load error: {e}")

    def _fill(self):
        bank = self.cmb_bank.currentData() or ""
        status = self.cmb_status.currentText()
        upto = self.dt_upto.date().toPyDate()
        where, params = ["L.SubCode = ?"], [bank]
        if status == "Cleared":
            where.append("L.Clg_Date IS NOT NULL")
        elif status == "UnCleared":
            where.append("L.Clg_Date IS NULL")
        where.append("L.V_Date <= ?")
        params.append(upto)
        try:
            from HMS_py.core import db
            rows = db.query(
                "SELECT L.V_Date, L.DocId, L.V_SNo, ISNULL(L.Chq_No, ''), "
                "ISNULL(L.Chq_Date, ''), ISNULL(L.Clg_Date, ''), "
                "ISNULL(SG.Name, ''), ISNULL(L.AmtCr, 0) - ISNULL(L.AmtDr, 0) "
                "FROM Ledger L LEFT JOIN SubGroup SG ON L.SubCode = SG.SubCode "
                "WHERE " + " AND ".join(where) + " ORDER BY L.V_Date",
                tuple(params))
            out = []
            tot = 0.0
            for r in rows:
                amt = float(r[8 - 1] or 0)  # r[7]
                tot += amt
                out.append([str(r[0])[:10], r[1], r[2], r[3],
                            str(r[4])[:10] if r[4] else "",
                            str(r[5])[:10] if r[5] else "", r[6],
                            amt,
                            "Cleared" if r[5] else "UnCleared"])
            _fill_grid(self.grid,
                       ["V_Date", "DocId", "SNo", "Chq_No", "Chq_Date",
                        "Clg_Date", "Party", "Amount", "Status"], out)
            self.lbl_book.setText(f"Balance As Per Book : {tot:,.2f}")
            self.lbl_bank.setText(f"Balance As Per Bank : "
                                  f"{sum(x[7] for x in out if x[8] == 'Cleared'):,.2f}")
        except Exception as e:
            _msgbox_err(self, e)

    def _clear(self):
        r = self.grid.currentRow()
        if r < 0:
            QMessageBox.warning(self, "Select", "Pehle row select karo.")
            return
        docid = self.grid.item(r, 1).text()
        sno = int(self.grid.item(r, 2).text() or 0)
        if self.grid.item(r, 8).text() == "Cleared":
            QMessageBox.information(self, "Cleared", "Pehle se cleared hai.")
            return
        try:
            fv.cheque_mark_cleared(docid, sno,
                                   self.dt_upto.date().toPyDate())
            QMessageBox.information(self, "Saved", "Cheque cleared.")
            self._fill()
        except Exception as e:
            _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# 10. Adjustment Delete (VB6 FaAdjustDel)
# ────────────────────────────────────────────────────────────────
class AdjustmentDeleteWindow(QMainWindow):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Adjustment Delete")
        self.resize(880, 520)
        self._build()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Adjustment Delete"))
        top = QHBoxLayout()
        lbl = QLabel("Account Name")
        lbl.setStyleSheet("color:#c00000; font-weight:bold;")
        self.cmb_acct = QComboBox()
        top.addWidget(lbl)
        top.addWidget(self.cmb_acct, 1)
        for cap, fn in (("Fill", self._fill),
                        ("Delete", self._delete), ("Exit", self.close)):
            b = QPushButton(cap)
            b.clicked.connect(fn)
            top.addWidget(b)
        lay.addLayout(top)
        self.grid = QTableWidget()
        lay.addWidget(self.grid)
        self._load_accounts()

    def _load_accounts(self):
        try:
            from HMS_py.core import db
            from HMS_py.core import company
            site_code = company.get_site_code() or ""
            # FIX #7: Use ACGROUP table like VB6 FaAdjust (not SubGroup)
            # VB6: WHERE L.LOGSITE_CODE='" & MemVar_1F92078 & "' 
            #      OR LOGSITE_CODE='HO'
            rows = db.query(
                "SELECT GroupCode, GroupName FROM ACGROUP "
                "WHERE LOGSITE_CODE='" + site_code + "' OR LOGSITE_CODE='HO' "
                "ORDER BY GroupName")
            for r in rows:
                self.cmb_acct.addItem((r[1] or "").strip(), r[0])
        except Exception as e:
            self.statusBar().showMessage(f"Account load error: {e}")

    def _fill(self):
        sub = self.cmb_acct.currentData() or ""
        try:
            from HMS_py.core import db
            rows = db.query(
                "SELECT DocId1, V_SNo1, DocId2, V_SNo2, ISNULL(Cr, 0), "
                "ISNULL(AgRefNo, '') FROM LEDGERADJ "
                "WHERE SubCode = ? ORDER BY DocId1", (sub,))
            _fill_grid(self.grid,
                       ["DocId1", "SNo1", "DocId2", "SNo2", "Amount",
                        "AgRefNo"],
                       [[r[0], r[1], r[2], r[3],
                         float(r[4] or 0), r[5]] for r in rows])
            if not rows:
                QMessageBox.information(self, "Fill",
                                        "No Record Found to Fill")
        except Exception as e:
            _msgbox_err(self, e)

    def _delete(self):
        r = self.grid.currentRow()
        if r < 0:
            QMessageBox.warning(self, "Select", "Pehle row select karo.")
            return
        g = self.grid
        d1, s1 = g.item(r, 0).text(), int(g.item(r, 1).text() or 0)
        d2, s2 = g.item(r, 2).text(), int(g.item(r, 3).text() or 0)
        if QMessageBox.question(
                self, "Delete Confirmation",
                "Do You Want to Delete It "
                f"({d1}#{s1} <-> {d2}#{s2})?"
                ) == QMessageBox.StandardButton.Yes:
            try:
                fmo.ledgeradj_delete(d1, s1, d2, s2)
                self._fill()
            except Exception as e:
                _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# Openers (shell registry pattern)
# ────────────────────────────────────────────────────────────────
def open_tds_category(parent=None):
    w = TdsCategoryWindow(parent); w.show(); return w


def open_group_accounts(parent=None):
    w = GroupAccountsWindow(parent); w.show(); return w


def open_ledger_accounts(parent=None):
    w = LedgerAccountsWindow(parent); w.show(); return w


def open_global_narration(parent=None):
    w = GlobalNarrationWindow(parent); w.show(); return w


def open_location_opening_stock(parent=None):
    w = LocationOpeningStockWindow(parent); w.show(); return w


def open_magic(parent=None):
    w = MagicWindow(parent); w.show(); return w


def open_fa_reports(parent=None):
    w = FaReportsWindow(parent); w.show(); return w


def open_department_master(parent=None):
    w = DepartmentMasterWindow(parent); w.show(); return w


def open_cheque_dd_clearing(parent=None):
    w = ChequeDDClearingWindow(parent); w.show(); return w


def open_adjustment_delete(parent=None):
    w = AdjustmentDeleteWindow(parent); w.show(); return w


if __name__ == "__main__":
    app = QApplication(sys.argv)
    w = TdsCategoryWindow()
    w.show()
    sys.exit(app.exec())
