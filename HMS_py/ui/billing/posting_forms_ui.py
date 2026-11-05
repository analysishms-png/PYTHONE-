"""PARTIAL bucket UI ports — Wave 6 (posting/settlement batch).

VB6 originals (../FODER/*.frm) -> windows here:
  fdPostChrg       -> PostChrgWindow          ('Post Charges For Room')
  fdPaymentCharge  -> PaymentChargeWindow     ('Post Charges & Payment' —
                                               REC receipt register view)
  FdReSetlement    -> ReSettlementWindow      ('Post Charges/Payment' —
                                               re-settle of checked-out folio)
  FdRevCheckOut    -> RevCheckOutWindow       ('Check Out Cancel')

Core ops (verified signatures):
  HMS_py.core.folio    — post_room_charge, receive_payment, list_payments,
                         settle_folio, delete_settle, folio_balance (float),
                         folio_charges
  HMS_py.core.checkout — list_checked_out, reverse_checkout

VB6 evidence (frm line refs):
  fdPostChrg.frm:1755DA9 — 'Posting Charges For Room : <RoomNo>' label;
    grid of in-house rooms, charge post (PayCharge AmtDr rows).
  fdPaymentCharge.frm:4467,4579,4721... — 7x 'Insert Into PayCharge
    (DocId,SNo,...AmtCr/AmtDr...)' 35-col patterns (payments/charges).
  FdReSetlement.frm:3718,3870 — PayCharge INSERT + SettleDate col;
    :3806 'Update Voucher_Prefix Set Start_Srl_No=...' (bill-no engine).
  FdRevCheckOut.frm:1419-1496 — RoomOcc.ChkOutDate clear; :1424 RoomMast
    ROOMSTAT='D'; :1490 'Update PayCharge Set SettleDate=Null';
    :1496 ModeSet=''+Bill_No reset; checkout.reverse_checkout ports all.
"""
from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtWidgets import (QApplication, QComboBox, QHBoxLayout, QLabel,
                             QLineEdit, QMainWindow, QMessageBox,
                             QPushButton, QTableWidget, QTableWidgetItem,
                             QVBoxLayout, QWidget)

from HMS_py.core import checkout, folio, roomstatus
from HMS_py.ui.desktop_style import make_vb6_header
from HMS_py.ui.theme import palette


def _cell(val, editable: bool = False) -> QTableWidgetItem:
    if val is None:
        val = ""
    it = QTableWidgetItem(str(val))
    it.setFlags(it.flags() | (Qt.ItemFlag.ItemIsEditable if editable
                              else Qt.ItemFlag.ItemIsSelectable))
    return it


def _fill_grid(grid: QTableWidget, headers: list[str], rows: list[list]):
    grid.clear()
    grid.setColumnCount(len(headers))
    grid.setHorizontalHeaderLabels(headers)
    grid.setRowCount(0)
    for r in rows:
        row = grid.rowCount()
        grid.insertRow(row)
        for c, v in enumerate(r):
            grid.setItem(row, c, _cell(v))
    grid.resizeColumnsToContents()


def _title(text: str) -> QLabel:
    """VB6-hybrid chrome: blue gradient header + cream title strip."""
    return make_vb6_header(text)


def _msgbox_err(w, e: Exception):
    QMessageBox.critical(w, "Error", f"{type(e).__name__}: {e}")


def _d(v):
    if isinstance(v, datetime.datetime):
        return v.date()
    return v


class _StatusBar:
    def _say(self, msg: str):
        self.statusBar().showMessage(msg, 8000)


# ────────────────────────────────────────────────────────────────
# 1. Post Charges For Room (fdPostChrg -> folio.post_room_charge)
# ────────────────────────────────────────────────────────────────
class PostChrgWindow(QMainWindow, _StatusBar):
    def __init__(self, parent=None, user: str = "PYADMIN"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Post Charges For Room")
        self.resize(980, 540)
        self._build()
        self._fill()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Post Charges For Room"))
        top = QHBoxLayout()
        top.addWidget(QLabel("Room (in-house)"))
        self.cmb_room = QComboBox()
        top.addWidget(self.cmb_room, 1)
        top.addWidget(QLabel("Amount"))
        self.txt_amt = QLineEdit()
        self.txt_amt.setPlaceholderText("0.00")
        top.addWidget(self.txt_amt)
        top.addWidget(QLabel("Code"))
        self.cmb_code = QComboBox()
        self.cmb_code.addItems(["KKRMCH", "KKREST", "KKOTHR"])
        top.addWidget(self.cmb_code)
        b = QPushButton("Post Charge")
        b.clicked.connect(self._post)
        top.addWidget(b)
        b2 = QPushButton("Refresh")
        b2.clicked.connect(self._fill)
        top.addWidget(b2)
        lay.addLayout(top)
        self.grid = QTableWidget()
        self.grid.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        lay.addWidget(self.grid)
        self.lbl_bal = QLabel("")
        lay.addWidget(self.lbl_bal)

    def _fill(self):
        try:
            rows = checkout.list_active_folios()
            self.cmb_room.clear()
            for r in rows:
                self.cmb_room.addItem(
                    f"{r['roomno']}  #{r['folio']}  {r['name']}", r["folio"])
            self.grid.clear()
            self.grid.setColumnCount(3)
            self.grid.setHorizontalHeaderLabels(
                ["Folio", "Guest", "Room"])
            self.grid.setRowCount(0)
            for rec in rows:
                row = self.grid.rowCount()
                self.grid.insertRow(row)
                self.grid.setItem(row, 0, _cell(rec["folio"]))
                self.grid.setItem(row, 1, _cell(rec["name"]))
                self.grid.setItem(row, 2, _cell(rec["roomno"]))
            self.grid.resizeColumnsToContents()
            self._say(f"{len(rows)} in-house folio(s)")
        except Exception as e:
            _msgbox_err(self, e)

    def _post(self):
        fno = self.cmb_room.currentData()
        if not fno:
            QMessageBox.warning(self, "Post", "Koi in-house folio nahi.")
            return
        try:
            amt = float(self.txt_amt.text().strip())
            assert amt > 0, "Amount > 0 hona chahiye"
        except Exception as e:
            QMessageBox.warning(self, "Amount", f"Invalid amount: {e}")
            return
        code = self.cmb_code.currentText()
        if QMessageBox.question(
                self, "Post Charge",
                f"Folio #{fno} pe {code} {amt:.2f} post karna hai?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            n = folio.post_room_charge(int(fno), amt,
                                       paycode=code, user=self.user)
            self._say(f"{n} PayCharge row(s) posted ({code} {amt:.2f})")
            self._show_bal(int(fno))
        except Exception as e:
            _msgbox_err(self, e)

    def _show_bal(self, fno: int):
        try:
            bal = float(folio.folio_balance(fno))
            self.lbl_bal.setText(f"Folio #{fno} balance: {bal:.2f}")
        except Exception:
            self.lbl_bal.setText("")


# ────────────────────────────────────────────────────────────────
# 2. Payments register (fdPaymentCharge REC view -> folio.list_payments)
# ────────────────────────────────────────────────────────────────
class PaymentChargeWindow(QMainWindow, _StatusBar):
    def __init__(self, parent=None, user: str = "PYADMIN"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Post Charges & Payment — Receipts")
        self.resize(1000, 560)
        self._build()
        self._fill()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Post Charges & Payment — Receipts"))
        top = QHBoxLayout()
        top.addWidget(QLabel("Folio"))
        self.txt_folio = QLineEdit()
        self.txt_folio.setPlaceholderText("folio no (blank = list only)")
        top.addWidget(self.txt_folio)
        top.addWidget(QLabel("Amount"))
        self.txt_amt = QLineEdit()
        top.addWidget(self.txt_amt)
        top.addWidget(QLabel("Mode"))
        self.cmb_mode = QComboBox()
        self.cmb_mode.addItems(["KKCASH", "KKCARD", "KKUPI"])
        top.addWidget(self.cmb_mode)
        for cap, fn in (("Receive", self._receive), ("Refresh", self._fill),
                        ("Exit", self.close)):
            b = QPushButton(cap)
            b.clicked.connect(fn)
            top.addWidget(b)
        lay.addLayout(top)
        self.grid = QTableWidget()
        self.grid.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        lay.addWidget(self.grid)

    def _fill(self):
        try:
            rows = folio.list_payments(top=200)
            _fill_grid(self.grid,
                       ["DocId", "VNo", "Date", "Guest", "Comments",
                        "Code", "Type", "Amount", "Folio"],
                       [[r["docid"], r["vno"], _d(r["vdate"]),
                         r["guestprof"], r["comments"], r["paycode"],
                         r["paytype"], f"{r['amt']:.2f}", r["folio"]]
                        for r in rows])
            self._say(f"{len(rows)} receipt(s)")
        except Exception as e:
            _msgbox_err(self, e)

    def _receive(self):
        try:
            fno = int(self.txt_folio.text().strip())
            amt = float(self.txt_amt.text().strip())
        except ValueError:
            QMessageBox.warning(self, "Receive",
                                "Folio no aur amount numeric hone chahiye.")
            return
        if QMessageBox.question(
                self, "Receive Payment",
                f"Folio #{fno} pe {self.cmb_mode.currentText()} "
                f"{amt:.2f} receive karna hai?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            n = folio.receive_payment(fno, amt, paycode=self.cmb_mode.currentText(),
                                      user=self.user)
            self._say(f"Payment posted ({n} row(s))")
            self._fill()
        except Exception as e:
            _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# 3. Re-Settlement (FdReSetlement — settle of checked-out folio)
# ────────────────────────────────────────────────────────────────
class ReSettlementWindow(QMainWindow, _StatusBar):
    def __init__(self, parent=None, user: str = "PYADMIN"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Post Charges/Payment (Re-Settlement)")
        self.resize(1000, 560)
        self._build()
        self._fill()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Re-Settlement (checked-out folios)"))
        top = QHBoxLayout()
        for cap, fn in (("Refresh", self._fill),
                        ("Re-Settle Selected", self._resettle),
                        ("Cancel Settle-Row", self._cancel_settle),
                        ("Exit", self.close)):
            b = QPushButton(cap)
            b.clicked.connect(fn)
            top.addWidget(b)
        top.addStretch(1)
        lay.addLayout(top)
        self.grid = QTableWidget()
        self.grid.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        lay.addWidget(self.grid)
        self.lbl_bal = QLabel("")
        lay.addWidget(self.lbl_bal)

    def _fill(self):
        try:
            rows = checkout.list_checked_out(top=200)
            _fill_grid(self.grid,
                       ["Folio", "Guest", "Departure", "ChkOutDate",
                        "ChkOutUser"],
                       [[r["folio"], r["name"], _d(r["depdate"]),
                         _d(r["checkout_date"]), r["checkout_user"]]
                        for r in rows])
            self._say(f"{len(rows)} checked-out folio(s)")
        except Exception as e:
            _msgbox_err(self, e)

    def _sel_folio(self) -> int | None:
        r = self.grid.currentRow()
        if r < 0:
            QMessageBox.warning(self, "Select", "Pehle row select karo.")
            return None
        return int(self.grid.item(r, 0).text())

    def _resettle(self):
        fno = self._sel_folio()
        if fno is None:
            return
        try:
            bal = float(folio.folio_balance(fno))
        except Exception as e:
            _msgbox_err(self, e)
            return
        if QMessageBox.question(
                self, "Re-Settle",
                f"Folio #{fno} (balance {bal:.2f}) re-settle karna hai?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            bill = folio.settle_folio(fno, user=self.user)
            self._say(f"Folio #{fno} settled -> bill_no={bill}")
            self.lbl_bal.setText(f"Bill No: {bill}")
        except Exception as e:
            _msgbox_err(self, e)

    def _cancel_settle(self):
        fno = self._sel_folio()
        if fno is None:
            return
        if QMessageBox.question(
                self, "Cancel Settle-Row",
                f"Folio #{fno} ka settle-row cancel karna hai?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            n = folio.delete_settle(fno, user=self.user)
            self._say(f"Folio #{fno} settle-row cancelled ({n} row(s))")
            self.lbl_bal.setText("")
        except Exception as e:
            _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# 4. Check Out Cancel (FdRevCheckOut -> checkout.reverse_checkout)
# ────────────────────────────────────────────────────────────────
class RevCheckOutWindow(QMainWindow, _StatusBar):
    def __init__(self, parent=None, user: str = "PYADMIN"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Check Out Cancel")
        self.resize(1000, 560)
        self._build()
        self._fill()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Check Out Cancel"))
        top = QHBoxLayout()
        for cap, fn in (("Refresh", self._fill),
                        ("Cancel Check-Out", self._reverse),
                        ("Exit", self.close)):
            b = QPushButton(cap)
            b.clicked.connect(fn)
            top.addWidget(b)
        top.addStretch(1)
        lay.addLayout(top)
        self.grid = QTableWidget()
        self.grid.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        lay.addWidget(self.grid)
        self.lbl_note = QLabel(
            "VB6 rule: reverse pe RoomStat='D' (Dirty) ho jata hai aur "
            "PayCharge settle-marks reverse hote hain.")
        self.lbl_note.setStyleSheet("color:#666;")
        lay.addWidget(self.lbl_note)

    def _fill(self):
        try:
            rows = checkout.list_checked_out(top=200)
            _fill_grid(self.grid,
                       ["Folio", "Guest", "Departure", "ChkOutDate",
                        "ChkOutUser"],
                       [[r["folio"], r["name"], _d(r["depdate"]),
                         _d(r["checkout_date"]), r["checkout_user"]]
                        for r in rows])
            self._say(f"{len(rows)} checked-out folio(s)")
        except Exception as e:
            _msgbox_err(self, e)

    def _reverse(self):
        r = self.grid.currentRow()
        if r < 0:
            QMessageBox.warning(self, "Select", "Pehle row select karo.")
            return
        fno = int(self.grid.item(r, 0).text())
        name = self.grid.item(r, 1).text()
        if QMessageBox.question(
                self, "Check Out Cancel",
                f"Folio #{fno} ({name}) ka check-out cancel karna hai?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            checkout.reverse_checkout(fno, user=self.user)
            self._say(f"Folio #{fno} re-opened (settle-marks reversed)")
            self._fill()
        except Exception as e:
            _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# Openers (shell registry pattern)
# ────────────────────────────────────────────────────────────────
def open_post_chrg(parent=None, user: str = "PYADMIN"):
    return PostChrgWindow(parent, user=user)


def open_payment_charge(parent=None, user: str = "PYADMIN"):
    return PaymentChargeWindow(parent, user=user)


def open_re_settlement(parent=None, user: str = "PYADMIN"):
    return ReSettlementWindow(parent, user=user)


def open_rev_checkout(parent=None, user: str = "PYADMIN"):
    return RevCheckOutWindow(parent, user=user)


if __name__ == "__main__":
    app = QApplication(sys.argv)
    app.setPalette(palette())
    for fn in (open_post_chrg, open_payment_charge, open_re_settlement,
               open_rev_checkout):
        w = fn()
        w.show()
        app.processEvents()
        w.close()
    print("posting_forms_ui smoke OK")
