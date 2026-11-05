"""Season Master viewer with explicit permission-gated editing."""

from __future__ import annotations

import datetime

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor, QFont
from PyQt6.QtWidgets import (
    QAbstractItemView,
    QCheckBox,
    QComboBox,
    QDialog,
    QGroupBox,
    QHBoxLayout,
    QHeaderView,
    QLabel,
    QMessageBox,
    QPushButton,
    QTableWidget,
    QTableWidgetItem,
    QVBoxLayout,
)

from HMS_py.core import seasonmaster
from HMS_py.ui.theme import palette
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


def _season_rights(user) -> set[str]:
    username = str(user or "").strip().upper()
    if not username:
        return set()
    if username == "SA":
        return {"A", "E"}
    try:
        from HMS_py.core import menu_help
        if not menu_help.has_row(username, "Season Master"):
            return set()
        params = str(menu_help.rights(username, "Season Master") or "").upper()
        return {right for right in "AE" if right in params}
    except Exception:
        return set()


def _display_date(value) -> str:
    if isinstance(value, datetime.datetime):
        value = value.date()
    if isinstance(value, datetime.date):
        return value.strftime("%d/%b").upper()
    text = str(value or "")
    try:
        return datetime.date.fromisoformat(text[:10]).strftime("%d/%b").upper()
    except ValueError:
        return text


def _input_date(value) -> str:
    if isinstance(value, datetime.datetime):
        value = value.date()
    if isinstance(value, datetime.date):
        return value.strftime("%d%m")
    text = str(value or "")
    try:
        return datetime.date.fromisoformat(text[:10]).strftime("%d%m")
    except ValueError:
        return text.replace("/", "")


def _item(value):
    item = QTableWidgetItem(str(value or ""))
    item.setFlags(item.flags() & ~Qt.ItemFlag.ItemIsEditable)
    item.setForeground(QColor(palette()["text"]))
    return item


class SeasonMasterDialog(QDialog):
    def __init__(self, parent=None, editable=False, user="SA"):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopSeasonMaster")
        self.editable = bool(editable)
        self.user = user
        self.setWindowTitle("Season Master")
        self.resize(860, 620)
        self._rows = []
        self._weekend_checks = []
        self._build_ui()
        self.reload()

    def _build_ui(self):
        root = QVBoxLayout(self)
        root.setContentsMargins(20, 18, 20, 18)
        root.setSpacing(14)

        title = QLabel("Season Master")
        title.setFont(QFont("Segoe UI", 18, QFont.Weight.Bold))
        root.addWidget(title)
        subtitle = QLabel(
            "Editable year and weekend configuration"
            if self.editable else
            "Read-only year and weekend configuration view")
        subtitle.setStyleSheet(f"color: {palette()['text_dim']};")
        root.addWidget(subtitle)

        selector = QHBoxLayout()
        selector.addWidget(QLabel("For Year"))
        self.year_combo = QComboBox()
        self.year_combo.setEditable(True)
        self.year_combo.setMinimumWidth(130)
        self.year_combo.setToolTip("YYYY")
        self.year_combo.currentTextChanged.connect(self._year_changed)
        selector.addWidget(self.year_combo)
        self.btn_refresh = QPushButton("Refresh")
        mark_desktop_action(self.btn_refresh)
        self.btn_refresh.setToolTip("Reload season rows")
        self.btn_refresh.clicked.connect(self.reload)
        selector.addWidget(self.btn_refresh)
        selector.addStretch()
        root.addLayout(selector)

        grid_group = QGroupBox("Season Periods")
        grid_layout = QVBoxLayout(grid_group)
        self.grid = QTableWidget(0, 3)
        self.grid.setHorizontalHeaderLabels(["From Date", "To Date", "Rate"])
        self.grid.setAlternatingRowColors(True)
        self.grid.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        self.grid.setEditTriggers(
            QAbstractItemView.EditTrigger.DoubleClicked
            | QAbstractItemView.EditTrigger.EditKeyPressed
            if self.editable else
            QAbstractItemView.EditTrigger.NoEditTriggers)
        self.grid.verticalHeader().setVisible(False)
        self.grid.setShowGrid(False)
        self.grid.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
        grid_layout.addWidget(self.grid)
        root.addWidget(grid_group, 1)

        weekend_group = QGroupBox("Weekend Configuration")
        weekend_layout = QHBoxLayout(weekend_group)
        for day in seasonmaster.WEEKEND_DAYS:
            checkbox = QCheckBox(day)
            checkbox.setEnabled(self.editable)
            self._weekend_checks.append(checkbox)
            weekend_layout.addWidget(checkbox)
        weekend_layout.addStretch()
        root.addWidget(weekend_group)

        footer = QHBoxLayout()
        self.lbl_status = QLabel("Ready")
        self.lbl_status.setStyleSheet(f"color: {palette()['text_dim']};")
        footer.addWidget(self.lbl_status)
        footer.addStretch()
        if self.editable:
            self.btn_save = QPushButton("Save")
            mark_desktop_action(self.btn_save, "primary")
            self.btn_save.clicked.connect(self._save)
            footer.addWidget(self.btn_save)
        self.btn_close = QPushButton("Close")
        mark_desktop_action(self.btn_close)
        self.btn_close.clicked.connect(self.close)
        footer.addWidget(self.btn_close)
        root.addLayout(footer)

    def reload(self):
        current = self.year_combo.currentText().strip()
        try:
            years = seasonmaster.list_years()
        except Exception as exc:
            years = []
            self.lbl_status.setText(f"Year load failed: {exc}")
        if not years:
            years = [datetime.date.today().year]
        self.year_combo.blockSignals(True)
        self.year_combo.clear()
        for year in years:
            self.year_combo.addItem(str(year))
        if not current or current not in {str(year) for year in years}:
            current = str(years[0])
        self.year_combo.setCurrentText(current)
        self.year_combo.blockSignals(False)
        self._load_year(current)

    def _year_changed(self, value):
        if value.strip():
            self._load_year(value.strip())

    def _load_year(self, value):
        try:
            year = seasonmaster.normalize_year(value)
        except ValueError as exc:
            self.lbl_status.setText(str(exc))
            return
        try:
            self._rows = seasonmaster.list_rows(year)
            weekend = seasonmaster.get_weekend()
        except Exception as exc:
            self._rows = []
            weekend = None
            self.lbl_status.setText(f"Load failed: {exc}")
        self.grid.setRowCount(len(self._rows))
        for row_index, record in enumerate(self._rows):
            if self.editable:
                values = (
                    _input_date(record.get("fromdate")),
                    _input_date(record.get("todate")),
                    record.get("ratecode", ""),
                )
            else:
                values = (
                    _display_date(record.get("fromdate")),
                    _display_date(record.get("todate")),
                    record.get("ratecode", ""),
                )
            for column, value in enumerate(values):
                item = (QTableWidgetItem(str(value)) if self.editable
                        else _item(value))
                self.grid.setItem(row_index, column, item)
        flags = seasonmaster.weekend_flags(weekend or "")
        for checkbox in self._weekend_checks:
            checkbox.setChecked(flags.get(checkbox.text(), False))
        if weekend is None:
            self.lbl_status.setText(f"{year}: {len(self._rows)} period(s); no weekend row")
        else:
            self.lbl_status.setText(f"{year}: {len(self._rows)} period(s) loaded")
    def _save(self):
        if not self.editable:
            return
        try:
            year = seasonmaster.normalize_year(self.year_combo.currentText())
            rows = []
            for row_index in range(self.grid.rowCount()):
                values = []
                for column in range(3):
                    item = self.grid.item(row_index, column)
                    values.append(item.text().strip() if item else "")
                if not any(values):
                    continue
                rows.append({
                    "from_ddmm": values[0],
                    "to_ddmm": values[1],
                    "ratecode": values[2],
                })
            weekend = "".join(
                "*" if checkbox.isChecked() else " "
                for checkbox in self._weekend_checks
            )
            seasonmaster.save_year(year, rows, weekend)
        except ValueError as exc:
            QMessageBox.warning(self, "Season Master", str(exc))
            return
        except Exception as exc:
            QMessageBox.critical(self, "Season Master", f"Save failed: {exc}")
            return
        self.lbl_status.setText(f"{year}: saved")
        self.reload()


def open_seasonmaster(parent=None, editable=False, user="SA"):
    dialog = SeasonMasterDialog(parent, editable=editable, user=user)
    dialog.show()
    return dialog
