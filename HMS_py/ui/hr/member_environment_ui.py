"""Read-only MemEnviro settings viewer."""
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
    QPushButton,
    QTableWidget,
    QTableWidgetItem,
    QVBoxLayout,
)

from HMS_py.core import member_billing
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


class MemberEnvironmentDialog(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopMemberEnvironment")
        self.setWindowTitle("Member Environment Settings (Read-Only)")
        self.resize(680, 480)
        root = QVBoxLayout(self)
        root.addWidget(QLabel("MemEnviro configuration (read-only)"))
        self.table = QTableWidget(0, 2)
        self.table.setHorizontalHeaderLabels(["Setting", "Value"])
        self.table.setAlternatingRowColors(True)
        self.table.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.table.horizontalHeader().setStretchLastSection(True)
        root.addWidget(self.table, 1)
        footer = QHBoxLayout()
        self.status = QLabel("Ready")
        self.status.setObjectName("desktopStateLabel")
        self.btn_refresh = QPushButton("Refresh")
        self.btn_close = QPushButton("Close")
        for button in (self.btn_refresh, self.btn_close):
            mark_desktop_action(button)
            footer.addWidget(button)
        footer.addStretch()
        root.addLayout(footer)
        self.btn_refresh.clicked.connect(self.reload)
        self.btn_close.clicked.connect(self.close)
        root.addWidget(self.status)
        self.reload()

    def reload(self):
        try:
            values = member_billing.get_memenviro() or {}
        except Exception as exc:
            self.status.setText(f"Load failed: {exc}")
            return
        self.table.setRowCount(len(values))
        for row, (key, value) in enumerate(values.items()):
            items = (QTableWidgetItem(str(key)),
                     QTableWidgetItem("" if value is None else str(value)))
            for item in items:
                item.setFlags(item.flags() & ~Qt.ItemFlag.ItemIsEditable)
            self.table.setItem(row, 0, items[0])
            self.table.setItem(row, 1, items[1])
        self.status.setText(f"{len(values)} setting(s) loaded")


def open_member_environment(parent=None):
    dialog = MemberEnvironmentDialog(parent)
    dialog.show()
    return dialog


if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = open_member_environment()
    raise SystemExit(app.exec())
