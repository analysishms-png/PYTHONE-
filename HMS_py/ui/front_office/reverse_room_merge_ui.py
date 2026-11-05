"""Reverse Room Merge UI - VB6 FrmRevMergeCharge.frm pattern.

Reverses a room merge: moves PayCharge rows back to original folios,
clears GuestFolio merge links. Reads from existing tables only.
"""

from __future__ import annotations

import sys, os
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

from PyQt6.QtWidgets import (QMainWindow, QWidget, QVBoxLayout, QHBoxLayout,
    QTableWidget, QTableWidgetItem, QPushButton, QLineEdit, QLabel,
    QHeaderView, QMessageBox, QAbstractItemView, QTextEdit)
from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor, QFont

from HMS_py.core import db
from HMS_py.core.front_office import fo_ops, room_occ
from HMS_py.ui.theme import palette
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


class ReverseRoomMergeWindow(QMainWindow):
    """Reverse Room Merge (VB6 FrmRevMergeCharge.frm).

    Displays in-house rooms for merge selection. Reverses a merged folio
    back to its original rooms, clearing PayCharge links and GuestFolio
    merge references.
    """

    def __init__(self, parent=None, user: str = "PYADMIN"):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopReverseRoomMerge")
        self.setWindowTitle("Reverse Room Merge")
        self.resize(1000, 600)
        self.user = user
        self._build_ui()
        self._load_rooms()

    def _build_ui(self):
        central = QWidget(); self.setCentralWidget(central)
        layout = QVBoxLayout(central)

        title = QLabel("Reverse Room Merge")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        # Room selection grid
        self.table = QTableWidget()
        self.table.setColumnCount(5)
        self.table.setHorizontalHeaderLabels(
            ["Room No", "Guest Name", "Folio No", "Check In", "Status"])
        self.table.setAlternatingRowColors(True)
        self.table.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
        self.table.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.Stretch)
        self.table.setSelectionBehavior(
            QAbstractItemView.SelectionBehavior.SelectRows)
        self.table.itemSelectionChanged.connect(self._on_select)
        layout.addWidget(self.table)

        # Details
        self.details = QTextEdit()
        self.details.setReadOnly(True)
        self.details.setMaximumHeight(150)
        self.details.setPlaceholderText("Select a merged room to reverse...")
        layout.addWidget(QLabel("Merge Details:"))
        layout.addWidget(self.details)

        # Buttons
        btn_lay = QHBoxLayout()
        btn_reverse = QPushButton("Reverse Merge")
        mark_desktop_action(btn_reverse)
        btn_reverse.clicked.connect(self._reverse)
        btn_lay.addWidget(btn_reverse)
        btn_exit = QPushButton("Exit")
        mark_desktop_action(btn_exit)
        btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(btn_exit)
        btn_lay.addStretch()
        layout.addLayout(btn_lay)

    def _load_rooms(self):
        try:
            self._rooms = room_occ.list_merged_rooms()
        except Exception:
            self._rooms = []
        self._populate(self._rooms)

    def _populate(self, rooms):
        self.table.setRowCount(len(rooms))
        for i, r in enumerate(rooms):
            vals = [
                r["room_no"],
                r["guest_name"],
                str(r["folio_no"]),
                str(r["vdate"])[:10] if r["vdate"] else "",
                r["status"] or "In-House",
            ]
            for j, v in enumerate(vals):
                it = QTableWidgetItem(str(v or ""))
                it.setForeground(QColor(palette()["text"]))
                self.table.setItem(i, j, it)

    def _on_select(self):
        row = self.table.currentRow()
        if row < 0:
            return
        room = self._rooms[row]
        lines = [
            f"Leader Room:    {room['room_no']}",
            f"Guest Name:     {room['guest_name']}",
            f"Folio No:       {room['folio_no']}",
            f"Doc ID:         {room['docid']}",
            f"Check In:       {room['vdate']}",
            f"Merged Folios:  {room.get('merged_count', 0)}",
        ]
        self.details.setPlainText("\n".join(lines))

    def _reverse(self):
        row = self.table.currentRow()
        if row < 0:
            QMessageBox.information(
                self, "Reverse Room Merge",
                "Please select a merged room to reverse.")
            return
        room = self._rooms[row]
        reply = QMessageBox.question(
            self, "Reverse Room Merge",
            f"Reverse room merge for room {room['room_no']} "
            f"({room['guest_name']})?\n"
            f"This will move all merged charges back to their original folios.",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No)
        if reply != QMessageBox.StandardButton.Yes:
            return
        try:
            result = fo_ops.reverse_room_merge(
                room["room_no"], user=self.user, site=folio.SITE_CODE,
                cn=None, commit=True)
            QMessageBox.information(
                self, "Reverse Room Merge",
                f"Reverse merge complete:\n"
                f"  Rooms unmerged: {result['rooms_unmerged']}\n"
                f"  Charge rows reversed: {result['rows_reversed']}")
            self._load_rooms()
            self.details.clear()
        except Exception as e:
            QMessageBox.critical(self, "Reverse Room Merge", str(e))


def open_reverse_room_merge(parent=None, user: str = "PYADMIN"):
    """Open Reverse Room Merge window."""
    return ReverseRoomMergeWindow(parent, user=user)
