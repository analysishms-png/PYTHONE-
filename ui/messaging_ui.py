"""Messaging UI ports (VB6 -> PyQt6).

VB6 originals:
  EmptyInbox.frm  -> DeleteMessageWindow   (Finance > "Delete Message",
                     VB6 form caption "InBox" menu se override hota hai)
  Inbox.frm       -> (separate, mnuMSG InBox - see action queue)
  Outbox.frm      -> (separate, mnuMSG OutBox - see action queue)

Core: HMS_py.core.messaging_ops (Messaging table list/delete, USERMAST).
Grid+form pattern: partial_forms_ui.py conventions.
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor, QFont
from PyQt6.QtWidgets import (QApplication, QComboBox, QFormLayout,
                             QGroupBox, QHBoxLayout, QHeaderView, QLabel,
                             QMainWindow, QMessageBox, QPushButton,
                             QTableWidget, QTableWidgetItem, QVBoxLayout,
                             QWidget)

from HMS_py.core import messaging_ops as mops
from HMS_py.ui.theme import palette


def _cell(val, editable: bool = False) -> QTableWidgetItem:
    it = QTableWidgetItem("" if val is None else str(val))
    if not editable:
        it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    it.setForeground(QColor(palette()["text"]))
    return it


def _title(text: str) -> QLabel:
    lab = QLabel(text)
    lab.setFont(QFont("Segoe UI", 13, QFont.Weight.Bold))
    lab.setAlignment(Qt.AlignmentFlag.AlignCenter)
    lab.setStyleSheet("color:#000080; background:#d4d0c8; padding:4px;")
    return lab


class DeleteMessageWindow(QMainWindow):
    """VB6 EmptyInbox - list cleared messages, tick rows, delete them."""

    HEADERS = ["Sel", "Type", "VNo", "Date/Time", "Sender", "Receiver",
               "Read", "Cleared", "Subject", "Message"]

    def __init__(self, parent=None, user: str | None = None):
        super().__init__(parent)
        self.user = user or mops.USER
        self._rows: list[dict] = []
        self.setWindowTitle("Delete Message")
        self.resize(1000, 560)
        self._build()
        self._load_users()
        self._show()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Delete Message"))
        filt = QGroupBox("Filter")
        fl = QFormLayout(filt)
        self.cmb_sender = QComboBox(editable=True)
        self.cmb_receiver = QComboBox(editable=True)
        self.cmb_cleared = QComboBox()
        for v in ("Y", "N", ""):
            self.cmb_cleared.addItem(v if v else "(All)", v)
        fl.addRow("Sender:", self.cmb_sender)
        fl.addRow("Receiver:", self.cmb_receiver)
        fl.addRow("Cleared:", self.cmb_cleared)
        lay.addWidget(filt)
        btns = QHBoxLayout()
        for cap, fn in (("Show", self._show),
                        ("Delete", self._delete),
                        ("Close", self.close)):
            b = QPushButton(cap)
            b.clicked.connect(fn)
            btns.addWidget(b)
        lay.addLayout(btns)
        self.grid = QTableWidget()
        self.grid.cellClicked.connect(self._toggle_sel)
        lay.addWidget(self.grid)

    def _load_users(self):
        try:
            users = mops.messaging_users(exclude=self.user)
        except Exception:
            users = []
        for cmb in (self.cmb_sender, self.cmb_receiver):
            cur = cmb.currentText()
            cmb.clear()
            cmb.addItem("")
            for u in users:
                cmb.addItem(u)
            cmb.setEditText(cur)

    def _show(self):
        try:
            sender = self.cmb_sender.currentText().strip() or None
            receiver = self.cmb_receiver.currentText().strip() or None
            cleared = self.cmb_cleared.currentData()
            self._rows = mops.messaging_list(
                sender=sender, receiver=receiver,
                cleared=cleared if cleared else None)
            self._fill()
            self.statusBar().showMessage(f"{len(self._rows)} message(s)")
        except Exception as e:
            self.statusBar().showMessage(f"Load error: {e}")

    def _fill(self):
        data = [[
            "", r["vtype"], r["vno"], r["vdate"], r["sender"],
            r["receiver"], r["read_yn"], r["cleared"], r["subject"],
            r["message"][:120],
        ] for r in self._rows]
        self.grid.setColumnCount(len(self.HEADERS))
        self.grid.setHorizontalHeaderLabels(self.HEADERS)
        self.grid.setRowCount(len(data))
        for i, row in enumerate(data):
            for j, v in enumerate(row):
                self.grid.setItem(i, j, _cell(v, editable=(j == 0)))
        self.grid.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.ResizeToContents)

    def _toggle_sel(self, row: int, col: int):
        if col != 0:
            return
        it = self.grid.item(row, 0)
        if it is None:
            return
        it.setText("" if it.text() else "X")

    def _delete(self):
        picked = []
        for i in range(self.grid.rowCount()):
            sel = self.grid.item(i, 0)
            if sel is None or sel.text() != "X":
                continue
            r = self._rows[i]
            picked.append((r["vtype"], r["vno"]))
        if not picked:
            QMessageBox.information(self, "Delete Message",
                                    "Koi message tick nahi hua.")
            return
        if QMessageBox.question(
                self, "Inbox Deleted...",
                "Are you sure to delete selected mails.",
                QMessageBox.StandardButton.Yes |
                QMessageBox.StandardButton.No
        ) != QMessageBox.StandardButton.Yes:
            return
        try:
            n = mops.messaging_delete(picked)
            QMessageBox.information(
                self, "Inbox Deleted...",
                "Inbox Message Deleted Successfully.")
            self._show()
            self.statusBar().showMessage(f"{n} message(s) deleted")
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))


def open_delete_message(parent=None, user: str | None = None):
    w = DeleteMessageWindow(parent, user=user)
    w.show()
    return w


if __name__ == "__main__":
    app = QApplication(sys.argv)
    w = DeleteMessageWindow()
    w.show()
    sys.exit(app.exec())
