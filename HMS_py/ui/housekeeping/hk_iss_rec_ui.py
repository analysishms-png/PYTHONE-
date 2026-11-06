# ──────────────────────────────────────────────────────────────────────
# Housekeeping - HK Issue/Receive Entry (VB6: HKIssRec.frm)
# ──────────────────────────────────────────────────────────────────────

"""HK Issue/Receive Entry (VB6: HKIssRec.frm).

VB6 Pattern:
- TopCtrl1 navigation: Add/Edit/Delete/Browse/Print/Exit
- DGDepart for department lookup (Issue: 'I'+Dept, Receive: 'R'+Dept)
- DGVType for voucher type (HKIN, HKOUT, HKTRN)
- DGRoom for room lookup
- FGrid for grid display
- F5 Refresh, Ctrl+S Save, Ctrl+D Delete, Esc Close
"""

from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import QDate, Qt
from PyQt6.QtGui import QFont, QShortcut, QKeySequence
from PyQt6.QtWidgets import (QApplication, QDateEdit, QDialog, QFormLayout,
                             QHBoxLayout, QLabel, QLineEdit, QMessageBox,
                             QPushButton, QTableWidget, QTableWidgetItem,
                             QVBoxLayout, QWidget, QComboBox, QFrame,
                             QGroupBox)

from HMS_py.core import db
from HMS_py.core.housekeeping import linen as hk_linen
from HMS_py.ui import theme as _theme


def _cell(val, *, align_right: bool = False):
    if isinstance(val, (datetime.date, datetime.datetime)):
        val = f"{val:%d/%b/%Y}"
    it = QTableWidgetItem("" if val is None else str(val))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    if align_right:
        it.setTextAlignment(Qt.AlignmentFlag.AlignRight | Qt.AlignmentFlag.AlignVCenter)
    return it


class HKIssueReceiveBrowser(QDialog):
    """VB6 HKIssRec.frm: Issue/Receive Entry.

    Features:
    - Browse HK issue/receive entries by date
    - Create new issue/receive entry (Add mode: HKIN/HKOUT/HKTRN)
    - Edit existing entry
    - Delete entry
    - Print report
    - Department filter (Issue: I+Dept, Receive: R+Dept)
    - Voucher type filter (HKIN/HKOUT/HKTRN)
    - Room filter
    - Item lookup (Store Item, Consumables)
    """

    COLS = ["DocId", "Date", "VType", "VNo", "Dept", "Item", "Unit",
            "Qty", "Rate", "Amount", "From Dept", "To Dept", "User", "AE"]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("HK Issue/Receive Entry - HMS_py")
        self.resize(1200, 650)
        self._build_ui()
        self.reload()

    def _build_ui(self):
        root = QVBoxLayout(self)
        root.setSpacing(8)

        # Toolbar
        toolbar = QHBoxLayout()
        toolbar.setSpacing(8)

        self.btnNew = QPushButton("New (Ctrl+N)")
        self.btnNew.setToolTip("Create new HK issue/receive entry (Ctrl+N)")
        self.btnEdit = QPushButton("Edit (Ctrl+E)")
        self.btnEdit.setToolTip("Edit selected entry")
        self.btnDelete = QPushButton("Delete (Ctrl+Del)")
        self.btnDelete.setToolTip("Delete selected entry")
        self.btnPrint = QPushButton("Print (Ctrl+P)")
        self.btnPrint.setToolTip("Print entry")
        self.btnRefresh = QPushButton("Refresh (F5)")
        self.btnRefresh.setToolTip("Reload list (F5)")
        self.btnClose = QPushButton("Close")
        self.btnClose.setToolTip("Close window (Esc)")

        for b in (self.btnNew, self.btnEdit, self.btnDelete,
                  self.btnPrint, self.btnRefresh, self.btnClose):
            toolbar.addWidget(b)

        toolbar.addStretch()
        root.addLayout(toolbar)

        # Filter bar
        filter_row = QHBoxLayout()
        filter_row.addWidget(QLabel("From:"))
        self.deFrom = QDateEdit(QDate.currentDate().addDays(-30))
        self.deFrom.setCalendarPopup(True)
        self.deFrom.setDisplayFormat("dd/MM/yyyy")
        filter_row.addWidget(self.deFrom)

        filter_row.addWidget(QLabel("To:"))
        self.deTo = QDateEdit(QDate.currentDate())
        self.deTo.setCalendarPopup(True)
        self.deTo.setDisplayFormat("dd/MM/yyyy")
        filter_row.addWidget(self.deTo)

        self.cbDept = QComboBox()
        self.cbDept.addItem("All Departments", "")
        self._load_departments()
        self.cbDept.currentIndexChanged.connect(self.reload)
        filter_row.addWidget(QLabel("Department:"))
        filter_row.addWidget(self.cbDept)

        self.cbVType = QComboBox()
        self.cbVType.addItems(["All", "HKIN", "HKOUT", "HKTRN"])
        self.cbVType.currentIndexChanged.connect(self.reload)
        filter_row.addWidget(QLabel("Voucher Type:"))
        filter_row.addWidget(self.cbVType)

        self.cbRoom = QComboBox()
        self.cbRoom.addItem("All Rooms", "")
        self._load_rooms()
        self.cbRoom.currentIndexChanged.connect(self.reload)
        filter_row.addWidget(QLabel("Room:"))
        filter_row.addWidget(self.cbRoom)

        btnRefresh = QPushButton("Refresh (F5)")
        btnRefresh.clicked.connect(self.reload)
        filter_row.addWidget(btnRefresh)
        filter_row.addStretch()
        root.addLayout(filter_row)

        # Main grid
        self.tbl = QTableWidget(0, 14)
        self.tbl.setHorizontalHeaderLabels(self.COLS)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.cellDoubleClicked.connect(lambda *_: self._edit())
        root.addWidget(self.tbl, 1)

        # Buttons
        btns = QHBoxLayout()
        self.btnNew = QPushButton("New (Ctrl+N)")
        self.btnNew.setToolTip("Create new HK issue/receive entry (Ctrl+N)")
        self.btnEdit = QPushButton("Edit (Ctrl+E)")
        self.btnEdit.setToolTip("Edit selected entry")
        self.btnDelete = QPushButton("Delete (Ctrl+Del)")
        self.btnDelete.setToolTip("Delete selected entry")
        self.btnPrint = QPushButton("Print (Ctrl+P)")
        self.btnPrint.setToolTip("Print entry")
        self.btnRefresh = QPushButton("Refresh (F5)")
        self.btnRefresh.setToolTip("Reload list (F5)")
        self.btnClose = QPushButton("Close")
        self.btnClose.setToolTip("Close window (Esc)")

        for b in (self.btnNew, self.btnEdit, self.btnDelete,
                  self.btnPrint, self.btnRefresh, self.btnClose):
            btns.addWidget(b)

        btns.addStretch()
        root.addLayout(btns)

        # Status
        self.lblStatus = QLabel("Ready")
        self.lblStatus.setStyleSheet("color: #666; padding: 4px;")
        root.addWidget(self.lblStatus)

        # Signals
        self.btnNew.clicked.connect(self._new)
        self.btnEdit.clicked.connect(self._edit)
        self.btnDelete.clicked.connect(self._delete)
        self.btnPrint.clicked.connect(self._print)
        self.btnRefresh.clicked.connect(self.reload)
        self.btnClose.clicked.connect(self.reject)

        # Shortcuts
        from PyQt6.QtGui import QShortcut, QKeySequence
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._new)
        QShortcut(QKeySequence("Ctrl+E"), self, activated=self._edit)
        QShortcut(QKeySequence("Ctrl+Del"), self, activated=self._delete)
        QShortcut(QKeySequence("Ctrl+P"), self, activated=self._print)
        QShortcut(QKeySequence("F5"), self, activated=self.reload)
        QShortcut(QKeySequence("Esc"), self, activated=self.reject)

        self.reload()

    def reload(self):
        from HMS_py.core import db
        from HMS_py.core.housekeeping import linen as hk_linen

        try:
            rows = hk_linen.hk_iss_rec_list()
        except Exception as e:
            self.lblStatus.setText(f"Error loading data: {e}")
            rows = []

        self.tbl.setRowCount(len(rows))
        for r, row in enumerate(rows):
            vals = [row["docid"], row["vdate"], row["vtype"],
                    str(row.get("vno", "")), row.get("restcode", ""),
                    row.get("itemname", ""), row.get("unit", ""),
                    str(row.get("qty", 0)), str(row.get("rate", 0)),
                    str(row.get("amount", 0)), row.get("from_restcode", ""),
                    row.get("to_restcode", ""), row["u_name"], row["u_ae"]]
            for c, v in enumerate(vals):
                it = QTableWidgetItem("" if v is None else str(v))
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                it.setForeground(QColor("#1e293b"))
                self.tbl.setItem(r, c, it)

        self.lblStatus.setText(f"Records: {len(rows)}")

    def _load_departments(self):
        from HMS_py.core.housekeeping import linen as hk_linen
        try:
            depts = hk_linen.get_hk_departments()
            self.cbDept.addItem("All Departments", "")
            for d in depts:
                self.cbDept.addItem(f"{d['code']} - {d['name']}", d['code'])
        except Exception:
            pass

    def _load_rooms(self):
        from HMS_py.core.housekeeping import linen as hk_linen
        try:
            rooms = hk_linen.get_hk_rooms()
            self.cbRoom.addItem("All Rooms", "")
            for r in rooms:
                self.cbRoom.addItem(f"{r['code']} - {r['name']}", r['code'])
        except Exception:
            pass

    def _new(self):
        dlg = HKIssueReceiveDialog(self, user=self.user)
        if dlg.exec() == dlg.DialogCode.Accepted:
            self.reload()

    def _edit(self):
        # TODO: Implement edit
        pass

    def _delete(self):
        # TODO: Implement delete
        pass

    def _print(self):
        # TODO: Implement print
        pass


class HKIssueReceiveDialog(QDialog):
    """Dialog for creating/editing HK Issue/Receive entry."""

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("HK Issue/Receive Entry - New")
        self.resize(600, 500)
        self._build_ui()

    def _build_ui(self):
        root = QVBoxLayout(self)
        root.setSpacing(12)

        # Form
        form = QFormLayout()
        form.setLabelAlignment(Qt.AlignmentFlag.AlignRight)
        form.setHorizontalSpacing(12)
        form.setVerticalSpacing(8)

        # Voucher Type
        self.cbVType = QComboBox()
        self.cbVType.addItems(["HKTRN", "HKIN", "HKOUT"])
        form.addRow("Voucher Type:", self.cbVType)

        # Issue Department (From)
        self.cbFromDept = QComboBox()
        self.cbFromDept.addItem("Select Source Department", "")
        self._load_from_departments()
        form.addRow("Issue From:", self.cbFromDept)

        # Receive Department (To)
        self.cbToDept = QComboBox()
        self.cbToDept.addItem("Select Destination Department", "")
        self._load_to_departments()
        form.addRow("Receive To:", self.cbToDept)

        # Room
        self.cbRoom = QComboBox()
        self.cbRoom.addItem("Select Room (Optional)", "")
        self._load_rooms()
        form.addRow("Room:", self.cbRoom)

        # Item
        self.cbItem = QComboBox()
        self.cbItem.addItem("Select Item", "")
        self._load_items()
        form.addRow("Item:", self.cbItem)

        # Unit (read-only, from item)
        self.txtUnit = QLineEdit()
        self.txtUnit.setReadOnly(True)
        form.addRow("Unit:", self.txtUnit)

        # Quantity
        self.txtQty = QLineEdit()
        self.txtQty.setPlaceholderText("Enter quantity")
        form.addRow("Quantity:", self.txtQty)

        # Rate
        self.txtRate = QLineEdit()
        self.txtRate.setPlaceholderText("Enter rate")
        form.addRow("Rate:", self.txtRate)

        # Amount (read-only, computed)
        self.txtAmount = QLineEdit()
        self.txtAmount.setReadOnly(True)
        form.addRow("Amount:", self.txtAmount)

        # Remarks
        self.txtRemarks = QLineEdit()
        self.txtRemarks.setPlaceholderText("Remarks (optional)")
        form.addRow("Remarks:", self.txtRemarks)

        root.addLayout(form)

        # Buttons
        btns = QHBoxLayout()
        btns.addStretch()
        self.btnSave = QPushButton("Save (Ctrl+S)")
        self.btnSave.setToolTip("Save entry (Ctrl+S)")
        self.btnCancel = QPushButton("Cancel (Esc)")
        self.btnCancel.setToolTip("Cancel (Esc)")
        btns.addWidget(self.btnSave)
        btns.addWidget(self.btnCancel)
        root.addLayout(btns)

        # Signals
        self.cbItem.currentIndexChanged.connect(self._on_item_change)
        self.txtQty.textChanged.connect(self._calc_amount)
        self.txtRate.textChanged.connect(self._calc_amount)
        self.btnSave.clicked.connect(self._save)
        self.btnCancel.clicked.connect(self.reject)

        # Shortcuts
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._save)
        QShortcut(QKeySequence("Esc"), self, activated=self.reject)

    def _load_from_departments(self):
        from HMS_py.core.housekeeping import linen as hk_linen
        try:
            depts = hk_linen.get_hk_issue_departments()
            for d in depts:
                self.cbFromDept.addItem(f"{d['code']} - {d['name']}", d['code'])
        except Exception:
            pass

    def _load_to_departments(self):
        from HMS_py.core.housekeeping import linen as hk_linen
        try:
            depts = hk_linen.get_hk_receive_departments()
            for d in depts:
                self.cbToDept.addItem(f"{d['code']} - {d['name']}", d['code'])
        except Exception:
            pass

    def _load_rooms(self):
        from HMS_py.core.housekeeping import linen as hk_linen
        try:
            rooms = hk_linen.get_hk_rooms()
            for r in rooms:
                self.cbRoom.addItem(f"{r['code']} - {r['name']}", r['code'])
        except Exception:
            pass

    def _load_items(self):
        from HMS_py.core.housekeeping import linen as hk_linen
        try:
            items = hk_linen.get_hk_items()
            for i in items:
                self.cbItem.addItem(f"{i['code']} - {i['name']}", i)
        except Exception:
            pass

    def _on_item_change(self):
        idx = self.cbItem.currentIndex()
        if idx > 0:
            item = self.cbItem.itemData(idx)
            self.txtUnit.setText(item.get("unit", ""))
        else:
            self.txtUnit.clear()

    def _calc_amount(self):
        try:
            qty = float(self.txtQty.text() or 0)
            rate = float(self.txtRate.text() or 0)
            self.txtAmount.setText(f"{qty * rate:.2f}")
        except ValueError:
            self.txtAmount.clear()

    def _save(self):
        # Validate
        if not self.cbFromDept.currentData():
            QMessageBox.warning(self, "Validation", "Please select Issue From department")
            return
        if not self.cbToDept.currentData():
            QMessageBox.warning(self, "Validation", "Please select Receive To department")
            return
        if not self.cbItem.currentData():
            QMessageBox.warning(self, "Validation", "Please select an item")
            return
        if not self.txtQty.text().strip():
            QMessageBox.warning(self, "Validation", "Please enter quantity")
            return

        # Prepare record
        vtype = self.cbVType.currentText()
        item_data = self.cbItem.currentData()
        
        rec = {
            "vtype": vtype,
            "from_restcode": self.cbFromDept.currentData(),
            "to_restcode": self.cbToDept.currentData(),
            "restcode": self.cbFromDept.currentData(),
            "itemcode": item_data.get("code", ""),
            "itemname": item_data.get("name", ""),
            "unit": self.txtUnit.text(),
            "qty": float(self.txtQty.text() or 0),
            "rate": float(self.txtRate.text() or 0),
            "amount": float(self.txtAmount.text() or 0),
            "comments": self.txtRemarks.text(),
        }

        try:
            from HMS_py.core.housekeeping import linen as hk_linen
            result = hk_linen.hk_iss_rec_create(rec)
            QMessageBox.information(self, "Success", 
                f"Entry created successfully!\nDocId: {result['docid']}\nVNo: {result['vno']}")
            self.accept()
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Failed to create entry: {e}")


def open_hk_issue_receive(parent=None, user: str = "SA"):
    """Open HK Issue/Receive Entry."""
    HKIssueReceiveBrowser(parent, user=user).exec()


def main() -> int:
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    d = HKIssueReceiveBrowser()
    d.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())