"""Read-only FAEnviro settings viewer."""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtWidgets import (
    QApplication,
    QDialog,
    QHBoxLayout,
    QLabel,
    QMessageBox,
    QPushButton,
    QTableWidget,
    QTableWidgetItem,
    QVBoxLayout,
)

from HMS_py.core import fa_enviro
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


class FAEnviroDialog(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopFAEnvironment")
        self.setWindowTitle("FA Environment Settings (Read-Only)")
        self.resize(720, 620)
        root = QVBoxLayout(self)
        root.addWidget(QLabel("FAEnviro configuration (read-only)"))
        self.table = QTableWidget(0, 2)
        self.table.setHorizontalHeaderLabels(["Setting", "Value"])
        self.table.setAlternatingRowColors(True)
        self.table.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.table.horizontalHeader().setStretchLastSection(True)
        root.addWidget(self.table, 1)
        footer = QHBoxLayout()
        self.status = QLabel("Ready")
        self.status.setObjectName("desktopStateLabel")
        footer.addWidget(self.status)
        footer.addStretch()
        self.btn_refresh = QPushButton("Refresh")
        self.btn_close = QPushButton("Close")
        for button in (self.btn_refresh, self.btn_close):
            mark_desktop_action(button)
            footer.addWidget(button)
        self.btn_refresh.clicked.connect(self.reload)
        self.btn_close.clicked.connect(self.close)
        root.addLayout(footer)
        self.reload()

    def reload(self):
        try:
            values = fa_enviro.get()
        except Exception as exc:
            self.status.setText(f"Load failed: {exc}")
            return
        self.table.setRowCount(len(values))
        for row, (key, value) in enumerate(values.items()):
            key_item = QTableWidgetItem(str(key))
            value_item = QTableWidgetItem("" if value is None else str(value))
            for item in (key_item, value_item):
                item.setFlags(item.flags() & ~Qt.ItemFlag.ItemIsEditable)
            self.table.setItem(row, 0, key_item)
            self.table.setItem(row, 1, value_item)
        self.status.setText(f"{len(values)} setting(s) loaded")


def open_fa_environment(parent=None):
    dialog = FAEnviroDialog(parent)
    dialog.show()
    return dialog


if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = open_fa_environment()
    raise SystemExit(app.exec())
