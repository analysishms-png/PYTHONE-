"""Separate VB6-faithful windows for Revenue Group and Revenue Wise Budget."""

from __future__ import annotations

from datetime import datetime

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor, QFont
from PyQt6.QtWidgets import (
    QAbstractItemView,
    QComboBox,
    QFrame,
    QHBoxLayout,
    QHeaderView,
    QLabel,
    QMainWindow,
    QMessageBox,
    QPushButton,
    QTableWidget,
    QTableWidgetItem,
    QVBoxLayout,
    QWidget,
)

from HMS_py.core import revenue_budget as rb
from HMS_py.ui.theme import palette
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


def _item(value, editable=False, alignment=None):
    item = QTableWidgetItem("" if value is None else str(value))
    item.setFlags(
        (item.flags() | Qt.ItemFlag.ItemIsEditable)
        if editable
        else (item.flags() & ~Qt.ItemFlag.ItemIsEditable)
    )
    item.setForeground(QColor(palette()["text"]))
    if alignment is not None:
        item.setTextAlignment(alignment)
    return item


def _button(text, callback=None, primary=False):
    button = QPushButton(text)
    button.setMinimumHeight(34)
    if primary:
        button.setProperty("accent", True)
    mark_desktop_action(button, "primary" if primary else "default")
    if callback is not None:
        button.clicked.connect(callback)
    return button


def _card():
    frame = QFrame()
    frame.setObjectName("revenueCard")
    frame.setStyleSheet(
        f"QFrame#revenueCard {{ background: {palette()['surface']}; "
        f"border: 1px solid {palette()['border']}; border-radius: 10px; }}"
    )
    return frame


def _configure_table(table, headers, editable_columns=()):
    table.setColumnCount(len(headers))
    table.setHorizontalHeaderLabels(headers)
    table.setAlternatingRowColors(True)
    table.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
    table.setSelectionMode(QAbstractItemView.SelectionMode.SingleSelection)
    table.verticalHeader().setVisible(False)
    table.setShowGrid(False)
    table.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
    table.setEditTriggers(QAbstractItemView.EditTrigger.DoubleClicked)
    for column in editable_columns:
        table.setColumnHidden(False, False)
    table.setProperty("editableColumns", tuple(editable_columns))


class RevenueGroupWindow(QMainWindow):
    def __init__(self, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopRevenueGroup")
        self.setWindowTitle("Revenue Group Setting")
        self.resize(900, 620)
        self._rows = []
        self._build_ui()
        self.reload()

    def _build_ui(self):
        root = QWidget()
        self.setCentralWidget(root)
        layout = QVBoxLayout(root)
        layout.setContentsMargins(20, 18, 20, 18)
        layout.setSpacing(14)

        title = QLabel("Revenue Group")
        title.setFont(QFont("Segoe UI", 18, QFont.Weight.Bold))
        layout.addWidget(title)
        subtitle = QLabel("Set the display order used by revenue-wise reporting.")
        subtitle.setStyleSheet(f"color: {palette()['text_dim']};")
        layout.addWidget(subtitle)

        card = _card()
        card_layout = QVBoxLayout(card)
        card_layout.setContentsMargins(14, 14, 14, 14)
        self.rg_table = QTableWidget()
        _configure_table(self.rg_table, ["SNo", "Revenue", "RevCode", "FlagAMR"])
        self.rg_table.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
        card_layout.addWidget(self.rg_table)
        layout.addWidget(card, 1)

        controls = QHBoxLayout()
        self.btn_up = _button("Move Up", lambda: self._move(-1))
        self.btn_down = _button("Move Down", lambda: self._move(1))
        self.btn_reload = _button("Reload", self.reload)
        controls.addWidget(self.btn_up)
        controls.addWidget(self.btn_down)
        controls.addWidget(self.btn_reload)
        controls.addStretch()
        self.lbl_status = QLabel("Ready")
        self.lbl_status.setStyleSheet(f"color: {palette()['text_dim']};")
        controls.addWidget(self.lbl_status)
        layout.addLayout(controls)

        actions = QHBoxLayout()
        actions.addStretch()
        self.btn_exit = _button("Close", self.close)
        self.btn_save = _button("Save Order", self.save, primary=True)
        actions.addWidget(self.btn_exit)
        actions.addWidget(self.btn_save)
        layout.addLayout(actions)

    def reload(self):
        try:
            self._rows = rb.revenue_group_list()
            self._render()
            self.lbl_status.setText(f"{len(self._rows)} revenue group(s) loaded")
        except Exception as exc:
            self._rows = []
            self._render()
            self.lbl_status.setText(f"Load failed: {exc}")

    def _render(self):
        self.rg_table.setRowCount(len(self._rows))
        selected = self.rg_table.currentRow()
        for row_index, record in enumerate(self._rows):
            values = (
                record.get("sno", row_index + 1),
                record.get("name", ""),
                record.get("code", ""),
                record.get("flag_amr", ""),
            )
            for column, value in enumerate(values):
                self.rg_table.setItem(row_index, column, _item(value))
        if 0 <= selected < self.rg_table.rowCount():
            self.rg_table.selectRow(selected)

    def _move(self, direction):
        index = self.rg_table.currentRow()
        if index < 0:
            self.lbl_status.setText("Select a revenue group first")
            return
        self._rows = rb.move_revenue_group(self._rows, index, direction)
        self._render()
        target = index + direction
        if 0 <= target < self.rg_table.rowCount():
            self.rg_table.selectRow(target)
        self.lbl_status.setText("Order changed; Save Order to persist")

    def save(self):
        try:
            saved = rb.revenue_group_save(self._rows)
            self.lbl_status.setText(f"Saved {saved} revenue group order(s)")
            self.reload()
        except Exception as exc:
            QMessageBox.critical(self, "Revenue Group", str(exc))


class RevenueWiseBudgetWindow(QMainWindow):
    HEADERS = ("FRONT DESK", "FOOD & BEVERAGE", "MISC. CHARGES")

    def __init__(self, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopRevenueBudget")
        self.setWindowTitle("Revenue Wise Budget Entry")
        self.resize(1040, 700)
        self._rows = []
        self._options = []
        self._build_ui()
        self._load_months()

    def _build_ui(self):
        root = QWidget()
        self.setCentralWidget(root)
        layout = QVBoxLayout(root)
        layout.setContentsMargins(20, 18, 20, 18)
        layout.setSpacing(14)

        title = QLabel("Revenue Wise Budget")
        title.setFont(QFont("Segoe UI", 18, QFont.Weight.Bold))
        layout.addWidget(title)
        subtitle = QLabel("Choose a month, review revenue lines, and save the budget set.")
        subtitle.setStyleSheet(f"color: {palette()['text_dim']};")
        layout.addWidget(subtitle)

        selector = QHBoxLayout()
        selector.addWidget(QLabel("Month & Year"))
        self.month_combo = QComboBox()
        self.month_combo.setEditable(True)
        self.month_combo.setMinimumWidth(170)
        self.month_combo.setToolTip("MMM/YYYY")
        self.month_combo.currentTextChanged.connect(self._month_changed)
        selector.addWidget(self.month_combo)
        self.btn_refresh = _button("Refresh", self._load_months)
        selector.addWidget(self.btn_refresh)
        selector.addStretch()
        layout.addLayout(selector)

        card = _card()
        card_layout = QVBoxLayout(card)
        card_layout.setContentsMargins(14, 14, 14, 14)
        self.bg_table = QTableWidget()
        _configure_table(
            self.bg_table,
            ["SNo", "RevCode", "Detail", "Budget", "Header"],
            editable_columns=(1, 2, 3, 4),
        )
        self.bg_table.setEditTriggers(QAbstractItemView.EditTrigger.DoubleClicked)
        card_layout.addWidget(self.bg_table)
        layout.addWidget(card, 1)

        controls = QHBoxLayout()
        self.btn_add = _button("Add Row", self._add_row)
        self.btn_delete = _button("Delete Row", self._delete_row)
        controls.addWidget(self.btn_add)
        controls.addWidget(self.btn_delete)
        controls.addStretch()
        self.lbl_status = QLabel("Ready")
        self.lbl_status.setStyleSheet(f"color: {palette()['text_dim']};")
        controls.addWidget(self.lbl_status)
        layout.addLayout(controls)

        actions = QHBoxLayout()
        actions.addStretch()
        self.btn_exit = _button("Close", self.close)
        self.btn_save = _button("Save / Exit", self.save, primary=True)
        actions.addWidget(self.btn_exit)
        actions.addWidget(self.btn_save)
        layout.addLayout(actions)

    def _load_months(self):
        current = self.month_combo.currentText().strip()
        try:
            months = rb.budget_months()
        except Exception as exc:
            months = []
            self.lbl_status.setText(f"Month load failed: {exc}")
        self.month_combo.blockSignals(True)
        self.month_combo.clear()
        for month in months:
            self.month_combo.addItem(month)
        if not current:
            current = datetime.now().strftime("%b/%Y")
        if current not in months:
            self.month_combo.insertItem(0, current)
        self.month_combo.setCurrentText(current)
        self.month_combo.blockSignals(False)
        self._load_month(current)

    def _month_changed(self, month):
        if month.strip():
            self._load_month(month)

    def _load_month(self, month):
        try:
            self._rows = rb.budget_list(month)
            if not self._rows:
                self._rows = self._default_rows()
        except Exception as exc:
            self._rows = self._default_rows()
            self.lbl_status.setText(f"Budget load failed: {exc}")
        self._render_rows()

    def _default_rows(self):
        rows = []
        sno = 1
        for header in self.HEADERS:
            rows.append({
                "sno": sno,
                "rev_code": "",
                "detail": header,
                "budget": 0.0,
                "header": header,
            })
            sno += 1
        try:
            self._options = rb.budget_revenue_options()
        except Exception:
            self._options = []
        for option in self._options:
            rows.append({
                "sno": sno,
                "rev_code": option.get("code", ""),
                "detail": option.get("name", ""),
                "budget": 0.0,
                "header": "",
            })
            sno += 1
        return rows

    def _render_rows(self):
        self.bg_table.setRowCount(len(self._rows))
        right = Qt.AlignmentFlag.AlignRight | Qt.AlignmentFlag.AlignVCenter
        for row_index, record in enumerate(self._rows):
            values = (
                record.get("sno", row_index + 1),
                record.get("rev_code", ""),
                record.get("detail", ""),
                f"{float(record.get('budget', 0) or 0):.2f}",
                record.get("header", ""),
            )
            for column, value in enumerate(values):
                item = _item(value, editable=column in (1, 2, 3, 4),
                             alignment=right if column == 3 else None)
                self.bg_table.setItem(row_index, column, item)
        if self._rows:
            self.bg_table.selectRow(0)

    def _collect_rows(self):
        rows = []
        for row_index in range(self.bg_table.rowCount()):
            values = []
            for column in range(self.bg_table.columnCount()):
                item = self.bg_table.item(row_index, column)
                values.append(item.text().strip() if item else "")
            if not any(values):
                continue
            rows.append({
                "sno": values[0],
                "rev_code": values[1],
                "detail": values[2],
                "budget": values[3],
                "header": values[4],
            })
        self._rows = rows

    def _add_row(self):
        next_sno = self.bg_table.rowCount() + 1
        self.bg_table.insertRow(self.bg_table.rowCount())
        for column, value in enumerate((next_sno, "", "", "0.00", "")):
            self.bg_table.setItem(
                next_sno - 1, column, _item(value, editable=column > 0)
            )
        self.bg_table.selectRow(next_sno - 1)

    def _delete_row(self):
        row = self.bg_table.currentRow()
        if row < 0:
            self.lbl_status.setText("Select a budget row first")
            return
        self.bg_table.removeRow(row)
        for index in range(self.bg_table.rowCount()):
            self.bg_table.item(index, 0).setText(str(index + 1))
        self.lbl_status.setText("Row removed; Save / Exit to persist")

    def save(self):
        month = self.month_combo.currentText().strip()
        self._collect_rows()
        try:
            saved = rb.budget_save(month, self._rows)
            self.lbl_status.setText(f"Saved {saved} budget line(s) for {month}")
            self.close()
        except Exception as exc:
            QMessageBox.critical(self, "Revenue Wise Budget", str(exc))


RevenueBudgetWindow = RevenueWiseBudgetWindow


def open_revenue_group(parent=None):
    window = RevenueGroupWindow(parent)
    window.show()
    return window


def open_revenue_budget_entry(parent=None):
    window = RevenueWiseBudgetWindow(parent)
    window.show()
    return window


def open_revenue_budget(parent=None):
    return open_revenue_budget_entry(parent)
