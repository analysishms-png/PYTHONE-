"""PARTIAL bucket UI ports — Wave 7 (rack/room-lookup/walk-in batch).

VB6 originals (../FODER/*.frm) -> windows here:
  fdRoomDisplay     -> RoomViewWindow        ('Room View')
  FdLookUpRoomNo    -> DisplayRackWindow     ('Display Rack')
  fdRoomOcc         -> RoomOccLookupWindow   ('Reservation Look Up Room Wise')
  fdWalkInEntry     -> WalkInEntryWindow     ('Walk In / Check In Entry')

Core ops:
  HMS_py.core.roomstatus — room_rack (Occupied/Blocked/Dirty/Vacant rules)
  HMS_py.core.checkin    — create_checkin (GuestFolio+RoomOcc+FolioLog,
                           adult/children/chkintime — FO-7), get
  HMS_py.core.checkout   — list_active_folios

VB6 evidence (frm line refs):
  fdRoomDisplay.frm:110 — 'select * from roommast where logsite_code=...'
    (rack visual; :253 PicPath select per room — photo theme, text grid
    port me enough).
  FdLookUpRoomNo.frm:477 — 'SELECT Count(*) FROM RoomOcc WHERE ... and
    Type Not IN ('O','C') AND (CHKINDATE<...)'; :510 'SELECT Count(*) FROM
    RoomMast where type='RO' and inclcount='Y''; :574 'SELECT * FROM
    ROOMCAT' (category-wise free/occupied counts).
  fdWalkInEntry.frm:5663/6775 — 33-col 'Insert Into RoomOcc ...' + :5954/
    7001 40-col 'Insert Into GuestFolio ...' (+ GuestFolioProfDetail)
    == checkin.create_checkin port (P4-c MISSING-LOGIC fix).
"""
from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt, QDate
from PyQt6.QtGui import QColor
from PyQt6.QtWidgets import (QApplication, QComboBox, QDateEdit, QFormLayout,
                             QGridLayout, QHBoxLayout, QLabel, QLineEdit,
                             QMainWindow, QMessageBox, QPushButton,
                             QTableWidget, QTableWidgetItem, QVBoxLayout,
                             QFrame, QScrollArea, QStackedWidget, QWidget)

from HMS_py.core import checkin, checkout, roomstatus
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
    lbl = QLabel(text)
    lbl.setStyleSheet("font-size:14pt; font-weight:bold; color:#1a3c6e;")
    return lbl


def _msgbox_err(w, e: Exception):
    QMessageBox.critical(w, "Error", f"{type(e).__name__}: {e}")


def _d(v):
    if isinstance(v, datetime.datetime):
        return v.date()
    return v


def _status_color(status: str) -> QColor:
    m = {"Occupied": QColor(210, 235, 210), "Dirty": QColor(250, 230, 200),
         "Maintenance": QColor(250, 210, 210),
         "Out of Order": QColor(240, 200, 200)}
    return m.get(status, QColor(255, 255, 255))


class _StatusBar:
    def _say(self, msg: str):
        self.statusBar().showMessage(msg, 8000)


# ────────────────────────────────────────────────────────────────
# 1. Room View (fdRoomDisplay -> roomstatus.room_rack, tile grid)
# ────────────────────────────────────────────────────────────────
class RoomViewWindow(QMainWindow, _StatusBar):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Room View")
        self.resize(1000, 600)
        self._build()
        self._fill()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        top = QHBoxLayout()
        top.addWidget(_title("Room View"))
        top.addStretch(1)
        b = QPushButton("Refresh")
        b.clicked.connect(self._fill)
        top.addWidget(b)
        lay.addLayout(top)
        self.info = QLabel("")
        lay.addWidget(self.info)
        self.tilebox = QWidget()
        self.tiles = QGridLayout(self.tilebox)
        self.tiles.setSpacing(6)
        lay.addWidget(self.tilebox, 1)
        lay.addStretch(1)

    def _fill(self):
        try:
            rooms = roomstatus.room_rack()
        except Exception as e:
            _msgbox_err(self, e)
            return
        # clear tiles
        while self.tiles.count():
            it = self.tiles.takeAt(0)
            if it.widget():
                it.widget().deleteLater()
        counts: dict[str, int] = {}
        col = row = 0
        per_row = 8
        for r in rooms:
            counts[r["status"]] = counts.get(r["status"], 0) + 1
            tile = QLabel(
                f"{r['roomno']}\n{r['status']}\n"
                f"{(r['guest'] or '—')[:14]}")
            tile.setAlignment(Qt.AlignmentFlag.AlignCenter)
            tile.setFixedSize(104, 64)
            tile.setAutoFillBackground(True)
            pal = tile.palette()
            pal.setColor(tile.backgroundRole(), _status_color(r["status"]))
            tile.setPalette(pal)
            tile.setToolTip(
                f"{r['roomno']} [{r['type']}/{r['cat']}] {r['status']} "
                f"folio={r['folio'] or '-'} dep={_d(r['dep']) or '-'}")
            self.tiles.addWidget(tile, row, col)
            col += 1
            if col >= per_row:
                col = 0
                row += 1
        self.info.setText(
            "   ".join(f"{k}: {v}" for k, v in sorted(counts.items()))
            + f"   |   total {len(rooms)}")
        self._say(f"{len(rooms)} room(s) rendered")


# ────────────────────────────────────────────────────────────────
# 2. Display Rack (FdLookUpRoomNo — category-wise free/occ counts)
# ────────────────────────────────────────────────────────────────
class DisplayRackWindow(QMainWindow, _StatusBar):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Display Rack")
        self.resize(860, 480)
        self._build()
        self._fill()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Display Rack"))
        self.grid = QTableWidget()
        self.grid.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        lay.addWidget(self.grid)
        self.lbl_tot = QLabel("")
        lay.addWidget(self.lbl_tot)
        bar = QHBoxLayout()
        b = QPushButton("Refresh")
        b.clicked.connect(self._fill)
        bar.addWidget(b)
        bar.addStretch(1)
        lay.addLayout(bar)

    def _fill(self):
        from HMS_py.core import db
        try:
            site = roomstatus.SITE_CODE
            # VB6 frm:510 — total rooms (type='RO', inclcount='Y')
            tot = db.query(
                "SELECT RTRIM(RoomCat), COUNT(*) FROM RoomMast WHERE "
                "Type = 'RO' AND (LogSite_Code = ? OR LogSite_Code = 'HO') "
                "GROUP BY RTRIM(RoomCat) ORDER BY 1", (site,))
            # open occupancy per room -> per category
            occ = db.query(
                "SELECT RTRIM(m.RoomCat), COUNT(*) FROM RoomOcc ro INNER "
                "JOIN RoomMast m ON m.Code = ro.RoomNo AND "
                "(m.LogSite_Code = ? OR m.LogSite_Code = 'HO') "
                "WHERE ro.ChkOutDate IS NULL AND ro.Site_Code = ? "
                "GROUP BY RTRIM(m.RoomCat) ORDER BY 1",
                (site, site))
            occ_map = {r[0]: r[1] for r in occ}
            rows = []
            tot_rooms = tot_free = 0
            for cat, n in tot:
                o = occ_map.get(cat, 0)
                rows.append([cat, n, o, n - o,
                             f"{(o / n * 100) if n else 0:.0f}%"])
                tot_rooms += n
                tot_free += (n - o)
            _fill_grid(self.grid,
                       ["Category", "Rooms", "Occupied", "Free", "Occ%"],
                       rows)
            self.lbl_tot.setText(f"Total {tot_rooms} rooms, free {tot_free}")
            self._say(f"{len(rows)} category(ies)")
        except Exception as e:
            _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# 3. Reservation Look Up Room Wise (fdRoomOcc — occupancy by room)
# ────────────────────────────────────────────────────────────────
class RoomOccLookupWindow(QMainWindow, _StatusBar):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Reservation Look Up Room Wise")
        self.resize(1000, 560)
        self._build()
        self._fill()

    def _build(self):
        c = QWidget(); self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.addWidget(_title("Reservation Look Up Room Wise"))
        top = QHBoxLayout()
        top.addWidget(QLabel("Room"))
        self.txt_room = QLineEdit()
        self.txt_room.setPlaceholderText("room no (blank = sab)")
        self.txt_room.returnPressed.connect(self._fill)
        top.addWidget(self.txt_room)
        b = QPushButton("Search")
        b.clicked.connect(self._fill)
        top.addWidget(b)
        top.addStretch(1)
        lay.addLayout(top)
        self.grid = QTableWidget()
        self.grid.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        lay.addWidget(self.grid)
        self._say("ready")

    def _fill(self):
        from HMS_py.core import db
        try:
            room = self.txt_room.text().strip()
            sql = ("SELECT RTRIM(ro.RoomNo), ro.FolioNo, RTRIM(gf.Name), "
                   "CONVERT(date, ro.ChkInDate), CONVERT(date, ro.DepDate), "
                   "ro.Adult, ro.Children, ro.ChkOutDate "
                   "FROM RoomOcc ro LEFT JOIN GuestFolio gf ON "
                   "gf.DocId = ro.DocId WHERE ro.Site_Code = ? AND "
                   "ro.Vprefix = ?")
            params = [roomstatus.SITE_CODE, "2026"]
            if room:
                sql += " AND ro.RoomNo LIKE ?"
                params.append(f"%{room}%")
            sql += " ORDER BY ro.RoomNo, ro.SNo"
            rows = db.query(sql, tuple(params))
            _fill_grid(self.grid,
                       ["Room", "Folio", "Guest", "Check-In", "Departure",
                        "Adult", "Children", "ChkOutDate"],
                       [[r[0], r[1], (r[2] or "").strip(), _d(r[3]),
                         _d(r[4]), r[5] or 0, r[6] or 0,
                         "OPEN" if r[7] is None else _d(r[7])]
                        for r in rows])
            nopen = sum(1 for r in rows if r[7] is None)
            self._say(f"{len(rows)} row(s); {nopen} open")
        except Exception as e:
            _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# 4. Walk In / Check In Entry (fdWalkInEntry -> checkin.create_checkin)
# ────────────────────────────────────────────────────────────────
class WalkInEntryWindow(QMainWindow, _StatusBar):
    STEP_LABELS = ("Stay", "Guest", "Review")

    def __init__(self, parent=None, user: str = "PYADMIN"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Walk In / Check In Entry")
        self.resize(760, 520)
        self.setMinimumSize(680, 480)
        self._build()
        self._load_rooms()
        self._show_step(0)

    def _build(self):
        p = palette()
        radius = p.get("radius", 8)
        c = QWidget()
        c.setObjectName("walkinRoot")
        self.setCentralWidget(c)
        lay = QVBoxLayout(c)
        lay.setContentsMargins(0, 0, 0, 0)
        lay.setSpacing(0)

        header = QFrame()
        header.setObjectName("walkinHeader")
        header.setFixedHeight(78)
        header_lay = QHBoxLayout(header)
        header_lay.setContentsMargins(22, 12, 22, 12)
        header_lay.setSpacing(12)
        accent = QFrame()
        accent.setObjectName("headerAccent")
        accent.setFixedWidth(6)
        header_lay.addWidget(accent)

        title_box = QVBoxLayout()
        title_box.setSpacing(2)
        title = QLabel("Walk In / Check In Entry")
        title.setObjectName("walkinTitle")
        subtitle = QLabel("Front Office | Room allocation and guest registration")
        subtitle.setObjectName("walkinSubtitle")
        title_box.addWidget(title)
        title_box.addWidget(subtitle)
        header_lay.addLayout(title_box, 1)

        self.lbl_step = QLabel()
        self.lbl_step.setObjectName("stepSummary")
        self.lbl_step.setAlignment(Qt.AlignmentFlag.AlignRight |
                                   Qt.AlignmentFlag.AlignVCenter)
        header_lay.addWidget(self.lbl_step)
        lay.addWidget(header)

        self.step_bar = QFrame()
        self.step_bar.setObjectName("stepBar")
        self.step_bar.setFixedHeight(48)
        step_lay = QHBoxLayout(self.step_bar)
        step_lay.setContentsMargins(22, 8, 22, 8)
        step_lay.setSpacing(8)
        self.step_labels = []
        for index, label in enumerate(self.STEP_LABELS):
            step_label = QLabel(f"{index + 1}  {label}")
            step_label.setObjectName("stepLabel")
            step_label.setAlignment(Qt.AlignmentFlag.AlignCenter)
            self.step_labels.append(step_label)
            step_lay.addWidget(step_label)
            if index < len(self.STEP_LABELS) - 1:
                separator = QLabel("›")
                separator.setObjectName("stepSeparator")
                step_lay.addWidget(separator)
        step_lay.addStretch(1)
        lay.addWidget(self.step_bar)

        content = QWidget()
        content.setObjectName("walkinContent")
        content_lay = QVBoxLayout(content)
        content_lay.setContentsMargins(22, 18, 22, 16)
        content_lay.setSpacing(12)

        self.step_stack = QStackedWidget()
        self.step_stack.setObjectName("walkinStepStack")

        self.stay_page = QFrame()
        self.stay_page.setObjectName("formPage")
        stay_form = QFormLayout(self.stay_page)
        stay_form.setContentsMargins(18, 16, 18, 16)
        stay_form.setHorizontalSpacing(18)
        stay_form.setVerticalSpacing(10)
        stay_form.setLabelAlignment(Qt.AlignmentFlag.AlignLeft |
                                    Qt.AlignmentFlag.AlignVCenter)
        self.txt_name = QLineEdit()
        self.txt_name.setPlaceholderText("Enter guest name")
        stay_form.addRow("Guest Name*", self.txt_name)
        self.txt_city = QLineEdit()
        self.txt_city.setPlaceholderText("City code, optional")
        stay_form.addRow("City", self.txt_city)
        today = datetime.date.today()
        self.dt_arr = QDateEdit(QDate(today.year, today.month, today.day))
        self.dt_arr.setCalendarPopup(True)
        stay_form.addRow("Arrival", self.dt_arr)
        dep = today + datetime.timedelta(days=1)
        self.dt_dep = QDateEdit(QDate(dep.year, dep.month, dep.day))
        self.dt_dep.setCalendarPopup(True)
        stay_form.addRow("Departure", self.dt_dep)
        self.cmb_room = QComboBox()
        stay_form.addRow("Room (vacant)", self.cmb_room)
        self.spin_adult = QComboBox()
        self.spin_adult.addItems(["1", "2", "3", "4"])
        stay_form.addRow("Adults", self.spin_adult)
        self.spin_child = QComboBox()
        self.spin_child.addItems(["0", "1", "2", "3"])
        stay_form.addRow("Children", self.spin_child)

        self.guest_page = QFrame()
        self.guest_page.setObjectName("formPage")
        guest_form = QFormLayout(self.guest_page)
        guest_form.setContentsMargins(18, 16, 18, 16)
        guest_form.setHorizontalSpacing(18)
        guest_form.setVerticalSpacing(10)
        guest_form.setLabelAlignment(Qt.AlignmentFlag.AlignLeft |
                                    Qt.AlignmentFlag.AlignVCenter)
        self.txt_guestprof = QLineEdit()
        self.txt_guestprof.setPlaceholderText("Optional profile code")
        guest_form.addRow("Guest Profile Code", self.txt_guestprof)
        self.txt_booking = QLineEdit()
        self.txt_booking.setPlaceholderText("Optional reservation document id")
        guest_form.addRow("Booking Document", self.txt_booking)
        self.txt_rate = QLineEdit()
        self.txt_rate.setPlaceholderText("Optional rate code")
        guest_form.addRow("Rate Code", self.txt_rate)
        guest_note = QLabel(
            "These identifiers are carried into the existing check-in engine.")
        guest_note.setObjectName("formNote")
        guest_note.setWordWrap(True)
        guest_form.addRow("", guest_note)

        self.review_page = QFrame()
        self.review_page.setObjectName("reviewPage")
        review_lay = QVBoxLayout(self.review_page)
        review_lay.setContentsMargins(20, 18, 20, 18)
        review_lay.setSpacing(10)
        review_heading = QLabel("Review before check-in")
        review_heading.setObjectName("reviewHeading")
        review_lay.addWidget(review_heading)
        self.lbl_review = QLabel()
        self.lbl_review.setObjectName("reviewText")
        self.lbl_review.setWordWrap(True)
        self.lbl_review.setTextFormat(Qt.TextFormat.PlainText)
        review_lay.addWidget(self.lbl_review)
        review_lay.addStretch(1)

        self.step_stack.addWidget(self.stay_page)
        self.step_stack.addWidget(self.guest_page)
        self.step_stack.addWidget(self.review_page)
        scroll = QScrollArea()
        scroll.setObjectName("stepScroll")
        scroll.setWidgetResizable(True)
        scroll.setFrameShape(QFrame.Shape.NoFrame)
        scroll.setWidget(self.step_stack)
        content_lay.addWidget(scroll, 1)

        self.lbl_done = QLabel("")
        self.lbl_done.setObjectName("statusMessage")
        content_lay.addWidget(self.lbl_done)
        lay.addWidget(content, 1)

        action_bar = QFrame()
        action_bar.setObjectName("actionBar")
        bar = QHBoxLayout(action_bar)
        bar.setContentsMargins(22, 10, 22, 10)
        bar.setSpacing(8)
        self.btn_back = QPushButton("Back")
        self.btn_next = QPushButton("Next")
        self.btn_checkin = QPushButton("Check In")
        self.btn_reload = QPushButton("Reload Rooms")
        self.btn_exit = QPushButton("Exit")
        self.btn_back.setObjectName("secondaryButton")
        self.btn_next.setObjectName("primaryButton")
        self.btn_next.setProperty("accent", True)
        self.btn_checkin.setObjectName("checkinButton")
        self.btn_checkin.setProperty("success", True)
        self.btn_reload.setObjectName("secondaryButton")
        self.btn_exit.setObjectName("secondaryButton")
        self.btn_back.clicked.connect(self._back_step)
        self.btn_next.clicked.connect(self._next_step)
        self.btn_checkin.clicked.connect(self._checkin)
        self.btn_reload.clicked.connect(self._load_rooms)
        self.btn_exit.clicked.connect(self.close)
        bar.addWidget(self.btn_back)
        bar.addStretch(1)
        bar.addWidget(self.btn_reload)
        bar.addWidget(self.btn_exit)
        bar.addWidget(self.btn_next)
        bar.addWidget(self.btn_checkin)
        lay.addWidget(action_bar)

        for field in (self.txt_name, self.txt_city, self.dt_arr, self.dt_dep,
                      self.cmb_room, self.spin_adult, self.spin_child,
                      self.txt_guestprof, self.txt_booking, self.txt_rate):
            field.setMinimumHeight(34)

        self.setStyleSheet(f"""
            QMainWindow {{ background: {p['bg']}; }}
            QWidget#walkinRoot {{ background: {p['bg']}; }}
            QFrame#walkinHeader {{
                background: {p['surface_solid']};
                border-bottom: 1px solid {p['border']};
            }}
            QFrame#headerAccent {{
                background: qlineargradient(x1:0, y1:0, x2:0, y2:1,
                    stop:0 {p['sidebar_top']}, stop:1 {p['sidebar_bottom']});
                border-radius: 3px;
            }}
            QLabel#walkinTitle {{
                color: {p['text']}; font-size: 20px; font-weight: 700;
            }}
            QLabel#walkinSubtitle, QLabel#formNote {{
                color: {p['text_dim']}; font-size: 11px;
            }}
            QLabel#stepSummary {{
                color: {p['accent']}; font-size: 12px; font-weight: 700;
                padding: 6px 10px; background: {p['accent_soft']};
                border: 1px solid {p['accent']}; border-radius: {radius}px;
            }}
            QFrame#stepBar {{
                background: {p['surface']};
                border-bottom: 1px solid {p['border']};
            }}
            QLabel#stepLabel {{
                color: {p['text_dim']}; background: transparent;
                border: 1px solid transparent; border-radius: {radius}px;
                padding: 5px 12px; font-size: 11px; font-weight: 600;
            }}
            QLabel#stepSeparator {{ color: {p['border_strong']}; font-size: 18px; }}
            QWidget#walkinContent {{ background: {p['bg']}; }}
            QFrame#formPage, QFrame#reviewPage {{
                background: {p['surface']};
                border: 1px solid {p['border']}; border-radius: {radius}px;
            }}
            QFrame#formPage QLabel, QFrame#reviewPage QLabel {{
                color: {p['text_dim']}; font-size: 12px; font-weight: 600;
            }}
            QFrame#reviewPage QLabel#reviewHeading {{
                color: {p['text']}; font-size: 16px; font-weight: 700;
            }}
            QLabel#reviewText {{
                color: {p['text']}; font-size: 13px; font-weight: 500;
                background: {p['surface_solid']}; border: 1px solid {p['border']};
                border-radius: {radius}px; padding: 14px;
            }}
            QLineEdit, QComboBox, QDateEdit {{
                background: {p['surface_solid']}; color: {p['text']};
                border: 1px solid {p['border']}; border-radius: {radius}px;
                padding: 0 10px; min-height: 32px;
            }}
            QLineEdit:focus, QComboBox:focus, QDateEdit:focus {{
                border: 1px solid {p['accent']};
            }}
            QComboBox::drop-down {{ border: none; width: 24px; }}
            QFrame#actionBar {{
                background: {p['surface_solid']};
                border-top: 1px solid {p['border']};
            }}
            QPushButton#secondaryButton {{
                background: {p['surface_hover']}; color: {p['text']};
                border: 1px solid {p['border']}; border-radius: {radius}px;
                padding: 7px 14px; font-weight: 600;
            }}
            QPushButton#secondaryButton:hover {{
                border-color: {p['accent']}; background: {p['accent_soft']};
            }}
            QPushButton#primaryButton, QPushButton#checkinButton {{
                border: none; border-radius: {radius}px; padding: 8px 18px;
                font-weight: 700;
            }}
            QPushButton#primaryButton {{
                background: {p['accent']}; color: {p['on_accent']};
            }}
            QPushButton#primaryButton:hover {{
                background: {p['accent_hover']};
            }}
            QPushButton#checkinButton {{
                background: {p['success']}; color: #ffffff;
            }}
            QPushButton#checkinButton:hover {{ background: {p['success']}; }}
            QLabel#statusMessage {{ color: {p['success']}; font-size: 11px; }}
        """)

    @staticmethod
    def _date_value(edit):
        value = edit.date()
        return datetime.date(value.year(), value.month(), value.day())

    def _load_rooms(self):
        try:
            self.cmb_room.clear()
            self.cmb_room.addItem("(auto-pick pehla free)", "")
            for room in roomstatus.room_rack():
                if room["status"] == "Vacant":
                    self.cmb_room.addItem(
                        f"{room['roomno']} [{room['cat']}]", room["roomno"])
            self._say(f"{self.cmb_room.count() - 1} vacant room(s)")
        except Exception as e:
            _msgbox_err(self, e)

    def _show_step(self, index: int):
        index = max(0, min(index, len(self.STEP_LABELS) - 1))
        self.step_stack.setCurrentIndex(index)
        self.lbl_step.setText(
            f"Step {index + 1} of {len(self.STEP_LABELS)}: "
            f"{self.STEP_LABELS[index]}")
        p = palette()
        for step_index, label in enumerate(self.step_labels):
            if step_index == index:
                style = (
                    f"color: {p['accent']}; background: {p['accent_soft']}; "
                    f"border: 1px solid {p['accent']}; border-radius: "
                    f"{p.get('radius', 8)}px; padding: 5px 12px; "
                    "font-size: 11px; font-weight: 700;"
                )
            elif step_index < index:
                style = (
                    f"color: {p['success']}; background: transparent; "
                    f"border: 1px solid {p['success']}; border-radius: "
                    f"{p.get('radius', 8)}px; padding: 5px 12px; "
                    "font-size: 11px; font-weight: 600;"
                )
            else:
                style = (
                    f"color: {p['text_dim']}; background: transparent; "
                    "border: 1px solid transparent; border-radius: "
                    f"{p.get('radius', 8)}px; padding: 5px 12px; "
                    "font-size: 11px; font-weight: 600;"
                )
            label.setStyleSheet(style)
        self.btn_back.setEnabled(index > 0)
        self.btn_reload.setVisible(index == 0)
        self.btn_next.setVisible(index < len(self.STEP_LABELS) - 1)
        self.btn_checkin.setVisible(index == len(self.STEP_LABELS) - 1)
        if index == len(self.STEP_LABELS) - 1:
            self.lbl_review.setText(self._review_text())

    def _validate_step(self, index: int) -> bool:
        if index != 0:
            return True
        if not self.txt_name.text().strip():
            QMessageBox.warning(self, "Check In", "Guest Name zaroori hai.")
            return False
        if self._date_value(self.dt_arr) > self._date_value(self.dt_dep):
            QMessageBox.warning(
                self, "Check In", "Arrival date departure se pehle honi chahiye.")
            return False
        return True

    def _back_step(self):
        self._show_step(self.step_stack.currentIndex() - 1)

    def _next_step(self):
        index = self.step_stack.currentIndex()
        if not self._validate_step(index):
            return
        if index < len(self.STEP_LABELS) - 1:
            self._show_step(index + 1)

    def _review_text(self) -> str:
        room = self.cmb_room.currentData() or "(auto)"
        guestprof = self.txt_guestprof.text().strip() or "(auto)"
        booking = self.txt_booking.text().strip() or "(none)"
        rate = self.txt_rate.text().strip() or "(default)"
        return (
            f"Guest: {self.txt_name.text().strip()}\n"
            f"Profile: {guestprof}\n"
            f"Stay: {self._date_value(self.dt_arr)} → "
            f"{self._date_value(self.dt_dep)}\n"
            f"Room: {room}\n"
            f"Guests: {self.spin_adult.currentText()} adults, "
            f"{self.spin_child.currentText()} children\n"
            f"Booking: {booking}\n"
            f"Rate: {rate}\n"
            f"City: {self.txt_city.text().strip() or '(none)'}"
        )

    def _checkin(self):
        if not self._validate_step(0):
            return
        name = self.txt_name.text().strip()
        arr_d = self._date_value(self.dt_arr)
        dep_d = self._date_value(self.dt_dep)
        room = self.cmb_room.currentData() or ""
        if QMessageBox.question(
                self, "Check In",
                f"{name} ko room {room or '(auto)'} me check-in karna hai "
                f"({arr_d} -> {dep_d})?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            fno = checkin.create_checkin(
                guestprof=self.txt_guestprof.text().strip(), name=name,
                arr_date=arr_d, dep_date=dep_d,
                city=self.txt_city.text().strip(), roomno=room,
                bookingdocid=self.txt_booking.text().strip(), user=self.user,
                adult=int(self.spin_adult.currentText()),
                children=int(self.spin_child.currentText()),
                ratecode=self.txt_rate.text().strip())
            rec = checkin.get(fno) or {}
            self.lbl_done.setText(
                f"Checked-in: folio #{fno}, room "
                f"{(rec.get('roomno') or '?')} "
                f"(GuestFolio+RoomOcc+FolioLog 'A')")
            self._say(f"folio #{fno} created")
            self._load_rooms()
        except Exception as e:
            _msgbox_err(self, e)


# ────────────────────────────────────────────────────────────────
# Openers (shell registry pattern)
# ────────────────────────────────────────────────────────────────
def open_room_view(parent=None):
    return RoomViewWindow(parent)


def open_display_rack(parent=None):
    return DisplayRackWindow(parent)


def open_roomocc_lookup(parent=None):
    return RoomOccLookupWindow(parent)


def open_walkin_entry(parent=None, user: str = "PYADMIN"):
    window = WalkInEntryWindow(parent, user=user)
    window.show()
    window.raise_()
    return window


if __name__ == "__main__":
    app = QApplication(sys.argv)
    app.setPalette(palette())
    for fn in (open_room_view, open_display_rack, open_roomocc_lookup,
               open_walkin_entry):
        w = fn()
        w.show()
        app.processEvents()
        w.close()
    print("walkin_rack_ui smoke OK")
