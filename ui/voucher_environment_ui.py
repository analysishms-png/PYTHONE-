"""Read-only Voucher Environment and Voucher Category viewers."""

from __future__ import annotations

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor, QFont
from PyQt6.QtWidgets import (
    QAbstractItemView,
    QDialog,
    QHBoxLayout,
    QHeaderView,
    QLabel,
    QPushButton,
    QTabWidget,
    QTableWidget,
    QTableWidgetItem,
    QVBoxLayout,
)

from HMS_py.core import general_setup
from HMS_py.ui.theme import palette
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


def _cell(value):
    item = QTableWidgetItem("" if value is None else str(value))
    item.setFlags(item.flags() & ~Qt.ItemFlag.ItemIsEditable)
    item.setForeground(QColor(palette()["text"]))
    return item


def _table(headers):
    table = QTableWidget(0, len(headers))
    table.setHorizontalHeaderLabels(headers)
    table.setAlternatingRowColors(True)
    table.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
    table.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
    table.verticalHeader().setVisible(False)
    table.setShowGrid(False)
    table.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
    return table


def _fill(table, rows, keys):
    table.setRowCount(len(rows))
    for row_index, record in enumerate(rows):
        for column, key in enumerate(keys):
            table.setItem(row_index, column, _cell(record.get(key, "")))
    if rows:
        table.selectRow(0)


class VoucherEnvironmentDialog(QDialog):
    TYPE_KEYS = ("vtype", "category", "ncat", "desc", "method", "startno",
                  "short", "logsite_code")
    CATEGORY_KEYS = ("category", "ncat", "site_code", "logsite_code")
    PREFIX_KEYS = ("date_from", "date_to", "prefix", "start_srl_no", "site_code")
    GROUP_KEYS = ("group_code", "dr", "cr", "site_code")

    def __init__(self, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopVoucherEnvironment")
        self.setWindowTitle("Voucher Environment")
        self.resize(1080, 700)
        self._types = []
        self._build_ui()
        self.reload()

    def _build_ui(self):
        root = QVBoxLayout(self)
        root.setContentsMargins(20, 18, 20, 18)
        root.setSpacing(14)
        title = QLabel("Voucher Environment")
        title.setFont(QFont("Segoe UI", 18, QFont.Weight.Bold))
        root.addWidget(title)
        subtitle = QLabel("Read-only Voucher_Type, category, prefix and group configuration")
        subtitle.setStyleSheet(f"color: {palette()['text_dim']};")
        root.addWidget(subtitle)

        self.tabs = QTabWidget()
        self.types_table = _table([
            "V_Type", "Category", "NCat", "Description", "Method",
            "Start No", "Short Name", "LogSite",
        ])
        self.categories_table = _table(["Category", "NCat", "Site", "LogSite"])
        self.prefix_table = _table([
            "Date From", "Date To", "Prefix", "Start Srl No", "Site",
        ])
        self.include_table = _table(["Group Code", "Dr", "Cr", "Site"])
        self.exclude_table = _table(["Group Code", "Dr", "Cr", "Site"])
        self.tabs.addTab(self.types_table, "Voucher Types")
        self.tabs.addTab(self.categories_table, "Categories")
        self.tabs.addTab(self.prefix_table, "Prefixes")
        self.tabs.addTab(self.include_table, "Include")
        self.tabs.addTab(self.exclude_table, "Exclude")
        self.types_table.currentCellChanged.connect(self._load_children)
        root.addWidget(self.tabs, 1)

        footer = QHBoxLayout()
        self.lbl_status = QLabel("Ready")
        self.lbl_status.setStyleSheet(f"color: {palette()['text_dim']};")
        footer.addWidget(self.lbl_status)
        footer.addStretch()
        self.btn_refresh = QPushButton("Refresh")
        mark_desktop_action(self.btn_refresh)
        self.btn_refresh.clicked.connect(self.reload)
        self.btn_close = QPushButton("Close")
        mark_desktop_action(self.btn_close)
        self.btn_close.clicked.connect(self.close)
        footer.addWidget(self.btn_refresh)
        footer.addWidget(self.btn_close)
        root.addLayout(footer)

    def reload(self):
        try:
            self._types = general_setup.voucher_type_list()
            categories = general_setup.vouchcat_list()
        except Exception as exc:
            self._types = []
            categories = []
            self.lbl_status.setText(f"Load failed: {exc}")
        self.types_table.blockSignals(True)
        _fill(self.types_table, self._types, self.TYPE_KEYS)
        self.types_table.blockSignals(False)
        _fill(self.categories_table, categories, self.CATEGORY_KEYS)
        if self._types:
            self._load_children(0, 0, -1, -1)
        else:
            _fill(self.prefix_table, [], self.PREFIX_KEYS)
            _fill(self.include_table, [], self.GROUP_KEYS)
            _fill(self.exclude_table, [], self.GROUP_KEYS)
        self.lbl_status.setText(f"{len(self._types)} voucher type(s) loaded")

    def _load_children(self, row, column, previous_row, previous_column):
        if row < 0 or row >= len(self._types):
            return
        vtype = self._types[row].get("vtype", "")
        try:
            prefixes = general_setup.voucher_prefix_list(vtype)
            includes = general_setup.voucher_include_list(vtype)
            excludes = general_setup.voucher_exclude_list(vtype)
        except Exception as exc:
            prefixes = includes = excludes = []
            self.lbl_status.setText(f"Child load failed: {exc}")
        _fill(self.prefix_table, prefixes, self.PREFIX_KEYS)
        _fill(self.include_table, includes, self.GROUP_KEYS)
        _fill(self.exclude_table, excludes, self.GROUP_KEYS)


class VoucherCategoryBrowser(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopVoucherCategories")
        self.setWindowTitle("Voucher Categories")
        self.resize(760, 480)
        root = QVBoxLayout(self)
        root.setContentsMargins(20, 18, 20, 18)
        root.setSpacing(14)
        title = QLabel("Voucher Categories")
        title.setFont(QFont("Segoe UI", 18, QFont.Weight.Bold))
        root.addWidget(title)
        subtitle = QLabel("Read-only Category / NCat lookup")
        subtitle.setStyleSheet(f"color: {palette()['text_dim']};")
        root.addWidget(subtitle)
        self.table = _table(["Category", "NCat", "Site", "LogSite"])
        root.addWidget(self.table, 1)
        footer = QHBoxLayout()
        self.lbl_status = QLabel("Ready")
        footer.addWidget(self.lbl_status)
        footer.addStretch()
        self.btn_refresh = QPushButton("Refresh")
        mark_desktop_action(self.btn_refresh)
        self.btn_refresh.clicked.connect(self.reload)
        self.btn_close = QPushButton("Close")
        mark_desktop_action(self.btn_close)
        self.btn_close.clicked.connect(self.close)
        footer.addWidget(self.btn_refresh)
        footer.addWidget(self.btn_close)
        root.addLayout(footer)
        self.reload()

    def reload(self):
        try:
            rows = general_setup.vouchcat_list()
        except Exception as exc:
            rows = []
            self.lbl_status.setText(f"Load failed: {exc}")
        _fill(self.table, rows, VoucherEnvironmentDialog.CATEGORY_KEYS)
        self.lbl_status.setText(f"{len(rows)} category pair(s) loaded")


def open_voucher_environment(parent=None):
    dialog = VoucherEnvironmentDialog(parent)
    dialog.show()
    return dialog


def open_voucher_category(parent=None):
    dialog = VoucherCategoryBrowser(parent)
    dialog.show()
    return dialog
