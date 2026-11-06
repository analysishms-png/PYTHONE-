# ──────────────────────────────────────────────────────────────────────
# Housekeeping - HK Room Block Entry (VB6: HKRoomBlock.frm)
# ──────────────────────────────────────────────────────────────────────

"""HK Room Block Entry (VB6: HKRoomBlock.frm).

VB6 Pattern:
- TopCtrl1 navigation: Add/Edit/Delete/Browse/Print/Exit
- DGCategory for room category lookup
- FGrid for grid display
- Room block types: 'O' = Out of Order, 'M' = Maintenance
- F5 Refresh, Ctrl+S Save, Ctrl+D Delete, Esc Close
"""

from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import QDate, Qt
from PyQt6.QtGui import QShortcut, QKeySequence
from PyQt6.QtWidgets import (QApplication, QDateEdit, QDialog, QFormLayout,
                             QHBoxLayout, QLabel, QLineEdit, QMessageBox,
                             QPushButton, QTableWidget, QTableWidgetItem,
                             QVBoxLayout, QWidget, QComboBox, QFrame)

from HMS_py.core import db
from HMS_py.core.housekeeping import linen as hk_linen


def _cell(val, *, align_right: bool = False):
    if isinstance(val, (datetime.date, datetime.datetime)):
        val = f"{val:%d/%b/%Y}"
    it = QTableWidgetItem("" if val is None else str(val))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    if align_right:
        it.setTextAlignment(Qt.AlignmentFlag.AlignRight | Qt.AlignmentFlag.AlignVCenter)
    return it


class HKRoomBlockBrowser(QDialog):
    """VB6 HKRoomBlock.frm: Room Block Entry.

    Features:
    - Browse room blocks by date
    - Create new room block (OOO/Maintenance)
    - Remove room block
    - Print report
    - Room category filter
    - Block type filter (O/M)
    """

    COLS = ["Room No", "Type", "Reason", "From Date", "To Date"]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("HK Room Block Entry - HMS_py")
        self.resize(900, 550)
        self._build_ui()
        self.reload()

    def _build_ui(self):
        root = QVBoxLayout(self)
        root.setSpacing(8)

        # Toolbar
        toolbar = QHBoxLayout()
        toolbar.setSpacing(8)

        self.btnNew = QPushButton("New Block (Ctrl+N)")
        self.btnNew.setToolTip("Create new room block (Ctrl+N)")
        self.btnRemove = QPushButton("Remove Block (Ctrl+Del)")
        self.btnRemove.setToolTip("Remove selected room block")
        self.btnPrint = QPushButton("Print (Ctrl+P)")
        self.btnPrint.setToolTip("Print room block list")
        self.btnRefresh = QPushButton("Refresh (F5)")
        self.btnRefresh.setToolTip("Reload list (F5)")
        self.btnClose = QPushButton("Close")
        self.btnClose.setToolTip("Close window (Esc)")

        for b in (self.btnNew, self.btnRemove, self.btnPrint,
                  self.btnRefresh, self.btnClose):
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

        self.cbType = QComboBox()
        self.cbType.addItems(["All Types", "O - Out of Order", "M - Maintenance"])
        self.cbType.currentIndexChanged.connect(self.reload)
        filter_row.addWidget(QLabel("Block Type:"))
        filter_row.addWidget(self.cbType)

        btnRefresh = QPushButton("Refresh (F5)")
        btnRefresh.clicked.connect(self.reload)
        filter_row.addWidget(btnRefresh)
        filter_row.addStretch()
        root.addLayout(filter_row)

        # Main grid
        self.tbl = QTableWidget(0, 5)
        self.tbl.setHorizontalHeaderLabels(self.COLS)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.setAlternatingRowColors(True)
        root.addWidget(self.tbl, 1)

        # Buttons
        btns = QHBoxLayout()
        self.btnNew = QPushButton("New Block (Ctrl+N)")
        self.btnNew.setToolTip("Create new room block (Ctrl+N)")
        self.btnRemove = QPushButton("Remove Block (Ctrl+Del)")
        self.btnRemove.setToolTip("Remove selected room block")
        self.btnPrint = QPushButton("Print (Ctrl+P)")
        self.btnPrint.setToolTip("Print room block list")
        self.btnRefresh = QPushButton("Refresh (F5)")
        self.btnRefresh.setToolTip("Reload list (F5)")
        self.btnClose = QPushButton("Close")
        self.btnClose.setToolTip("Close window (Esc)")

        for b in (self.btnNew, self.btnRemove, self.btnPrint,
                  self.btnRefresh, self.btnClose):
            btns.addWidget(b)

        btns.addStretch()
        root.addLayout(btns)

        # Status
        self.lblStatus = QLabel("Ready")
        self.lblStatus.setStyleSheet("color: #666; padding: 4px;")
        root.addWidget(self.lblStatus)

        # Signals
        self.btnNew.clicked.connect(self._new)
        self.btnRemove.clicked.connect(self._remove)
        self.btnPrint.clicked.connect(self._print)
        self.btnRefresh.clicked.connect(self.reload)
        self.btnClose.clicked.connect(self.reject)

        # Shortcuts
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._new)
        QShortcut(QKeySequence("Ctrl+Del"), self, activated=self._remove)
        QShortcut(QKeySequence("Ctrl+P"), self, activated=self._print)
        QShortcut(QKeySequence("F5"), self, activated=self.reload)
        QShortcut(QKeySequence("Esc"), self, activated=self.reject)

    def reload(self):
        from HMS_py.core.housekeeping import linen as hk_linen

        try:
            rows = hk_linen.hk_room_block_list()
        except Exception as e:
            self.lblStatus.setText(f"Error loading data: {e}")
            rows = []

        # Filter by type if selected
        type_filter = self.cbType.currentText()
        if type_filter == "O - Out of Order":
            rows = [r for r in rows if r["type"] == "O"]
        elif type_filter == "M - Maintenance":
            rows = [r for r in rows if r["type"] == "M"]

        self.tbl.setRowCount(len(rows))
        for r, row in enumerate(rows):
            type_label = "Out of Order" if row["type"] == "O" else "Maintenance"
            vals = [row["roomno"], type_label, row["reason"],
                    row["from_date"], row["to_date"]]
            for c, v in enumerate(vals):
                it = QTableWidgetItem("" if v is None else str(v))
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                if c == 1:  # Type column - color code
                    if row["type"] == "O":
                        it.setForeground(QColor("#dc2626"))  # Red for OOO
                    else:
                        it.setForeground(QColor("#2563eb"))  # Blue for Maintenance
                self.tbl.setItem(r, c, it)

        self.lblStatus.setText(f"Records: {len(rows)}")

    def _new(self):
        dlg = HKRoomBlockDialog(self, user=self.user)
        if dlg.exec() == dlg.DialogCode.Accepted:
            self.reload()

    def _remove(self):
        row = self.tbl.currentRow()
        if row < 0:
            QMessageBox.warning(self, "Selection", "Please select a room block to remove")
            return
        
        roomno = self.tbl.item(row, 0).text()
        type_text = self.tbl.item(row, 1).text()
        block_type = "O" if "Out of Order" in type_text else "M"
        
        reply = QMessageBox.question(
            self, "Confirm Remove",
            f"Remove block for Room {roomno} ({type_text})?",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No
        )
        if reply == QMessageBox.StandardButton.Yes:
            try:
                from HMS_py.core.housekeeping import linen as hk_linen
                hk_linen.hk_room_block_remove(roomno, block_type)
                self.reload()
                QMessageBox.information(self, "Success", "Room block removed successfully")
            except Exception as e:
                QMessageBox.critical(self, "Error", f"Failed to remove block: {e}")

    def _print(self):
        # TODO: Implement print
        QMessageBox.information(self, "Print", "Print functionality coming soon")


class HKRoomBlockDialog(QDialog):
    """Dialog for creating new HK Room Block entry."""

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("HK Room Block - New")
        self.resize(500, 350)
        self._build_ui()

    def _build_ui(self):
        root = QVBoxLayout(self)
        root.setSpacing(12)

        # Form
        form = QFormLayout()
        form.setLabelAlignment(Qt.AlignmentFlag.AlignRight)
        form.setHorizontalSpacing(12)
        form.setVerticalSpacing(8)

        # Room Number
        self.cbRoom = QComboBox()
        self.cbRoom.addItem("Select Room", "")
        self._load_rooms()
        form.addRow("Room No:", self.cbRoom)

        # Block Type
        self.cbBlockType = QComboBox()
        self.cbBlockType.addItems(["O - Out of Order", "M - Maintenance"])
        form.addRow("Block Type:", self.cbBlockType)

        # Reason
        self.cbReason = QComboBox()
        self.cbReason.setEditable(True)
        self.cbReason.addItems(["Maintenance", "Cleaning", "Repair", "Renovation", "Other"])
        form.addRow("Reason:", self.cbReason)

        # From Date
        self.deFrom = QDateEdit(QDate.currentDate())
        self.deFrom.setCalendarPopup(True)
        self.deFrom.setDisplayFormat("dd/MM/yyyy")
        form.addRow("From Date:", self.deFrom)

        # To Date
        self.deTo = QDateEdit(QDate.currentDate().addDays(7))
        self.deTo.setCalendarPopup(True)
        self.deTo.setDisplayFormat("dd/MM/yyyy")
        form.addRow("To Date:", self.deTo)

        root.addLayout(form)

        # Buttons
        btns = QHBoxLayout()
        btns.addStretch()
        self.btnSave = QPushButton("Save (Ctrl+S)")
        self.btnSave.setToolTip("Save block (Ctrl+S)")
        self.btnCancel = QPushButton("Cancel (Esc)")
        self.btnCancel.setToolTip("Cancel (Esc)")
        btns.addWidget(self.btnSave)
        btns.addWidget(self.btnCancel)
        root.addLayout(btns)

        # Signals
        self.btnSave.clicked.connect(self._save)
        self.btnCancel.clicked.connect(self.reject)

        # Shortcuts
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._save)
        QShortcut(QKeySequence("Esc"), self, activated=self.reject)

    def _load_rooms(self):
        from HMS_py.core.housekeeping import linen as hk_linen
        try:
            rooms = hk_linen.get_hk_rooms()
            for r in rooms:
                self.cbRoom.addItem(f"{r['code']} - {r['name']}", r['code'])
        except Exception:
            pass

    def _save(self):
        # Validate
        if not self.cbRoom.currentData():
            QMessageBox.warning(self, "Validation", "Please select a room")
            return

        roomno = self.cbRoom.currentData()
        block_type = "O" if "Out of Order" in self.cbBlockType.currentText() else "M"
        reason = self.cbReason.currentText()
        from_date = self.deFrom.date().toPyDate()
        to_date = self.deTo.date().toPyDate()

        if from_date > to_date:
            QMessageBox.warning(self, "Validation", "From date cannot be after To date")
            return

        try:
            from HMS_py.core.housekeeping import linen as hk_linen
            hk_linen.hk_room_block_create(
                roomno=roomno,
                block_type=block_type,
                reason=reason,
                from_date=from_date,
                to_date=to_date
            )
            QMessageBox.information(self, "Success", 
                f"Room block created successfully!\nRoom: {roomno}\nType: {block_type}")
            self.accept()
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Failed to create room block: {e}")


def open_hk_room_block(parent=None, user: str = "SA"):
    """Open HK Room Block Entry."""
    HKRoomBlockBrowser(parent, user=user).exec()


def main() -> int:
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    d = HKRoomBlockBrowser()
    d.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())