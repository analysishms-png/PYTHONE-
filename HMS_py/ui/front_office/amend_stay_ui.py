"""Amend Stay dialog — VB6 ``fdAmendEntry.frm``.

VB6 behaviour reproduced here
-----------------------------
* The top grid is the VB6 ``DGRoomNo`` data grid: every occupied room with the
  guest, company, guest status, check-in and departure date/time and the folio
  number (fdAmendEntry.frm:772-773).
* Selecting a row fills the "Amend Departure Details" panel: Room No, Folio No,
  Guest, Company, Guest Status, Check-In (read-only), Departure Date and
  Departure Time (hour + minute).
* Save (Ctrl+S) runs the VB6 guards — departure date cannot be before today,
  cannot be before check-in, and departure date+time must be strictly after
  check-in date+time ("Check New Departure Date and Time") — then asks
  "Save Record ?" exactly like the VB6 message box.
* Saving writes ``GuestFolioAmend`` (previous row for the same folio + old
  departure date is deleted first), ``GuestFolio.DepDate``,
  ``RoomOcc.DepDate/DepTime`` and ``PlanDetails.NoofDays``; all core work
  lives in :mod:`HMS_py.core.front_office.folio`.

The dialog never issues SQL itself.
"""

from __future__ import annotations

import datetime

from PyQt6.QtCore import QDate, QTime, Qt
from PyQt6.QtGui import QFont, QKeySequence, QShortcut
from PyQt6.QtWidgets import (
    QAbstractItemView,
    QCheckBox,
    QDateEdit,
    QDialog,
    QFormLayout,
    QGroupBox,
    QHBoxLayout,
    QHeaderView,
    QLabel,
    QLineEdit,
    QMessageBox,
    QPushButton,
    QTableWidget,
    QTableWidgetItem,
    QTimeEdit,
    QVBoxLayout,
)

from HMS_py.core import db
from HMS_py.core.front_office import folio
from HMS_py.ui.main_window.desktop_style import mark_desktop_action
from HMS_py.ui.main_window.theme import palette


def _fmt_date(value) -> str:
    if isinstance(value, (datetime.date, datetime.datetime)):
        return f"{value:%d/%b/%Y}"
    return "" if value is None else str(value)


def _cell(text, *, align_right: bool = False) -> QTableWidgetItem:
    item = QTableWidgetItem("" if text is None else str(text))
    item.setFlags(item.flags() & ~Qt.ItemFlag.ItemIsEditable)
    if align_right:
        item.setTextAlignment(Qt.AlignmentFlag.AlignRight
                              | Qt.AlignmentFlag.AlignVCenter)
    return item


def _make_table(headers: list[str]) -> QTableWidget:
    table = QTableWidget(0, len(headers))
    table.setHorizontalHeaderLabels(headers)
    table.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
    table.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
    table.setSelectionMode(QAbstractItemView.SelectionMode.SingleSelection)
    table.setAlternatingRowColors(True)
    table.verticalHeader().setVisible(False)
    table.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
    return table


class AmendStayDialog(QDialog):
    """Amend a guest's departure date and time (VB6 fdAmendEntry)."""

    GRID_COLS = ["Room No", "Guest Name", "Company", "Guest Status",
                 "Check In", "Departure", "Folio No", "Doc Id"]
    HISTORY_COLS = ["Old Date", "Old Time", "New Date", "New Time", "User",
                    "Entered"]

    def __init__(self, parent=None, user: str | None = None):
        super().__init__(parent)
        self.setWindowTitle("Amend Stay")
        self.resize(1120, 760)
        self.user = user or db.get_user()
        self._targets: list[dict] = []
        self._current: dict | None = None
        self._build_ui()
        self.reload_targets()

    # ------------------------------------------------------------------ UI
    def _build_ui(self) -> None:
        root = QVBoxLayout(self)

        title = QLabel("Amend Stay")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        root.addWidget(title)

        search_row = QHBoxLayout()
        search_row.addWidget(QLabel("Search room / guest / folio:"))
        self.ed_search = QLineEdit()
        self.ed_search.setPlaceholderText(
            "Room number, guest name, folio number or DocId")
        self.ed_search.returnPressed.connect(self.reload_targets)
        search_row.addWidget(self.ed_search, 1)
        btn_search = QPushButton("Search")
        mark_desktop_action(btn_search)
        btn_search.clicked.connect(self.reload_targets)
        search_row.addWidget(btn_search)
        root.addLayout(search_row)

        root.addWidget(QLabel("Occupied rooms:"))
        self.tbl_rooms = _make_table(self.GRID_COLS)
        self.tbl_rooms.itemSelectionChanged.connect(self._on_room_selected)
        root.addWidget(self.tbl_rooms, 3)

        # --- departure details --------------------------------------------
        box = QGroupBox("Amend Departure Details")
        form = QFormLayout(box)

        self.lbl_room = QLabel("—")
        form.addRow("Room No:", self.lbl_room)

        self.lbl_folio = QLabel("—")
        form.addRow("Folio No:", self.lbl_folio)

        self.lbl_guest = QLabel("—")
        form.addRow("Guest Name:", self.lbl_guest)

        self.lbl_company = QLabel("—")
        form.addRow("Company Name:", self.lbl_company)

        self.lbl_status = QLabel("—")
        form.addRow("Guest Status:", self.lbl_status)

        self.lbl_chkin = QLabel("—")
        form.addRow("Check In Date / Time:", self.lbl_chkin)

        self.de_dep = QDateEdit(QDate.currentDate())
        self.de_dep.setCalendarPopup(True)
        self.de_dep.setDisplayFormat("dd/MM/yyyy")
        form.addRow("Departure Date:", self.de_dep)

        self.te_dep = QTimeEdit(QTime(12, 0))
        self.te_dep.setDisplayFormat("HH:mm")
        form.addRow("Departure Time:", self.te_dep)

        self.chk_live = QCheckBox(
            "Allow live (non-PYT) folio — production data amend")
        form.addRow("", self.chk_live)

        root.addWidget(box)

        root.addWidget(QLabel("Amendment history (GuestFolioAmend):"))
        self.tbl_history = _make_table(self.HISTORY_COLS)
        self.tbl_history.setMaximumHeight(150)
        root.addWidget(self.tbl_history, 1)

        buttons = QHBoxLayout()
        self.btn_save = QPushButton("Save")
        mark_desktop_action(self.btn_save)
        self.btn_save.clicked.connect(self._save)
        buttons.addWidget(self.btn_save)

        self.btn_refresh = QPushButton("Refresh")
        mark_desktop_action(self.btn_refresh)
        self.btn_refresh.clicked.connect(self.reload_targets)
        buttons.addWidget(self.btn_refresh)

        buttons.addStretch()

        self.btn_exit = QPushButton("Exit")
        mark_desktop_action(self.btn_exit)
        self.btn_exit.clicked.connect(self.reject)
        buttons.addWidget(self.btn_exit)
        root.addLayout(buttons)

        self.lbl_hint = QLabel("Ctrl+S To Save , Esc To Exit")
        self.lbl_hint.setAlignment(Qt.AlignmentFlag.AlignRight)
        self.lbl_hint.setStyleSheet(
            f"color:{palette().get('text_dim', '#6b7280')};")
        root.addWidget(self.lbl_hint)

        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._save)
        QShortcut(QKeySequence("Esc"), self, activated=self.reject)

        self._set_entry_enabled(False)

    # ----------------------------------------------------------------- data
    def reload_targets(self) -> None:
        term = self.ed_search.text().strip()
        try:
            self._targets = folio.amend_targets(term)
        except Exception as exc:  # pragma: no cover - DB dependent
            self._targets = []
            self._warn("Load Rooms", exc)

        self.tbl_rooms.blockSignals(True)
        self.tbl_rooms.setRowCount(len(self._targets))
        for row, t in enumerate(self._targets):
            values = [
                t["room_no"], t["guest_name"], t["company"],
                t["guest_status"],
                f"{_fmt_date(t['chkin_date'])} {t['chkin_time']}".strip(),
                f"{_fmt_date(t['dep_date'])} {t['dep_time']}".strip(),
                t["folio_no"], t["docid"],
            ]
            for col, value in enumerate(values):
                self.tbl_rooms.setItem(row, col, _cell(value))
        self.tbl_rooms.blockSignals(False)

        if not self._targets:
            self.lbl_room.setText(
                "No occupied room matched. Clear the search and press Refresh.")
        self._clear_target()

    def _on_room_selected(self) -> None:
        row = self.tbl_rooms.currentRow()
        if row < 0 or row >= len(self._targets):
            return
        self.select_target(self._targets[row]["docid"])

    def select_target(self, docid: str) -> None:
        """Load *docid* into the detail panel (also used by tests)."""
        try:
            target = folio.amend_target(docid=docid)
        except Exception as exc:  # pragma: no cover - DB dependent
            self._warn("Load Stay", exc)
            return
        if not target:
            QMessageBox.information(self, "Amend Stay",
                                    f"Stay '{docid}' nahi mila.")
            return
        self._current = target
        self.lbl_room.setText(
            f"{target['room_no']} {target['room_name']}".strip() or "—")
        self.lbl_folio.setText(f"{target['folio_no']} ({target['vprefix']})")
        self.lbl_guest.setText(target["guest_name"] or "—")
        self.lbl_company.setText(target["company"] or "—")
        self.lbl_status.setText(target["guest_status"] or "—")
        self.lbl_chkin.setText(
            f"{_fmt_date(target['chkin_date'])} {target['chkin_time']}".strip()
            or "—")

        dep = target["dep_date"]
        if isinstance(dep, (datetime.date, datetime.datetime)):
            self.de_dep.setDate(QDate(dep.year, dep.month, dep.day))
        try:
            hh, mm = folio._norm_time(target["dep_time"], "12:00").split(":")
            self.te_dep.setTime(QTime(int(hh), int(mm)))
        except Exception:  # pragma: no cover - defensive
            self.te_dep.setTime(QTime(12, 0))

        self._set_entry_enabled(True)
        self.reload_history()

    def reload_history(self) -> None:
        folio_no = (self._current or {}).get("folio_no")
        rows = []
        if folio_no is not None:
            try:
                rows = folio.amend_history(int(folio_no))
            except Exception as exc:  # pragma: no cover - DB dependent
                self._warn("Load Amendment History", exc)
        self.tbl_history.setRowCount(len(rows))
        for row, h in enumerate(rows):
            values = [
                _fmt_date(h["old_dep_date"]), h["old_dep_time"],
                _fmt_date(h["dep_date"]), h["dep_time"], h["user"],
                _fmt_date(h["entered"]),
            ]
            for col, value in enumerate(values):
                self.tbl_history.setItem(row, col, _cell(value))

    # ---------------------------------------------------------------- state
    def _clear_target(self) -> None:
        self._current = None
        self.tbl_history.setRowCount(0)
        self._set_entry_enabled(False)

    def _set_entry_enabled(self, enabled: bool) -> None:
        for widget in (self.de_dep, self.te_dep, self.chk_live, self.btn_save):
            widget.setEnabled(enabled)

    # ---------------------------------------------------------------- save
    def _save(self) -> None:
        target = self._current
        if not target:
            QMessageBox.information(self, "Amend Stay",
                                    "Pehle occupied room select karo.")
            return

        qd = self.de_dep.date()
        new_dep = datetime.date(qd.year(), qd.month(), qd.day())
        qt = self.te_dep.time()
        dep_time = f"{qt.hour():02d}:{qt.minute():02d}"

        # VB6 guards (fdAmendEntry.frm:967-999) — fail fast in the UI too.
        chkin = target.get("chkin_date")
        chkin_day = chkin.date() if isinstance(chkin, datetime.datetime) else chkin
        if new_dep < datetime.date.today():
            QMessageBox.warning(self, "Amend Stay",
                                "Departure Date Can't be Less than Current Date")
            return
        if chkin_day and new_dep < chkin_day:
            QMessageBox.warning(self, "Amend Stay",
                                "Departure Date Can't be Less than Check in Date")
            return
        try:
            chkin_time = folio._norm_time(target.get("chkin_time"), "12:00")
            chkin_dt = datetime.datetime.combine(
                chkin_day, datetime.time(*map(int, chkin_time.split(":"))))
            new_dt = datetime.datetime.combine(
                new_dep, datetime.time(*map(int, dep_time.split(":"))))
        except ValueError as exc:
            QMessageBox.warning(self, "Amend Stay", str(exc))
            return
        if new_dt <= chkin_dt:
            QMessageBox.warning(self, "Amend Stay",
                                "Check New Departure Date and Time")
            return

        allow_live = self.chk_live.isChecked()
        prompt = (
            f"Folio {target['folio_no']} ({target['guest_name']}) ka "
            f"departure {_fmt_date(target['dep_date'])} "
            f"{target['dep_time']} se {_fmt_date(new_dep)} {dep_time} "
            f"karna hai?")
        if allow_live:
            prompt += "\n\nLIVE folio: production data amend hoga."
        if QMessageBox.question(
                self, "Save Data", f"{prompt}\n\nSave Record ?",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
        ) != QMessageBox.StandardButton.Yes:
            return

        try:
            result = folio.amend_stay(
                docid=target["docid"], new_dep=new_dep, dep_time=dep_time,
                user=self.user, allow_live=allow_live)
        except Exception as exc:  # pragma: no cover - DB dependent
            QMessageBox.critical(self, "Amend Stay", f"Save failed:\n{exc}")
            return

        QMessageBox.information(
            self, "Amend Stay",
            f"Departure amended.\n\n"
            f"  Folio: {result['folio_no']}  Room: {result['room_no']}\n"
            f"  Old: {_fmt_date(result['old_dep_date'])} "
            f"{result['old_dep_time']}\n"
            f"  New: {_fmt_date(result['new_dep_date'])} "
            f"{result['new_dep_time']}\n"
            f"  Days: {result['no_days']}")
        self.reload_targets()
        for row, t in enumerate(self._targets):
            if t["docid"] == target["docid"]:
                self.tbl_rooms.selectRow(row)
                break

    # --------------------------------------------------------------- helper
    def _warn(self, title: str, exc: Exception) -> None:
        QMessageBox.warning(self, title, str(exc))


def open_amend_stay(parent=None, user: str | None = None):
    """Open the Amend Stay dialog (menu: Front Office > Amend Stay)."""
    dialog = AmendStayDialog(parent, user=user)
    dialog.exec()
    return dialog
