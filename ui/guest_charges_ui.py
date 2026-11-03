"""Guest Charges Summary UI — VB6 fdPrintScreen (ACTION QUEUE port).

VB6 layout parity:
  LEFT: folio browser grid (search by guest/folio/guestprof code)
  RIGHT: charges detail grid (per-paycode RevName/Dr/Cr + totals)
  Bottom: read-only note + hint label.

Core: HMS_py.core.folio.charges_summary_folios / charges_summary_detail.
Read-only — koi INSERT/UPDATE nahi (VB6 bhi report-style window tha).
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtWidgets import (QHBoxLayout, QLabel, QLineEdit, QMainWindow,
                             QMessageBox, QPushButton, QSplitter,
                             QTableWidget, QTableWidgetItem, QVBoxLayout,
                             QWidget)

from HMS_py.core import folio


def _cell(v) -> QTableWidgetItem:
    it = QTableWidgetItem("" if v is None else str(v))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    return it


class GuestChargesWindow(QMainWindow):
    """VB6 fdPrintScreen 'Guest Charges Summary' ka port."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Guest Charges Summary")
        self.resize(1000, 560)
        self._rows: list[dict] = []
        self._build()
        self._load()

    def _build(self):
        c = QWidget()
        self.setCentralWidget(c)
        root = QVBoxLayout(c)

        top = QHBoxLayout()
        top.addWidget(QLabel("Search (guest/folio/code):"))
        self.ed_q = QLineEdit()
        self.ed_q.setPlaceholderText("type to filter, Enter = search")
        self.ed_q.returnPressed.connect(self._load)
        top.addWidget(self.ed_q, 1)
        b = QPushButton("Search")
        b.clicked.connect(self._load)
        top.addWidget(b)
        root.addLayout(top)

        split = QSplitter()
        # LEFT: folio browser
        self.tbl_folios = QTableWidget(0, 6)
        self.tbl_folios.setHorizontalHeaderLabels(
            ["Folio", "Guest", "Company", "Arrival", "Departure", "Status"])
        self.tbl_folios.horizontalHeader().setStretchLastSection(True)
        self.tbl_folios.setAlternatingRowColors(True)
        self.tbl_folios.itemSelectionChanged.connect(self._on_folio)
        split.addWidget(self.tbl_folios)
        # RIGHT: charges detail
        self.tbl_charges = QTableWidget(0, 4)
        self.tbl_charges.setHorizontalHeaderLabels(
            ["RevName", "PayCode", "Dr", "Cr"])
        self.tbl_charges.horizontalHeader().setStretchLastSection(True)
        self.tbl_charges.setAlternatingRowColors(True)
        split.addWidget(self.tbl_charges)
        split.setSizes([420, 560])
        root.addWidget(split, 1)

        self.lbl = QLabel("Ready (read-only) — folio chuno, charges right me")
        self.lbl.setStyleSheet(
            "background:#ffffc0; color:#000; border:1px solid #808080; "
            "font-weight:bold; padding:3px;")
        root.addWidget(self.lbl)

    def _load(self):
        try:
            self._rows = folio.charges_summary_folios(self.ed_q.text())
        except Exception as e:
            QMessageBox.critical(self, "Guest Charges", str(e)[:300])
            return
        t = self.tbl_folios
        t.setRowCount(0)
        for r in self._rows:
            row = t.rowCount()
            t.insertRow(row)
            status = "OUT" if r["out"] else "IN-HOUSE"
            for col, v in enumerate((r["folio"], r["guest"], r["company"],
                                     r["arr"], r["dep"], status)):
                if hasattr(v, "strftime"):
                    v = v.strftime("%d/%m/%y")
                t.setItem(row, col, _cell(v))
        self.lbl.setText(f"{len(self._rows)} folios (read-only)")

    def _on_folio(self):
        r = self.tbl_folios.currentRow()
        if r < 0 or r >= len(self._rows):
            return
        folio_no = self._rows[r]["folio"]
        try:
            d = folio.charges_summary_detail(folio_no)
        except Exception as e:
            QMessageBox.critical(self, "Guest Charges", str(e)[:300])
            return
        t = self.tbl_charges
        t.setRowCount(0)
        for x in d["rows"]:
            row = t.rowCount()
            t.insertRow(row)
            t.setItem(row, 0, _cell(x["revname"]))
            t.setItem(row, 1, _cell(x["paycode"]))
            t.setItem(row, 2, _cell(f"{x['dr']:,.2f}"))
            t.setItem(row, 3, _cell(f"{x['cr']:,.2f}"))
        row = t.rowCount()
        t.insertRow(row)
        t.setItem(row, 0, _cell("TOTAL"))
        t.setItem(row, 2, _cell(f"{d['dr']:,.2f}"))
        t.setItem(row, 3, _cell(f"{d['cr']:,.2f}"))
        self.lbl.setText(
            f"Folio {d['folio']} — {d['guest']}: "
            f"Dr {d['dr']:,.2f} | Cr {d['cr']:,.2f} | Net {d['net']:,.2f}")


def open_guest_charges(parent=None):
    w = GuestChargesWindow(parent)
    w.show()
    return w


if __name__ == "__main__":
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    w = GuestChargesWindow()
    w.show()
    app.exec()
