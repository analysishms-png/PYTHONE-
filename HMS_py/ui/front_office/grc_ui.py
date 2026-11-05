"""Front Office utility windows ported from VB6.

Windows
-------
* ``GuestRegistrationCardWindow`` — VB6 ``FrmGrcBlank.frm`` ("Blank GRC").
  Lists in-house guests and shows the registration card data for the
  selected guest. Read-only.
* ``ReverseRoomMergeWindow`` — VB6 ``FrmRevMergeCharge.frm``. Lists leader
  rooms that currently carry merged folios and reverses the merge.
* ``InconsistencyCheckWindow`` — VB6 ``FrmInc.frm`` ("Inconsistency Check").
  Runs the read-only integrity probes from
  :mod:`HMS_py.core.front_office.inconsistency_check` and shows the
  offending rows.

Voucher serialisation has its own module
(:mod:`HMS_py.ui.front_office.voucher_serialisation_ui`).
"""

from __future__ import annotations

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor, QFont
from PyQt6.QtWidgets import (
    QAbstractItemView,
    QHBoxLayout,
    QHeaderView,
    QLabel,
    QLineEdit,
    QMainWindow,
    QMessageBox,
    QPushButton,
    QSplitter,
    QTableWidget,
    QTableWidgetItem,
    QTextEdit,
    QVBoxLayout,
    QWidget,
)

from HMS_py.core.front_office import grc, inconsistency_check, room_occ
from HMS_py.ui.main_window.desktop_style import (
    apply_desktop_surface,
    mark_desktop_action,
)
from HMS_py.ui.main_window.theme import palette


def _item(text) -> QTableWidgetItem:
    it = QTableWidgetItem("" if text is None else str(text))
    it.setForeground(QColor(palette()["text"]))
    return it


def _make_table(headers: list[str]) -> QTableWidget:
    table = QTableWidget()
    table.setColumnCount(len(headers))
    table.setHorizontalHeaderLabels(headers)
    table.setAlternatingRowColors(True)
    table.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
    table.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
    table.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
    return table


def _fill_table(table: QTableWidget, headers: list[str], rows: list[list]) -> None:
    table.setRowCount(len(rows))
    for r, row in enumerate(rows):
        for c, value in enumerate(row[: len(headers)]):
            table.setItem(r, c, _item(value))


# ============================================================================
# Blank GRC — VB6 FrmGrcBlank.frm
# ============================================================================

class GuestRegistrationCardWindow(QMainWindow):
    """Guest Registration Card (blank form) for in-house guests."""

    def __init__(self, parent=None, user: str = "PYADMIN"):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopGuestRegistrationCard")
        self.setWindowTitle("Guest Registration Card")
        self.resize(1100, 680)
        self.user = user
        self._guests: list[dict] = []
        self._build_ui()
        self.reload()

    def _build_ui(self) -> None:
        central = QWidget()
        self.setCentralWidget(central)
        layout = QVBoxLayout(central)

        title = QLabel("Guest Registration Card")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        search_row = QHBoxLayout()
        search_row.addWidget(QLabel("Search guest:"))
        self.search = QLineEdit()
        self.search.setPlaceholderText("Name, room or folio number")
        self.search.textChanged.connect(self._apply_filter)
        search_row.addWidget(self.search, 1)
        btn_refresh = QPushButton("Refresh")
        mark_desktop_action(btn_refresh)
        btn_refresh.clicked.connect(self.reload)
        search_row.addWidget(btn_refresh)
        layout.addLayout(search_row)

        splitter = QSplitter(Qt.Orientation.Vertical)
        self.table = _make_table(["Room", "Guest Name", "Folio No", "Arrival", "Departure"])
        self.table.itemSelectionChanged.connect(self._on_select)
        splitter.addWidget(self.table)

        self.card = QTextEdit()
        self.card.setReadOnly(True)
        self.card.setPlaceholderText("Select an in-house guest to preview the registration card.")
        splitter.addWidget(self.card)
        splitter.setSizes([300, 320])
        layout.addWidget(splitter, 1)

        btn_row = QHBoxLayout()
        self.lbl_status = QLabel("")
        btn_row.addWidget(self.lbl_status, 1)
        btn_close = QPushButton("Exit")
        mark_desktop_action(btn_close)
        btn_close.clicked.connect(self.close)
        btn_row.addWidget(btn_close)
        layout.addLayout(btn_row)

    def reload(self) -> None:
        try:
            self._guests = grc.get_inhouse_guests()
        except Exception as exc:  # pragma: no cover - DB dependent
            self._guests = []
            QMessageBox.critical(self, "Guest Registration Card", str(exc))
        self._apply_filter()

    def _apply_filter(self) -> None:
        needle = self.search.text().strip().lower()
        rows = []
        for g in self._guests:
            hay = " ".join(
                str(g.get(k) or "")
                for k in ("guest_name", "room_no", "folio_no")
            ).lower()
            if needle and needle not in hay:
                continue
            rows.append(g)
        self._visible = rows
        _fill_table(
            self.table,
            ["Room", "Guest Name", "Folio No", "Arrival", "Departure"],
            [
                [g["room_no"], g["guest_name"], g["folio_no"],
                 g.get("vdate"), g.get("dep_date")]
                for g in rows
            ],
        )
        self.lbl_status.setText(f"{len(rows)} in-house guest(s)")

    def _on_select(self) -> None:
        row = self.table.currentRow()
        if row < 0 or row >= len(getattr(self, "_visible", [])):
            return
        guest = self._visible[row]
        detail = None
        docid = guest.get("docid")
        if docid:
            try:
                detail = grc.get_guest_details(docid)
            except Exception:  # pragma: no cover - DB dependent
                detail = None
        self.card.setPlainText(self._format_card(guest, detail))

    @staticmethod
    def _format_card(guest: dict, detail: dict | None) -> str:
        d = detail or {}
        lines = [
            "=" * 62,
            "            GUEST REGISTRATION CARD",
            "=" * 62,
            f"Guest Name      : {d.get('name') or guest.get('guest_name', '')}",
            f"Room No         : {d.get('room_no') or guest.get('room_no', '')}",
            f"Folio No        : {d.get('folio_no') or guest.get('folio_no', '')}",
            f"Guest Profile   : {d.get('guestprof') or guest.get('guestprof_code', '')}",
            f"Address         : {d.get('add1', '')} {d.get('add2', '')}".rstrip(),
            f"City            : {d.get('city', '')}",
            f"Nationality     : {d.get('nationality', '')}",
            f"Arrival From    : {d.get('arr_from', '')}",
            f"Destination     : {d.get('destination', '')}",
            f"Travel Mode     : {d.get('travel_mode', '')}",
            f"Arrival Date    : {d.get('vdate') or guest.get('vdate', '')}",
            f"Departure Date  : {d.get('dep_date') or guest.get('dep_date', '')}",
            f"Nights          : {d.get('no_days') or guest.get('no_days', '')}",
            f"Purpose/Visit   : {d.get('pur_visit') or guest.get('pur_visit', '')}",
            "=" * 62,
            "",
            "Guest Signature : ______________________",
            "",
            "Reception       : ______________________",
        ]
        return "\n".join(lines)


def open_guest_reg_card(parent=None, user: str = "PYADMIN"):
    """Open the Blank GRC window."""
    return GuestRegistrationCardWindow(parent, user=user)


# ============================================================================
# Reverse Room Merge — VB6 FrmRevMergeCharge.frm
# ============================================================================

class ReverseRoomMergeWindow(QMainWindow):
    """Reverse a merged room's charges back to the original folios."""

    def __init__(self, parent=None, user: str = "PYADMIN"):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopReverseRoomMerge")
        self.setWindowTitle("Reverse Room Merge")
        self.resize(1000, 620)
        self.user = user
        self._leaders: list[dict] = []
        self._build_ui()
        self.reload()

    def _build_ui(self) -> None:
        central = QWidget()
        self.setCentralWidget(central)
        layout = QVBoxLayout(central)

        title = QLabel("Reverse Room Merge")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)
        layout.addWidget(QLabel("Select a leader room to reverse its merge:"))

        self.table = _make_table(["Room No", "Guest Name", "Folio No", "Merged Folios"])
        self.table.itemSelectionChanged.connect(self._on_select)
        layout.addWidget(self.table, 1)

        layout.addWidget(QLabel("Merge Details:"))
        self.details = QTextEdit()
        self.details.setReadOnly(True)
        self.details.setMaximumHeight(150)
        self.details.setPlaceholderText("Select a leader room to reverse...")
        layout.addWidget(self.details)

        btn_row = QHBoxLayout()
        btn_reverse = QPushButton("Reverse Merge")
        mark_desktop_action(btn_reverse)
        btn_reverse.clicked.connect(self._reverse)
        btn_row.addWidget(btn_reverse)
        btn_refresh = QPushButton("Refresh")
        mark_desktop_action(btn_refresh)
        btn_refresh.clicked.connect(self.reload)
        btn_row.addWidget(btn_refresh)
        btn_row.addStretch()
        btn_exit = QPushButton("Exit")
        mark_desktop_action(btn_exit)
        btn_exit.clicked.connect(self.close)
        btn_row.addWidget(btn_exit)
        layout.addLayout(btn_row)

    def reload(self) -> None:
        try:
            self._leaders = room_occ.list_merged_leader_rooms()
        except Exception as exc:  # pragma: no cover - DB dependent
            self._leaders = []
            QMessageBox.critical(self, "Reverse Room Merge", str(exc))
        _fill_table(
            self.table,
            ["Room No", "Guest Name", "Folio No", "Merged Folios"],
            [
                [r["room_no"], r["guest_name"], r["folio_no"], r["merged_count"]]
                for r in self._leaders
            ],
        )
        self.details.clear()

    def _on_select(self) -> None:
        row = self.table.currentRow()
        if row < 0 or row >= len(self._leaders):
            return
        leader = self._leaders[row]
        self.details.setPlainText(
            f"Leader Room:   {leader['room_no']}\n"
            f"Guest Name:    {leader['guest_name']}\n"
            f"Folio No:      {leader['folio_no']}\n"
            f"Doc ID:        {leader['docid']}\n"
            f"Merged Folios: {leader['merged_count']}\n"
        )

    def _reverse(self) -> None:
        row = self.table.currentRow()
        if row < 0 or row >= len(self._leaders):
            QMessageBox.information(self, "Reverse Room Merge",
                                    "Please select a leader room to reverse.")
            return
        leader = self._leaders[row]
        reply = QMessageBox.question(
            self, "Reverse Room Merge",
            f"Reverse room merge for room {leader['room_no']} "
            f"({leader['guest_name']})?\n\n"
            f"All merged charges will move back to their original folios "
            f"({leader['merged_count']} merged folio(s)).",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
        )
        if reply != QMessageBox.StandardButton.Yes:
            return
        try:
            from HMS_py.core.front_office import fo_ops

            result = fo_ops.reverse_room_merge(
                leader["room_no"], user=self.user, commit=True)
            QMessageBox.information(
                self, "Reverse Room Merge",
                "Reverse merge complete:\n"
                f"  Rooms unmerged: {result['rooms_unmerged']}\n"
                f"  Charge rows reversed: {result['rows_reversed']}",
            )
            self.reload()
        except Exception as exc:  # pragma: no cover - DB dependent
            QMessageBox.critical(self, "Reverse Room Merge", str(exc))


def open_reverse_room_merge(parent=None, user: str = "PYADMIN"):
    """Open the Reverse Room Merge window."""
    return ReverseRoomMergeWindow(parent, user=user)


# ============================================================================
# Inconsistency Check — VB6 FrmInc.frm
# ============================================================================

class InconsistencyCheckWindow(QMainWindow):
    """Read-only data-integrity report (VB6 FrmInc "Inconsistency Check")."""

    def __init__(self, parent=None, user: str = "PYADMIN"):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopInconsistencyCheck")
        self.setWindowTitle("Inconsistency Check")
        self.resize(1150, 720)
        self.user = user
        self._report: dict | None = None
        self._build_ui()
        self.run_checks()

    def _build_ui(self) -> None:
        central = QWidget()
        self.setCentralWidget(central)
        layout = QVBoxLayout(central)

        title = QLabel("Inconsistency Check")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        note = QLabel(
            "Read-only integrity probes ported from VB6 FrmInc.frm. "
            "No data is modified — correct any findings through the normal "
            "entry forms."
        )
        note.setWordWrap(True)
        layout.addWidget(note)

        splitter = QSplitter(Qt.Orientation.Vertical)

        self.checks_table = _make_table(["Check", "Severity", "Rows", "Status"])
        self.checks_table.itemSelectionChanged.connect(self._on_check_select)
        splitter.addWidget(self.checks_table)

        self.detail = QTextEdit()
        self.detail.setReadOnly(True)
        self.detail.setPlaceholderText("Select a check to see the offending rows.")
        splitter.addWidget(self.detail)
        splitter.setSizes([320, 320])
        layout.addWidget(splitter, 1)

        btn_row = QHBoxLayout()
        self.lbl_status = QLabel("")
        btn_row.addWidget(self.lbl_status, 1)
        btn_run = QPushButton("Run Check")
        mark_desktop_action(btn_run)
        btn_run.clicked.connect(self.run_checks)
        btn_row.addWidget(btn_run)
        btn_exit = QPushButton("Exit")
        mark_desktop_action(btn_exit)
        btn_exit.clicked.connect(self.close)
        btn_row.addWidget(btn_exit)
        layout.addLayout(btn_row)

    def run_checks(self) -> None:
        try:
            self._report = inconsistency_check.check_inconsistencies()
        except Exception as exc:  # pragma: no cover - DB dependent
            self._report = None
            QMessageBox.critical(self, "Inconsistency Check", str(exc))
            return

        checks = self._report["checks"]
        self.checks_table.setRowCount(len(checks))
        for r, check in enumerate(checks):
            status = "probe failed" if check["error"] else (
                "OK" if check["count"] == 0 else "FOUND")
            values = [check["key"], check["severity"], check["count"], status]
            for c, value in enumerate(values):
                item = _item(value)
                if status == "FOUND" and check["severity"] == "error":
                    item.setForeground(QColor(palette().get("danger", "#d9534f")))
                self.checks_table.setItem(r, c, item)

        totals = self._report["totals"]
        self.lbl_status.setText(
            f"Site {self._report['site']} · "
            f"{totals['error']} error check(s), {totals['warn']} warning check(s), "
            f"{totals['checks_failed']} probe failure(s) "
            f"of {totals['checks_run']} — {self._report['generated_at']}"
        )

    def _on_check_select(self) -> None:
        if not self._report:
            return
        row = self.checks_table.currentRow()
        if row < 0 or row >= len(self._report["checks"]):
            return
        check = self._report["checks"][row]
        lines = [check["title"], "-" * len(check["title"]), ""]
        if check["error"]:
            lines.append(f"Probe failed: {check['error']}")
        elif check["count"] == 0:
            lines.append("No inconsistencies found.")
        else:
            lines.append(f"{check['count']} row(s):")
            lines.append("")
            lines.append(" | ".join(check["columns"]))
            for values in check["rows"][:500]:
                lines.append(" | ".join("" if v is None else str(v) for v in values))
            if check["count"] > 500:
                lines.append(f"... {check['count'] - 500} more row(s) not shown")
        self.detail.setPlainText("\n".join(lines))


def open_inconsistency_check(parent=None, user: str = "PYADMIN"):
    """Open the Inconsistency Check window."""
    return InconsistencyCheckWindow(parent, user=user)
