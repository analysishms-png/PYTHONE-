"""
HMS_py UI Redesign v2 — VB6 Faithful + Modern Hospitality Research.

Research basis:
  - Hotelify (Figma): Clean card-based layout, soft blues, readable typography
  - Shadcnblocks Dashboard 18: Collapsible inset sidebar, shift strip,
    square-cell booking chart, status-colored availability calendar
  - Shadcnblocks Dashboard 14: Bidirectional occupancy chart, glow revenue bars,
    bookings panel with date strip navigator
  - Shadcnblocks Dashboard 15: Duotone gradient occupancy chart, donut chart,
    revenue overview with channel breakdown
  - Bookini: Operations-first design, status-color language,
    modular template-driven, real-time by default
  - Aethel Mono HMS: Dark theme, Noble Bronze (#a18460) + Deep Charcoal (#2c3436),
    Montserrat typography, JWT auth, TanStack Table
  - DEV Community (Dark Mode PMS): Deep slate blue (#0f172a) background,
    glassmorphism stat cards with backdrop blur(12px),
    CSS Grid layout, premium dark mode

Redesign principles:
  1. Dark mode default (deep slate blue #0f172a)
  2. Glassmorphism cards with backdrop-filter blur
  3. Status color language: green=vacant, yellow=dirty, red=occupied, blue=cleaning
  4. Collapsible inset sidebar with grouped navigation
  5. KPI cards at top: Occupancy Rate, ADR, RevPAR, Total Revenue
  6. Card-based layout for all module screens
  7. Modern typography: Montserrat for headings, Segoe UI for body
  8. Operations-first workflow (Bookini style)
  9. VB6 teal sidebar gradient retained as accent
  10. Shift strip and quick action buttons (Dashboard 18)
  11. Availability calendar with status-colored cells (Dashboard 14)
  12. Bidirectional occupancy chart (Dashboard 15)
"""
from __future__ import annotations

import os, sys, json

# ── Design Tokens ──────────────────────────────────────────
DESIGN_TOKENS = {
    # Colors
    "bg_dark": "#0f172a",            # Deep slate blue (Aethel Mono / DEV Community)
    "bg_dark_lighter": "#1e293b",    # Slightly lighter surface
    "bg_dark_card": "rgba(30, 41, 59, 0.7)",  # Glass card
    "surface_card": "rgba(30, 41, 59, 0.6)",  # Glassmorphism card
    "surface_hover": "rgba(30, 41, 59, 0.85)",
    "accent": "#2b8c9d",             # VB6 teal retained
    "accent_light": "#3db8c9",
    "accent_glow": "rgba(43, 140, 157, 0.3)",
    "accent_soft": "rgba(43, 140, 157, 0.15)",
    "gold": "#facc15",               # Premium gold (DEV Community)
    "text_main": "#f8fafc",           # Light text for dark mode
    "text_dim": "#94a3b8",           # Muted text
    "text_bright": "#e2e8f0",
    "border": "rgba(148, 163, 184, 0.15)",
    "border_strong": "rgba(148, 163, 184, 0.30)",
    
    # Status colors
    "status_vacant": "#10b981",      # Green = available/vacant
    "status_occupied": "#ef4444",    # Red = occupied
    "status_dirty": "#f59e0b",       # Yellow = dirty
    "status_cleaning": "#3b82f6",    # Blue = cleaning
    "status_maintenance": "#6b7280", # Gray = maintenance
    "status_reserved": "#8b5cf6",    # Purple = reserved
    
    # Sidebar
    "sidebar_top": "#2b8c9d",        # VB6 teal gradient top
    "sidebar_bottom": "#0d4f60",     # VB6 teal gradient bottom
    "sidebar_text": "#ffffff",
    "sidebar_hover": "rgba(43, 140, 157, 0.3)",
    "sidebar_active": "rgba(43, 140, 157, 0.6)",
    
    # Typography
    "font_heading": "Montserrat",     # Modern headings (Aethel Mono)
    "font_body": "Segoe UI",          # Body text
    "font_size_xs": "10px",
    "font_size_sm": "12px",
    "font_size_md": "14px",
    "font_size_lg": "16px",
    "font_size_xl": "20px",
    "font_size_xxl": "24px",
    "font_size_title": "28px",
    
    # Spacing
    "spacing_xs": "4px",
    "spacing_sm": "8px",
    "spacing_md": "12px",
    "spacing_lg": "16px",
    "spacing_xl": "20px",
    "spacing_xxl": "24px",
    "spacing_xxxl": "32px",
    
    # Border Radius
    "radius_sm": "8px",
    "radius_md": "12px",
    "radius_lg": "16px",
    "radius_xl": "20px",
    "radius_full": "9999px",
    
    # Shadows
    "shadow_sm": "0 1px 2px rgba(0,0,0,0.3)",
    "shadow_md": "0 4px 6px rgba(0,0,0,0.3)",
    "shadow_lg": "0 10px 15px rgba(0,0,0,0.4)",
    "shadow_glow": "0 0 20px rgba(43, 140, 157, 0.2)",
    
    # Glassmorphism
    "glass_blur": "blur(12px)",
    "glass_opacity": "0.6",
    "glass_border": "1px solid rgba(255, 255, 255, 0.08)",
}

# ── KPI Cards Configuration ────────────────────────────────
KPI_CARDS = [
    {"id": "occupancy", "label": "Occupancy Rate", "icon": "📊", "color": "accent"},
    {"id": "adr", "label": "Average Daily Rate", "icon": "💰", "color": "gold"},
    {"id": "revpar", "label": "RevPAR", "icon": "📈", "color": "status_vacant"},
    {"id": "revenue", "label": "Total Revenue", "icon": "🏦", "color": "accent"},
    {"id": "arrivals", "label": "Today's Arrivals", "icon": "🚪", "color": "status_cleaning"},
    {"id": "departures", "label": "Today's Departures", "icon": "📤", "color": "status_dirty"},
    {"id": "walkins", "label": "Walk-ins", "icon": "👥", "color": "status_reserved"},
    {"id": "housekeeping", "label": "HK Queue", "icon": "🧹", "color": "warning"},
]

# ── Sidebar Navigation Groups ──────────────────────────────
SIDEBAR_GROUPS = {
    "front_office": {
        "label": "Front Office",
        "icon": "🏨",
        "items": [
            {"label": "Dashboard", "target": "dashboard", "shortcut": "Alt+D"},
            {"label": "Reservation", "target": "reservation", "shortcut": "Alt+R"},
            {"label": "Check-In", "target": "checkin", "shortcut": "Alt+C"},
            {"label": "Check-Out", "target": "checkout", "shortcut": "Alt+O"},
            {"label": "Folio", "target": "folio", "shortcut": "Alt+F"},
            {"label": "Guest Profile", "target": "guest", "shortcut": "Alt+G"},
            {"label": "Room Status", "target": "room_status", "shortcut": "Alt+S"},
        ]
    },
    "property": {
        "label": "Property",
        "icon": "🏢",
        "items": [
            {"label": "Rooms", "target": "rooms", "shortcut": "Alt+1"},
            {"label": "Room Category", "target": "room_category", "shortcut": "Alt+2"},
            {"label": "Amenities", "target": "amenities", "shortcut": "Alt+3"},
        ]
    },
    "operations": {
        "label": "Operations",
        "icon": "⚙️",
        "items": [
            {"label": "Housekeeping", "target": "housekeeping", "shortcut": "Alt+H"},
            {"label": "Point of Sale", "target": "pos", "shortcut": "Alt+P"},
            {"label": "Inventory", "target": "inventory", "shortcut": "Alt+I"},
            {"label": "Banquet", "target": "banquet", "shortcut": "Alt+B"},
        ]
    },
    "revenue": {
        "label": "Revenue",
        "icon": "💵",
        "items": [
            {"label": "Finance", "target": "finance", "shortcut": "Alt+V"},
            {"label": "Reports", "target": "reports", "shortcut": "Alt+T"},
            {"label": "Night Audit", "target": "night_audit", "shortcut": "Alt+N"},
        ]
    },
    "admin": {
        "label": "Admin",
        "icon": "⚙️",
        "items": [
            {"label": "Settings", "target": "settings", "shortcut": "Alt+A"},
            {"label": "Users", "target": "users", "shortcut": "Alt+U"},
        ]
    }
}

# ── Card Styles ────────────────────────────────────────────
CARD_STYLES = {
    "stat_card": f"""
        QFrame {{
            background: {DESIGN_TOKENS['surface_card']};
            border: {DESIGN_TOKENS['glass_border']};
            border-radius: {DESIGN_TOKENS['radius_lg']};
            padding: {DESIGN_TOKENS['spacing_xl']};
            backdrop-filter: {DESIGN_TOKENS['glass_blur']};
        }}
        QFrame:hover {{
            background: {DESIGN_TOKENS['surface_hover']};
            border-color: {DESIGN_TOKENS['accent']};
            box-shadow: {DESIGN_TOKENS['shadow_glow']};
        }}
    """,
    "kpi_card": f"""
        QFrame {{
            background: {DESIGN_TOKENS['surface_card']};
            border: {DESIGN_TOKENS['glass_border']};
            border-radius: {DESIGN_TOKENS['radius_md']};
            padding: {DESIGN_TOKENS['spacing_lg']};
            backdrop-filter: {DESIGN_TOKENS['glass_blur']};
        }}
        QLabel#kpi_label {{
            color: {DESIGN_TOKENS['text_dim']};
            font-size: {DESIGN_TOKENS['font_size_sm']};
            font-family: {DESIGN_TOKENS['font_body']};
        }}
        QLabel#kpi_value {{
            color: {DESIGN_TOKENS['text_main']};
            font-size: {DESIGN_TOKENS['font_size_xxl']};
            font-family: {DESIGN_TOKENS['font_heading']};
            font-weight: 700;
        }}
        QLabel#kpi_trend {{
            font-size: {DESIGN_TOKENS['font_size_sm']};
            font-family: {DESIGN_TOKENS['font_body']};
        }}
    """,
    "module_card": f"""
        QFrame {{
            background: {DESIGN_TOKENS['surface_card']};
            border: {DESIGN_TOKENS['glass_border']};
            border-radius: {DESIGN_TOKENS['radius_lg']};
            padding: {DESIGN_TOKENS['spacing_xl']};
            backdrop-filter: {DESIGN_TOKENS['glass_blur']};
        }}
        QPushButton {{
            background: {DESIGN_TOKENS['accent']};
            color: {DESIGN_TOKENS['text_main']};
            border: none;
            border-radius: {DESIGN_TOKENS['radius_md']};
            padding: {DESIGN_TOKENS['spacing_sm']} {DESIGN_TOKENS['spacing_lg']};
            font-family: {DESIGN_TOKENS['font_body']};
            font-size: {DESIGN_TOKENS['font_size_md']};
        }}
        QPushButton:hover {{
            background: {DESIGN_TOKENS['accent_light']};
            box-shadow: {DESIGN_TOKENS['shadow_glow']};
        }}
    """,
}

# ── Theme QSS Templates ────────────────────────────────────
DARK_THEME_QSS = f"""
/* ═══════ HMS Dark Mode Premium ═══════ */
* {{
    font-family: '{DESIGN_TOKENS['font_body']}', sans-serif;
    font-size: {DESIGN_TOKENS['font_size_md']};
    color: {DESIGN_TOKENS['text_main']};
    outline: none;
}}
QWidget {{
    background-color: {DESIGN_TOKENS['bg_dark']};
    color: {DESIGN_TOKENS['text_main']};
}}
QMainWindow, QDialog {{
    background-color: {DESIGN_TOKENS['bg_dark']};
}}
QMenuBar {{
    background-color: {DESIGN_TOKENS['bg_dark_lighter']};
    color: {DESIGN_TOKENS['text_main']};
    border-bottom: 1px solid {DESIGN_TOKENS['border']};
}}
QMenuBar::item:selected {{
    background-color: {DESIGN_TOKENS['accent']};
    color: {DESIGN_TOKENS['text_main']};
}}
QMenu {{
    background-color: {DESIGN_TOKENS['bg_dark_lighter']};
    color: {DESIGN_TOKENS['text_main']};
    border: 1px solid {DESIGN_TOKENS['border']};
    border-radius: {DESIGN_TOKENS['radius_md']};
    padding: {DESIGN_TOKENS['spacing_sm']} 0;
}}
QMenu::item:selected {{
    background-color: {DESIGN_TOKENS['accent']};
    color: {DESIGN_TOKENS['text_main']};
}}
QPushButton {{
    background-color: {DESIGN_TOKENS['accent']};
    color: {DESIGN_TOKENS['text_main']};
    border: none;
    border-radius: {DESIGN_TOKENS['radius_md']};
    padding: {DESIGN_TOKENS['spacing_sm']} {DESIGN_TOKENS['spacing_lg']};
    font-family: {DESIGN_TOKENS['font_body']};
    font-size: {DESIGN_TOKENS['font_size_md']};
}}
QPushButton:hover {{
    background-color: {DESIGN_TOKENS['accent_light']};
}}
QPushButton:pressed {{
    background-color: {DESIGN_TOKENS['sidebar_bottom']};
}}
QPushButton:disabled {{
    background-color: {DESIGN_TOKENS['text_dim']};
    opacity: 0.5;
}}
QLineEdit, QComboBox, QDateEdit, QSpinBox, QDoubleSpinBox, QTextEdit {{
    background-color: {DESIGN_TOKENS['bg_dark_lighter']};
    color: {DESIGN_TOKENS['text_main']};
    border: 1px solid {DESIGN_TOKENS['border']};
    border-radius: {DESIGN_TOKENS['radius_sm']};
    padding: {DESIGN_TOKENS['spacing_sm']} {DESIGN_TOKENS['spacing_md']};
    font-family: {DESIGN_TOKENS['font_body']};
    font-size: {DESIGN_TOKENS['font_size_md']};
    selection-background-color: {DESIGN_TOKENS['accent']};
}}
QLineEdit:focus, QComboBox:focus, QDateEdit:focus {{
    border-color: {DESIGN_TOKENS['accent']};
    box-shadow: {DESIGN_TOKENS['shadow_glow']};
}}
QHeaderView::section {{
    background-color: {DESIGN_TOKENS['bg_dark_lighter']};
    color: {DESIGN_TOKENS['text_main']};
    padding: {DESIGN_TOKENS['spacing_sm']} {DESIGN_TOKENS['spacing_md']};
    border-bottom: 2px solid {DESIGN_TOKENS['accent']};
    font-weight: bold;
    font-family: {DESIGN_TOKENS['font_heading']};
    font-size: {DESIGN_TOKENS['font_size_sm']};
}}
QTableWidget {{
    background-color: {DESIGN_TOKENS['bg_dark']};
    color: {DESIGN_TOKENS['text_main']};
    gridline-color: {DESIGN_TOKENS['border']};
    border: 1px solid {DESIGN_TOKENS['border']};
    border-radius: {DESIGN_TOKENS['radius_sm']};
    alternate-background-color: {DESIGN_TOKENS['bg_dark_lighter']};
}}
QTableWidget::item {{
    padding: {DESIGN_TOKENS['spacing_sm']} {DESIGN_TOKENS['spacing_md']};
}}
QTableWidget::item:selected {{
    background-color: {DESIGN_TOKENS['accent']};
    color: {DESIGN_TOKENS['text_main']};
}}
QStatusBar {{
    background-color: {DESIGN_TOKENS['bg_dark_lighter']};
    color: {DESIGN_TOKENS['text_dim']};
    border-top: 1px solid {DESIGN_TOKENS['border']};
    padding: {DESIGN_TOKENS['spacing_sm']} {DESIGN_TOKENS['spacing_md']};
}}
QSplitter::handle {{
    background-color: {DESIGN_TOKENS['border']};
}}
QSplitter::handle:hover {{
    background-color: {DESIGN_TOKENS['accent']};
}}
QScrollBar:vertical {{
    background-color: {DESIGN_TOKENS['bg_dark']};
    width: 10px;
    border-radius: 5px;
}}
QScrollBar::handle:vertical {{
    background-color: {DESIGN_TOKENS['accent']};
    border-radius: 5px;
    min-height: 30px;
}}
QScrollBar::add-line:vertical, QScrollBar::sub-line:vertical {{
    height: 0px;
}}
QProgressBar {{
    border: 1px solid {DESIGN_TOKENS['border']};
    border-radius: {DESIGN_TOKENS['radius_sm']};
    text-align: center;
    color: {DESIGN_TOKENS['text_main']};
    background-color: {DESIGN_TOKENS['bg_dark_lighter']};
}}
QProgressBar::chunk {{
    background-color: {DESIGN_TOKENS['accent']};
    border-radius: {DESIGN_TOKENS['radius_sm']};
}}
QTabWidget::pane {{
    border: 1px solid {DESIGN_TOKENS['border']};
    background-color: {DESIGN_TOKENS['bg_dark']};
    border-radius: {DESIGN_TOKENS['radius_md']};
}}
QTabBar::tab {{
    background-color: {DESIGN_TOKENS['bg_dark_lighter']};
    color: {DESIGN_TOKENS['text_dim']};
    padding: {DESIGN_TOKENS['spacing_sm']} {DESIGN_TOKENS['spacing_lg']};
    border: 1px solid {DESIGN_TOKENS['border']};
    border-bottom: none;
    border-radius: {DESIGN_TOKENS['radius_sm']} {DESIGN_TOKENS['radius_sm']} 0 0;
    margin-right: 2px;
}}
QTabBar::tab:selected {{
    background-color: {DESIGN_TOKENS['accent']};
    color: {DESIGN_TOKENS['text_main']};
}}
QTabBar::tab:hover {{
    background-color: {DESIGN_TOKENS['accent_soft']};
}}
"""

LIGHT_THEME_QSS = f"""
/* ═══════ HMS Light Frost Glass v2 ═══════ */
* {{
    font-family: '{DESIGN_TOKENS['font_body']}', sans-serif;
    font-size: {DESIGN_TOKENS['font_size_md']};
    color: #1e293b;
    outline: none;
}}
QWidget {{
    background-color: #eef3fb;
    color: #1e293b;
}}
QMainWindow, QDialog {{
    background-color: #eef3fb;
}}
QPushButton {{
    background-color: {DESIGN_TOKENS['accent']};
    color: #ffffff;
    border: none;
    border-radius: {DESIGN_TOKENS['radius_md']};
    padding: {DESIGN_TOKENS['spacing_sm']} {DESIGN_TOKENS['spacing_lg']};
    font-family: {DESIGN_TOKENS['font_body']};
    font-size: {DESIGN_TOKENS['font_size_md']};
}}
QPushButton:hover {{
    background-color: {DESIGN_TOKENS['accent_light']};
}}
QPushButton:pressed {{
    background-color: {DESIGN_TOKENS['sidebar_bottom']};
}}
QPushButton:disabled {{
    background-color: #94a3b8;
    opacity: 0.5;
}}
QLineEdit, QComboBox, QDateEdit, QTextEdit {{
    background-color: #ffffff;
    color: #1e293b;
    border: 1px solid {DESIGN_TOKENS['border']};
    border-radius: {DESIGN_TOKENS['radius_sm']};
    padding: {DESIGN_TOKENS['spacing_sm']} {DESIGN_TOKENS['spacing_md']};
    font-family: {DESIGN_TOKENS['font_body']};
    font-size: {DESIGN_TOKENS['font_size_md']};
}}
QLineEdit:focus, QComboBox:focus {{
    border-color: {DESIGN_TOKENS['accent']};
    box-shadow: 0 0 0 3px rgba(43, 140, 157, 0.15);
}}
QHeaderView::section {{
    background-color: #dbeafe;
    color: #1e293b;
    padding: {DESIGN_TOKENS['spacing_sm']} {DESIGN_TOKENS['spacing_md']};
    border-bottom: 2px solid {DESIGN_TOKENS['accent']};
    font-weight: bold;
    font-family: {DESIGN_TOKENS['font_heading']};
}}
QTableWidget {{
    background-color: #ffffff;
    color: #1e293b;
    gridline-color: #e2e8f0;
    border: 1px solid {DESIGN_TOKENS['border']};
    border-radius: {DESIGN_TOKENS['radius_sm']};
}}
QTableWidget::item:selected {{
    background-color: {DESIGN_TOKENS['accent']};
    color: #ffffff;
}}
QStatusBar {{
    background-color: #dbeafe;
    color: #64748b;
}}
QProgressBar::chunk {{
    background-color: {DESIGN_TOKENS['accent']};
}}
QTabBar::tab:selected {{
    background-color: {DESIGN_TOKENS['accent']};
    color: #ffffff;
}}
"""

# ── Status Color CSS Classes ───────────────────────────────
STATUS_CLASSES = {
    "vacant": f"background-color: {DESIGN_TOKENS['status_vacant']} !important;",
    "occupied": f"background-color: {DESIGN_TOKENS['status_occupied']} !important;",
    "dirty": f"background-color: {DESIGN_TOKENS['status_dirty']} !important;",
    "cleaning": f"background-color: {DESIGN_TOKENS['status_cleaning']} !important;",
    "maintenance": f"background-color: {DESIGN_TOKENS['status_maintenance']} !important;",
    "reserved": f"background-color: {DESIGN_TOKENS['status_reserved']} !important;",
}

# ── Sidebar Styles ─────────────────────────────────────────
SIDEBAR_QSS = f"""
/* ═══════ VB6 Teal Sidebar with Modern Styling ═══════ */
QFrame#sidebar {{
    background: qlineargradient(x1:0, y1:0, x2:1, y2:1,
        stop:0 {DESIGN_TOKENS['sidebar_top']},
        stop:1 {DESIGN_TOKENS['sidebar_bottom']});
    border-right: 1px solid {DESIGN_TOKENS['border_strong']};
    padding: {DESIGN_TOKENS['spacing_md']} 0;
}}
QPushButton#sidebar_btn {{
    background: transparent;
    color: {DESIGN_TOKENS['sidebar_text']};
    border: none;
    border-left: 3px solid transparent;
    padding: {DESIGN_TOKENS['spacing_sm']} {DESIGN_TOKENS['spacing_lg']};
    font-family: {DESIGN_TOKENS['font_body']};
    font-size: {DESIGN_TOKENS['font_size_md']};
    text-align: left;
    margin: 2px {DESIGN_TOKENS['spacing_sm']};
    border-radius: 0 {DESIGN_TOKENS['radius_sm']} {DESIGN_TOKENS['radius_sm']} 0;
}}
QPushButton#sidebar_btn:hover {{
    background-color: {DESIGN_TOKENS['sidebar_hover']};
    border-left-color: {DESIGN_TOKENS['sidebar_text']};
}}
QPushButton#sidebar_btn:checked {{
    background-color: {DESIGN_TOKENS['sidebar_active']};
    border-left-color: {DESIGN_TOKENS['gold']};
    font-weight: bold;
}}
QPushButton#sidebar_btn:disabled {{
    color: rgba(255, 255, 255, 0.4);
}}
QPushButton#sidebar_btn:pressed {{
    background-color: rgba(255, 255, 255, 0.2);
}}
QFrame#sidebar_section {{
    background: transparent;
    border-top: 1px solid rgba(255, 255, 255, 0.1);
    margin-top: {DESIGN_TOKENS['spacing_sm']};
    padding-top: {DESIGN_TOKENS['spacing_sm']};
}}
QLabel#sidebar_section_label {{
    color: rgba(255, 255, 255, 0.5);
    font-family: {DESIGN_TOKENS['font_heading']};
    font-size: {DESIGN_TOKENS['font_size_xs']};
    text-transform: uppercase;
    letter-spacing: 1px;
    padding: 0 {DESIGN_TOKENS['spacing_lg']};
    margin-bottom: {DESIGN_TOKENS['spacing_sm']};
}}
"""

# ── Availability Calendar Styles ───────────────────────────
CALENDAR_STYLES = f"""
/* ═══════ Availability Calendar with Status Colors ═══════ */
QCalendarWidget {{
    background-color: {DESIGN_TOKENS['bg_dark_lighter']};
    border: 1px solid {DESIGN_TOKENS['border']};
    border-radius: {DESIGN_TOKENS['radius_md']};
    padding: {DESIGN_TOKENS['spacing_md']};
    gridline-color: {DESIGN_TOKENS['border']};
}}
QCalendarWidget::item {{
    border-radius: {DESIGN_TOKENS['radius_sm']};
    padding: 2px;
}}
QCalendarWidget::item:selected {{
    background-color: {DESIGN_TOKENS['accent']};
    color: #ffffff;
}}
QCalendarWidget::item:disabled {{
    background-color: {DESIGN_TOKENS['status_occupied']};
    opacity: 0.5;
}}
QCalendarWidget::item:alternate {{
    background-color: {DESIGN_TOKENS['status_vacant']};
    opacity: 0.3;
}}
QTableView {{
    background-color: {DESIGN_TOKENS['bg_dark']};
    gridline-color: {DESIGN_TOKENS['border']};
}}
"""

# ── KPI Card Styles ────────────────────────────────────────
KPI_CARD_QSS = f"""
/* ═══════ KPI Cards with Glassmorphism ═══════ */
QFrame#kpi_card {{
    background: {DESIGN_TOKENS['surface_card']};
    border: {DESIGN_TOKENS['glass_border']};
    border-radius: {DESIGN_TOKENS['radius_lg']};
    padding: {DESIGN_TOKENS['spacing_xl']};
    backdrop-filter: {DESIGN_TOKENS['glass_blur']};
    min-width: 200px;
}}
QFrame#kpi_card:hover {{
    border-color: {DESIGN_TOKENS['accent']};
    box-shadow: {DESIGN_TOKENS['shadow_glow']};
    transform: translateY(-2px);
}}
QLabel#kpi_label {{
    color: {DESIGN_TOKENS['text_dim']};
    font-size: {DESIGN_TOKENS['font_size_sm']};
    font-family: {DESIGN_TOKENS['font_body']};
    text-transform: uppercase;
    letter-spacing: 0.5px;
}}
QLabel#kpi_value {{
    color: {DESIGN_TOKENS['text_main']};
    font-size: {DESIGN_TOKENS['font_size_xxl']};
    font-family: {DESIGN_TOKENS['font_heading']};
    font-weight: 700;
}}
QLabel#kpi_trend {{
    font-size: {DESIGN_TOKENS['font_size_sm']};
    font-family: {DESIGN_TOKENS['font_body']};
}}
QLabel#kpi_trend.up {{
    color: {DESIGN_TOKENS['status_vacant']};
}}
QLabel#kpi_trend.down {{
    color: {DESIGN_TOKENS['status_occupied']};
}}
"""

# ── Module Screen Styles ───────────────────────────────────
MODULE_SCREEN_QSS = f"""
/* ═══════ Module Screen with Card-Based Layout ═══════ */
QFrame#module_screen {{
    background-color: {DESIGN_TOKENS['bg_dark']};
    padding: {DESIGN_TOKENS['spacing_xl']};
}}
QFrame#module_card {{
    background: {DESIGN_TOKENS['surface_card']};
    border: {DESIGN_TOKENS['glass_border']};
    border-radius: {DESIGN_TOKENS['radius_lg']};
    padding: {DESIGN_TOKENS['spacing_xl']};
    backdrop-filter: {DESIGN_TOKENS['glass_blur']};
}}
QFrame#module_card_header {{
    background-color: {DESIGN_TOKENS['bg_dark_lighter']};
    border: 1px solid {DESIGN_TOKENS['border']};
    border-radius: {DESIGN_TOKENS['radius_md']};
    padding: {DESIGN_TOKENS['spacing_lg']} {DESIGN_TOKENS['spacing_xl']};
    margin-bottom: {DESIGN_TOKENS['spacing_lg']};
}}
QLabel#module_title {{
    color: {DESIGN_TOKENS['text_main']};
    font-family: {DESIGN_TOKENS['font_heading']};
    font-size: {DESIGN_TOKENS['font_size_title']};
    font-weight: 700;
}}
QLabel#module_subtitle {{
    color: {DESIGN_TOKENS['text_dim']};
    font-family: {DESIGN_TOKENS['font_body']};
    font-size: {DESIGN_TOKENS['font_size_md']};
}}
"""

def get_design_tokens():
    """Return all design tokens as dict"""
    return dict(DESIGN_TOKENS)

def get_qss(theme="dark"):
    """Return QSS for specified theme"""
    if theme == "dark":
        return DARK_THEME_QSS
    return LIGHT_THEME_QSS

def get_kpi_card_qss():
    """Return KPI card styles"""
    return KPI_CARD_QSS

def get_calendar_styles():
    """Return calendar styles"""
    return CALENDAR_STYLES

def get_module_screen_qss():
    """Return module screen styles"""
    return MODULE_SCREEN_QSS

def get_sidebar_qss():
    """Return sidebar styles"""
    return SIDEBAR_QSS

def get_status_class(status: str) -> str:
    """Return CSS class for status color"""
    return STATUS_CLASSES.get(status, "")

if __name__ == "__main__":
    print("HMS_py UI Redesign v2 — Design tokens loaded")
    print(f"  Design tokens: {len(DESIGN_TOKENS)}")
    print(f"  KPI cards: {len(KPI_CARDS)}")
    print(f"  Sidebar groups: {len(SIDEBAR_GROUPS)}")
    print(f"  QSS themes: dark, light")
    print(f"  Status classes: {list(STATUS_CLASSES.keys())}")
