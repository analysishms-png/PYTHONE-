"""Check-In UI - Modern Laravel-inspired (VB6 fdCheckIn.frm + fdWalkInEntry.frm).

Laravel patterns from addnewprofile.blade.php + roomstatus.blade.php:
- Visual room rack for room selection
- Guest profile inline creation/edit (search + new)
- Multi-step flow: Guest → Room → Details → Confirm
- KPI summary cards (Arrivals Today, Departures Today, In-House, Available)
- Modal-based operations
- Toast notifications
- Keyboard shortcuts

VB6 parity:
- DocId 21-char pattern (D + site + CHK + year + folio)
- FolioNo = MAX+1 per Vprefix (race-safe UPDLOCK)
- GuestProf auto-code KK######
- PYT* safety guard for test data
- RoomOcc row created (ChkInTime, Adult, Children, RateCode)
- Walk-in: quick check-in without reservation

Run: python -m HMS_py.ui.front_office.checkin_ui
"""
from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt, QTimer, pyqtSignal
from PyQt6.QtGui import QFont, QShortcut, QKeySequence, QCursor
from PyQt6.QtWidgets import (
    QApplication, QDialog, QVBoxLayout, QHBoxLayout, QFormLayout,
    QLabel, QLineEdit, QDateEdit, QComboBox, QPushButton,
    QTableWidget, QTableWidgetItem, QHeaderView, QAbstractItemView,
    QTabWidget, QWidget, QScrollArea, QFrame, QGridLayout,
    QSizePolicy, QMessageBox, QInputDialog
)

from HMS_py.core import checkin, guestprof, roomstatus
from HMS_py.ui import theme as _theme
from HMS_py.ui.components import (
    StatCard, RoomRackItem, StatusBadge, Toast, SearchBox,
    ModalBase, confirm_dialog, _room_status_palette, _status_colors,
    DataTable, DateRangePicker
)


# ---------------------------------------------------------------------------
# Guest Search/Select Modal
# ---------------------------------------------------------------------------

class GuestSelectModal(ModalBase):
    """Search and select existing guest or create new (Laravel addnewprofile pattern)."""

    guest_selected = pyqtSignal(dict)  # {"guestprof": code, "name": name, "city": city, ...}

    def __init__(self, parent=None):
        super().__init__("Select Guest", "Search existing guest or create new", parent)
        self.resize(800, 500)
        self._build()

    def _build(self):
        # Search
        self.search = SearchBox("Search guest name / code / phone...", debounce_ms=300)
        self.search.search_changed.connect(self._on_search)
        self.body_layout.addWidget(self.search)

        # Table
        self.table = DataTable(["Code", "Name", "Phone", "Mobile", "Email", "City", "Nationality"])
        self.table.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        self.table.cellDoubleClicked.connect(self._on_double_click)
        self.body_layout.addWidget(self.table, 1)

        # Buttons
        btn_row = QHBoxLayout()
        btn_new = QPushButton("Create New Guest")
        btn_new.setCursor(QCursor(Qt.CursorShape.PointingHandCursor))
        btn_new.clicked.connect(self._create_new)
        btn_row.addWidget(btn_new)
        btn_row.addStretch()
        self.body_layout.addLayout(btn_row)

        # Footer
        self.add_button("Cancel", self.reject, primary=False)
        self.btn_select = self.add_button("Select", self._accept_selection, primary=True)
        self.btn_select.setEnabled(False)

        self._load_guests("")

    def _load_guests(self, term: str):
        try:
            from HMS_py.core import db
            cn = db.connect()
            cur = cn.cursor()
            if term:
                cur.execute(
                    "SELECT TOP 100 RTRIM(Code), RTRIM(Name), RTRIM(Phone), RTRIM(Mobile), "
                    "RTRIM(EMail), RTRIM(CityCode), RTRIM(Nationality) FROM GuestProf "
                    "WHERE Name LIKE ? OR Code LIKE ? OR Mobile LIKE ? ORDER BY Name",
                    (f"%{term}%", f"%{term}%", f"%{term}%"))
            else:
                cur.execute(
                    "SELECT TOP 100 RTRIM(Code), RTRIM(Name), RTRIM(Phone), RTRIM(Mobile), "
                    "RTRIM(EMail), RTRIM(CityCode), RTRIM(Nationality) FROM GuestProf "
                    "ORDER BY Name")
            rows = cur.fetchall()
            cn.close()
        except Exception as e:
            Toast.show_message(self, f"Failed to load guests: {e}", "danger")
            rows = []

        self.table.set_data([
            [r[0], r[1], r[2] or "", r[3] or "", r[4] or "", r[5] or "", r[6] or ""]
            for r in rows
        ])

    def _on_search(self, term: str):
        self._load_guests(term)

    def _on_double_click(self, row, col):
        self._accept_selection()

    def _accept_selection(self):
        data = self.table.get_selected_row_dict(["code", "name", "phone", "mobile", "email", "city", "nationality"])
        if data:
            self.guest_selected.emit(data)
            self.accept()

    def _create_new(self):
        dlg = CreateGuestModal(self)
        if dlg.exec() == QDialog.DialogCode.Accepted:
            self.guest_selected.emit(dlg.guest_data)
            self.accept()


class CreateGuestModal(ModalBase):
    """Create new GuestProf (VB6 auto-code KK######)."""

    def __init__(self, parent=None):
        super().__init__("Create New Guest", "Guest profile will be auto-created", parent)
        self.resize(500, 450)
        self.guest_data = None
        self._build()

    def _build(self):
        form = QFormLayout()
        form.setSpacing(10)

        self.ed_name = QLineEdit()
        self.ed_name.setPlaceholderText("Guest full name (required)")
        self.ed_name.setMaxLength(50)
        form.addRow("Name *", self.ed_name)

        self.ed_phone = QLineEdit()
        self.ed_phone.setPlaceholderText("Landline")
        form.addRow("Phone", self.ed_phone)

        self.ed_mobile = QLineEdit()
        self.ed_mobile.setPlaceholderText("Mobile number")
        form.addRow("Mobile", self.ed_mobile)

        self.ed_email = QLineEdit()
        self.ed_email.setPlaceholderText("guest@email.com")
        form.addRow("Email", self.ed_email)

        self.ed_city = QLineEdit("KK0002")
        self.ed_city.setPlaceholderText("City code (e.g. KK0002)")
        form.addRow("City Code", self.ed_city)

        self.ed_nationality = QLineEdit("Indian")
        self.ed_nationality.setPlaceholderText("Nationality")
        form.addRow("Nationality", self.ed_nationality)

        self.ed_add1 = QLineEdit()
        self.ed_add1.setPlaceholderText("Address")
        form.addRow("Address", self.ed_add1)

        self.ed_type = QComboBox()
        self.ed_type.addItems(["India", "Foreign"])
        form.addRow("Type", self.ed_type)

        self.ed_idtype = QComboBox()
        self.ed_idtype.addItems(["", "Aadhar Card", "Driving Licence", "Passport", "Voter Id"])
        form.addRow("ID Type", self.ed_idtype)

        self.ed_idnumber = QLineEdit()
        self.ed_idnumber.setPlaceholderText("ID Number")
        form.addRow("ID Number", self.ed_idnumber)

        self.body_layout.addLayout(form)

        self.add_button("Cancel", self.reject, primary=False)
        self.add_button("Create", self._create, primary=True)

    def _create(self):
        name = self.ed_name.text().strip()
        if not name:
            Toast.show_message(self, "Guest name is required", "warning")
            return

        try:
            code = guestprof.next_code()
            guestprof.insert({
                "code": code,
                "name": name,
                "phone": self.ed_phone.text().strip(),
                "mobile": self.ed_mobile.text().strip(),
                "email": self.ed_email.text().strip(),
                "city": self.ed_city.text().strip(),
                "nationality": self.ed_nationality.text().strip(),
                "add1": self.ed_add1.text().strip(),
                "type": self.ed_type.currentText(),
                "id_proof": self.ed_idtype.currentText(),
                "idproof_no": self.ed_idnumber.text().strip(),
            })
            self.guest_data = {
                "guestprof": code,
                "name": name,
                "city": self.ed_city.text().strip(),
                "nationality": self.ed_nationality.text().strip(),
            }
            Toast.show_message(self, f"Guest created: {code} - {name}", "success")
            self.accept()
        except Exception as e:
            Toast.show_message(self, f"Failed to create guest: {e}", "danger")


# ---------------------------------------------------------------------------
# Room Selection Modal (Visual Room Rack)
# ---------------------------------------------------------------------------

class RoomSelectModal(ModalBase):
    """Visual room rack for room selection (Laravel roomstatus pattern)."""

    room_selected = pyqtSignal(dict)

    def __init__(self, parent=None, arrival=None, departure=None):
        super().__init__("Select Room", "Click a vacant room to select", parent)
        self.resize(1000, 600)
        self.arrival = arrival or datetime.date.today()
        self.departure = departure or (self.arrival + datetime.timedelta(days=1))
        self._build()
        self._load_rooms()

    def _build(self):
        # Filter bar
        filter_row = QHBoxLayout()
        self.cb_status = QComboBox()
        self.cb_status.addItems(["All", "Vacant", "Dirty", "Occupied", "Maintenance", "Out of Order"])
        self.cb_status.setCurrentText("All")  # Show all by default
        self.cb_status.currentIndexChanged.connect(self._load_rooms)
        filter_row.addWidget(QLabel("Status:"))
        filter_row.addWidget(self.cb_status)

        self.cb_category = QComboBox()
        self.cb_category.addItem("All Categories", None)
        self._load_categories()
        self.cb_category.currentIndexChanged.connect(self._load_rooms)
        filter_row.addWidget(QLabel("Category:"))
        filter_row.addWidget(self.cb_category)

        self.search = SearchBox("Search room no / name...", debounce_ms=300)
        self.search.search_changed.connect(self._load_rooms)
        self.search.setFixedWidth(250)
        filter_row.addWidget(self.search)
        filter_row.addStretch()

        self.body_layout.addLayout(filter_row)

        # Visual rack
        self.rack_scroll = QScrollArea()
        self.rack_scroll.setWidgetResizable(True)
        self.rack_scroll.setFrameShape(QFrame.Shape.NoFrame)

        self.rack_container = QWidget()
        self.rack_grid = QGridLayout(self.rack_container)
        self.rack_grid.setSpacing(8)
        self.rack_grid.setContentsMargins(4, 4, 4, 4)

        self.rack_scroll.setWidget(self.rack_container)
        self.body_layout.addWidget(self.rack_scroll, 1)

        # Footer
        self.add_button("Cancel", self.reject, primary=False)

    def _load_categories(self):
        try:
            from HMS_py.core import db
            cn = db.connect()
            cur = cn.cursor()
            cur.execute("SELECT DISTINCT RTRIM(RoomCat), RTRIM(Name) FROM RoomCat ORDER BY RoomCat")
            for code, name in cur.fetchall():
                self.cb_category.addItem(f"{code} - {name}" if name else code, code)
            cn.close()
        except Exception:
            pass

    def _load_rooms(self):
        # Clear
        for i in reversed(range(self.rack_grid.count())):
            w = self.rack_grid.itemAt(i).widget()
            if w:
                w.setParent(None)

        try:
            from HMS_py.core import db
            cn = db.connect()
            cur = cn.cursor()

            status_filter = self.cb_status.currentText()
            cat_filter = self.cb_category.currentData()
            search = self.search.text().strip()

            # Get available rooms (not occupied during stay)
            # Simplified: just show vacant/dirty rooms
            sql = """
                SELECT RTRIM(rm.Code), RTRIM(rm.Name), RTRIM(rm.RoomCat), RTRIM(rm.RoomStat),
                       RTRIM(rm.MaidStation), RTRIM(rm.Type)
                FROM RoomMast rm
                WHERE rm.Type = 'RO'
            """
            params = []

            if cat_filter:
                sql += " AND rm.RoomCat = ?"
                params.append(cat_filter)

            sql += " ORDER BY rm.Code"

            cur.execute(sql, params)
            rooms = cur.fetchall()
            cn.close()
        except Exception as e:
            Toast.show_message(self, f"Failed to load rooms: {e}", "danger")
            rooms = []

        # Filter by status and search
        filtered = []
        for r in rooms:
            code, name, rcat, rstat, maid, rtype = r
            # Determine status
            if rstat and rstat.strip().upper() == "D":
                status = "Dirty"
            elif rstat and rstat.strip().upper() == "M":
                status = "Maintenance"
            else:
                status = "Vacant"

            if status_filter != "All" and status_filter != status:
                continue

            if search:
                hay = f"{code} {name}".lower()
                if search.lower() not in hay:
                    continue

            filtered.append({
                "roomno": code, "name": name, "cat": rcat,
                "maid": maid, "status": status, "rawstat": rstat
            })

        # Render grid (10 cols)
        cols = 10
        for idx, room in enumerate(filtered):
            row, col = divmod(idx, cols)
            tile = RoomRackItem(room)
            tile.clicked.connect(lambda checked=False, r=room: self._on_room_clicked(r))
            self.rack_grid.addWidget(tile, row, col)

    def _on_room_clicked(self, room: dict):
        if room["status"] in ("Occupied", "Maintenance", "Out of Order"):
            Toast.show_message(self, f"Room {room['roomno']} is {room['status']}, cannot check-in", "warning")
            return
        self.room_selected.emit(room)
        self.accept()


# ---------------------------------------------------------------------------
# Check-In Wizard (Multi-step)
# ---------------------------------------------------------------------------

class CheckInWizard(QDialog):
    """Multi-step check-in wizard: Guest → Room → Details → Confirm."""

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("New Check-In - HMS_py")
        self.resize(700, 550)
        self.setModal(True)

        self.guest_data = None
        self.room_data = None
        self.details = {}

        self._build_ui()

    def _build_ui(self):
        root = QVBoxLayout(self)
        root.setContentsMargins(0, 0, 0, 0)
        root.setSpacing(0)

        # Progress header
        self.progress_frame = QFrame()
        self.progress_frame.setFixedHeight(60)
        p = _theme.palette()
        self.progress_frame.setStyleSheet(f"background: {p.get('surface', 'white')}; border-bottom: 1px solid {p.get('border', '#cbd5e1')};")
        prog_lay = QHBoxLayout(self.progress_frame)
        prog_lay.setContentsMargins(20, 0, 20, 0)

        self.steps = [
            ("1", "Guest"),
            ("2", "Room"),
            ("3", "Details"),
            ("4", "Confirm"),
        ]
        self.step_widgets = []
        for i, (num, label) in enumerate(self.steps):
            w = QLabel(f"{num}. {label}")
            w.setAlignment(Qt.AlignmentFlag.AlignCenter)
            w.setFont(QFont("Segoe UI", 11, QFont.Weight.Medium))
            self.step_widgets.append(w)
            prog_lay.addWidget(w, 1)
            if i < len(self.steps) - 1:
                line = QFrame()
                line.setFrameShape(QFrame.Shape.HLine)
                line.setFixedHeight(2)
                line.setStyleSheet(f"background: {p.get('border', '#cbd5e1')}; border: none;")
                prog_lay.addWidget(line, 1)

        self._update_progress(0)
        root.addWidget(self.progress_frame)

        # Content stack
        from PyQt6.QtWidgets import QStackedWidget
        self.stack = QStackedWidget()
        root.addWidget(self.stack, 1)

        # Step 0: Guest
        self.page_guest = self._build_guest_page()
        self.stack.addWidget(self.page_guest)

        # Step 1: Room
        self.page_room = self._build_room_page()
        self.stack.addWidget(self.page_room)

        # Step 2: Details
        self.page_details = self._build_details_page()
        self.stack.addWidget(self.page_details)

        # Step 3: Confirm
        self.page_confirm = self._build_confirm_page()
        self.stack.addWidget(self.page_confirm)

        # Navigation
        nav = QHBoxLayout()
        nav.setContentsMargins(16, 16, 16, 16)
        self.btn_back = QPushButton("Back")
        self.btn_back.clicked.connect(self._go_back)
        nav.addWidget(self.btn_back)
        nav.addStretch()
        self.btn_next = QPushButton("Next")
        self.btn_next.clicked.connect(self._go_next)
        nav.addWidget(self.btn_next)
        self.btn_finish = QPushButton("Check-In")
        self.btn_finish.clicked.connect(self._finish)
        self.btn_finish.setVisible(False)
        nav.addWidget(self.btn_finish)
        root.addLayout(nav)

        self._update_nav(0)

    def _update_progress(self, step: int):
        p = _theme.palette()
        for i, w in enumerate(self.step_widgets):
            if i < step:
                w.setStyleSheet(f"color: {p.get('accent', '#4f46e5')}; font-weight: 600;")
            elif i == step:
                w.setStyleSheet(f"color: {p.get('accent', '#4f46e5')}; font-weight: 700;")
            else:
                w.setStyleSheet(f"color: {p.get('text_dim', '#64748b')}; font-weight: 400;")

    def _update_nav(self, step: int):
        self.btn_back.setVisible(step > 0)
        self.btn_back.setEnabled(step > 0)
        self.btn_next.setVisible(step < len(self.steps) - 1)
        self.btn_finish.setVisible(step == len(self.steps) - 1)
        self._update_progress(step)

    def _go_next(self):
        step = self.stack.currentIndex()
        if step == 0 and not self.guest_data:
            Toast.show_message(self, "Select or create a guest first", "warning")
            return
        if step == 1 and not self.room_data:
            Toast.show_message(self, "Select a room first", "warning")
            return
        if step == 2:
            self._collect_details()
        self.stack.setCurrentIndex(step + 1)
        self._update_nav(step + 1)

    def _go_back(self):
        step = self.stack.currentIndex()
        if step > 0:
            self.stack.setCurrentIndex(step - 1)
            self._update_nav(step - 1)

    # ---- Step 0: Guest ----
    def _build_guest_page(self) -> QWidget:
        page = QWidget()
        lay = QVBoxLayout(page)
        lay.setContentsMargins(30, 30, 30, 30)
        lay.setSpacing(16)

        title = QLabel("Step 1: Select or Create Guest")
        title.setFont(QFont("Segoe UI", 16, QFont.Weight.Bold))
        title.setStyleSheet(f"color: {_theme.palette().get('text', '#1e293b')};")
        lay.addWidget(title)

        subtitle = QLabel("Search existing guest profile or create a new one (auto-code KK######)")
        subtitle.setStyleSheet(f"color: {_theme.palette().get('text_dim', '#64748b')};")
        subtitle.setWordWrap(True)
        lay.addWidget(subtitle)

        # Guest display
        self.guest_card = QFrame()
        self.guest_card.setFrameShape(QFrame.Shape.StyledPanel)
        p = _theme.palette()
        self.guest_card.setStyleSheet(f"background: {p.get('glass_tint', '#f8fafc')}; border-radius: 8px; border: 1px solid {p.get('border', '#cbd5e1')};")
        gc_lay = QFormLayout(self.guest_card)
        gc_lay.setSpacing(10)

        self.lbl_guest_code = QLabel("—")
        self.lbl_guest_name = QLabel("—")
        self.lbl_guest_city = QLabel("—")
        self.lbl_guest_mobile = QLabel("—")
        for lbl in (self.lbl_guest_code, self.lbl_guest_name, self.lbl_guest_city, self.lbl_guest_mobile):
            lbl.setStyleSheet(f"font-weight: 600; color: {p.get('text', '#1e293b')};")
        gc_lay.addRow("Code:", self.lbl_guest_code)
        gc_lay.addRow("Name:", self.lbl_guest_name)
        gc_lay.addRow("City:", self.lbl_guest_city)
        gc_lay.addRow("Mobile:", self.lbl_guest_mobile)

        lay.addWidget(self.guest_card)

        # Buttons
        btn_row = QHBoxLayout()
        btn_search = QPushButton("Search Guests")
        btn_search.setCursor(QCursor(Qt.CursorShape.PointingHandCursor))
        btn_search.clicked.connect(self._open_guest_search)
        btn_row.addWidget(btn_search)

        btn_new = QPushButton("Create New Guest")
        btn_new.setCursor(QCursor(Qt.CursorShape.PointingHandCursor))
        btn_new.clicked.connect(self._open_create_guest)
        btn_row.addWidget(btn_new)
        btn_row.addStretch()
        lay.addLayout(btn_row)
        lay.addStretch()
        return page

    def _open_guest_search(self):
        dlg = GuestSelectModal(self)
        dlg.guest_selected.connect(self._on_guest_selected)
        dlg.exec()

    def _open_create_guest(self):
        dlg = CreateGuestModal(self)
        if dlg.exec() == QDialog.DialogCode.Accepted:
            self._on_guest_selected(dlg.guest_data)

    def _on_guest_selected(self, data: dict):
        self.guest_data = data
        self.lbl_guest_code.setText(data.get("guestprof", "—"))
        self.lbl_guest_name.setText(data.get("name", "—"))
        self.lbl_guest_city.setText(data.get("city", "—"))
        self.lbl_guest_mobile.setText(data.get("mobile", "—"))
        Toast.show_message(self, f"Guest selected: {data.get('name')}", "success")

    # ---- Step 1: Room ----
    def _build_room_page(self) -> QWidget:
        page = QWidget()
        lay = QVBoxLayout(page)
        lay.setContentsMargins(30, 30, 30, 30)
        lay.setSpacing(16)

        title = QLabel("Step 2: Select Room")
        title.setFont(QFont("Segoe UI", 16, QFont.Weight.Bold))
        title.setStyleSheet(f"color: {_theme.palette().get('text', '#1e293b')};")
        lay.addWidget(title)

        subtitle = QLabel("Click a vacant/dirty room to select. Occupied/Maintenance/OOO rooms are disabled.")
        subtitle.setStyleSheet(f"color: {_theme.palette().get('text_dim', '#64748b')};")
        subtitle.setWordWrap(True)
        lay.addWidget(subtitle)

        # Room display
        self.room_card = QFrame()
        self.room_card.setFrameShape(QFrame.Shape.StyledPanel)
        p = _theme.palette()
        self.room_card.setStyleSheet(f"background: {p.get('glass_tint', '#f8fafc')}; border-radius: 8px; border: 1px solid {p.get('border', '#cbd5e1')};")
        rc_lay = QFormLayout(self.room_card)
        rc_lay.setSpacing(10)

        self.lbl_room_no = QLabel("—")
        self.lbl_room_name = QLabel("—")
        self.lbl_room_cat = QLabel("—")
        self.lbl_room_status = QLabel("—")
        for lbl in (self.lbl_room_no, self.lbl_room_name, self.lbl_room_cat, self.lbl_room_status):
            lbl.setStyleSheet(f"font-weight: 600; color: {p.get('text', '#1e293b')};")
        rc_lay.addRow("Room No:", self.lbl_room_no)
        rc_lay.addRow("Name:", self.lbl_room_name)
        rc_lay.addRow("Category:", self.lbl_room_cat)
        rc_lay.addRow("Status:", self.lbl_room_status)

        lay.addWidget(self.room_card)

        btn_row = QHBoxLayout()
        btn_rooms = QPushButton("Open Room Rack")
        btn_rooms.setCursor(QCursor(Qt.CursorShape.PointingHandCursor))
        btn_rooms.clicked.connect(self._open_room_rack)
        btn_row.addWidget(btn_rooms)
        btn_row.addStretch()
        lay.addLayout(btn_row)
        lay.addStretch()
        return page

    def _open_room_rack(self):
        dlg = RoomSelectModal(self, self.details.get("arrival"), self.details.get("departure"))
        dlg.room_selected.connect(self._on_room_selected)
        dlg.exec()

    def _on_room_selected(self, data: dict):
        self.room_data = data
        self.lbl_room_no.setText(data.get("roomno", "—"))
        self.lbl_room_name.setText(data.get("name", "—"))
        self.lbl_room_cat.setText(data.get("cat", "—"))
        badge = StatusBadge(data.get("status", "Vacant"), data.get("status", "Vacant"))
        # Can't add widget to QFormLayout easily, just set text with color
        p = _theme.palette()
        colors = _room_status_palette().get(data.get("status"), _room_status_palette()["Vacant"])
        self.lbl_room_status.setText(f"<span style='color:{colors['border']};font-weight:bold'>{data.get('status')}</span>")
        Toast.show_message(self, f"Room selected: {data.get('roomno')}", "success")

    # ---- Step 2: Details ----
    def _build_details_page(self) -> QWidget:
        page = QWidget()
        lay = QVBoxLayout(page)
        lay.setContentsMargins(30, 30, 30, 30)
        lay.setSpacing(16)

        title = QLabel("Step 3: Stay Details")
        title.setFont(QFont("Segoe UI", 16, QFont.Weight.Bold))
        title.setStyleSheet(f"color: {_theme.palette().get('text', '#1e293b')};")
        lay.addWidget(title)

        form = QFormLayout()
        form.setSpacing(12)

        self.de_arrival = QDateEdit(datetime.date.today())
        self.de_arrival.setCalendarPopup(True)
        self.de_arrival.setDisplayFormat("dd/MM/yyyy")
        form.addRow("Arrival Date *", self.de_arrival)

        self.de_departure = QDateEdit(datetime.date.today() + datetime.timedelta(days=1))
        self.de_departure.setCalendarPopup(True)
        self.de_departure.setDisplayFormat("dd/MM/yyyy")
        form.addRow("Departure Date *", self.de_departure)

        self.ed_adult = QLineEdit("1")
        self.ed_adult.setPlaceholderText("Adult count (default 1)")
        form.addRow("Adults *", self.ed_adult)

        self.ed_children = QLineEdit("0")
        self.ed_children.setPlaceholderText("Children count (default 0)")
        form.addRow("Children", self.ed_children)

        self.ed_rate = QLineEdit()
        self.ed_rate.setPlaceholderText("Rate Code (optional)")
        form.addRow("Rate Code", self.ed_rate)

        self.ed_chkin_time = QLineEdit(datetime.datetime.now().strftime("%H:%M"))
        self.ed_chkin_time.setPlaceholderText("Check-In Time HH:MM")
        form.addRow("Check-In Time", self.ed_chkin_time)

        self.ed_booking = QLineEdit()
        self.ed_booking.setPlaceholderText("BookingDocId (optional, from Reservation)")
        form.addRow("Booking DocId", self.ed_booking)

        lay.addLayout(form)
        lay.addStretch()
        return page

    def _collect_details(self):
        self.details = {
            "arrival": self.de_arrival.date().toPyDate(),
            "departure": self.de_departure.date().toPyDate(),
            "adult": int(self.ed_adult.text().strip() or "1"),
            "children": int(self.ed_children.text().strip() or "0"),
            "ratecode": self.ed_rate.text().strip(),
            "chkintime": self.ed_chkin_time.text().strip(),
            "bookingdocid": self.ed_booking.text().strip(),
        }
        # Validate
        if self.details["arrival"] > self.details["departure"]:
            Toast.show_message(self, "Arrival date cannot be after departure", "warning")
            self.stack.setCurrentIndex(2)
            self._update_nav(2)
            raise ValueError("Invalid dates")

    # ---- Step 3: Confirm ----
    def _build_confirm_page(self) -> QWidget:
        page = QWidget()
        lay = QVBoxLayout(page)
        lay.setContentsMargins(30, 30, 30, 30)
        lay.setSpacing(16)

        title = QLabel("Step 4: Confirm Check-In")
        title.setFont(QFont("Segoe UI", 16, QFont.Weight.Bold))
        title.setStyleSheet(f"color: {_theme.palette().get('text', '#1e293b')};")
        lay.addWidget(title)

        # Summary
        self.summary_frame = QFrame()
        self.summary_frame.setFrameShape(QFrame.Shape.StyledPanel)
        p = _theme.palette()
        self.summary_frame.setStyleSheet(f"background: {p.get('glass_tint', '#f8fafc')}; border-radius: 8px; border: 1px solid {p.get('border', '#cbd5e1')};")
        sf_lay = QFormLayout(self.summary_frame)
        sf_lay.setSpacing(10)

        self.lbl_s_guest = QLabel("—")
        self.lbl_s_room = QLabel("—")
        self.lbl_s_arrival = QLabel("—")
        self.lbl_s_departure = QLabel("—")
        self.lbl_s_adults = QLabel("—")
        self.lbl_s_children = QLabel("—")
        self.lbl_s_rate = QLabel("—")
        self.lbl_s_chkin = QLabel("—")
        self.lbl_s_booking = QLabel("—")

        for lbl in (self.lbl_s_guest, self.lbl_s_room, self.lbl_s_arrival, self.lbl_s_departure,
                    self.lbl_s_adults, self.lbl_s_children, self.lbl_s_rate, self.lbl_s_chkin, self.lbl_s_booking):
            lbl.setStyleSheet(f"font-weight: 600; color: {p.get('text', '#1e293b')};")

        sf_lay.addRow("Guest:", self.lbl_s_guest)
        sf_lay.addRow("Room:", self.lbl_s_room)
        sf_lay.addRow("Arrival:", self.lbl_s_arrival)
        sf_lay.addRow("Departure:", self.lbl_s_departure)
        sf_lay.addRow("Adults:", self.lbl_s_adults)
        sf_lay.addRow("Children:", self.lbl_s_children)
        sf_lay.addRow("Rate Code:", self.lbl_s_rate)
        sf_lay.addRow("Check-In Time:", self.lbl_s_chkin)
        sf_lay.addRow("Booking DocId:", self.lbl_s_booking)

        lay.addWidget(self.summary_frame)
        lay.addStretch()
        return page

    def _finish(self):
        # Update summary
        if not self.guest_data or not self.room_data:
            Toast.show_message(self, "Missing guest or room", "warning")
            return

        self._collect_details()

        self.lbl_s_guest.setText(f"{self.guest_data.get('guestprof')} - {self.guest_data.get('name')}")
        self.lbl_s_room.setText(f"{self.room_data.get('roomno')} - {self.room_data.get('name')}")
        self.lbl_s_arrival.setText(f"{self.details['arrival']:%d/%b/%Y}")
        self.lbl_s_departure.setText(f"{self.details['departure']:%d/%b/%Y}")
        self.lbl_s_adults.setText(str(self.details["adult"]))
        self.lbl_s_children.setText(str(self.details["children"]))
        self.lbl_s_rate.setText(self.details["ratecode"] or "—")
        self.lbl_s_chkin.setText(self.details["chkintime"])
        self.lbl_s_booking.setText(self.details["bookingdocid"] or "—")

        # Confirm dialog
        if not confirm_dialog(
            self, "Confirm Check-In",
            f"Create check-in for {self.guest_data.get('name')} in Room {self.room_data.get('roomno')}?",
            "Yes, Check-In", "Cancel", "question"
        ):
            return

        # Execute check-in
        try:
            folio = checkin.create_checkin(
                guestprof=self.guest_data.get("guestprof", ""),
                name=self.guest_data.get("name", ""),
                arr_date=self.details["arrival"],
                dep_date=self.details["departure"],
                city=self.guest_data.get("city", ""),
                bookingdocid=self.details["bookingdocid"],
                roomno=self.room_data.get("roomno", ""),
                user=self.user,
                adult=self.details["adult"],
                children=self.details["children"],
                ratecode=self.details["ratecode"],
                chkintime=self.details["chkintime"]
            )
            Toast.show_message(self, f"Check-In successful! Folio #{folio}", "success")
            self.accept()
        except ValueError as e:
            Toast.show_message(self, str(e), "warning")
        except Exception as e:
            Toast.show_message(self, f"DB error: {e}", "danger")


# ---------------------------------------------------------------------------
# Check-In Browser (List + Quick Actions)
# ---------------------------------------------------------------------------

class CheckInBrowser(QDialog):
    """Modern check-in browser with KPIs, search, and quick actions."""

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Check-In Browser - HMS_py")
        self.resize(1200, 700)
        self._build_ui()
        self.reload()

    def _build_ui(self):
        root = QVBoxLayout(self)
        root.setContentsMargins(12, 12, 12, 12)
        root.setSpacing(10)

        # Top bar
        top = QHBoxLayout()
        title = QLabel("Check-In Browser")
        title.setFont(QFont("Segoe UI", 16, QFont.Weight.Bold))
        title.setStyleSheet(f"color: {_theme.palette().get('text', '#1e293b')};")
        top.addWidget(title)
        top.addStretch()

        self.search = SearchBox("Search folio / guest / code...", debounce_ms=300)
        self.search.search_changed.connect(self._apply_filter)
        self.search.setFixedWidth(300)
        top.addWidget(self.search)

        btn_new = QPushButton("New Check-In (Ctrl+N)")
        btn_new.setCursor(QCursor(Qt.CursorShape.PointingHandCursor))
        btn_new.clicked.connect(self._new_checkin)
        top.addWidget(btn_new)

        btn_walkin = QPushButton("Walk-In (Ctrl+W)")
        btn_walkin.setCursor(QCursor(Qt.CursorShape.PointingHandCursor))
        btn_walkin.clicked.connect(self._quick_walkin)
        top.addWidget(btn_walkin)

        btn_refresh = QPushButton("Refresh (F5)")
        btn_refresh.setCursor(QCursor(Qt.CursorShape.PointingHandCursor))
        btn_refresh.clicked.connect(self.reload)
        top.addWidget(btn_refresh)

        root.addLayout(top)

        # KPI Cards
        kpi_row = QHBoxLayout()
        self.kpi_arrivals = StatCard("arrivals", "Arrivals Today", "0", "Arriving", "📅", "#3b82f6")
        self.kpi_departures = StatCard("departures", "Departures Today", "0", "Leaving", "🚪", "#ef4444")
        self.kpi_inhouse = StatCard("inhouse", "In-House", "0", "Occupied", "🏨", "#10b981")
        self.kpi_available = StatCard("available", "Available", "0", "Vacant", "🟢", "#6b7280")
        for c in (self.kpi_arrivals, self.kpi_departures, self.kpi_inhouse, self.kpi_available):
            kpi_row.addWidget(c)
        root.addLayout(kpi_row)

        # Table
        self.table = DataTable([
            "Folio", "Date", "Guest", "GuestProf", "City",
            "Days", "Departure", "Room", "User", "AE"
        ])
        self.table.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        self.table.cellDoubleClicked.connect(self._on_double_click)
        root.addWidget(self.table, 1)

        # Action buttons
        actions = QHBoxLayout()
        actions.setSpacing(8)

        self.btn_view = QPushButton("View Details")
        self.btn_view.setCursor(QCursor(Qt.CursorShape.PointingHandCursor))
        self.btn_view.clicked.connect(self._view_details)
        actions.addWidget(self.btn_view)

        self.btn_charge = QPushButton("Post Charge")
        self.btn_charge.setCursor(QCursor(Qt.CursorShape.PointingHandCursor))
        self.btn_charge.clicked.connect(self._post_charge)
        actions.addWidget(self.btn_charge)

        self.btn_amend = QPushButton("Amend Stay")
        self.btn_amend.setCursor(QCursor(Qt.CursorShape.PointingHandCursor))
        self.btn_amend.clicked.connect(self._amend_stay)
        actions.addWidget(self.btn_amend)

        self.btn_room_change = QPushButton("Room Change")
        self.btn_room_change.setCursor(QCursor(Qt.CursorShape.PointingHandCursor))
        self.btn_room_change.clicked.connect(self._room_change)
        actions.addWidget(self.btn_room_change)

        self.btn_checkout = QPushButton("Check-Out")
        self.btn_checkout.setCursor(QCursor(Qt.CursorShape.PointingHandCursor))
        self.btn_checkout.clicked.connect(self._checkout)
        actions.addWidget(self.btn_checkout)

        self.btn_delete = QPushButton("Delete (PYT)")
        self.btn_delete.setCursor(QCursor(Qt.CursorShape.PointingHandCursor))
        self.btn_delete.setStyleSheet("background: #fee2e2; color: #991b1b;")
        self.btn_delete.clicked.connect(self._delete)
        actions.addWidget(self.btn_delete)

        actions.addStretch()

        btn_close = QPushButton("Close")
        btn_close.setCursor(QCursor(Qt.CursorShape.PointingHandCursor))
        btn_close.clicked.connect(self.reject)
        actions.addWidget(btn_close)

        root.addLayout(actions)

        # Shortcuts
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._new_checkin)
        QShortcut(QKeySequence("Ctrl+W"), self, activated=self._quick_walkin)
        QShortcut(QKeySequence("F5"), self, activated=self.reload)
        QShortcut(QKeySequence("Escape"), self, activated=self.reject)

    def reload(self):
        try:
            rows = checkin.list_checkins()
        except Exception as e:
            Toast.show_message(self, f"Failed to load: {e}", "danger")
            rows = []

        self._update_kpis(rows)
        self._all_rows = rows
        self._apply_filter("")

    def _update_kpis(self, rows: list):
        today = datetime.date.today()
        arrivals = sum(1 for r in rows if r.get("vdate") == today)
        departures = sum(1 for r in rows if r.get("depdate") == today)
        inhouse = sum(1 for r in rows if r.get("vdate") <= today <= r.get("depdate", today))

        # Available rooms from roomstatus
        try:
            avail = roomstatus.room_availability(today, today)
            available = sum(1 for r in avail if r["free"])
        except Exception:
            available = 0

        self.kpi_arrivals.set_data(str(arrivals))
        self.kpi_departures.set_data(str(departures))
        self.kpi_inhouse.set_data(str(inhouse))
        self.kpi_available.set_data(str(available))

    def _apply_filter(self, term: str):
        term = term.lower().strip()
        filtered = []
        for r in self._all_rows:
            if not term:
                filtered.append(r)
                continue
            hay = f"{r.get('folio','')} {r.get('name','')} {r.get('guestprof','')} {r.get('city','')}".lower()
            if term in hay:
                filtered.append(r)

        self.table.set_data([
            [
                r.get("folio"), r.get("vdate"), r.get("name"), r.get("guestprof"),
                r.get("city"), r.get("nodays"), r.get("depdate"),
                r.get("roomno", ""), r.get("u_name"), r.get("u_ae")
            ] for r in filtered
        ])

    def _get_selected_folio(self) -> int | None:
        data = self.table.get_selected_row_dict(["folio", "vdate", "name", "guestprof", "city", "nodays", "depdate", "roomno", "u_name", "u_ae"])
        if data:
            return int(data["folio"])
        return None

    def _on_double_click(self, row, col):
        self._view_details()

    def _new_checkin(self):
        wizard = CheckInWizard(self, user=self.user)
        if wizard.exec() == QDialog.DialogCode.Accepted:
            self.reload()

    def _quick_walkin(self):
        # Simplified walk-in: just name + room, auto-fill rest
        wizard = CheckInWizard(self, user=self.user)
        # Pre-fill with PYT defaults
        wizard.guest_data = {"guestprof": "", "name": "PYT WalkIn Guest", "city": "KK0002"}
        wizard._on_guest_selected(wizard.guest_data)
        if wizard.exec() == QDialog.DialogCode.Accepted:
            self.reload()

    def _view_details(self):
        folio = self._get_selected_folio()
        if not folio:
            Toast.show_message(self, "Select a check-in first", "warning")
            return
        rec = checkin.get(folio)
        if not rec:
            Toast.show_message(self, "Check-in not found", "warning")
            return

        dlg = ModalBase("Check-In Details", f"Folio #{folio}", self)
        dlg.resize(500, 400)

        form = QFormLayout()
        form.setSpacing(8)

        def add_row(label, value):
            l = QLabel(label)
            l.setStyleSheet("font-weight: 600; color: #64748b;")
            v = QLabel(str(value) if value else "—")
            v.setStyleSheet("color: #1e293b;")
            form.addRow(l, v)

        add_row("Folio", rec["folio"])
        add_row("DocId", rec["docid"])
        add_row("Date", f"{rec['vdate']:%d/%b/%Y}")
        add_row("Guest", f"{rec['guestprof']} - {rec['name']}")
        add_row("City", rec["city"])
        add_row("Days", rec["nodays"])
        add_row("Departure", f"{rec['depdate']:%d/%b/%Y}")
        add_row("Booking", rec["bookingdocid"] or "—")
        add_row("User", rec["u_name"])
        add_row("AE", rec["u_ae"])

        dlg.body_layout.addLayout(form)
        dlg.add_button("Close", dlg.reject, primary=False)
        dlg.exec()

    def _post_charge(self):
        folio = self._get_selected_folio()
        if not folio:
            Toast.show_message(self, "Select a check-in first", "warning")
            return
        Toast.show_message(self, f"Opening Post Charge for Folio #{folio}...", "info")
        # TODO: wire to fd_forms_ui.open_post_chrg

    def _amend_stay(self):
        folio = self._get_selected_folio()
        if not folio:
            Toast.show_message(self, "Select a check-in first", "warning")
            return
        rec = checkin.get(folio)
        if not rec:
            Toast.show_message(self, "Check-in not found", "warning")
            return
        Toast.show_message(self, f"Opening Amend Stay for DocId {rec['docid']}...", "info")
        # TODO: wire to amend_stay_ui.open_amend_stay(docid=rec['docid'])

    def _room_change(self):
        folio = self._get_selected_folio()
        if not folio:
            Toast.show_message(self, "Select a check-in first", "warning")
            return
        Toast.show_message(self, f"Opening Room Change for Folio #{folio}...", "info")
        # TODO: wire to fo_sub_forms_ui.RoomChangeWindow

    def _checkout(self):
        folio = self._get_selected_folio()
        if not folio:
            Toast.show_message(self, "Select a check-in first", "warning")
            return
        Toast.show_message(self, f"Opening Check-Out for Folio #{folio}...", "info")
        # TODO: wire to checkout_ui.open_checkout

    def _delete(self):
        folio = self._get_selected_folio()
        if not folio:
            Toast.show_message(self, "Select a check-in first", "warning")
            return

        rec = checkin.get(folio)
        if not rec:
            Toast.show_message(self, "Check-in not found", "warning")
            return

        if not str(rec["name"] or "").upper().startswith("PYT"):
            Toast.show_message(self, "Safety: Only PYT* test check-ins can be deleted", "warning")
            return

        if not confirm_dialog(
            self, "Delete Check-In",
            f"Delete Folio #{folio} ({rec['name']})?\nThis also removes RoomOcc, charges, and logs.",
            "Yes, Delete", "Cancel", "danger"
        ):
            return

        try:
            checkin.delete_checkin(folio, user=self.user)
            Toast.show_message(self, f"Check-In #{folio} deleted", "success")
            self.reload()
        except ValueError as e:
            Toast.show_message(self, str(e), "warning")
        except Exception as e:
            Toast.show_message(self, f"DB error: {e}", "danger")


def open_checkin(parent=None, user: str = "SA"):
    CheckInBrowser(parent, user=user).exec()


def open_checkin_wizard(parent=None, user: str = "SA"):
    CheckInWizard(parent, user=user).exec()


def main() -> int:
    import os
    os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
    app = QApplication(sys.argv)
    w = CheckInBrowser()
    w.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())