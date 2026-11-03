"""Menu Item Rate editor backed by the ItemRate table."""
from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtWidgets import (
    QAbstractItemView,
    QApplication,
    QDialog,
    QHBoxLayout,
    QLabel,
    QLineEdit,
    QMessageBox,
    QPushButton,
    QTableWidget,
    QTableWidgetItem,
    QVBoxLayout,
)

from HMS_py.core import item_rate
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


def _rights(user) -> set[str]:
    username = str(user or "").strip().upper()
    if not username:
        return set()
    if username == "SA":
        return {"A", "E", "D"}
    try:
        from HMS_py.core import menu_help
        if not menu_help.has_row(username, "Menu Item Rate"):
            return set()
        params = str(menu_help.rights(username, "Menu Item Rate") or "").upper()
        return {right for right in "AED" if right in params}
    except Exception:
        return set()


def _date_text(value) -> str:
    if isinstance(value, datetime.datetime):
        value = value.date()
    if isinstance(value, datetime.date):
        return value.isoformat()
    return str(value or "")


class ItemRateDialog(QDialog):
    COLUMNS = [
        ("Item Code", "itemcode"), ("Outlet", "restcode"),
        ("App Date", "appdate"), ("Rate", "rate"),
        ("MRP", "mrp"), ("Party", "party"),
    ]

    def __init__(self, parent=None, user="SA", can_edit=True):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopItemRate")
        self.user = user
        self.can_edit = bool(can_edit)
        self.setWindowTitle("Menu Item Rate")
        self.resize(980, 600)
        self._rows = []
        self._build_ui()
        self.reload()

    def _build_ui(self):
        root = QVBoxLayout(self)
        root.setContentsMargins(16, 12, 16, 12)
        root.setSpacing(10)

        filters = QHBoxLayout()
        self.txt_item = QLineEdit()
        self.txt_item.setPlaceholderText("Item Code")
        self.txt_outlet = QLineEdit()
        self.txt_outlet.setPlaceholderText("Outlet / Rest Code")
        self.txt_date = QLineEdit()
        self.txt_date.setPlaceholderText("YYYY-MM-DD")
        self.btn_refresh = QPushButton("Refresh")
        mark_desktop_action(self.btn_refresh)
        self.btn_refresh.clicked.connect(self.reload)
        filters.addWidget(QLabel("Item"))
        filters.addWidget(self.txt_item)
        filters.addWidget(QLabel("Outlet"))
        filters.addWidget(self.txt_outlet)
        filters.addWidget(QLabel("App Date"))
        filters.addWidget(self.txt_date)
        filters.addWidget(self.btn_refresh)
        filters.addStretch()
        root.addLayout(filters)

        self.tbl = QTableWidget(0, len(self.COLUMNS))
        self.tbl.setHorizontalHeaderLabels([label for label, _ in self.COLUMNS])
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        self.tbl.setEditTriggers(
            QAbstractItemView.EditTrigger.DoubleClicked
            | QAbstractItemView.EditTrigger.EditKeyPressed
            if self.can_edit else
            QAbstractItemView.EditTrigger.NoEditTriggers)
        self.tbl.verticalHeader().setVisible(False)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        root.addWidget(self.tbl, 1)

        actions = QHBoxLayout()
        self.btn_add = QPushButton("+ Rate Row")
        self.btn_save = QPushButton("Save")
        self.btn_delete = QPushButton("Delete")
        self.btn_close = QPushButton("Close")
        for button, role in (
            (self.btn_add, "default"), (self.btn_save, "primary"),
            (self.btn_delete, "danger"), (self.btn_close, "default"),
        ):
            mark_desktop_action(button, role)
            button.setEnabled(self.can_edit or button is self.btn_close)
            actions.addWidget(button)
        actions.addStretch()
        self.lbl_status = QLabel("Ready")
        self.lbl_status.setObjectName("desktopStateLabel")
        actions.addWidget(self.lbl_status)
        root.addLayout(actions)
        self.btn_add.clicked.connect(self._add_row)
        self.btn_save.clicked.connect(self._save)
        self.btn_delete.clicked.connect(self._delete)
        self.btn_close.clicked.connect(self.close)

    def _add_row(self):
        row = self.tbl.rowCount()
        self.tbl.insertRow(row)
        for column in range(self.tbl.columnCount()):
            item = QTableWidgetItem("")
            if not self.can_edit:
                item.setFlags(item.flags() & ~Qt.ItemFlag.ItemIsEditable)
            self.tbl.setItem(row, column, item)

    def _cell_text(self, row, key):
        column = next(i for i, (_, name) in enumerate(self.COLUMNS)
                      if name == key)
        item = self.tbl.item(row, column)
        return item.text().strip() if item else ""

    def _set_row(self, row, record):
        for column, (_, key) in enumerate(self.COLUMNS):
            value = _date_text(record.get(key)) if key == "appdate" \
                else record.get(key, "")
            item = QTableWidgetItem(str(value if value is not None else ""))
            if not self.can_edit:
                item.setFlags(item.flags() & ~Qt.ItemFlag.ItemIsEditable)
            self.tbl.setItem(row, column, item)

    def reload(self):
        try:
            appdate = self.txt_date.text().strip() or None
            self._rows = item_rate.list_rates(
                self.txt_item.text().strip() or None,
                self.txt_outlet.text().strip() or None,
                appdate,
            )
            self.tbl.setRowCount(len(self._rows))
            for row, record in enumerate(self._rows):
                self._set_row(row, record)
            self.lbl_status.setText(f"{len(self._rows)} rate row(s)")
        except Exception as exc:
            self.lbl_status.setText(f"Load failed: {exc}")

    def _table_rows(self):
        rows = []
        for row in range(self.tbl.rowCount()):
            values = {key: self._cell_text(row, key)
                      for _, key in self.COLUMNS}
            if not any(values.values()):
                continue
            values["rate"] = float(values["rate"] or 0)
            values["mrp"] = float(values["mrp"] or 0)
            rows.append(values)
        return rows

    def _save(self):
        if not self.can_edit:
            return
        try:
            item_rate.save_batch(self._table_rows())
        except ValueError as exc:
            QMessageBox.warning(self, "Menu Item Rate", str(exc))
            return
        except Exception as exc:
            QMessageBox.critical(self, "Menu Item Rate", f"Save failed: {exc}")
            return
        self.reload()

    def _delete(self):
        if not self.can_edit:
            return
        row = self.tbl.currentRow()
        if row < 0:
            return
        try:
            item_rate.delete(
                self._cell_text(row, "itemcode"),
                self._cell_text(row, "restcode"),
                self._cell_text(row, "appdate"),
            )
        except Exception as exc:
            QMessageBox.critical(self, "Menu Item Rate", f"Delete failed: {exc}")
            return
        self.reload()


def open_item_rate(parent=None, user="SA"):
    dialog = ItemRateDialog(
        parent, user=user, can_edit=bool(_rights(user)))
    dialog.show()
    return dialog


if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = open_item_rate()
    raise SystemExit(app.exec())
