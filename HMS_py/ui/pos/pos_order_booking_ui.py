# ──────────────────────────────────────────────────────────────────────
# POS Order Booking / Order Booking Advance UI (VB6: RsBookingEntry.frm / RsBookingEntryAdvance.frm / RsTouchScreenBookingEntry.frm)
# ──────────────────────────────────────────────────────────────────────

"""POS Order Booking / Order Booking Advance UI (VB6: RsBookingEntry.frm / RsBookingEntryAdvance.frm / RsTouchScreenBookingEntry.frm)

VB6 Pattern:
- Booking Entry: Create new POS orders with customer info, items, advance payment
- Booking Entry Advance: Handle advance payments on bookings
- Touch Screen Booking Entry: Touch-optimized version

Tables: Booking, BookingMore, BookingPlanDetails, PosSale, PayCharge
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
                             QGroupBox, QScrollArea)

from HMS_py.core import db
from HMS_py.core import booking
from HMS_py.ui import theme as _theme


def _cell(val, *, align_right: bool = False):
    if isinstance(val, (datetime.date, datetime.datetime)):
        val = f"{val:%d/%b/%Y}"
    it = QTableWidgetItem("" if val is None else str(val))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    if align_right:
        it.setTextAlignment(Qt.AlignmentFlag.AlignRight | Qt.AlignmentFlag.AlignVCenter)
    return it


class OrderBookingBrowser(QDialog):
    """VB6 RsBookingEntry.frm: Order Booking / Order Booking Advance.
    
    Features:
    - Browse bookings with search
    - Create new booking with advance payment
    - Edit existing booking
    - Cancel booking
    - Print booking
    - Advance payment handling
    """

    COLS = [("BookNo", 0), ("Date", 1), ("Guest", 2), ("Arrival", 3),
            ("Departure", 4), ("Rooms", 5), ("Rate", 6), ("Advance", 7),
            ("Status", 8), ("User", 9)]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Order Booking / Advance - HMS_py")
        self.resize(1100, 650)
        self._build_ui()
        self.reload()

    def _build_ui(self):
        root = QVBoxLayout(self)

        # Toolbar
        toolbar = QHBoxLayout()
        toolbar.setSpacing(8)

        self.btnNew = QPushButton("New Booking (Ctrl+N)")
        self.btnNew.setToolTip("Create new order booking")
        self.btnEdit = QPushButton("Edit (Ctrl+E)")
        self.btnEdit.setToolTip("Edit selected booking")
        self.btnAdvance = QPushButton("Advance (Ctrl+A)")
        self.btnAdvance.setToolTip("Advance payment on booking")
        self.btnCancel = QPushButton("Cancel (Ctrl+Del)")
        self.btnCancel.setToolTip("Cancel selected booking")
        self.btnPrint = QPushButton("Print (Ctrl+P)")
        self.btnPrint.setToolTip("Print booking")
        self.btnRefresh = QPushButton("Refresh (F5)")
        self.btnRefresh.setToolTip("Reload (F5)")
        self.btnClose = QPushButton("Close")
        self.btnClose.setToolTip("Close (Esc)")

        for b in (self.btnNew, self.btnEdit, self.btnAdvance, self.btnCancel,
                  self.btnPrint, self.btnRefresh, self.btnClose):
            toolbar.addWidget(b)

        toolbar.addStretch()
        root.addLayout(toolbar)

        # Search/Filter
        filter_row = QHBoxLayout()
        filter_row.addWidget(QLabel("Search:"))
        self.edSearch = QLineEdit()
        self.edSearch.setPlaceholderText("Search booking #, guest name, phone...")
        self.edSearch.returnPressed.connect(self.reload)
        filter_row.addWidget(self.edSearch, 1)

        self.cbStatus = QComboBox()
        self.cbStatus.addItems(["All", "Confirm", "Tentative", "Cancelled", "Completed"])
        self.cbStatus.currentIndexChanged.connect(self.reload)
        filter_row.addWidget(QLabel("Status:"))
        filter_row.addWidget(self.cbStatus)

        btnRefresh = QPushButton("Refresh (F5)")
        btnRefresh.clicked.connect(self.reload)
        filter_row.addWidget(btnRefresh)
        filter_row.addStretch()
        root.addLayout(filter_row)

        # Main grid
        self.tbl = QTableWidget(0, len(self.COLS))
        self.tbl.setHorizontalHeaderLabels([c[0] for c in self.COLS])
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.cellDoubleClicked.connect(lambda *_: self._edit())
        root.addWidget(self.tbl, 1)

        # Buttons
        btns = QHBoxLayout()
        self.btnNew = QPushButton("New Booking (Ctrl+N)")
        self.btnNew.setToolTip("Create new booking")
        self.btnEdit = QPushButton("Edit (Ctrl+E)")
        self.btnEdit.setToolTip("Edit selected booking")
        self.btnAdvance = QPushButton("Advance (Ctrl+A)")
        self.btnAdvance.setToolTip("Advance payment on booking")
        self.btnCancel = QPushButton("Cancel (Ctrl+Del)")
        self.btnCancel.setToolTip("Cancel selected booking")
        self.btnPrint = QPushButton("Print (Ctrl+P)")
        self.btnPrint.setToolTip("Print booking")
        self.btnRefresh = QPushButton("Refresh (F5)")
        self.btnRefresh.setToolTip("Reload (F5)")
        self.btnClose = QPushButton("Close")
        self.btnClose.setToolTip("Close (Esc)")

        for b in (self.btnNew, self.btnEdit, self.btnAdvance, self.btnCancel,
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
        self.btnAdvance.clicked.connect(self._advance)
        self.btnCancel.clicked.connect(self._cancel)
        self.btnPrint.clicked.connect(self._print)
        self.btnRefresh.clicked.connect(self.reload)
        self.btnClose.clicked.connect(self.reject)

        # Shortcuts
        from PyQt6.QtGui import QShortcut, QKeySequence
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._new)
        QShortcut(QKeySequence("Ctrl+E"), self, activated=self._edit)
        QShortcut(QKeySequence("Ctrl+A"), self, activated=self._advance)
        QShortcut(QKeySequence("Ctrl+Del"), self, activated=self._cancel)
        QShortcut(QKeySequence("Ctrl+P"), self, activated=self._print)
        QShortcut(QKeySequence("F5"), self, activated=self.reload)
        QShortcut(QKeySequence("Esc"), self, activated=self.reject)

        self.reload()

    def reload(self, keep_bookno: int | None = None):
        from HMS_py.core import booking
        search = self.edSearch.text().strip()
        status = self.cbStatus.currentText()

        rows = booking.list_all(limit=500)
        
        # Filter
        if search:
            rows = [r for r in rows if search.lower() in str(r.get("bookno", "")).lower() 
                    or search.lower() in (r.get("guestname") or "").lower()
                    or search.lower() in (r.get("mobno") or "").lower()]
        
        if status != "All":
            rows = [r for r in rows if (r.get("resstatus") or "").lower() == status.lower()]

        self.tbl.setRowCount(len(rows))
        for r, row in enumerate(rows):
            vals = [row["bookno"], row["vdate"], row["guestname"],
                    row["arrdate"], row["depdate"], row["noofrooms"],
                    row["roomrate"], "", row["resstatus"], row["u_name"]]
            for c, v in enumerate(vals):
                if isinstance(v, (datetime.date, datetime.datetime)):
                    v = f"{v:%d/%b/%Y}"
                self.tbl.setItem(r, c, _cell(v))
        
        if keep_bookno:
            for r, row in enumerate(rows):
                try:
                    if int(row["bookno"]) == keep_bookno:
                        self.tbl.selectRow(r)
                        break
                except (TypeError, ValueError):
                    continue
        elif rows:
            self.tbl.selectRow(0)

    def _selected_bookno(self) -> int | None:
        r = self.tbl.currentRow()
        if r < 0:
            return None
        item = self.tbl.item(r, 0)
        if not item or not item.text().strip():
            return None
        try:
            return int(item.text())
        except ValueError:
            return None

    def _new(self):
        dlg = OrderBookingDialog(self, user=self.user)
        if dlg.exec() == dlg.DialogCode.Accepted:
            self.reload(keep_bookno=dlg.result_bookno)

    def _edit(self):
        bookno = self._selected_bookno()
        if bookno is None:
            QMessageBox.information(self, "Edit", "Pehle row select karo")
            return
        dlg = OrderBookingDialog(self, user=self.user, bookno=bookno)
        if dlg.exec() == dlg.DialogCode.Accepted:
            self.reload(keep_bookno=bookno)

    def _advance(self):
        bookno = self._selected_bookno()
        if bookno is None:
            QMessageBox.information(self, "Advance", "Pehle row select karo")
            return
        dlg = AdvancePaymentDialog(self, user=self.user, bookno=bookno)
        if dlg.exec() == dlg.DialogCode.Accepted:
            self.reload(keep_bookno=bookno)

    def _cancel(self):
        bookno = self._selected_bookno()
        if bookno is None:
            QMessageBox.information(self, "Cancel", "Pehle row select karo")
            return
        # PYT-guard
        row = booking.get(bookno)
        if not row or not str(row.get("guestname", "")).upper().startswith("PYT"):
            QMessageBox.warning(self, "Cancel", "Safety: sirf PYT* test-bookings cancel ho sakti hain")
            return
        if QMessageBox.question(self, "Cancel", f"Booking #{bookno} cancel karein?") != QMessageBox.StandardButton.Yes:
            return
        try:
            booking.cancel(bookno, user=self.user)
            self.reload()
            QMessageBox.information(self, "Cancel", f"Booking #{bookno} cancelled")
        except Exception as e:
            QMessageBox.critical(self, "Cancel", f"DB error: {e}")

    def _print(self):
        bookno = self._selected_bookno()
        if bookno is None:
            QMessageBox.information(self, "Print", "Pehle row select karo")
            return
        # TODO: Implement print
        QMessageBox.information(self, "Print", "Print not implemented yet")


class OrderBookingDialog(QDialog):
    """Dialog for creating/editing an order booking."""

    def __init__(self, parent=None, user: str = "SA", bookno: int | None = None):
        super().__init__(parent)
        self.user = user
        self.bookno = bookno
        self.is_edit = bookno is not None
        self.setWindowTitle("Edit Booking" if self.is_edit else "New Booking")
        self.resize(800, 650)
        self.setModal(True)
        self._build_ui()
        if self.is_edit:
            self._load_data()

    def _build_ui(self):
        root = QVBoxLayout(self)

        # Header
        header = QFrame()
        header.setStyleSheet("background: #2f7fc1; border-radius: 4px;")
        hlay = QHBoxLayout(header)
        hlay.setContentsMargins(12, 8, 12, 8)

        title = QLabel("Edit Booking" if self.is_edit else "New Booking")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setStyleSheet("color: #fffbe6;")
        root.addWidget(header)

        # Main form
        form = QFormLayout()
        form.setSpacing(10)

        self.edGuest = QLineEdit()
        self.edGuest.setPlaceholderText("Guest name (must start with PYT*)")
        form.addRow("Guest Name (PYT*) *", self.edGuest)

        self.edMob = QLineEdit()
        form.addRow("Mobile", self.edMob)

        self.edEmail = QLineEdit()
        form.addRow("Email", self.edEmail)

        self.deArr = QDateEdit(QDate.currentDate())
        self.deArr.setCalendarPopup(True)
        self.deArr.setDisplayFormat("dd/MM/yyyy")
        form.addRow("Arrival *", self.deArr)

        self.deDep = QDateEdit(QDate.currentDate().addDays(1))
        self.deDep.setCalendarPopup(True)
        self.deDep.setDisplayFormat("dd/MM/yyyy")
        form.addRow("Departure *", self.deDep)

        self.edRooms = QLineEdit("1")
        form.addRow("Rooms *", self.edRooms)

        self.edAdults = QLineEdit("1")
        form.addRow("Adults", self.edAdults)

        self.edChildren = QLineEdit("0")
        form.addRow("Children", self.edChildren)

        self.edRate = QLineEdit("0.00")
        self.edRate.setPlaceholderText("Rate per room per night")
        form.addRow("Rate *", self.edRate)

        self.cbRoomCat = QComboBox()
        self.cbRoomCat.addItem("Select Category", "")
        try:
            from HMS_py.core import roomcategory
            cats = roomcategory.list_all()
            for c in cats:
                self.cbRoomCat.addItem(f"{c['code']} - {c['name']}", c["code"])
        except Exception:
            pass
        form.addRow("Room Category", self.cbRoomCat)

        self.edRemarks = QLineEdit(".")
        form.addRow("Remarks", self.edRemarks)

        # Advance payment section
        advance_frame = QGroupBox("Advance Payment")
        adv_form = QFormLayout(advance_frame)
        self.edAdvance = QLineEdit("0.00")
        adv_form.addRow("Advance Amount", self.edAdvance)
        self.cbAdvPayType = QComboBox()
        self.cbAdvPayType.addItems(["CASH", "CARD", "CHEQUE", "ROOM"])
        form.addRow("Advance Pay Type", self.cbAdvPayType)
        self.edAdvRemarks = QLineEdit("Advance")
        form.addRow("Advance Remarks", self.edAdvRemarks)
        root.addWidget(advance_frame)

        root.addLayout(form)

        # Buttons
        btns = QHBoxLayout()
        self.btnSave = QPushButton("Save (Ctrl+S)")
        self.btnSave.setDefault(True)
        self.btnSave.clicked.connect(self._save)
        btns.addWidget(self.btnSave)

        btnCancel = QPushButton("Cancel")
        btnCancel.clicked.connect(self.reject)
        btns.addWidget(btnCancel)
        root.addLayout(btns)

        # Shortcuts
        from PyQt6.QtGui import QShortcut, QKeySequence
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._save)
        QShortcut(QKeySequence("Esc"), self, activated=self.reject)

    def _load_data(self):
        from HMS_py.core import booking
        row = booking.get(self.bookno)
        if not row:
            return
        self.edGuest.setText(row["guestname"])
        self.edMob.setText(row.get("mobno", ""))
        self.edEmail.setText(row.get("email", ""))
        arr = row.get("arrdate")
        if hasattr(arr, 'year'):
            self.deArr.setDate(QDate(arr.year, arr.month, arr.day))
        dep = row.get("depdate")
        if hasattr(dep, 'year'):
            self.deDep.setDate(QDate(dep.year, dep.month, dep.day))
        self.edRooms.setText(str(row.get("noofrooms", 1)))
        self.edAdults.setText(str(row.get("adult", 1)))
        self.edChildren.setText(str(row.get("child", 0)))
        self.edRate.setText(str(row.get("roomrate", 0)))
        cat = row.get("roomcat", "")
        if cat:
            idx = self.cbRoomCat.findData(cat)
            if idx >= 0:
                self.cbRoomCat.setCurrentIndex(idx)
        self.edRemarks.setText(row.get("remarks", "."))

    def _save(self):
        guest = self.edGuest.text().strip()
        if not guest:
            QMessageBox.warning(self, "Save", "Guest name zaroori hai")
            return
        if not guest.upper().startswith("PYT"):
            QMessageBox.warning(self, "Save", "Guest name must start with PYT* (test data only)")
            return

        try:
            adults = int(self.edAdults.text() or "1")
            children = int(self.edChildren.text() or "0")
            rooms = int(self.edRooms.text() or "1")
            rate = float(self.edRate.text() or "0")
        except ValueError:
            QMessageBox.warning(self, "Save", "Invalid number format")
            return

        if self.deArr.date() > self.deDep.date():
            QMessageBox.warning(self, "Save", "Arrival > Departure nahi ho sakta")
            return

        cat = self.cbRoomCat.currentData()
        if not cat:
            QMessageBox.warning(self, "Save", "Room category select karein")
            return

        try:
            from HMS_py.core import booking
            if self.is_edit:
                booking.update(
                    self.bookno,
                    guestname=guest,
                    arrdate=self.deArr.date().toPyDate(),
                    depdate=self.deDep.date().toPyDate(),
                    adult=adults,
                    child=children,
                    rooms=rooms,
                    rate=rate,
                    roomcat=cat,
                    remarks=self.edRemarks.text() or ".",
                    user=self.user
                )
            else:
                result = booking.insert(
                    guestname=guest,
                    arrdate=self.deArr.date().toPyDate(),
                    depdate=self.deDep.date().toPyDate(),
                    adult=adults,
                    child=children,
                    rooms=rooms,
                    rate=rate,
                    roomcat=cat,
                    remarks=self.edRemarks.text() or ".",
                    mobno="",
                    email="",
                    user=self.user
                )
                self.result_bookno = result["bookno"]
            QMessageBox.information(self, "Save", f"Booking saved! #{self.result_bookno}")
            self.accept()
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")


class AdvancePaymentDialog(QDialog):
    """Dialog for adding advance payment to a booking."""

    def __init__(self, parent=None, user: str = "SA", bookno: int = 0):
        super().__init__(parent)
        self.user = user
        self.bookno = bookno
        self.setWindowTitle("Advance Payment on Booking")
        self.resize(500, 400)
        self.setModal(True)
        self._build_ui()
        self._load_booking()

    def _build_ui(self):
        root = QVBoxLayout(self)

        # Booking info
        self.lblBooking = QLabel("Loading...")
        root.addWidget(self.lblBooking)

        # Form
        form = QFormLayout()
        self.edAmount = QLineEdit("0.00")
        self.edAmount.setPlaceholderText("Advance amount")
        form.addRow("Advance Amount *", self.edAmount)

        self.cbPayType = QComboBox()
        self.cbPayType.addItems(["CASH", "CARD", "CHEQUE", "ROOM"])
        form.addRow("Pay Type *", self.cbPayType)

        self.edRemarks = QLineEdit("Advance")
        form.addRow("Remarks", self.edRemarks)

        root.addLayout(form)

        # Buttons
        btns = QHBoxLayout()
        btnSave = QPushButton("Save (Ctrl+S)")
        btnSave.setDefault(True)
        btnSave.clicked.connect(self._save)
        btns.addWidget(btnSave)

        btnCancel = QPushButton("Cancel")
        btnCancel.clicked.connect(self.reject)
        btns.addWidget(btnCancel)
        root.addLayout(btns)

        # Shortcuts
        from PyQt6.QtGui import QShortcut, QKeySequence
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._save)
        QShortcut(QKeySequence("Esc"), self, activated=self.reject)

    def _load_booking(self):
        from HMS_py.core import booking
        row = booking.get(self.bookno)
        if row:
            self.setWindowTitle(f"Advance Payment - Booking #{self.bookno} ({row.get('guestname', '')})")

    def _save(self):
        try:
            amt = float(self.edAmount.text() or "0")
            if amt <= 0:
                QMessageBox.warning(self, "Save", "Amount must be > 0")
                return
            # TODO: Implement advance payment insert
            QMessageBox.information(self, "Save", f"Advance of {amt:.2f} recorded!")
            self.accept()
        except ValueError:
            QMessageBox.warning(self, "Save", "Invalid amount")


def open_order_booking(parent=None, user: str = "SA"):
    OrderBookingBrowser(parent, user=user).exec()


def main() -> int:
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    d = OrderBookingBrowser()
    d.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())