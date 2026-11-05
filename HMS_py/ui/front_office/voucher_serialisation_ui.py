"""Voucher Serialisation UI - VB6 FrmSerialiseVr.frm pattern.

Allows serialising voucher numbers for a given Voucher Type, renumbering
V_No sequentially by V_Date order. Archives existing entries to LedgerMerge,
then re-inserts with new serial numbers.
"""

from __future__ import annotations

import sys, os
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

from PyQt6.QtWidgets import (QMainWindow, QWidget, QVBoxLayout, QHBoxLayout,
    QTableWidget, QTableWidgetItem, QPushButton, QLineEdit, QLabel,
    QHeaderView, QMessageBox, QAbstractItemView, QComboBox)
from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor, QFont

from HMS_py.core import db
from HMS_py.core.front_office import folio
from HMS_py.ui.main_window.theme import palette
from HMS_py.ui.main_window.desktop_style import apply_desktop_surface, mark_desktop_action


class VoucherSerialisationWindow(QMainWindow):
    """VB6 FrmSerialiseVr.frm pattern.

    Serialises voucher numbers for a selected Voucher Type.
    Reads from existing tables - no new tables created.
    """

    def __init__(self, parent=None, user: str = "PYADMIN"):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopVoucherSerialisation")
        self.setWindowTitle("Voucher Serialisation")
        self.resize(900, 550)
        self.user = user
        self._build_ui()
        self._load_vtypes()
        self._load_vtypes()
        self._load_voucher_data()

    def _build_ui(self):
        central = QWidget(); self.setCentralWidget(central)
        layout = QVBoxLayout(central)

        title = QLabel("Voucher Serialisation")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        # Top controls: Voucher Type selection
        top_lay = QHBoxLayout()
        top_lay.addWidget(QLabel("Voucher Type:"))
        self.cmb_vtype = QComboBox()
        self.cmb_vtype.setEditable(True)
        top_lay.addWidget(self.cmb_vtype, 1)
        btn_load = QPushButton("Load Vouchers")
        mark_desktop_action(btn_load)
        btn_load.clicked.connect(self._load_voucher_data)
        top_lay.addWidget(btn_load)
        layout.addLayout(top_lay)

        # Voucher grid
        self.table = QTableWidget()
        self.table.setColumnCount(4)
        self.table.setHorizontalHeaderLabels(
            ["DocId", "V_No", "V_Date", "Narration"])
        self.table.setAlternatingRowColors(True)
        self.table.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
        self.table.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.Stretch)
        layout.addWidget(self.table)

        self.lbl_status = QLabel("")
        layout.addWidget(self.lbl_status)

        # Buttons
        btn_lay = QHBoxLayout()
        btn_serialise = QPushButton("Serialise Vouchers")
        mark_desktop_action(btn_serialise)
        btn_serialise.clicked.connect(self._serialise)
        btn_lay.addWidget(btn_serialise)
        btn_exit = QPushButton("Exit")
        mark_desktop_action(btn_exit)
        btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(btn_exit)
        btn_lay.addStretch()
        layout.addLayout(btn_lay)

    def _load_vtypes(self):
        """Load Voucher Types with Category='FA' from Voucher_Type."""
        try:
            rows = db.query(
                "SELECT V_Type FROM Voucher_Type "
                "WHERE Category = 'FA' AND Site_Code = ? "
                "ORDER BY V_Type",
                (folio.SITE_CODE,)
            )
            self.cmb_vtype.clear()
            self.cmb_vtype.addItems([r.V_Type for r in rows])
            if rows:
                self.cmb_vtype.setCurrentText(rows[0].V_Type)
        except Exception as e:
            QMessageBox.critical(self, "Load Voucher Types", str(e))

    def _load_voucher_data(self):
        vtype = self.cmb_vtype.currentText().strip()
        if not vtype:
            return
        try:
            rows = db.query(
                "SELECT DocId, V_No, V_Date, Narration FROM LedgerM "
                "WHERE V_Type = ? AND V_Prefix = ? AND Site_Code = ? "
                "ORDER BY V_Date, DocId, V_No",
                (vtype, self._get_vprefix(vtype), folio.SITE_CODE),
            )
            self.table.setRowCount(len(rows))
            for i, r in enumerate(rows):
                vals = [r.DocId or "", str(r.V_No or ""),
                        str(r.V_Date)[:10] if r.V_Date else "",
                        r.Narration or ""]
                for j, v in enumerate(vals):
                    it = QTableWidgetItem(str(v))
                    it.setForeground(QColor(palette()["text"]))
                    self.table.setItem(i, j, it)
            self.lbl_status.setText(f"{len(rows)} voucher(s) loaded")
        except Exception as e:
            QMessageBox.critical(self, "Load Vouchers", str(e))

    def _get_vprefix(self, vtype: str) -> str:
        """Get the Voucher_Prefix for this vtype/site."""
        try:
            rows = db.query(
                "SELECT TOP 1 Prefix FROM Voucher_Prefix "
                "WHERE V_Type = ? AND Site_Code = ? "
                "ORDER BY Date_From DESC",
                (vtype, folio.SITE_CODE),
            )
            return rows[0].Prefix if rows else "2026"
        except Exception:
            return "2026"

    def _serialise(self):
        vtype = self.cmb_vtype.currentText().strip()
        vprefix = self._get_vprefix(vtype)
        if not vtype:
            QMessageBox.warning(self, "Serialise",
                                "Please select a Voucher Type.")
            return
        reply = QMessageBox.question(
            self, "Serialise Vouchers",
            f"Serialise vouchers for type '{vtype}' (prefix '{vprefix}')?\n"
            f"This will renumber all vouchers sequentially by date.",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No)
        if reply != QMessageBox.StandardButton.Yes:
            return
        try:
            result = voucher_serialisation.serialise_voucher(
                vtype, vprefix, site=folio.SITE_CODE, user=self.user
            )
            QMessageBox.information(
                self, "Serialise Vouchers",
                f"Serialisation complete:\n"
                f"  Vouchers processed: {result['vnos_count']}\n"
                f"  VNos assigned: {result['vnos_assigned'][0]} to "
                f"{result['vnos_assigned'][-1] if result['vnos_assigned'] else 0}"
            )
            self._load_vtypes()
            self._load_voucher_data()
        except Exception as e:
            QMessageBox.critical(self, "Serialise Vouchers", str(e))


def open_voucher_serialisation(parent=None, user: str = "PYADMIN"):
    """Open Voucher Serialisation window."""
    return VoucherSerialisationWindow(parent, user=user)
