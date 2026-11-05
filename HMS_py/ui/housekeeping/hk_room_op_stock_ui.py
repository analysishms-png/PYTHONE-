# ──────────────────────────────────────────────────────────────────────
# Housekeeping - HK Room Operation Stock Entry (VB6: HKRoomOpStk.frm)
# ──────────────────────────────────────────────────────────────────────

"""HK Room Operation Stock Entry (VB6: HKRoomOpStk.frm).

VB6 Pattern:
- TopCtrl1 navigation: Add/Edit/Delete/Browse/Print/Exit
- DGRoom for room lookup
- DGVType for voucher type (HKIN, HKOUT, HKTRN)
- DGItem for item lookup
- FGrid for grid display
- F5 Refresh, Ctrl+S Save, Ctrl+D Delete, Esc Close
"""

from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__))))

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


class HKRoomOpStockBrowser(QDialog):
    """VB6 HKRoomOpStk.frm: HK Room Operation Stock Entry.

    Features:
    - Browse HK room operation stock entries by date
    - Create new stock entry (Add mode: HKIN/HKOUT/HKTRN)
    - Edit existing entry
    - Delete entry
    - Print report
    - Room filter
    - Voucher type filter (HKIN/HKOUT/HKTRN)
    - Item lookup (Store Item, Consumables)
    """

    COLS = ["DocId", "Date", "VType", "VNo", "Room", "Item", "Unit",
            "Qty", "Rate", "Amount", "RestCode", "User", "AE"]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("HK Room Operation Stock Entry - HMS_py")
        self.resize(1100, 650)
        self._build_ui()
        self.reload()

    def _build_ui(self):
        root = QVBoxLayout(self)
        root.setSpacing(8)

        # Toolbar
        toolbar = QHBoxLayout()
        toolbar.setSpacing(8)

        self.btnNew = QPushButton("New (Ctrl+N)")
        self.btnNew.setToolTip("Create new HK room stock entry (Ctrl+N)")
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

        self.cbRoom = QComboBox()
        self.cbRoom.addItem("All Rooms", "")
        self._load_rooms()
        self.cbRoom.currentIndexChanged.connect(self.reload)
        filter_row.addWidget(QLabel("Room:"))
        filter_row.addWidget(self.cbRoom)

        self.cbVType = QComboBox()
        self.cbVType.addItems(["All", "HKIN", "HKOUT", "HKTRN"])
        self.cbVType.currentIndexChanged.connect(self.reload)
        filter_row.addWidget(QLabel("Voucher Type:"))
        filter_row.addWidget(self.cbVType)

        btnRefresh = QPushButton("Refresh (F5)")
        btnRefresh.clicked.connect(self.reload)
        filter_row.addWidget(btnRefresh)
        filter_row.addStretch()
        root.addLayout(filter_row)

        # Main grid
        self.tbl = QTableWidget(0, 13)
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
        self.btnNew.setToolTip("Create new HK room stock entry (Ctrl+N)")
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
            rows = hk_linen.hk_room_op_stock_list()
        except Exception as e:
            self.lblStatus.setText(f"Error loading data: {e}")
            rows = []

        self.tbl.setRowCount(len(rows))
        for r, row in enumerate(rows):
            vals = [row["docid"], row["vdate"], row["vtype"],
                    str(row.get("vno", "")), row.get("roomno", ""),
                    row.get("itemname", ""), row.get("unit", ""),
                    str(row.get("qty", 0)), str(row.get("rate", 0)),
                    str(row.get("amount", 0)), row.get("restcode", ""),
                    row["u_name"], row["u_ae"]]
            for c, v in enumerate(vals):
                it = QTableWidgetItem("" if v is None else str(v))
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                it.setForeground(QColor("#1e293b"))
                self.tbl.setItem(r, c, it)

        self.lblStatus.setText(f"Records: {len(rows)}")

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
        dlg = HKRoomOpStockDialog(self, user=self.user)
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


def open_hk_room_op_stock(parent=None, user: str = "SA"):
    """Open HK Room Operation Stock Entry."""
    HKRoomOpStockBrowser(parent, user=user).exec()


def main() -> int:
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    d = HKRoomOpStockBrowser()
    d.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())