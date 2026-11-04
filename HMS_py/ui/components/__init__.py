"""Shared UI Components for HMS_py - Laravel-inspired, VB6-parity."""

from __future__ import annotations

from PyQt6.QtCore import Qt, QTimer, pyqtSignal, QRect
from PyQt6.QtGui import QColor, QFont, QCursor, QPainter, QBrush, QPen, QIcon
from PyQt6.QtWidgets import (
    QWidget, QVBoxLayout, QHBoxLayout, QLabel, QPushButton,
    QFrame, QSizePolicy, QGraphicsDropShadowEffect, QDialog,
    QTableWidget, QTableWidgetItem, QHeaderView, QAbstractItemView,
    QLineEdit, QMenu, QStyle, QToolButton, QScrollArea
)

from HMS_py.ui.main_window.theme import palette as _palette


# ---------------------------------------------------------------------------
# Color / Style Helpers
# ---------------------------------------------------------------------------

def _p() -> dict:
    """Theme palette (cached per call)."""
    return _palette()


def _status_colors() -> dict:
    """Semantic status colors (light/dark adaptive)."""
    p = _p()
    return {
        "success":       p.get("success", "#10b981"),
        "success_bg":    p.get("success_bg", "rgba(16, 185, 129, 0.15)"),
        "success_text":  p.get("success_text", "#065f46"),
        "warning":       p.get("warning", "#f59e0b"),
        "warning_bg":    p.get("warning_bg", "rgba(245, 158, 11, 0.15)"),
        "warning_text":  p.get("warning_text", "#92400e"),
        "danger":        p.get("danger", "#ef4444"),
        "danger_bg":     p.get("danger_bg", "rgba(239, 68, 68, 0.15)"),
        "danger_text":   p.get("danger_text", "#991b1b"),
        "neutral":       p.get("neutral", "#6b7280"),
        "neutral_bg":    p.get("neutral_bg", "rgba(107, 114, 128, 0.15)"),
        "neutral_text":  p.get("neutral_text", "#374151"),
        "info":          p.get("info", "#3b82f6"),
        "info_bg":       p.get("info_bg", "rgba(59, 130, 246, 0.15)"),
        "info_text":     p.get("info_text", "#1e3a5f"),
        "accent":        p.get("accent", "#4f46e5"),
        "surface":       p.get("surface", "rgba(255,255,255,0.9)"),
        "surface_hover": p.get("surface_hover", "rgba(255,255,255,1.0)"),
        "border":        p.get("border", "rgba(148,163,184,0.3)"),
        "text":          p.get("text", "#1e293b"),
        "text_dim":      p.get("text_dim", "#64748b"),
        "on_success":    p.get("on_success", "#ffffff"),
        "on_warning":    p.get("on_warning", "#ffffff"),
        "on_danger":     p.get("on_danger", "#ffffff"),
        "on_neutral":    p.get("on_neutral", "#ffffff"),
        "glass_tint":    p.get("glass_tint", "rgba(255,255,255,0.7)"),
    }


def _room_status_palette() -> dict:
    """Room-status specific colors (VB6 semantic)."""
    s = _status_colors()
    return {
        "Vacant":       {"bg": s["success_bg"],  "fg": s["success_text"],  "border": s["success"]},
        "Available":    {"bg": s["success_bg"],  "fg": s["success_text"],  "border": s["success"]},
        "Occupied":     {"bg": s["danger_bg"],   "fg": s["danger_text"],   "border": s["danger"]},
        "In House":     {"bg": s["danger_bg"],   "fg": s["danger_text"],   "border": s["danger"]},
        "Dirty":        {"bg": s["warning_bg"],  "fg": s["warning_text"],  "border": s["warning"]},
        "Maintenance":  {"bg": s["neutral_bg"],  "fg": s["neutral_text"],  "border": s["neutral"]},
        "Blocked":      {"bg": s["neutral_bg"],  "fg": s["neutral_text"],  "border": s["neutral"]},
        "Out of Order": {"bg": s["neutral_bg"],  "fg": s["neutral_text"],  "border": s["neutral"]},
        "Reserved":     {"bg": s["info_bg"],     "fg": s["info_text"],     "border": s["info"]},
        "Stayover":     {"bg": s["info_bg"],     "fg": s["info_text"],     "border": s["info"]},
        "Due Out":      {"bg": s["warning_bg"],  "fg": s["warning_text"],  "border": s["warning"]},
    }


# ---------------------------------------------------------------------------
# StatCard - KPI Metric Card
# ---------------------------------------------------------------------------

class StatCard(QFrame):
    """Modern PMS KPI Metric Card (from front_office_dashboard)."""

    clicked = pyqtSignal(str)

    def __init__(
        self,
        key: str,
        title: str,
        value: str = "0",
        subtext: str = "",
        icon: str = "",
        accent_color: str = "",
        parent=None
    ):
        super().__init__(parent)
        self.key = key
        self.setProperty("glassCard", True)
        self.setCursor(QCursor(Qt.CursorShape.PointingHandCursor))
        self.setSizePolicy(QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Fixed)
        self.setMinimumHeight(96)
        self.setMaximumHeight(115)

        p = _p()
        self._accent = accent_color or p.get("accent", "#4f46e5")

        self.setStyleSheet(f"""
            QFrame[glassCard="true"] {{
                background: {p.get("surface", "rgba(255,255,255,0.7)")};
                border: 1px solid {p.get("border", "rgba(148,163,184,0.3)")};
                border-left: 4px solid {self._accent};
                border-radius: 10px;
            }}
            QFrame[glassCard="true"]:hover {{
                background: {p.get("surface_hover", "rgba(255,255,255,0.9)")};
                border-color: {self._accent};
            }}
        """)

        layout = QVBoxLayout(self)
        layout.setContentsMargins(14, 10, 14, 10)
        layout.setSpacing(4)

        header = QHBoxLayout()
        header.setSpacing(6)

        if icon:
            icon_lbl = QLabel(icon)
            icon_lbl.setStyleSheet(
                f"font-size: 16px; color: {self._accent}; "
                "background: transparent; border: none;"
            )
            header.addWidget(icon_lbl)

        self.title_lbl = QLabel(title)
        self.title_lbl.setStyleSheet(
            f"font-size: 11px; font-weight: 600; "
            f"color: {p.get('text_dim', '#64748b')}; "
            "background: transparent; border: none;"
        )
        header.addWidget(self.title_lbl)
        header.addStretch()
        layout.addLayout(header)

        self.val_lbl = QLabel(value)
        self.val_lbl.setStyleSheet(
            f"font-size: 24px; font-weight: 700; "
            f"color: {p.get('text', '#1e293b')}; "
            "background: transparent; border: none;"
        )
        layout.addWidget(self.val_lbl)

        self.sub_lbl = QLabel(subtext)
        self.sub_lbl.setStyleSheet(
            f"font-size: 10px; "
            f"color: {p.get('text_dim', '#64748b')}; "
            "background: transparent; border: none;"
        )
        layout.addWidget(self.sub_lbl)

    def mousePressEvent(self, ev):
        if ev.button() == Qt.MouseButton.LeftButton:
            self.clicked.emit(self.key)
        super().mousePressEvent(ev)

    def set_data(self, value: str, subtext: str = ""):
        self.val_lbl.setText(value)
        if subtext:
            self.sub_lbl.setText(subtext)


# ---------------------------------------------------------------------------
# RoomRackItem - Visual Room Tile
# ---------------------------------------------------------------------------

class RoomRackItem(QFrame):
    """Single room tile in the visual room rack."""

    clicked = pyqtSignal(dict)

    def __init__(self, room_data: dict, parent=None):
        super().__init__(parent)
        self.room_data = room_data
        self.setCursor(QCursor(Qt.CursorShape.PointingHandCursor))
        self.setFixedSize(110, 85)

        status = room_data.get("status", "Vacant")
        colors = _room_status_palette().get(status, _room_status_palette()["Vacant"])

        self.setStyleSheet(f"""
            QFrame {{
                background: {colors['bg']};
                border: 1.5px solid {colors['border']};
                border-radius: 8px;
            }}
            QFrame:hover {{
                border-width: 2.5px;
            }}
        """)

        lay = QVBoxLayout(self)
        lay.setContentsMargins(6, 6, 6, 6)
        lay.setSpacing(2)

        top_row = QHBoxLayout()
        r_num = QLabel(str(room_data.get("roomno", "")))
        r_num.setStyleSheet(
            f"font-size: 14px; font-weight: bold; "
            f"color: {colors['fg']}; background: transparent; border: none;"
        )
        top_row.addWidget(r_num)
        top_row.addStretch()

        badge = QLabel(status[:3].upper())
        badge.setStyleSheet(f"""
            background: {colors['border']};
            color: white;
            font-size: 8px;
            font-weight: bold;
            padding: 1px 4px;
            border-radius: 3px;
        """)
        badge.setFixedHeight(16)
        top_row.addWidget(badge)
        lay.addLayout(top_row)

        lay.addStretch()

        guest = room_data.get("guest", "")
        if guest:
            g_lbl = QLabel(guest[:18])
            g_lbl.setStyleSheet(
                f"font-size: 10px; color: {colors['fg']}; "
                "background: transparent; border: none;"
            )
            g_lbl.setWordWrap(True)
            lay.addWidget(g_lbl)

        dep = room_data.get("departure", "")
        if dep:
            d_lbl = QLabel(f"↗ {dep}")
            d_lbl.setStyleSheet(
                f"font-size: 9px; color: {colors['fg']}; "
                "background: transparent; border: none;"
            )
            lay.addWidget(d_lbl)

    def mousePressEvent(self, ev):
        if ev.button() == Qt.MouseButton.LeftButton:
            self.clicked.emit(self.room_data)
        super().mousePressEvent(ev)

    def update_data(self, room_data: dict):
        self.room_data = room_data
        # Recreate (simple approach) or update styles
        # For now, parent should recreate grid on data change


# ---------------------------------------------------------------------------
# StatusBadge - Color-coded Status Indicator
# ---------------------------------------------------------------------------

class StatusBadge(QLabel):
    """Pill-shaped status badge with semantic colors."""

    def __init__(self, text: str = "", status: str = "neutral", parent=None):
        super().__init__(text, parent)
        self._status = status
        self.setAlignment(Qt.AlignmentFlag.AlignCenter)
        self.setMinimumWidth(70)
        self.setFixedHeight(22)
        self._apply_style()

    def _apply_style(self):
        colors = _room_status_palette().get(self._status, _room_status_palette()["Vacant"])
        self.setStyleSheet(f"""
            QLabel {{
                background: {colors['border']};
                color: white;
                font-size: 10px;
                font-weight: 600;
                padding: 0 8px;
                border-radius: 11px;
            }}
        """)

    def set_status(self, status: str, text: str = ""):
        self._status = status
        if text:
            self.setText(text)
        self._apply_style()


# ---------------------------------------------------------------------------
# Toast - Non-blocking Notification
# ---------------------------------------------------------------------------

class Toast(QWidget):
    """Top-right toast notification (auto-dismiss)."""

    _instance = None

    def __init__(self, parent=None):
        super().__init__(parent, Qt.WindowType.ToolTip | Qt.WindowType.FramelessWindowHint | Qt.WindowType.WindowStaysOnTopHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)
        self.setAttribute(Qt.WidgetAttribute.WA_ShowWithoutActivating)

        self._container = QVBoxLayout(self)
        self._container.setContentsMargins(0, 0, 0, 0)
        self._container.setSpacing(6)

        # Position at top-right of parent
        if parent:
            self._reposition(parent)
            parent.installEventFilter(self)

    def _reposition(self, parent):
        geo = parent.geometry()
        self.move(geo.topRight() - self.rect().topRight() - QRect(20, 20, 0, 0).topLeft())

    def eventFilter(self, obj, ev):
        if ev.type() == ev.Type.Resize or ev.type() == ev.Type.Move:
            self._reposition(obj)
        return super().eventFilter(obj, ev)

    @classmethod
    def show_message(cls, parent, message: str, type_: str = "info", duration: int = 3000):
        if cls._instance is None:
            cls._instance = Toast(parent)
            cls._instance.show()

        toast_item = _ToastItem(message, type_)
        cls._instance._container.addWidget(toast_item)
        cls._instance.adjustSize()
        cls._instance._reposition(parent)

        QTimer.singleShot(duration, lambda: cls._remove(toast_item))

    @classmethod
    def _remove(cls, item):
        if cls._instance:
            cls._instance._container.removeWidget(item)
            item.deleteLater()
            if cls._instance._container.count() == 0:
                cls._instance.hide()
                cls._instance = None


class _ToastItem(QFrame):
    def __init__(self, message: str, type_: str):
        super().__init__()
        colors = _status_colors()
        bg_map = {
            "success": colors["success_bg"],
            "warning": colors["warning_bg"],
            "danger": colors["danger_bg"],
            "info": colors["info_bg"],
        }
        border_map = {
            "success": colors["success"],
            "warning": colors["warning"],
            "danger": colors["danger"],
            "info": colors["info"],
        }
        bg = bg_map.get(type_, colors["info_bg"])
        border = border_map.get(type_, colors["info"])

        self.setStyleSheet(f"""
            QFrame {{
                background: {bg};
                border-left: 4px solid {border};
                border-radius: 6px;
                padding: 8px 12px;
            }}
        """)

        lay = QHBoxLayout(self)
        lay.setContentsMargins(10, 6, 10, 6)

        icon_map = {"success": "✓", "warning": "⚠", "danger": "✕", "info": "ℹ"}
        icon = QLabel(icon_map.get(type_, "ℹ"))
        icon.setStyleSheet(f"color: {border}; font-size: 14px; font-weight: bold;")
        lay.addWidget(icon)

        msg = QLabel(message)
        msg.setStyleSheet(f"color: {colors['text']}; font-size: 12px;")
        msg.setWordWrap(True)
        lay.addWidget(msg, 1)


# ---------------------------------------------------------------------------
# ConfirmationDialog - SweetAlert-style Confirm
# ---------------------------------------------------------------------------

def confirm_dialog(
    parent,
    title: str,
    text: str,
    confirm_text: str = "Yes",
    cancel_text: str = "No",
    type_: str = "question"
) -> bool:
    """SweetAlert-style confirmation dialog."""
    from PyQt6.QtWidgets import QMessageBox

    box = QMessageBox(parent)
    box.setWindowTitle(title)
    box.setText(text)
    box.setStandardButtons(
        QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No
    )
    box.setDefaultButton(QMessageBox.StandardButton.No)

    # Style to match theme
    p = _p()
    box.setStyleSheet(f"""
        QMessageBox {{
            background: {p.get("surface", "white")};
        }}
        QLabel {{
            color: {p.get("text", "#1e293b")};
            font-size: 13px;
        }}
        QPushButton {{
            min-width: 80px;
            padding: 6px 16px;
            border-radius: 6px;
            font-weight: 600;
        }}
        QPushButton[text="Yes"] {{
            background: {p.get("danger", "#ef4444")};
            color: white;
        }}
        QPushButton[text="No"] {{
            background: {p.get("neutral", "#6b7280")};
            color: white;
        }}
    """)

    # Rename buttons
    yes_btn = box.button(QMessageBox.StandardButton.Yes)
    no_btn = box.button(QMessageBox.StandardButton.No)
    if yes_btn:
        yes_btn.setText(confirm_text)
    if no_btn:
        no_btn.setText(cancel_text)

    return box.exec() == QMessageBox.StandardButton.Yes


# ---------------------------------------------------------------------------
# SearchBox - Debounced Search with Clear
# ---------------------------------------------------------------------------

class SearchBox(QLineEdit):
    """Search input with debounce, clear button, and placeholder."""

    search_changed = pyqtSignal(str)

    def __init__(
        self,
        placeholder: str = "Search...",
        debounce_ms: int = 300,
        parent=None
    ):
        super().__init__(parent)
        self.setPlaceholderText(placeholder)
        self.setClearButtonEnabled(True)

        self._timer = QTimer()
        self._timer.setSingleShot(True)
        self._timer.timeout.connect(self._emit_search)
        self._debounce = debounce_ms

        self.textChanged.connect(self._on_text_changed)

        p = _p()
        self.setStyleSheet(f"""
            QLineEdit {{
                padding: 6px 12px;
                padding-right: 30px;
                border: 1px solid {p.get("border", "#cbd5e1")};
                border-radius: 6px;
                background: {p.get("surface", "white")};
                font-size: 13px;
            }}
            QLineEdit:focus {{
                border-color: {p.get("accent", "#4f46e5")};
            }}
        """)

    def _on_text_changed(self, text: str):
        self._timer.start(self._debounce)

    def _emit_search(self):
        self.search_changed.emit(self.text().strip())


# ---------------------------------------------------------------------------
# ActionDropdown - "More Options" Dropdown Button
# ---------------------------------------------------------------------------

class ActionDropdown(QToolButton):
    """Dropdown button with grouped actions (Laravel 'More Options' pattern)."""

    def __init__(self, title: str = "More Options", parent=None):
        super().__init__(parent)
        self.setText(title)
        self.setPopupMode(QToolButton.ToolButtonPopupMode.InstantPopup)
        self.setToolButtonStyle(Qt.ToolButtonStyle.ToolButtonTextBesideIcon)

        self._menu = QMenu(self)
        self.setMenu(self._menu)

        p = _p()
        self.setStyleSheet(f"""
            QToolButton {{
                padding: 6px 12px;
                border: 1px solid {p.get("border", "#cbd5e1")};
                border-radius: 6px;
                background: {p.get("surface", "white")};
                font-size: 12px;
                font-weight: 500;
            }}
            QToolButton:hover {{
                border-color: {p.get("accent", "#4f46e5")};
            }}
            QToolButton::menu-indicator {{ image: none; }}
            QMenu {{
                background: {p.get("surface", "white")};
                border: 1px solid {p.get("border", "#cbd5e1")};
                border-radius: 6px;
                padding: 4px;
            }}
            QMenu::item {{
                padding: 8px 16px;
                border-radius: 4px;
            }}
            QMenu::item:selected {{
                background: {p.get("accent", "#4f46e5")};
                color: white;
            }}
        """)

    def add_action(self, text: str, callback, icon=None, shortcut=None, enabled=True):
        action = self._menu.addAction(text)
        if icon:
            action.setIcon(icon)
        if shortcut:
            action.setShortcut(shortcut)
        action.setEnabled(enabled)
        action.triggered.connect(callback)
        return action

    def add_separator(self):
        self._menu.addSeparator()

    def add_section(self, title: str):
        """Add a non-clickable section header."""
        action = self._menu.addAction(title)
        action.setEnabled(False)
        font = action.font()
        font.setBold(True)
        action.setFont(font)
        return action


# ---------------------------------------------------------------------------
# DataTable - Enhanced QTableWidget
# ---------------------------------------------------------------------------

class DataTable(QTableWidget):
    """Enhanced table with search, sort, selection helpers."""

    def __init__(self, columns: list[str], parent=None):
        super().__init__(0, len(columns), parent)
        self.setHorizontalHeaderLabels(columns)
        self._setup()

    def _setup(self):
        self.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
        self.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        self.setSelectionMode(QAbstractItemView.SelectionMode.SingleSelection)
        self.setAlternatingRowColors(True)
        self.verticalHeader().setVisible(False)
        self.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
        self.horizontalHeader().setSortIndicatorShown(True)
        self.setSortingEnabled(True)

        p = _p()
        self.setStyleSheet(f"""
            QTableWidget {{
                border: 1px solid {p.get("border", "#cbd5e1")};
                border-radius: 6px;
                gridline-color: {p.get("border", "#cbd5e1")};
                font-size: 12px;
            }}
            QHeaderView::section {{
                background: {p.get("surface", "#f8fafc")};
                border: none;
                border-bottom: 1px solid {p.get("border", "#cbd5e1")};
                padding: 8px;
                font-weight: 600;
                color: {p.get("text_dim", "#64748b")};
            }}
            QTableWidget::item:selected {{
                background: {p.get("accent", "#4f46e5")};
                color: white;
            }}
        """)

    def set_data(self, rows: list[list]):
        """Replace all data."""
        self.setSortingEnabled(False)
        self.setRowCount(len(rows))
        for r, row in enumerate(rows):
            for c, val in enumerate(row):
                self.setItem(r, c, QTableWidgetItem("" if val is None else str(val)))
        self.setSortingEnabled(True)

    def get_selected_row_data(self) -> list | None:
        """Return selected row as list of strings."""
        row = self.currentRow()
        if row < 0:
            return None
        return [self.item(row, c).text() if self.item(row, c) else "" for c in range(self.columnCount())]

    def get_selected_row_dict(self, keys: list[str]) -> dict | None:
        """Return selected row as dict with given keys."""
        data = self.get_selected_row_data()
        if data is None:
            return None
        return dict(zip(keys, data))


# ---------------------------------------------------------------------------
# DateRangePicker - From/To Date with Presets
# ---------------------------------------------------------------------------

class DateRangePicker(QWidget):
    """Date range selector with quick presets."""

    range_changed = pyqtSignal(object, object)  # (from_date, to_date)

    def __init__(self, parent=None):
        super().__init__(parent)
        from PyQt6.QtWidgets import QDateEdit, QComboBox
        from PyQt6.QtCore import QDate

        lay = QHBoxLayout(self)
        lay.setContentsMargins(0, 0, 0, 0)
        lay.setSpacing(8)

        self.de_from = QDateEdit(QDate.currentDate().addDays(-7))
        self.de_from.setCalendarPopup(True)
        self.de_from.setDisplayFormat("dd/MM/yyyy")
        self.de_from.dateChanged.connect(self._emit)

        self.de_to = QDateEdit(QDate.currentDate())
        self.de_to.setCalendarPopup(True)
        self.de_to.setDisplayFormat("dd/MM/yyyy")
        self.de_to.dateChanged.connect(self._emit)

        self.cb_preset = QComboBox()
        self.cb_preset.addItems(["Last 7 Days", "Last 30 Days", "This Month", "Last Month", "Custom"])
        self.cb_preset.currentIndexChanged.connect(self._on_preset)

        lay.addWidget(QLabel("From:"))
        lay.addWidget(self.de_from)
        lay.addWidget(QLabel("To:"))
        lay.addWidget(self.de_to)
        lay.addWidget(self.cb_preset)
        lay.addStretch()

        p = _p()
        self.setStyleSheet(f"""
            QDateEdit, QComboBox {{
                padding: 4px 8px;
                border: 1px solid {p.get("border", "#cbd5e1")};
                border-radius: 4px;
                background: {p.get("surface", "white")};
            }}
        """)

    def _on_preset(self, idx: int):
        from PyQt6.QtCore import QDate
        today = QDate.currentDate()
        if idx == 0:  # Last 7 Days
            self.de_from.setDate(today.addDays(-7))
            self.de_to.setDate(today)
        elif idx == 1:  # Last 30 Days
            self.de_from.setDate(today.addDays(-30))
            self.de_to.setDate(today)
        elif idx == 2:  # This Month
            self.de_from.setDate(QDate(today.year(), today.month(), 1))
            self.de_to.setDate(today)
        elif idx == 3:  # Last Month
            first_this = QDate(today.year(), today.month(), 1)
            last_last = first_this.addDays(-1)
            self.de_from.setDate(QDate(last_last.year(), last_last.month(), 1))
            self.de_to.setDate(last_last)
        # idx == 4: Custom - do nothing

    def _emit(self):
        self.range_changed.emit(
            self.de_from.date().toPyDate(),
            self.de_to.date().toPyDate()
        )

    def get_range(self) -> tuple:
        return (self.de_from.date().toPyDate(), self.de_to.date().toPyDate())


# ---------------------------------------------------------------------------
# ModalBase - Base Modal Dialog
# ---------------------------------------------------------------------------

class ModalBase(QDialog):
    """Base modal with consistent header, body, footer (Laravel modal pattern)."""

    def __init__(self, title: str, subtitle: str = "", parent=None):
        super().__init__(parent)
        self.setWindowTitle(title)
        self.setModal(True)
        self.resize(600, 400)

        p = _p()
        self.setStyleSheet(f"""
            QDialog {{
                background: {p.get("surface", "white")};
            }}
        """)

        root = QVBoxLayout(self)
        root.setContentsMargins(0, 0, 0, 0)
        root.setSpacing(0)

        # Header
        header = QFrame()
        header.setFixedHeight(56)
        header.setStyleSheet(f"""
            QFrame {{
                background: {p.get("surface", "white")};
                border-bottom: 1px solid {p.get("border", "#cbd5e1")};
            }}
        """)
        hlay = QHBoxLayout(header)
        hlay.setContentsMargins(16, 0, 16, 0)

        title_lbl = QLabel(title)
        title_lbl.setStyleSheet(f"font-size: 16px; font-weight: 600; color: {p.get('text', '#1e293b')};")
        hlay.addWidget(title_lbl)

        if subtitle:
            sub_lbl = QLabel(subtitle)
            sub_lbl.setStyleSheet(f"font-size: 12px; color: {p.get('text_dim', '#64748b')};")
            hlay.addWidget(sub_lbl)

        hlay.addStretch()

        close_btn = QPushButton("✕")
        close_btn.setFixedSize(28, 28)
        close_btn.setCursor(QCursor(Qt.CursorShape.PointingHandCursor))
        close_btn.setStyleSheet(f"""
            QPushButton {{
                background: transparent;
                border: none;
                color: {p.get("text_dim", "#64748b")};
                font-size: 16px;
                border-radius: 4px;
            }}
            QPushButton:hover {{
                background: {p.get("neutral_bg", "#f3f4f6")};
                color: {p.get("text", "#1e293b")};
            }}
        """)
        close_btn.clicked.connect(self.reject)
        hlay.addWidget(close_btn)

        root.addWidget(header)

        # Body (scrollable)
        self.body = QWidget()
        self.body_layout = QVBoxLayout(self.body)
        self.body_layout.setContentsMargins(16, 16, 16, 16)
        self.body_layout.setSpacing(12)

        scroll = QScrollArea()
        scroll.setWidget(self.body)
        scroll.setWidgetResizable(True)
        scroll.setFrameShape(QFrame.Shape.NoFrame)
        scroll.setStyleSheet("background: transparent;")
        root.addWidget(scroll, 1)

        # Footer
        self.footer = QFrame()
        self.footer.setFixedHeight(56)
        self.footer.setStyleSheet(f"""
            QFrame {{
                background: {p.get("surface", "white")};
                border-top: 1px solid {p.get("border", "#cbd5e1")};
            }}
        """)
        flay = QHBoxLayout(self.footer)
        flay.setContentsMargins(16, 0, 16, 0)
        flay.addStretch()
        root.addWidget(self.footer)

        self._footer_layout = flay

    def add_button(self, text: str, callback, primary: bool = False, close_on_click: bool = True):
        btn = QPushButton(text)
        btn.setCursor(QCursor(Qt.CursorShape.PointingHandCursor))
        p = _p()
        if primary:
            btn.setStyleSheet(f"""
                QPushButton {{
                    background: {p.get("accent", "#4f46e5")};
                    color: white;
                    border: none;
                    padding: 8px 20px;
                    border-radius: 6px;
                    font-weight: 600;
                }}
                QPushButton:hover {{ background: {p.get("accent", "#4f46e5")}dd; }}
            """)
        else:
            btn.setStyleSheet(f"""
                QPushButton {{
                    background: {p.get("neutral_bg", "#f3f4f6")};
                    color: {p.get("text", "#1e293b")};
                    border: none;
                    padding: 8px 20px;
                    border-radius: 6px;
                    font-weight: 500;
                }}
                QPushButton:hover {{ background: {p.get("neutral_bg", "#f3f4f6")}dd; }}
            """)
        btn.clicked.connect(callback)
        if close_on_click:
            btn.clicked.connect(self.accept)
        self._footer_layout.addWidget(btn)
        return btn

    def add_body_widget(self, widget):
        self.body_layout.addWidget(widget)