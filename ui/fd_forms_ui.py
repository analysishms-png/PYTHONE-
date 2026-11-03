"""PARTIAL bucket UI ports — Wave 5 (Fd*/CheckOut batch), ACTION QUEUE next-10.

VB6 originals (../FODER/*.frm) -> windows here:
  fdAmendEntry      -> AmendStayWindow        ('Amend Stay')
  fdCheckIn         -> LookupReservationWindow ('Look Up Reservation By Guest Name')
  FdCheckOut        -> RoomCheckOutWindow      ('Room Check Out')
  fdDisplayFolio    -> GuestLedgerWindow       ('Guest Ledger')
  fdDisplayFolioSumm-> GuestLedgerSummWindow   ('Summerized Guest Ledger')
  FdGrpCheckOut     -> GroupCheckOutWindow     ('Room Check Out Entry' — group)
  FdGrpdetCheckOut  -> GroupDetailCheckOutWindow ('Room Check Out Entry' — group detail)
  FdLookUpRoom      -> LookupRoomWindow        ('Look Up Room')
  DepartSundry      -> DepartSundryWindow      ('Outlet Bill Sundry Setting')
  FacilitySundry    -> FacilitySundryWindow    ('Outlet Bill Sundry Setting')

Core ops (verified signatures):
  HMS_py.core.folio      — amend_departure, folio_charges, folio_balance,
                           settle_folio, receive_payment, log_list
  HMS_py.core.checkout   — list_active_folios, do_checkout, reverse_checkout,
                           folio_balance, check_clearance, clearance_list
  HMS_py.core.checkin    — group_checkout, get
  HMS_py.core.roomstatus — room_rack, list_blocks
  HMS_py.core.guest_folio— list_all, get, search

VB6 evidence (frm line refs):
  fdAmendEntry.frm:1079-1127 — GuestFolioAmend INSERT + GuestFolio/RoomOcc/
    PlanDetails DepDate update (folio.amend_departure port complete).
  fdCheckIn.frm:235 — GrpBookingDetails anti-join vs GuestFolio (booking-wise
    pending check-ins lookup).
  FdCheckOut.frm — active-folio grid + settle/checkout; balance via PayCharge
    Dr-Cr (checkout.folio_balance).
  fdDisplayFolio.frm:1728-1798 — RoomOcc+RoomCat+RevMast+GuestFolio join,
    PayCharge RC Bill_No, charges listing.
  FdLookUpRoom.frm:464-466 — 'Select * from roommast where Type='RO'' +
    'Select * from RoomOcc where ChkOutDate is Null' (room_rack port).
  DepartSundry.frm:1432 — 'Select Code,Name,Nature,SysYN From SundryMast ...
    Order By Name'; Depart/Sundry type linkage (read-only preview here).
  FacilitySundry.frm:946,964 — SundryMast + RevMast V_Type='FACL'.
"""
from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor
from PyQt6.QtWidgets import (QApplication, QCheckBox, QComboBox, QDateEdit,
                             QFormLayout, QGridLayout, QHBoxLayout,
                             QHeaderView, QLabel, QLineEdit, QMainWindow,
                             QMessageBox, QPushButton, QTableWidget,
                             QTableWidgetItem, QVBoxLayout, QWidget)

from HMS_py.core import checkin, checkout, folio, guest_folio, roomstatus
from HMS_py.core import sundry_type
from HMS_py.ui.theme import palette


# ────────────────────────────────────────────────────────────────
# Shared helpers (partial_forms_ui.py conventions)
# ────────────────────────────────────────────────────────────────
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
    lbl = QLabel(text)
    lbl.setStyleSheet("font-size:14pt; font-weight:bold; color:#1a3c6e;")
    return lbl


def _msgbox_err(w, e: Exception):
    QMessageBox.critical(w, "Error", f"{type(e).__name__}: {e}")


def _d(v):
    """datetime -> date part for display."""
    if isinstance(v, datetime.datetime):
        return v.date()
    return v


def _status_color(status: str) -> QColor:
    m = {"Occupied": QColor(210, 235, 210), "Dirty": QColor(250, 230, 200),
         "Maintenance": QColor(250, 210, 210),
         "Out of Order": QColor(240, 200, 200)}
    return m.get(status, QColor(255, 255, 255))


class _StatusBar:
    """Small mixin: error-safe statusbar message."""
    def _say(self, msg: str):
        self.statusBar().showMessage(msg, 8000)


# ────────────────────────────────────────────────────────────────
# 1. Amend Stay (fdAmendEntry -> folio.amend_departure)
# ────────────────────────────────────────────────────────────────
class AmendStayWindow(QMainWindow, _StatusBar):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Amend Stay")
        self.resize(760, 420)
        self._build()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Amend Stay"))
        form = QFormLayout()
        self.txt_folio = QLineEdit()
        self.btn_load = QPushButton("Load")
        self.btn_load.clicked.connect(self._load)
        fr = QHBoxLayout()
        fr.addWidget(self.txt_folio)
        fr.addWidget(self.btn_load)
        form.addRow("Folio No", fr)
        self.lbl_guest = QLabel("")
        form.addRow("Guest", self.lbl_guest)
        self.lbl_dep = QLabel("")
        form.addRow("Current Departure", self.lbl_dep)
        self.dt_new = QDateEdit()
        self.dt_new.setCalendarPopup(True)
        form.addRow("New Departure", self.dt_new)
        lay.addLayout(form)
        bar = QHBoxLayout()
        for cap, fn in (("Amend", self._amend), ("Exit", self.close)):
            b = QPushButton(cap)
            b.clicked.connect(fn)
            bar.addWidget(b)
        bar.addStretch(1)
        lay.addLayout(bar)
        self._rec = None

    def _load(self):
        try:
            fno = int(self.txt_folio.text().strip())
            rec = checkin.get(fno)
            if not rec:
                QMessageBox.information(self, "Load",
                                        f"Folio #{fno} nahi mila.")
                return
            self._rec = rec
            self.lbl_guest.setText(str(rec.get("name") or ""))
            dep = _d(rec.get("depdate"))
            self.lbl_dep.setText(str(dep or ""))
            if dep:
                from PyQt6.QtCore import QDate
                self.dt_new.setDate(QDate(dep.year, dep.month, dep.day))
            self._say(f"Loaded folio #{fno}")
        except Exception as e:
            _msgbox_err(self, e)

    def _amend(self):
        if not self._rec:
            QMessageBox.warning(self, "Amend", "Pehle folio load karo.")
            return
        qd = self.dt_new.date()
        new_dep = datetime.date(qd.year(), qd.month(), qd.day())
        try:
            folio.amend_departure(int(self.txt_folio.text().strip()), new_dep)
            QMessageBox.information(
                self, "Amend Stay",
                f"Departure amended: {self.lbl_dep.text()} -> {new_dep}")
            self._load()
        except Exception as e:
            _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# 2. Look Up Reservation By Guest Name (fdCheckIn)
# ────────────────────────────────────────────────────────────────
class LookupReservationWindow(QMainWindow, _StatusBar):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Look Up Reservation By Guest Name")
        self.resize(960, 520)
        self._build()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Look Up Reservation By Guest Name"))
        top = QHBoxLayout()
        self.txt_search = QLineEdit()
        self.txt_search.setPlaceholderText("Guest name / folio / GuestProf")
        self.txt_search.returnPressed.connect(self._search)
        b = QPushButton("Search")
        b.clicked.connect(self._search)
        top.addWidget(QLabel("Guest Name"))
        top.addWidget(self.txt_search, 1)
        top.addWidget(b)
        lay.addLayout(top)
        self.grid = QTableWidget()
        self.grid.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        lay.addWidget(self.grid)

    def _search(self):
        term = self.txt_search.text().strip()
        try:
            rows = (guest_folio.search(term)
                    if term else guest_folio.list_all(limit=100))
            _fill_grid(self.grid,
                       ["Folio", "Guest", "City", "Company", "Days",
                        "Departure", "BookingDocId"],
                       [[r["folio"], r["name"], r["city"], r["company"],
                         r["nodays"], _d(r["depdate"]), r["bookingdocid"]]
                        for r in rows])
            self._say(f"{len(rows)} record(s)")
        except Exception as e:
            _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# 3. Room Check Out (FdCheckOut -> checkout.do_checkout)
# ────────────────────────────────────────────────────────────────
class RoomCheckOutWindow(QMainWindow, _StatusBar):
    def __init__(self, parent=None, user: str = "PYADMIN"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Room Check Out")
        self.resize(1000, 560)
        self._build()
        self._fill()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Room Check Out"))
        top = QHBoxLayout()
        for cap, fn in (("Refresh", self._fill),
                        ("Check Out", self._checkout),
                        ("Reverse", self._reverse),
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
            rows = checkout.list_active_folios()
            _fill_grid(self.grid,
                       ["Folio", "Guest", "Room", "City", "Days",
                        "Departure"],
                       [[r["folio"], r["name"], r["roomno"], r["city"],
                         r["nodays"], _d(r["depdate"])] for r in rows])
            self.lbl_bal.setText("")
            self._say(f"{len(rows)} active folio(s)")
        except Exception as e:
            _msgbox_err(self, e)

    def _sel_folio(self) -> int | None:
        r = self.grid.currentRow()
        if r < 0:
            QMessageBox.warning(self, "Select", "Pehle folio row select karo.")
            return None
        return int(self.grid.item(r, 0).text())

    def _show_bal(self, fno: int):
        try:
            b = checkout.folio_balance(fno)
            self.lbl_bal.setText(
                f"Folio #{b['folio']} {b['name']}: Charges {b['charges_dr']:.2f}"
                f"  Payments {b['payments_cr']:.2f}  Balance {b['balance']:.2f}")
        except Exception:
            self.lbl_bal.setText("")

    def _checkout(self):
        fno = self._sel_folio()
        if fno is None:
            return
        if QMessageBox.question(
                self, "Check Out",
                f"Folio #{fno} check out karna hai?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            res = checkout.do_checkout(fno, user=self.user)
            self._say(f"Folio #{fno} checked out. Balance "
                      f"{res.get('balance', 0):.2f}" if isinstance(res, dict)
                      else f"Folio #{fno} checked out.")
            self._fill()
        except Exception as e:
            _msgbox_err(self, e)

    def _reverse(self):
        fno = self._sel_folio()
        if fno is None:
            return
        if QMessageBox.question(
                self, "Reverse Check Out",
                f"Folio #{fno} re-open karna hai?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            checkout.reverse_checkout(fno, user=self.user)
            self._say(f"Folio #{fno} re-opened.")
            self._fill()
        except Exception as e:
            _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# 4-5. Guest Ledger (+ summarized) — fdDisplayFolio / fdDisplayFolioSumm
# ────────────────────────────────────────────────────────────────
class _GuestLedgerBase(QMainWindow, _StatusBar):
    summarized = False

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Summerized Guest Ledger" if self.summarized
                            else "Guest Ledger")
        self.resize(1000, 560)
        self._build()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title(self.windowTitle()))
        top = QHBoxLayout()
        self.txt_folio = QLineEdit()
        self.txt_folio.setPlaceholderText("Folio No")
        self.btn_show = QPushButton("Show")
        self.btn_show.clicked.connect(self._show)
        top.addWidget(QLabel("Folio No"))
        top.addWidget(self.txt_folio)
        top.addWidget(self.btn_show)
        top.addStretch(1)
        lay.addLayout(top)
        self.grid = QTableWidget()
        lay.addWidget(self.grid)
        self.lbl_tot = QLabel("")
        lay.addWidget(self.lbl_tot)

    def _show(self):
        try:
            fno = int(self.txt_folio.text().strip())
            b = checkout.folio_balance(fno)
            if self.summarized:
                _fill_grid(self.grid,
                           ["Folio", "Guest", "Charges Dr", "Payments Cr",
                            "Balance"],
                           [[b["folio"], b["name"], f"{b['charges_dr']:.2f}",
                             f"{b['payments_cr']:.2f}", f"{b['balance']:.2f}"]])
                self.lbl_tot.setText(
                    f"Balance: {b['balance']:.2f} "
                    f"({'Dr' if b['balance'] > 0 else 'Cr' if b['balance'] < 0 else 'Nil'})")
            else:
                ch = folio.folio_charges(fno)
                _fill_grid(self.grid,
                           ["SNo", "Code", "Type", "Comments", "Dr", "Cr",
                            "Date"],
                           [[r["sno"], r["paycode"], r["paytype"],
                             r["comments"], f"{r['dr']:.2f}", f"{r['cr']:.2f}",
                             _d(r["vdate"])] for r in ch])
                self.lbl_tot.setText(
                    f"Charges {b['charges_dr']:.2f}  Payments "
                    f"{b['payments_cr']:.2f}  Balance {b['balance']:.2f}")
        except Exception as e:
            _msgbox_err(self, e)


class GuestLedgerWindow(_GuestLedgerBase):
    summarized = False


class GuestLedgerSummWindow(_GuestLedgerBase):
    summarized = True


# ────────────────────────────────────────────────────────────────
# 6. Group Check Out (FdGrpCheckOut -> checkin.group_checkout)
# ────────────────────────────────────────────────────────────────
class GroupCheckOutWindow(QMainWindow, _StatusBar):
    def __init__(self, parent=None, user: str = "PYADMIN"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Room Check Out Entry (Group)")
        self.resize(1000, 560)
        self._build()
        self._fill()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Group Check Out"))
        top = QHBoxLayout()
        for cap, fn in (("Refresh", self._fill),
                        ("Check Out Selected", self._checkout),
                        ("Select All", lambda: self._check_all(True)),
                        ("Clear All", lambda: self._check_all(False)),
                        ("Exit", self.close)):
            b = QPushButton(cap)
            b.clicked.connect(fn)
            top.addWidget(b)
        top.addStretch(1)
        lay.addLayout(top)
        self.grid = QTableWidget()
        lay.addWidget(self.grid)
        self.lbl_result = QLabel("")
        lay.addWidget(self.lbl_result)

    def _check_all(self, on: bool):
        for r in range(self.grid.rowCount()):
            it = self.grid.item(r, 0)
            if it:
                it.setCheckState(Qt.CheckState.Checked if on
                                 else Qt.CheckState.Unchecked)

    def _fill(self):
        try:
            rows = checkout.list_active_folios()
            headers = ["Sel", "Folio", "Guest", "Room", "Departure"]
            self.grid.clear()
            self.grid.setColumnCount(len(headers))
            self.grid.setHorizontalHeaderLabels(headers)
            self.grid.setRowCount(0)
            for rec in rows:
                row = self.grid.rowCount()
                self.grid.insertRow(row)
                it = QTableWidgetItem()
                it.setCheckState(Qt.CheckState.Unchecked)
                self.grid.setItem(row, 0, it)
                self.grid.setItem(row, 1, _cell(rec["folio"]))
                self.grid.setItem(row, 2, _cell(rec["name"]))
                self.grid.setItem(row, 3, _cell(rec["roomno"]))
                self.grid.setItem(row, 4, _cell(_d(rec["depdate"])))
            self.grid.resizeColumnsToContents()
            self.lbl_result.setText("")
            self._say(f"{len(rows)} active folio(s)")
        except Exception as e:
            _msgbox_err(self, e)

    def _checkout(self):
        folios = []
        for r in range(self.grid.rowCount()):
            it = self.grid.item(r, 0)
            if it and it.checkState() == Qt.CheckState.Checked:
                folios.append(int(self.grid.item(r, 1).text()))
        if not folios:
            QMessageBox.warning(self, "Group Check Out",
                                "Kam se kam ek folio select karo.")
            return
        if QMessageBox.question(
                self, "Group Check Out",
                f"{len(folios)} folio(s) check out karna hai?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            res = checkin.group_checkout(folios, user=self.user)
            settled = res.get("settled", 0) if isinstance(res, dict) else res
            errors = res.get("errors", []) if isinstance(res, dict) else []
            msg = f"Settled {settled}/{len(folios)}."
            if errors:
                msg += "\n" + "\n".join(str(e) for e in errors[:8])
            self.lbl_result.setText(msg)
            QMessageBox.information(self, "Group Check Out", msg)
            self._fill()
        except Exception as e:
            _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# 7. Group Detail Check Out (FdGrpdetCheckOut — same engine, detail grid)
# ────────────────────────────────────────────────────────────────
class GroupDetailCheckOutWindow(GroupCheckOutWindow):
    def __init__(self, parent=None, user: str = "PYADMIN"):
        super().__init__(parent, user)
        self.setWindowTitle("Room Check Out Entry (Group Detail)")

    def _fill(self):
        super()._fill()
        # detail view: per-folio balance column
        try:
            for r in range(self.grid.rowCount()):
                fno = int(self.grid.item(r, 1).text())
                try:
                    b = checkout.folio_balance(fno)
                    self.grid.setItem(r, 5, _cell(f"{b['balance']:.2f}"))
                except Exception:
                    self.grid.setItem(r, 5, _cell("?"))
            if self.grid.columnCount() < 6:
                self.grid.setColumnCount(6)
            self.grid.setHorizontalHeaderItem(
                5, QTableWidgetItem("Balance"))
            self.grid.resizeColumnsToContents()
        except Exception:
            pass


# ────────────────────────────────────────────────────────────────
# 8. Look Up Room (FdLookUpRoom -> roomstatus.room_rack)
# ────────────────────────────────────────────────────────────────
class LookupRoomWindow(QMainWindow, _StatusBar):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Look Up Room")
        self.resize(960, 540)
        self._build()
        self._fill()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Look Up Room"))
        top = QHBoxLayout()
        self.txt_filter = QLineEdit()
        self.txt_filter.setPlaceholderText("Room no / type / guest filter")
        self.txt_filter.textChanged.connect(self._apply_filter)
        self.cmb_status = QComboBox()
        self.cmb_status.addItems(["", "Occupied", "Vacant", "Dirty",
                                  "Maintenance", "Out of Order"])
        self.cmb_status.currentTextChanged.connect(self._apply_filter)
        top.addWidget(QLabel("Filter"))
        top.addWidget(self.txt_filter, 1)
        top.addWidget(QLabel("Status"))
        top.addWidget(self.cmb_status)
        lay.addLayout(top)
        self.grid = QTableWidget()
        self.grid.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        lay.addWidget(self.grid)
        self._rooms = []
        btns = QHBoxLayout()
        b = QPushButton("Refresh")
        b.clicked.connect(self._fill)
        btns.addWidget(b)
        btns.addStretch(1)
        lay.addLayout(btns)

    def _fill(self):
        try:
            self._rooms = roomstatus.room_rack()
            self._apply_filter()
        except Exception as e:
            _msgbox_err(self, e)

    def _apply_filter(self):
        f = self.txt_filter.text().strip().lower()
        st = self.cmb_status.currentText()
        rows = []
        for r in self._rooms:
            if st and r["status"] != st:
                continue
            hay = f"{r['roomno']} {r['type']} {r['name']} {r['guest']}".lower()
            if f and f not in hay:
                continue
            rows.append([r["roomno"], r["type"], r["cat"], r["status"],
                         r["guest"], r["folio"] or "",
                         _d(r["chk_in"]) or "", _d(r["dep"]) or ""])
        _fill_grid(self.grid,
                   ["Room", "Type", "Category", "Status", "Guest", "Folio",
                    "Check-In", "Departure"], rows)
        for r in range(self.grid.rowCount()):
            status = self.grid.item(r, 3).text()
            for c in range(self.grid.columnCount()):
                it = self.grid.item(r, c)
                if it:
                    it.setBackground(_status_color(status))
        self._say(f"{len(rows)} room(s)")


# ────────────────────────────────────────────────────────────────
# 9-10. Sundry Setting previews (DepartSundry / FacilitySundry)
# VB6: SundryMast + RevMast linkage; read-only preview (save flow
# SundryType INSERT ek alag sweep me — tables structure pending verify).
# ────────────────────────────────────────────────────────────────
class _SundryBase(QMainWindow, _StatusBar):
    """SundryType setting (VB6 DepartSundry/FacilitySundry save-flow).

    Editable: SundryType entries add karne ka flow (VB6 frm:1810 22-col
    INSERT, guard frm:2135 duplicate-count check) via core.sundry_type.
    Grid: live SundryType rows (4-table JOIN display, frm:1442).
    No DELETE in VB6 frms — evidence-based scope: add/view only.
    """
    title = "Outlet Bill Sundry Setting"
    kind = "depart"           # 'facility' -> V_Type='FACL'

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle(self.title)
        self.resize(940, 560)
        self._build()
        self._fill()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title(self.title))
        # add-entry form (VB6 grid-row save flow ka port)
        form = QHBoxLayout()
        form.addWidget(QLabel("Sundry"))
        self.cmb_sundry = QComboBox()
        form.addWidget(self.cmb_sundry, 1)
        form.addWidget(QLabel("DispName"))
        self.txt_disp = QLineEdit()
        self.txt_disp.setPlaceholderText("display name (max 20)")
        form.addWidget(self.txt_disp)
        form.addWidget(QLabel("Rev"))
        self.cmb_rev = QComboBox()
        form.addWidget(self.cmb_rev)
        b_add = QPushButton("Add")
        b_add.clicked.connect(self._add)
        form.addWidget(b_add)
        b_ref = QPushButton("Refresh")
        b_ref.clicked.connect(self._fill)
        form.addWidget(b_ref)
        b_exit = QPushButton("Exit")
        b_exit.clicked.connect(self.close)
        form.addWidget(b_exit)
        lay.addLayout(form)
        self.grid = QTableWidget()
        self.grid.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        lay.addWidget(self.grid)
        self._fill_pickers()

    def _fill_pickers(self):
        from HMS_py.core import db
        try:
            self.cmb_sundry.clear()
            for r in db.query(
                    "SELECT RTRIM(Code), RTRIM(Name) FROM SundryMast WHERE "
                    "(LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Name",
                    (roomstatus.SITE_CODE,)):
                self.cmb_sundry.addItem(r[1], r[0])
            self.cmb_rev.clear()
            self.cmb_rev.addItem("", "")
            facl = " AND V_Type = 'FACL'" if self.kind == "facility" else ""
            for r in db.query(
                    "SELECT RTRIM(Code), RTRIM(Name) FROM RevMast WHERE "
                    "(LogSite_Code = ? OR LogSite_Code = 'HO')" + facl +
                    " ORDER BY Name", (roomstatus.SITE_CODE,)):
                self.cmb_rev.addItem(r[1], r[0])
        except Exception as e:
            self._say(f"picker load: {e}")

    def _fill(self):
        try:
            rows = sundry_type.list_entries(self.kind)
            _fill_grid(self.grid,
                       ["V_Type", "AppDate", "Code", "Sundry", "SNo",
                        "DispName", "Formula", "P/A", "Rev", "Sign",
                        "Sys", "Post"],
                       [[r["vtype"], r["appdate"], r["sundrycode"],
                         r["sundry_name"], r["sno"], r["dispname"],
                         r["calcformula"], r["peroramt"],
                         r["rev_name"] or r["revcode"], r["calcsign"],
                         r["sysyn"], r["postyn"]] for r in rows])
            self._say(f"{len(rows)} SundryType row(s)")
        except Exception as e:
            _msgbox_err(self, e)

    def _add(self):
        code = self.cmb_sundry.currentData()
        if not code:
            QMessageBox.warning(self, "Add", "Sundry chuno.")
            return
        if QMessageBox.question(
                self, "Add SundryType",
                f"{self.cmb_sundry.currentText()} add karna hai?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            sundry_type.add_entry(
                self.kind, code, self.txt_disp.text().strip() or code,
                revcode=self.cmb_rev.currentData() or "")
            self._say(f"added {code}")
            self._fill()
        except Exception as e:
            _msgbox_err(self, e)


class DepartSundryWindow(_SundryBase):
    title = "Outlet Bill Sundry Setting"
    kind = "depart"


class FacilitySundryWindow(_SundryBase):
    title = "Outlet Bill Sundry Setting"
    kind = "facility"


# ────────────────────────────────────────────────────────────────
# Openers (shell registry pattern)
# ────────────────────────────────────────────────────────────────
def open_amend_stay(parent=None):
    return AmendStayWindow(parent)


def open_lookup_reservation(parent=None):
    return LookupReservationWindow(parent)


def open_room_checkout(parent=None, user: str = "PYADMIN"):
    return RoomCheckOutWindow(parent, user=user)


def open_guest_ledger(parent=None):
    return GuestLedgerWindow(parent)


def open_guest_ledger_summ(parent=None):
    return GuestLedgerSummWindow(parent)


def open_group_checkout(parent=None, user: str = "PYADMIN"):
    return GroupCheckOutWindow(parent, user=user)


def open_group_detail_checkout(parent=None, user: str = "PYADMIN"):
    return GroupDetailCheckOutWindow(parent, user=user)


def open_lookup_room(parent=None):
    return LookupRoomWindow(parent)


def open_depart_sundry(parent=None):
    return DepartSundryWindow(parent)


def open_facility_sundry(parent=None):
    return FacilitySundryWindow(parent)


if __name__ == "__main__":
    app = QApplication(sys.argv)
    app.setPalette(palette())
    for fn in (open_amend_stay, open_lookup_reservation, open_room_checkout,
               open_guest_ledger, open_guest_ledger_summ,
               open_group_checkout, open_group_detail_checkout,
               open_lookup_room, open_depart_sundry, open_facility_sundry):
        w = fn()
        w.show()
        app.processEvents()
        w.close()
    print("fd_forms_ui smoke OK")
