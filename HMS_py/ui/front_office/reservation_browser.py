"""Reservation browser v2 (P3-b) - full CRUD, VB6 RsBookingEntry pattern.

Run: python -m HMS_py.ui.reservation_browser
Menu: Reservation -> Operations -> 'Reservation/Cancellation'.
CRUD: New (PYT* draft), Edit (fields), Cancel (VB6 flow: Cancel='Y' +
CancelDate + CancelUName - physical delete nahi). Sab live Booking table
par; delete-guard PYT-only (production data VB6 EXE se hi).
"""
from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtWidgets import (QDateEdit, QDialog, QFormLayout, QHBoxLayout,
                              QLabel, QLineEdit, QMessageBox, QPushButton,
                              QTableWidget, QTableWidgetItem, QVBoxLayout,
                              QComboBox, QFrame)
from PyQt6.QtCore import QDate, Qt
from PyQt6.QtGui import QColor

from HMS_py.core import reservation
from HMS_py.ui import theme as _theme


class ReservationBrowser(QDialog):
    COLS = [("BookNo", 0), ("VDate", 1), ("GuestName", 2), ("Arrival", 3),
            ("Departure", 4), ("Rooms", 5), ("Rate", 6), ("Status", 7),
            ("Cancel", 8), ("User", 9), ("AE", 10)]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Reservation Master (P3-b) - HMS_py")
        self.resize(1080, 600)

        root = QVBoxLayout(self)
        self.tbl = QTableWidget(0, len(self.COLS))
        self.tbl.setHorizontalHeaderLabels([c[0] for c in self.COLS])
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.setAlternatingRowColors(True)
        self._empty_label = QLabel("No reservations found. Click 'New' to create one.")
        self._empty_label.setAlignment(Qt.AlignmentFlag.AlignCenter)
        self._empty_label.setStyleSheet(f"color:{_theme.palette()['text_dim']}; font-size:13px; padding:24px;")
        root.addWidget(self.tbl)
        root.addWidget(self._empty_label)
        self.tbl.cellDoubleClicked.connect(lambda *_: self._edit())

        self.lblState = QLabel(
            "State: Idle | New=PYT* draft, Edit=fields, "
            "Cancel=VB6 flow (Cancel='Y')")
        root.addWidget(self.lblState)

        btns = QHBoxLayout()
        self.btnNew = QPushButton("New")
        self.btnNew.setToolTip("Create new reservation draft (Ctrl+N)")
        self.btnEdit = QPushButton("Edit")
        self.btnEdit.setToolTip("Edit selected reservation (Ctrl+E)")
        self.btnCancel = QPushButton("Cancel Booking")
        self.btnCancel.setToolTip("Cancel selected booking (Ctrl+Del)")
        self.btnRefresh = QPushButton("Refresh")
        self.btnRefresh.setToolTip("Reload reservation list (F5)")
        self.btnClose = QPushButton("Close")
        self.btnClose.setToolTip("Close this window (Esc)")
        for b in (self.btnNew, self.btnEdit, self.btnCancel,
                  self.btnRefresh, self.btnClose):
            btns.addWidget(b)
        root.addLayout(btns)

        self.btnNew.clicked.connect(self._new)
        self.btnEdit.clicked.connect(self._edit)
        self.btnCancel.clicked.connect(self._cancel)
        self.btnRefresh.clicked.connect(lambda: self.reload())
        self.btnClose.clicked.connect(self.reject)

        # Keyboard (P3-b E2E fix): dialog UIA me buttons expose nahi hote,
        # VB6 &-accelerator pattern: Ctrl+N = New, Ctrl+E = Edit,
        # Ctrl+Del = Cancel booking, F5 = Refresh
        from PyQt6.QtGui import QShortcut, QKeySequence
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._new)
        QShortcut(QKeySequence("Ctrl+E"), self, activated=self._edit)
        QShortcut(QKeySequence("Ctrl+Del"), self, activated=self._cancel)
        QShortcut(QKeySequence("F5"), self, activated=lambda: self.reload())

        self.reload()

    def reload(self, keep_bookno: int | None = None):
        """Reload grid; keep_bookno do to wahi row wapas select hogi
        (reload selection reset bug: Edit->Cancel flow me galat row
        target ho sakti thi - PYT-guard ne pakda tha)."""
        rows = reservation.list_reservations()
        self.tbl.setRowCount(len(rows))
        self._empty_label.setVisible(len(rows) == 0)
        self.tbl.setVisible(len(rows) > 0)
        for r, row in enumerate(rows):
            # list query returns (FIXED - Cancel now fetched explicitly):
            # BookNo(0),VDate(1),GuestName(2),ArrDate(3),DepDate(4),
            # NoofRooms(5),RoomRate(6),ResStatus(7),Cancel(8),U_Name(9),U_AE(10)
            vals = [row[0], row[1], row[2], row[3], row[4], row[5], row[6],
                    row[7],                           # ResStatus
                    "Y" if str(row[8] or "").upper() == "Y" else "",  # Cancel
                    row[9], row[10]]                  # U_Name, U_AE
            for c, (h, i) in enumerate(self.COLS):
                v = vals[c]
                if isinstance(v, (datetime.date, datetime.datetime)):
                    v = f"{v:%d/%b/%Y}"
                it = QTableWidgetItem("" if v is None else str(v))
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                # Dark-mode fix (live-caught): palette text white hota hai,
                # white background par invisible - VB6 DataGrid jaisa
                # hamesha-dark text force karo
                it.setForeground(QColor(_theme.palette()["text"]))
                self.tbl.setItem(r, c, it)
        if keep_bookno is not None:
            for r, row in enumerate(rows):
                # BUG-022 fix: non-numeric BookNo pe crash nahi - skip
                try:
                    if int(row[0]) == keep_bookno:
                        self.tbl.selectRow(r)
                        break
                except (TypeError, ValueError):
                    continue
        elif rows:
            self.tbl.selectRow(0)

    # ---------- helpers ----------
    def _selected_bookno(self):
        """Selected BookNo (BUG-022: None/empty/non-numeric cell pe crash guard)."""
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

    def _require_pyt(self, bookno: int):
        """Safety: write-ops sirf PYT* guests par (production VB6 se)
        + M3: cancelled booking pe edit/cancel block (VB6 FGrid rule,
        RsBookingEntry.frm:1959 - Cancel='Y' check)."""
        row = reservation.get(bookno)
        if not row:
            raise ValueError(f"Booking {bookno} nahi mila")
        if str(row.get("Cancel") or "").upper() == "Y":
            raise ValueError(
                f"Booking {bookno} CANCELLED hai - edit/cancel blocked "
                "(VB6 rule: Cancel='Y' pe koi write nahi)")
        if not str(row["GuestName"]).upper().startswith("PYT"):
            raise ValueError(
                "Safety: sirf PYT* test-bookings edit/cancel ho sakti hain "
                "(production data VB6 EXE se)")
        return row

    # ---------- CRUD ----------
    def _new(self):
        dlg = QDialog(self)
        dlg.setWindowTitle("New Reservation (PYT test-data)")
        dlg.setModal(True)
        form = QFormLayout()
        ed_guest = QLineEdit("PYT Guest")
        ed_guest.setMaxLength(100)
        ed_guest.setPlaceholderText("Guest full name (must start with PYT*)")
        de_arr = QDateEdit(QDate.currentDate()); de_arr.setCalendarPopup(True)
        de_dep = QDateEdit(QDate.currentDate().addDays(1))
        de_dep.setCalendarPopup(True)
        ed_adult = QLineEdit("1"); ed_adult.setPlaceholderText("Number of adults")
        ed_rooms = QLineEdit("1"); ed_rooms.setPlaceholderText("Number of rooms")
        ed_rate = QLineEdit("0"); ed_rate.setPlaceholderText("Room rate per night")
        form.addRow("Guest Name (PYT*)", ed_guest)
        form.addRow("Arrival", de_arr)
        form.addRow("Departure", de_dep)
        form.addRow("Adults", ed_adult)
        form.addRow("Rooms", ed_rooms)
        form.addRow("Rate", ed_rate)
        lay = QVBoxLayout(dlg)
        lay.addLayout(form)
        brow = QHBoxLayout()
        ok = QPushButton("Save"); ok.setToolTip("Save new reservation")
        cancel = QPushButton("Cancel"); cancel.setToolTip("Discard and close")
        brow.addStretch(); brow.addWidget(ok); brow.addWidget(cancel)
        lay.addLayout(brow)
        ok.clicked.connect(dlg.accept); cancel.clicked.connect(dlg.reject)
        ok.setDefault(True)   # VB6 pattern: Enter = Save
        if dlg.exec() != QDialog.DialogCode.Accepted:
            return
        try:
            bookno = reservation.insert_draft(
                ed_guest.text(), de_arr.date().toPyDate(),
                de_dep.date().toPyDate(), adults=int(ed_adult.text() or 1),
                rooms=int(ed_rooms.text() or 1),
                rate=float(ed_rate.text() or 0), user=self.user)
        except ValueError as e:
            QMessageBox.warning(self, "New", str(e)); return
        except Exception as e:
            QMessageBox.critical(self, "New", f"DB error: {e}"); return
        self.lblState.setText(f"State: Idle | Booking #{bookno} add ho gaya")
        self.reload(keep_bookno=bookno)

    def _edit(self):
        bookno = self._selected_bookno()
        if bookno is None:
            QMessageBox.information(self, "Edit", "Pehle row select karo")
            return
        try:
            row = self._require_pyt(bookno)
        except ValueError as e:
            QMessageBox.warning(self, "Edit", str(e)); return
        dlg = QDialog(self)
        dlg.setWindowTitle(f"Edit Booking #{bookno}")
        dlg.setModal(True)
        form = QFormLayout()
        ed_guest = QLineEdit(row["GuestName"]); ed_guest.setMaxLength(100)
        ed_guest.setPlaceholderText("Guest full name")
        arr = row["ArrDate"]; dep = row["DepDate"]
        # BUG FIX: QDate() does NOT accept datetime.date directly.
        # Must pass year, month, day individually.
        if hasattr(arr, 'year'):
            qarr = QDate(arr.year, arr.month, arr.day)
        else:
            qarr = QDate.currentDate()
        if hasattr(dep, 'year'):
            qdep = QDate(dep.year, dep.month, dep.day)
        else:
            qdep = QDate.currentDate().addDays(1)
        de_arr = QDateEdit(qarr); de_arr.setCalendarPopup(True)
        de_dep = QDateEdit(qdep); de_dep.setCalendarPopup(True)
        ed_adult = QLineEdit(str(row["Adult"]))
        ed_adult.setPlaceholderText("Number of adults")
        ed_rooms = QLineEdit(str(row["NoofRooms"]))
        ed_rooms.setPlaceholderText("Number of rooms")
        ed_rate = QLineEdit(str(row["RoomRate"]))
        ed_rate.setPlaceholderText("Room rate per night")
        form.addRow("Guest Name", ed_guest)
        form.addRow("Arrival", de_arr)
        form.addRow("Departure", de_dep)
        form.addRow("Adults", ed_adult)
        form.addRow("Rooms", ed_rooms)
        form.addRow("Rate", ed_rate)
        lay = QVBoxLayout(dlg); lay.addLayout(form)
        brow = QHBoxLayout()
        ok = QPushButton("Save"); ok.setToolTip("Save changes to reservation")
        cancel = QPushButton("Cancel"); cancel.setToolTip("Discard changes and close")
        brow.addStretch(); brow.addWidget(ok); brow.addWidget(cancel)
        lay.addLayout(brow)
        ok.clicked.connect(dlg.accept); cancel.clicked.connect(dlg.reject)
        ok.setDefault(True)   # VB6 pattern: Enter = Save
        if dlg.exec() != QDialog.DialogCode.Accepted:
            return
        try:
            reservation.update(
                bookno, ed_guest.text(), de_arr.date().toPyDate(),
                de_dep.date().toPyDate(), adults=int(ed_adult.text() or 1),
                rooms=int(ed_rooms.text() or 1),
                rate=float(ed_rate.text() or 0), user=self.user)
        except ValueError as e:
            QMessageBox.warning(self, "Edit", str(e)); return
        except Exception as e:
            QMessageBox.critical(self, "Edit", f"DB error: {e}"); return
        self.lblState.setText(f"State: Idle | #{bookno} updated")
        self.reload(keep_bookno=bookno)

    def _cancel(self):
        bookno = self._selected_bookno()
        if bookno is None:
            QMessageBox.information(self, "Cancel", "Pehle row select karo")
            return
        try:
            self._require_pyt(bookno)
        except ValueError as e:
            QMessageBox.warning(self, "Cancel", str(e)); return
        if QMessageBox.question(
                self, "Cancel Booking",
                f"#{bookno} cancel karein? (VB6 flow: Cancel='Y', "
                "record rahega)") != QMessageBox.StandardButton.Yes:
            return
        try:
            reservation.cancel(bookno, user=self.user)
        except ValueError as e:
            QMessageBox.warning(self, "Cancel", str(e)); return
        except Exception as e:
            QMessageBox.critical(self, "Cancel", f"DB error: {e}"); return
        self.lblState.setText(f"State: Idle | #{bookno} cancelled")
        self.reload(keep_bookno=bookno)


# ──────────────────────────────────────────────────────────────────────
# Reservation Room Lookup Dialogs (VB6: resRoomNo.frm / resRoomType.frm)
# ──────────────────────────────────────────────────────────────────────

class RoomWiseReservationLookup(QDialog):
    """VB6 resRoomNo.frm: 'Reservation Look Up Room Wise'.
    
    Lookup reservations by room number/availability for a date range.
    Shows room-wise grid with guest details, status, dates.
    """

    COLS = ["Room No", "Room Name", "Category", "Guest Name", "Company",
            "Arrival", "Departure", "Days", "Status", "Rate", "Booking No"]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Reservation Look Up Room Wise - HMS_py")
        self.resize(1100, 650)
        self._build_ui()
        self._load_rooms()

    def _build_ui(self):
        root = QVBoxLayout(self)

        # Date range filter
        filter_row = QHBoxLayout()
        filter_row.addWidget(QLabel("From Date:"))
        self.deFrom = QDateEdit(QDate.currentDate())
        self.deFrom.setCalendarPopup(True)
        filter_row.addWidget(self.deFrom)
        filter_row.addWidget(QLabel("To Date:"))
        self.deTo = QDateEdit(QDate.currentDate().addDays(30))
        self.deTo.setCalendarPopup(True)
        filter_row.addWidget(self.deTo)

        self.cbStatus = QComboBox()
        self.cbStatus.addItems(["All", "Vacant", "Occupied", "Reserved", "Dirty", "OOO"])
        filter_row.addWidget(QLabel("Status:"))
        filter_row.addWidget(self.cbStatus)

        btnRefresh = QPushButton("Refresh (F5)")
        btnRefresh.clicked.connect(self._load_rooms)
        filter_row.addWidget(btnRefresh)
        filter_row.addStretch()
        root.addLayout(filter_row)

        # Grid
        self.tbl = QTableWidget(0, len(self.COLS))
        self.tbl.setHorizontalHeaderLabels(self.COLS)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.setAlternatingRowColors(True)
        root.addWidget(self.tbl)

        btns = QHBoxLayout()
        btnPrint = QPushButton("Print Report")
        btnPrint.clicked.connect(self._print_report)
        btns.addWidget(btnPrint)
        btns.addStretch()
        btnClose = QPushButton("Close")
        btnClose.clicked.connect(self.reject)
        btns.addWidget(btnClose)
        root.addLayout(btns)

        from PyQt6.QtGui import QShortcut, QKeySequence
        QShortcut(QKeySequence("F5"), self, activated=self._load_rooms)
        QShortcut(QKeySequence("Esc"), self, activated=self.reject)

    def _load_rooms(self):
        from HMS_py.core import roomstatus
        from HMS_py.core import db
        from HMS_py.core.front_office import reservation

        from_date = self.deFrom.date().toPyDate()
        to_date = self.deTo.date().toPyDate()

        # Get room availability using roomstatus engine
        try:
            avail = roomstatus.room_availability(from_date, to_date)
        except Exception:
            avail = []

        # Get reservations in date range
        res_rows = []
        try:
            res_rows = reservation.list_reservations()
        except Exception:
            pass

        # Build lookup: room -> reservation details
        res_by_room = {}
        for r in res_rows:
            room_no = r.get("RoomNo", "")
            if room_no:
                if room_no not in res_by_room:
                    res_by_room[room_no] = []
                res_by_room[room_no].append(r)

        # Get room types for category
        room_cats = {}
        try:
            from HMS_py.core import roomcategory
            cats = roomcategory.list_all()
            room_cats = {c["code"]: c["name"] for c in cats}
        except Exception:
            pass

        self.tbl.setRowCount(0)
        status_filter = self.cbStatus.currentText()

        for r in avail:
            room_no = r.get("roomno", "")
            if not room_no:
                continue

            # Get room details
            cat = r.get("cat", "")
            cat_name = room_cats.get(cat, cat)

            # Check reservation
            res = res_by_room.get(room_no, [None])[0]
            if res:
                guest = res.get("GuestName", "") or res.get("Name", "")
                arr = res.get("ArrDate", "")
                dep = res.get("DepDate", "")
                days = res.get("NoofRooms", 1)  # fallback
                rate = res.get("RoomRate", 0)
                status = "Occupied"
            else:
                guest = ""
                arr = ""
                dep = ""
                days = ""
                rate = 0
                status = r.get("dirty", False) and "Dirty" or "Vacant"

            if status_filter != "All" and status_filter != status:
                continue

            vals = [
                room_no, r.get("name", ""), cat_name,
                guest, "",  # Company not available in availability
                f"{arr:%d/%b/%Y}" if hasattr(arr, 'strftime') else str(arr),
                f"{dep:%d/%b/%Y}" if hasattr(dep, 'strftime') else str(dep),
                days, status, f"{rate:.2f}", ""
            ]
            row = self.tbl.rowCount()
            self.tbl.insertRow(row)
            for c, v in enumerate(vals):
                it = QTableWidgetItem("" if v is None else str(v))
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                if status == "Occupied":
                    it.setForeground(QColor("#ef4444"))
                elif status == "Dirty":
                    it.setForeground(QColor("#f59e0b"))
                elif status == "Vacant":
                    it.setForeground(QColor("#10b981"))
                self.tbl.setItem(row, c, it)

    def _print_report(self):
        from HMS_py.ui import print_preview as _pp
        _pp.preview_text("Room-wise reservation report\n(To be implemented)", "Room-wise Report", self)


class RoomTypeWiseReservationLookup(QDialog):
    """VB6 resRoomType.frm: 'Room Category Wise Reservation Look Up'.
    
    Lookup reservations grouped by room category/type.
    Shows category-wise summary with availability and bookings.
    """

    COLS = ["Category Code", "Category Name", "Total Rooms", "Vacant",
            "Occupied", "Reserved", "Dirty", "OOO", "Occupancy %"]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Room Category Wise Reservation Look Up - HMS_py")
        self.resize(900, 550)
        self._build_ui()
        self._load_categories()

    def _build_ui(self):
        root = QVBoxLayout(self)

        # Date filter
        filter_row = QHBoxLayout()
        filter_row.addWidget(QLabel("As on Date:"))
        self.deDate = QDateEdit(QDate.currentDate())
        self.deDate.setCalendarPopup(True)
        filter_row.addWidget(self.deDate)

        btnRefresh = QPushButton("Refresh (F5)")
        btnRefresh.clicked.connect(self._load_categories)
        filter_row.addWidget(btnRefresh)
        filter_row.addStretch()
        root.addLayout(filter_row)

        # Grid
        self.tbl = QTableWidget(0, len(self.COLS))
        self.tbl.setHorizontalHeaderLabels(self.COLS)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.setAlternatingRowColors(True)
        root.addWidget(self.tbl)

        btns = QHBoxLayout()
        btnPrint = QPushButton("Print Report")
        btnPrint.clicked.connect(self._print_report)
        btns.addWidget(btnPrint)
        btns.addStretch()
        btnClose = QPushButton("Close")
        btnClose.clicked.connect(self.reject)
        btns.addWidget(btnClose)
        root.addLayout(btns)

        from PyQt6.QtGui import QShortcut, QKeySequence
        QShortcut(QKeySequence("F5"), self, activated=self._load_categories)
        QShortcut(QKeySequence("Esc"), self, activated=self.reject)

    def _load_categories(self):
        from HMS_py.core import roomcategory, roomstatus
        from datetime import date

        as_on = self.deDate.date().toPyDate()

        try:
            cats = roomcategory.list_all()
            avail = roomstatus.room_availability(date.today(), date.today())
        except Exception:
            cats = []
            avail = []

        # Count rooms by category
        cat_counts = {}
        for r in avail:
            cat = r.get("cat", "")
            status = "Dirty" if r.get("dirty", False) else "Vacant"
            if r.get("reserved", False):  # fallback
                status = "Occupied"
            cat_counts.setdefault(cat, {"total": 0, "vacant": 0, "occupied": 0, "dirty": 0, "ooo": 0})
            cat_counts[cat]["total"] += 1
            if status == "Vacant":
                cat_counts[cat]["vacant"] += 1
            elif status == "Occupied":
                cat_counts[cat]["occupied"] += 1
            elif status == "Dirty":
                cat_counts[cat]["dirty"] += 1
            # OOO not tracked in avail, would need RoomBlockOut

        self.tbl.setRowCount(len(cats))
        for r, c in enumerate(cats):
            cat_code = c["code"]
            cat_name = c["name"]
            counts = cat_counts.get(cat_code, {"total": 0, "vacant": 0, "occupied": 0, "dirty": 0, "ooo": 0})
            total = counts["total"]
            occupied = counts["occupied"]
            occ_pct = (occupied * 100.0 / total) if total > 0 else 0

            vals = [cat_code, cat_name, total, counts["vacant"],
                    counts["occupied"], 0, counts["dirty"], counts["ooo"],
                    f"{occ_pct:.1f}%"]
            for c, v in enumerate(vals):
                it = QTableWidgetItem("" if v is None else str(v))
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                self.tbl.setItem(r, c, it)

    def _print_report(self):
        from HMS_py.ui import print_preview as _pp
        _pp.preview_text("Room Category-wise reservation report\n(To be implemented)", "Room Category-wise Report", self)


def open_room_wise_lookup(parent=None, user: str = "SA"):
    RoomWiseReservationLookup(parent, user=user).exec()


def open_room_type_lookup(parent=None, user: str = "SA"):
    RoomTypeWiseReservationLookup(parent, user=user).exec()


# ──────────────────────────────────────────────────────────────────────
# Reservation Status Screen (VB6: FrmReservationStatus.frm)
# ──────────────────────────────────────────────────────────────────────

class ReservationStatusScreen(QDialog):
    """VB6 FrmReservationStatus.frm: 'Reservation Status'.
    
    Shows reservation status by room type with different views:
    - Expected Arrival (Index 0): Bookings arriving on selected date
    - Guest In House (Index 1): Currently checked-in guests
    - ConFirm (Index 2): Confirmed bookings
    - Tentative (Index 3): Tentative/Unconfirmed bookings
    - With advance (Index 4): Bookings with advance deposit
    
    Features:
    - Date navigation (Previous/Next day)
    - Room type filter (DGRoomType)
    - Color-coded grid (## = Occupied, # = Advance Due)
    - Room type filter (DGRoomType dropdown)
    - Navigation: Previous/Next/Unload buttons
    """

    VIEW_MODES = [
        ("Expected Arrival", 0),
        ("Guest In House", 1),
        ("ConFirm", 2),
        ("Tentative", 3),
        ("With advance", 4),
    ]

    COLS = ["SNo", "RoomNo", "RoomType", "RoomRate", "RoomCatCode",
            "GuestName", "Advance", "Deposite", "Status", "Remarks"]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Reservation Status - HMS_py")
        self.resize(1100, 650)
        self.current_mode = 0
        self.current_date = datetime.date.today()
        self.room_categories = []
        self._build_ui()
        self._load_room_categories()
        self._load_data()

    def _build_ui(self):
        root = QVBoxLayout(self)
        root.setSpacing(8)

        # Header with mode tabs
        header_frame = QFrame()
        header_frame.setStyleSheet("background: #2f7fc1; border-radius: 4px;")
        header_layout = QHBoxLayout(header_frame)
        header_layout.setContentsMargins(12, 8, 12, 8)

        self.mode_buttons = []
        for i, (name, _) in enumerate(self.VIEW_MODES):
            btn = QPushButton(name)
            btn.setCheckable(True)
            btn.setMinimumHeight(32)
            btn.setStyleSheet("""
                QPushButton { background: transparent; color: #fffbe6; 
                    font-weight: bold; font-size: 11px; border: none; 
                    padding: 4px 12px; border-radius: 3px; }
                QPushButton:checked { background: #fffbe6; color: #2f7fc1; }
                QPushButton:hover { background: rgba(255,255,255,0.2); }
            """)
            btn.clicked.connect(lambda _, idx=i: self._switch_mode(idx))
            header_layout.addWidget(btn)
            self.mode_buttons.append(btn)

        header_layout.addStretch()

        # Date navigation
        nav_layout = QHBoxLayout()
        nav_layout.setSpacing(8)

        self.btnPrev = QPushButton("◀ Prev Day")
        self.btnPrev.setToolTip("Previous Day (Ctrl+Left)")
        self.btnPrev.clicked.connect(lambda: self._navigate_day(-1))
        nav_layout.addWidget(self.btnPrev)

        self.deDate = QDateEdit(QDate.currentDate())
        self.deDate.setCalendarPopup(True)
        self.deDate.setDisplayFormat("dd/MM/yyyy")
        self.deDate.setFixedWidth(140)
        self.deDate.dateChanged.connect(self._on_date_changed)
        nav_layout.addWidget(QLabel("Date:"))
        nav_layout.addWidget(self.deDate)

        self.btnNext = QPushButton("Next Day ▶")
        self.btnNext.setToolTip("Next Day (Ctrl+Right)")
        self.btnNext.clicked.connect(lambda: self._navigate_day(1))
        nav_layout.addWidget(self.btnNext)

        header_layout.addLayout(nav_layout)
        root.addWidget(header_frame)

        # Room type filter
        filter_frame = QFrame()
        filter_layout = QHBoxLayout(filter_frame)
        filter_layout.setContentsMargins(0, 4, 0, 4)

        filter_layout.addWidget(QLabel("Room Type:"))
        self.cbRoomType = QComboBox()
        self.cbRoomType.addItem("All Room Types", "")
        self.cbRoomType.currentIndexChanged.connect(self._on_room_type_changed)
        filter_layout.addWidget(self.cbRoomType)

        filter_layout.addStretch()

        # Date display
        self.lblDateInfo = QLabel()
        self.lblDateInfo.setStyleSheet("color: #fffbe6; font-weight: bold; font-size: 12px;")
        filter_layout.addWidget(self.lblDateInfo)

        root.addWidget(filter_frame)

        # Main Grid (FGrid equivalent)
        self.tbl = QTableWidget(0, len(self.COLS))
        self.tbl.setHorizontalHeaderLabels(self.COLS)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setColumnWidth(0, 50)   # SNo
        self.tbl.setColumnWidth(1, 80)   # RoomNo
        self.tbl.setColumnWidth(2, 120)  # RoomType
        self.tbl.setColumnWidth(3, 80)   # RoomRate
        self.tbl.setColumnWidth(4, 100)  # RoomCatCode
        self.tbl.setColumnWidth(5, 180)  # GuestName
        self.tbl.setColumnWidth(6, 80)   # Advance
        self.tbl.setColumnWidth(7, 80)   # Deposite
        self.tbl.setColumnWidth(8, 100)  # Status
        self.tbl.setColumnWidth(9, 200)  # Remarks
        root.addWidget(self.tbl)

        # Bottom buttons
        btns = QHBoxLayout()
        btns.setSpacing(8)

        self.btnPrevDay = QPushButton("◀ Prev Day")
        self.btnPrevDay.clicked.connect(lambda: self._navigate_day(-1))
        btns.addWidget(self.btnPrevDay)

        self.btnNextDay = QPushButton("Next Day ▶")
        self.btnNextDay.clicked.connect(lambda: self._navigate_day(1))
        btns.addWidget(self.btnNextDay)

        btns.addStretch()

        btnPrint = QPushButton("Print Report")
        btnPrint.clicked.connect(self._print_report)
        btns.addWidget(btnPrint)

        btnClose = QPushButton("Un Load")
        btnClose.setToolTip("Close this window (Esc)")
        btnClose.clicked.connect(self.reject)
        btns.addWidget(btnClose)

        root.addLayout(btns)

        # Status bar
        self.lblStatus = QLabel("Ready")
        self.lblStatus.setStyleSheet("color: #666; padding: 4px;")
        root.addWidget(self.lblStatus)

        # Shortcuts
        from PyQt6.QtGui import QShortcut, QKeySequence
        QShortcut(QKeySequence("Left"), self, activated=lambda: self._navigate_day(-1))
        QShortcut(QKeySequence("Right"), self, activated=lambda: self._navigate_day(1))
        QShortcut(QKeySequence("Esc"), self, activated=self.reject)
        QShortcut(QKeySequence("F5"), self, activated=self._load_data)

    def _load_room_categories(self):
        try:
            from HMS_py.core import roomcategory
            self.room_categories = roomcategory.list_all()
            self.cbRoomType.clear()
            self.cbRoomType.addItem("All Room Types", "")
            for c in self.room_categories:
                self.cbRoomType.addItem(f"{c['code']} - {c['name']}", c["code"])
        except Exception as e:
            self.lblStatus.setText(f"Error loading room categories: {e}")

    def _switch_mode(self, mode_idx: int):
        self.current_mode = mode_idx
        for i, btn in enumerate(self.mode_buttons):
            btn.setChecked(i == mode_idx)
        self._load_data()

    def _on_room_type_changed(self):
        self._load_data()

    def _navigate_day(self, delta: int):
        self.current_date += datetime.timedelta(days=delta)
        self.deDate.setDate(QDate(self.current_date.year, self.current_date.month, self.current_date.day))
        self._load_data()

    def _on_date_changed(self):
        self.current_date = self.deDate.date().toPyDate()
        self._load_data()

    def _load_data(self):
        from HMS_py.core import db
        from HMS_py.core.front_office import reservation

        mode = self.VIEW_MODES[self.current_mode][1]
        room_type_filter = self.cbRoomType.currentData()
        sel_date = self.current_date

        # Build query based on mode (VB6 Proc_212_22_1337904 / Proc_212_23_F29B28)
        # Mode 0: Expected Arrival (ArrDate = sel_date)
        # Mode 1: Guest In House (ChkInDate <= date, ChkOutDate IS NULL)
        # Mode 2: Confirmed (ResStatus = 'Confirm' or '')
        # Mode 3: Tentative (ResStatus = 'Tentative')
        # Mode 4: With Advance (AdvDueDate = date)

        try:
            if mode == 0:  # Expected Arrival
                sql = """
                    SELECT '' As SNo, '' As RoomNo, RC.Name as RoomType, '' As RoomRate, '' As RoomCatCode,
                           B.GuestName, '' As Advance, '' As DepositeAmt,
                           'Expected' As Status, '' As Remarks
                    FROM ViewBooking B
                    LEFT JOIN RoomCat RC ON B.RoomCat = RC.Code
                    WHERE B.ArrDate = ? AND B.Cancel = 'N'
                    AND (B.RoomType = 'RO' OR B.RoomType IS NULL)
                    AND B.LogSite_Code = ?
                    ORDER BY B.ArrDate, B.GuestName
                """
                params = (sel_date, SITE_CODE)
            elif mode == 1:  # Guest In House
                sql = """
                    SELECT '' As SNo, RO.RoomNo As RoomNo, RC.Name as RoomType, 
                           RO.RoomRate, B.RoomCat As RoomCatCode,
                           B.GuestName, 
                           (SELECT SUM(AmtCr) - SUM(AmtDr) FROM Paycharge WHERE DocId = GF.DocId) As Advance,
                           (SELECT MAX(DocId) FROM Paycharge WHERE DocId = GF.DocId) As DepositeAmt,
                           'In House' As Status, '' As Remarks
                    FROM RoomOcc RO
                    INNER JOIN GuestFolio GF ON RO.DocId = GF.DocId
                    LEFT JOIN ViewBooking B ON B.DocId = GF.BookingDocId
                    LEFT JOIN RoomCat RC ON B.RoomCat = RC.Code
                    WHERE RO.ChkOutDate IS NULL AND RO.Type = 'I'
                    AND RO.Site_Code = ? AND RO.Vprefix = ?
                    ORDER BY RO.RoomNo
                """
                params = (SITE_CODE, VPREFIX)
            elif mode == 2:  # Confirmed
                sql = """
                    SELECT '' As SNo, '' As RoomNo, RC.Name as RoomType, '' As RoomRate, '' As RoomCatCode,
                           B.GuestName, '' As Advance, '' As DepositeAmt,
                           'Confirmed' As Status, '' As Remarks
                    FROM ViewBooking B
                    LEFT JOIN RoomCat RC ON B.RoomCat = RC.Code
                    WHERE B.ResStatus IN ('Confirm', '') AND B.Cancel = 'N'
                    AND (B.RoomType = 'RO' OR B.RoomType IS NULL)
                    AND B.LogSite_Code = ?
                    ORDER BY B.ArrDate, B.GuestName
                """
                params = (SITE_CODE,)
            elif mode == 3:  # Tentative
                sql = """
                    SELECT '' As SNo, '' As RoomNo, RC.Name as RoomType, '' As RoomRate, '' As RoomCatCode,
                           B.GuestName, '' As Advance, '' As DepositeAmt,
                           'Tentative' As Status, '' As Remarks
                    FROM ViewBooking B
                    LEFT JOIN RoomCat RC ON B.RoomCat = RC.Code
                    WHERE B.ResStatus = 'Tentative' AND B.Cancel = 'N'
                    AND (B.RoomType = 'RO' OR B.RoomType IS NULL)
                    AND B.LogSite_Code = ?
                    ORDER BY B.ArrDate, B.GuestName
                """
                params = (SITE_CODE,)
            elif mode == 4:  # With Advance
                sql = """
                    SELECT '' As SNo, '' As RoomNo, RC.Name as RoomType, '' As RoomRate, '' As RoomCatCode,
                           B.GuestName, '' As Advance, '' As DepositeAmt,
                           'Advance' As Status, '' As Remarks
                    FROM ViewBooking B
                    LEFT JOIN RoomCat RC ON B.RoomCat = RC.Code
                    WHERE B.AdvDueDate = ? AND B.Cancel = 'N'
                    AND (B.RoomType = 'RO' OR B.RoomType IS NULL)
                    AND B.LogSite_Code = ?
                    ORDER BY B.ArrDate, B.GuestName
                """
                params = (sel_date, SITE_CODE)
            else:
                return

            # Add room type filter
            if room_type_filter:
                if mode in (0, 2, 3, 4):
                    sql = sql.replace("ORDER BY", "AND B.RoomCat = ? ORDER BY")
                    params += (room_type_filter,)
                elif mode == 1:
                    sql = sql.replace("ORDER BY", "AND B.RoomCat = ? ORDER BY")
                    params += (room_type_filter,)

            rows = db.query(sql, params)

            self.tbl.setRowCount(len(rows))
            for r, row in enumerate(rows):
                for c, val in enumerate(row):
                    v = "" if val is None else str(val)
                    it = QTableWidgetItem(v)
                    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                    # Color coding: ## = Occupied (Red), # = Advance Due (Yellow)
                    if self.current_mode == 1:  # In House
                        # Color occupied rooms
                        pass
                    self.tbl.setItem(r, c, it)

            # Update UI state
            mode_name = self.VIEW_MODES[self.current_mode][0]
            self.lblStatus.setText(f"{mode_name} | Date: {sel_date:%d/%b/%Y} | Records: {len(rows)}")
            self.lblDateInfo.setText(f"{mode_name} - {sel_date:%d/%b/%Y}")

        except Exception as e:
            self.lblStatus.setText(f"Error loading data: {e}")

    def _print_report(self):
        from HMS_py.ui import print_preview as _pp
        _pp.preview_text("Reservation Status Report\n(To be implemented)", "Reservation Status Report", self)


def open_reservation_status(parent=None, user: str = "SA"):
    ReservationStatusScreen(parent, user=user).exec()


def main() -> int:
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    d = ReservationBrowser()
    d.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())