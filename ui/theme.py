"""HMS_py Theme Engine — Light Frost Glass (glassmorphism).

Design tokens -> dynamic QSS. User apne colors Appearance dialog se
set kar sakta hai; sab QSettings ("HMS_py", "appearance") me save hota hai.

Research basis (uxpilot.ai glassmorphism guide):
  - blur + semi-transparent tint (10-30%) + subtle border
  - dark text on pale tint (light mode glass), light text on dark tint
  - glass ko background depth chahiye (aurora blobs) warna effect flat lagta hai
"""
from __future__ import annotations

import json

from PyQt6.QtCore import QSettings
from PyQt6.QtGui import QFont
from PyQt6.QtWidgets import QApplication

# ============================================================ tokens
# Default preset: "Ocean Frost" (light frost glass)
DEFAULTS: dict[str, str] = {
    "mode": "light",
    "accent": "#2563eb",
    "accent_hover": "#1d4ed8",
    "accent_soft": "rgba(37, 99, 235, 0.12)",
    "bg": "#eef3fb",
    "surface": "rgba(255, 255, 255, 0.62)",
    "surface_solid": "#ffffff",
    "surface_hover": "rgba(255, 255, 255, 0.85)",
    "border": "rgba(148, 163, 184, 0.35)",
    "border_strong": "rgba(100, 116, 139, 0.50)",
    "text": "#1e293b",
    "text_dim": "#64748b",
    "glass_tint": "rgba(255, 255, 255, 0.55)",
    "header_grad_top": "#dbeafe",
    "header_grad_bottom": "#eff6ff",
    "sidebar_tint": "rgba(255, 255, 255, 0.45)",
    "shadow": "rgba(15, 23, 42, 0.18)",
    "success": "#059669",
    "warning": "#d97706",
    "danger": "#dc2626",
    "info": "#0284c7",
    "blob1": "#93c5fd",
    "blob2": "#c4b5fd",
    "blob3": "#99f6e4",
    "blob4": "#fbcfe8",
    "radius": "10",
    "glass_opacity": "0.62",
    "bg_style": "aurora",
    "bg_image_path": "",
    # VB6 sidebar gradient (live VB6 app ke teal buttons)
    "sidebar_top": "#2b8c9d",
    "sidebar_bottom": "#0d4f60",
    "sidebar_text": "#ffffff",
    "sidebar_border": "#0a3d4a",
    # VB6 shell chrome — production screenshots se pixel-sampled
    # (010_CompanyDetails_Grid.png: header #2496d2; 014_Main_Menu_AfterLogin.png:
    # strip teal face #54a0a0, dark #003232, highlight #cfe0e0)
    "vb_header_top": "#3aa7e0",
    "vb_header_bottom": "#1f7fb8",
    "vb_accent": "#2496d2",
    "vb_accent_hover": "#1b7ab0",
    "vb_header_text": "#fdfdd0",
    "vb_panel": "#f7fafc",
    "vb_field_border": "#8fb3cc",
    "strip_face": "#54a0a0",
    "strip_face_hover": "#6ab2b2",
    "strip_checked": "#2e6b6b",
    "strip_border": "#0b3d3d",
    "strip_bg": "#ffffff",
    "strip_text": "#ffffff",
}

# ============================================================ presets
PRESETS: dict[str, dict[str, str]] = {
    "Ocean Frost (default)": {
        "mode": "light",
        "accent": "#2563eb", "accent_hover": "#1d4ed8",
        "bg": "#eef3fb", "surface_solid": "#ffffff",
        "text": "#1e293b", "text_dim": "#64748b",
        "header_grad_top": "#dbeafe", "header_grad_bottom": "#eff6ff",
        "blob1": "#93c5fd", "blob2": "#c4b5fd", "blob3": "#99f6e4",
        "blob4": "#fbcfe8", "glass_opacity": "0.62",
    },
    "Midnight Glass": {
        "mode": "dark",
        "accent": "#8b5cf6", "accent_hover": "#7c3aed",
        "bg": "#141425", "surface_solid": "#1e1e32",
        "text": "#e7e9f5", "text_dim": "#9ca3c4",
        "header_grad_top": "#241f47", "header_grad_bottom": "#191632",
        "blob1": "#4c1d95", "blob2": "#1e3a8a", "blob3": "#0f766e",
        "blob4": "#831843", "glass_opacity": "0.45",
    },
    "Emerald Breeze": {
        "mode": "light",
        "accent": "#059669", "accent_hover": "#047857",
        "bg": "#ecfdf5", "surface_solid": "#ffffff",
        "text": "#064e3b", "text_dim": "#4b7c6f",
        "header_grad_top": "#d1fae5", "header_grad_bottom": "#f0fdfa",
        "blob1": "#6ee7b7", "blob2": "#a7f3d0", "blob3": "#99f6e4",
        "blob4": "#fde68a", "glass_opacity": "0.60",
    },
    "Sunset Amber": {
        "mode": "light",
        "accent": "#ea580c", "accent_hover": "#c2410c",
        "bg": "#fff7ed", "surface_solid": "#ffffff",
        "text": "#431407", "text_dim": "#9a5b3d",
        "header_grad_top": "#ffedd5", "header_grad_bottom": "#fffbeb",
        "blob1": "#fdba74", "blob2": "#fca5a5", "blob3": "#fde68a",
        "blob4": "#f9a8d4", "glass_opacity": "0.60",
    },
    "Rose Quartz": {
        "mode": "light",
        "accent": "#e11d48", "accent_hover": "#be123c",
        "bg": "#fdf2f8", "surface_solid": "#ffffff",
        "text": "#4c0519", "text_dim": "#9d5c75",
        "header_grad_top": "#fce7f3", "header_grad_bottom": "#fff1f2",
        "blob1": "#f9a8d4", "blob2": "#c4b5fd", "blob3": "#bae6fd",
        "blob4": "#fed7aa", "glass_opacity": "0.60",
    },
    "Graphite Pro": {
        "mode": "dark",
        "accent": "#38bdf8", "accent_hover": "#0ea5e9",
        "bg": "#0f172a", "surface_solid": "#1e293b",
        "text": "#e2e8f0", "text_dim": "#94a3b8",
        "header_grad_top": "#1e293b", "header_grad_bottom": "#0f172a",
        "blob1": "#0e7490", "blob2": "#334155", "blob3": "#155e75",
        "blob4": "#1e40af", "glass_opacity": "0.50",
    },
}

SETTINGS_KEY = "HMS_py/appearance"
_active: dict[str, str] = dict(DEFAULTS)


# ============================================================ helpers
def _is_dark(hex_color: str) -> bool:
    """Hex '#rrggbb' -> luminance check (glass text contrast ke liye)."""
    h = (hex_color or "").lstrip("#")
    if len(h) != 6:
        return False
    try:
        r, g, b = (int(h[i:i + 2], 16) for i in (0, 2, 4))
    except ValueError:
        return False
    return (0.299 * r + 0.587 * g + 0.114 * b) < 128


def _tint_from(bg: str, mode: str) -> str:
    """Background se glass tint nikalo (light: white-ish, dark: bg tint)."""
    if mode == "dark":
        return _rgba(bg, 0.42)
    return "rgba(255, 255, 255, 0.55)"


def _rgba(color: str, alpha: float) -> str:
    """Hex color -> 'rgba(r, g, b, a)' string."""
    h = (color or "#000000").lstrip("#")
    if len(h) == 3:
        h = "".join(c * 2 for c in h)
    if len(h) != 6:
        return color
    try:
        r, g, b = (int(h[i:i + 2], 16) for i in (0, 2, 4))
    except ValueError:
        return color
    return f"rgba({r}, {g}, {b}, {alpha})"


def _opacity_to_alpha(opacity_str) -> float:
    try:
        return max(0.0, min(1.0, float(opacity_str)))
    except (TypeError, ValueError):
        return 0.62


def _resolve(tokens: dict[str, str]) -> dict[str, str]:
    """User token overrides -> complete token set (derived values bharo)."""
    t = dict(DEFAULTS)
    mode = tokens.get("mode", t["mode"])
    t["mode"] = mode

    for k in ("accent", "accent_hover", "bg", "surface_solid", "text",
              "text_dim", "blob1", "blob2", "blob3", "blob4",
              "header_grad_top", "header_grad_bottom", "bg_style", "bg_image_path",
              "sidebar_top", "sidebar_bottom", "sidebar_text", "sidebar_border",
              "vb_header_top", "vb_header_bottom", "vb_accent",
              "vb_accent_hover", "vb_header_text", "vb_panel",
              "vb_field_border", "strip_face", "strip_face_hover",
              "strip_checked", "strip_border", "strip_bg", "strip_text"):
        v = tokens.get(k)
        if v:
            t[k] = v

    try:
        op = max(0.10, min(0.92, float(tokens.get("glass_opacity",
                                                  t["glass_opacity"]))))
        t["glass_opacity"] = f"{op:.2f}"
    except (TypeError, ValueError):
        pass
    try:
        t["radius"] = str(max(2, min(18, int(tokens.get("radius",
                                                        t["radius"])))))
    except (TypeError, ValueError):
        pass

    alpha = _opacity_to_alpha(t["glass_opacity"])
    if mode == "dark":
        t["surface"] = _rgba(t["surface_solid"], alpha * 0.80)
        t["surface_hover"] = _rgba(t["surface_solid"], alpha * 0.95)
        t["border"] = "rgba(148, 163, 184, 0.22)"
        t["border_strong"] = "rgba(148, 163, 184, 0.40)"
        t["glass_tint"] = _rgba(t["surface_solid"], alpha * 0.55)
        t["sidebar_tint"] = _rgba(t["surface_solid"], alpha * 0.45)
        t["shadow"] = "rgba(0, 0, 0, 0.45)"
        t["success"] = "#34d399"
        t["warning"] = "#fbbf24"
        t["danger"] = "#f87171"
        t["info"] = "#38bdf8"
        t["accent_soft"] = _rgba(t["accent"], 0.25)
    else:
        t["surface"] = _rgba(t["surface_solid"], alpha)
        t["surface_hover"] = _rgba(t["surface_solid"],
                                   min(1.0, alpha + 0.20))
        t["border"] = "rgba(148, 163, 184, 0.35)"
        t["border_strong"] = "rgba(100, 116, 139, 0.50)"
        t["glass_tint"] = _rgba(t["surface_solid"], alpha)
        t["sidebar_tint"] = _rgba(t["surface_solid"], alpha * 0.75)
        t["shadow"] = "rgba(15, 23, 42, 0.18)"
        t["success"] = "#059669"
        t["warning"] = "#d97706"
        t["danger"] = "#dc2626"
        t["info"] = "#0284c7"
        t["accent_soft"] = _rgba(t["accent"], 0.12)

    t["radius"] = t["radius"]
    # Sidebar derived colors: hover = top-stop se lighter, checked =
    # bottom-stop se darker, on_sidebar_text = contrast-safe label.
    t["sidebar_hover"] = _mix(t["sidebar_top"], "#ffffff", 0.18)
    t["sidebar_checked"] = _mix(t["sidebar_bottom"], "#000000", 0.30)
    t["on_sidebar_text"] = ("#0f172a" if not _is_dark(t["sidebar_bottom"])
                            else "#ffffff")
    # WCAG fix: light accent pe white text 2:1 tak gir jaata hai —
    # accent luminance se button/selection text color derive karo.
    t["on_accent"] = ("#0f172a" if not _is_dark(t["accent"])
                      else "#ffffff")
    t.update(_resolve_status(tokens, t["mode"]))
    return t


def _glass_qss(t: dict[str, str]) -> str:
    """Token set -> full application stylesheet (light frost glass)."""
    R = int(t.get("radius", 10))
    return f"""
/* ═══════════ HMS Light Frost Glass ═══════════ */
* {{
    font-family: 'Segoe UI', 'Arial', sans-serif;
    font-size: 13px;
    color: {t['text']};
    outline: none;
}}
/* NOTE: universal transparent rule pehle, phir window bg —
   equal specificity me last rule jeetta hai (BUG FIX: warna
   QDialog/QMainWindow transparent ho ke black render hota hai). */
QWidget {{ background-color: transparent; color: {t['text']}; }}
QStackedWidget {{ background: transparent; }}
QMainWindow, QDialog {{
    background-color: {t['bg']};
    color: {t['text']};
}}

/* ── Menus ── */
QMenuBar {{
    background: {t['glass_tint']};
    color: {t['text']};
    border-bottom: 1px solid {t['border']};
    padding: 2px;
}}
QMenuBar::item {{
    background: transparent; padding: 6px 12px; border-radius: 6px;
}}
QMenuBar::item:selected {{ background: {t['accent_soft']}; }}
QMenu {{
    background: {t['surface_hover']};
    border: 1px solid {t['border']};
    border-radius: {R}px; padding: 6px;
}}
QMenu::item {{ padding: 8px 24px; border-radius: 6px; }}
QMenu::item:selected {{ background: {t['accent']}; color: {t['on_accent']}; }}
QMenu::item:disabled {{ color: {t['text_dim']}; }}
QMenu::separator {{ height: 1px; background: {t['border']}; margin: 4px 8px; }}

/* ── Buttons ── */
QPushButton {{
    background: {t['surface_hover']};
    color: {t['text']};
    border: 1px solid {t['border']};
    border-radius: {R}px;
    padding: 8px 20px;
    font-weight: 500;
    min-height: 20px;
}}
QPushButton:hover {{
    background: {t['glass_tint']};
    border-color: {t['accent']};
}}
QPushButton:pressed {{ background: {t['accent_soft']}; }}
QPushButton:disabled {{
    background: transparent; color: {t['text_dim']};
    border-color: {t['border']};
}}
QPushButton[accent="true"] {{
    background: {t['accent']}; color: {t['on_accent']}; border: none;
    font-weight: 700; padding: 8px 20px; min-height: 20px;
}}
QPushButton[accent="true"]:hover {{ background: {t['accent_hover']}; }}
QPushButton[accent="true"]:pressed {{ background: {t.get('accent_pressed', t['accent_hover'])}; }}
QPushButton[success="true"] {{
    background: {t['success']}; color: #ffffff; border: none;
    font-weight: 600; padding: 6px 16px; min-height: 20px;
}}
QPushButton[success="true"]:hover {{ opacity: 0.9; }}
QPushButton[danger="true"] {{
    background: {t['danger']}; color: #ffffff; border: none;
    font-weight: 600; padding: 6px 16px; min-height: 20px;
}}
QPushButton[danger="true"]:hover {{ opacity: 0.9; }}
QPushButton[role="danger"] {{
    background: {t['danger']}; color: #ffffff; border: none;
    font-weight: 600; padding: 6px 16px; border-radius: {R}px; min-height: 20px;
}}
QPushButton[role="danger"]:hover {{ opacity: 0.9; }}
QPushButton[role="warning"] {{
    background: {t['warning']}; color: #ffffff; border: none;
    font-weight: 600; padding: 6px 16px; border-radius: {R}px; min-height: 20px;
}}
QPushButton[role="warning"]:hover {{ opacity: 0.9; }}
QPushButton[role="success"] {{
    background: {t['success']}; color: #ffffff; border: none;
    font-weight: 600; padding: 6px 16px; border-radius: {R}px; min-height: 20px;
}}
QPushButton[role="success"]:hover {{ opacity: 0.9; }}

/* ── Inputs ── */
QLineEdit, QTextEdit, QPlainTextEdit, QSpinBox, QDoubleSpinBox, QDateEdit {{
    background: {t['glass_tint']};
    color: {t['text']};
    border: 1px solid {t['border']};
    border-radius: {R}px;
    padding: 8px 12px;
    selection-background-color: {t['accent']};
    selection-color: {t['on_accent']};
}}
QLineEdit:focus, QTextEdit:focus, QPlainTextEdit:focus,
QSpinBox:focus, QDoubleSpinBox:focus, QDateEdit:focus {{
    border: 1.5px solid {t['accent']};
    background: {t['surface_hover']};
}}
QLineEdit:read-only {{
    background: {t['accent_soft']}; color: {t['text_dim']};
}}
QComboBox {{
    background: {t['glass_tint']};
    color: {t['text']};
    border: 1px solid {t['border']};
    border-radius: {R}px; padding: 8px 12px; min-width: 120px;
}}
QComboBox:hover {{ border-color: {t['accent']}; }}
QComboBox::drop-down {{ border: none; width: 30px; }}
QComboBox::down-arrow {{
    image: none; border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    border-top: 6px solid {t['text_dim']}; margin-right: 8px;
}}
QComboBox QAbstractItemView {{
    background: {t['surface_hover']}; color: {t['text']};
    border: 1px solid {t['border']}; border-radius: {R}px;
    selection-background-color: {t['accent']};
    selection-color: {t['on_accent']};
    padding: 4px;
}}

/* ── Tables ── */
QTableWidget, QTableView {{
    background: {t['glass_tint']};
    color: {t['text']};
    border: 1px solid {t['border']};
    border-radius: {R}px;
    gridline-color: {t['border']};
    selection-background-color: {t['accent']};
    selection-color: {t['on_accent']};
    alternate-background-color: {t['accent_soft']};
    font-size: 12px;
}}
QTableWidget::item, QTableView::item {{ padding: 6px 8px; }}
QTableWidget::item:selected, QTableView::item:selected {{
    background: {t['accent']}; color: {t['on_accent']};
}}
QHeaderView::section {{
    background: {t['header_grad_top']};
    color: {t['text']};
    border: none;
    border-bottom: 2px solid {t['accent']};
    padding: 8px;
    font-weight: bold; font-size: 12px;
}}
QTableCornerButton::section {{ background: {t['header_grad_top']}; }}

/* ── Group / Tabs ── */
QGroupBox {{
    background: {t['glass_tint']};
    border: 1px solid {t['border']};
    border-radius: {R + 2}px;
    margin-top: 12px;
    padding: 16px 12px 12px 12px;
    font-weight: bold;
}}
QGroupBox::title {{
    subcontrol-origin: margin; subcontrol-position: top left;
    padding: 4px 12px; color: {t['accent']}; font-weight: bold;
}}
QTabWidget::pane {{
    background: {t['glass_tint']};
    border: 1px solid {t['border']}; border-radius: {R}px; padding: 4px;
}}
QTabBar::tab {{
    background: transparent; color: {t['text_dim']};
    border: 1px solid {t['border']}; border-bottom: none;
    border-top-left-radius: {R}px; border-top-right-radius: {R}px;
    padding: 10px 20px; margin-right: 2px; font-weight: 500;
}}
QTabBar::tab:selected {{
    background: {t['glass_tint']}; color: {t['accent']};
    border-bottom: 2px solid {t['accent']};
}}
QTabBar::tab:hover {{ color: {t['text']}; }}

/* ── Scroll / Status / Tool ── */
QScrollBar:vertical {{ background: transparent; width: 10px; margin: 0; }}
QScrollBar::handle:vertical {{
    background: {t['border_strong']}; border-radius: 5px; min-height: 30px;
}}
QScrollBar::handle:vertical:hover {{ background: {t['accent']}; }}
QScrollBar::add-line:vertical, QScrollBar::sub-line:vertical {{ height: 0; }}
QScrollBar:horizontal {{ background: transparent; height: 10px; margin: 0; }}
QScrollBar::handle:horizontal {{
    background: {t['border_strong']}; border-radius: 5px; min-width: 30px;
}}
QScrollBar::handle:horizontal:hover {{ background: {t['accent']}; }}
QScrollBar::add-line:horizontal, QScrollBar::sub-line:horizontal {{ width: 0; }}
QStatusBar {{
    background: {t['glass_tint']};
    color: {t['text_dim']};
    border-top: 1px solid {t['border']};
    font-size: 12px; padding: 4px 12px; min-height: 24px;
}}
QToolBar {{
    background: {t['glass_tint']};
    border-bottom: 1px solid {t['border']}; spacing: 6px; padding: 4px;
}}
QSplitter::handle {{ background: {t['border']}; }}
QSplitter::handle:horizontal {{ width: 2px; }}
QSplitter::handle:vertical {{ height: 2px; }}

/* ── Check / Radio / Progress ── */
QCheckBox, QRadioButton {{ spacing: 8px; color: {t['text']}; }}
QCheckBox::indicator, QRadioButton::indicator {{
    width: 18px; height: 18px;
    border: 2px solid {t['border_strong']};
    background: {t['glass_tint']};
}}
QCheckBox::indicator {{ border-radius: 5px; }}
QRadioButton::indicator {{ border-radius: 10px; }}
QCheckBox::indicator:checked, QRadioButton::indicator:checked {{
    background: {t['accent']}; border-color: {t['accent']};
}}
QProgressBar {{
    background: {t['glass_tint']};
    border: 1px solid {t['border']}; border-radius: 6px;
    text-align: center; color: {t['text']}; height: 20px;
}}
QProgressBar::chunk {{ background: {t['accent']}; border-radius: 5px; }}

/* ── Tooltip ── */
QToolTip {{
    background: {t['surface_solid']}; color: {t['text']};
    border: 1px solid {t['accent']}; border-radius: 6px;
    padding: 6px 10px; font-size: 12px;
}}

/* ── Sidebar ── */
QFrame[sidebar="true"] {{
    background: {t['sidebar_tint']};
    border-right: 1px solid {t['border']};
}}
QPushButton[sidebar-btn="true"] {{
    background: transparent; color: {t['text_dim']};
    border: none; border-radius: {R}px;
    padding: 10px 16px; text-align: left;
    font-size: 13px; font-weight: 500;
}}
QPushButton[sidebar-btn="true"]:hover {{
    background: {t['accent_soft']}; color: {t['text']};
    border-left: 3px solid {t['accent']}; padding-left: 13px;
}}
QPushButton[sidebar-btn="true"]:checked {{
    background: {t['accent']}; color: {t['on_accent']};
    font-weight: bold; border-left: 3px solid {t['accent']};
    padding-left: 13px;
}}
QPushButton[sidebar-btn="true"]:checked:hover {{
    background: {t['accent_hover']}; color: {t['on_accent']};
}}

/* ── Glass card / header (custom widgets) ── */
QFrame[glassCard="true"] {{
    background: {t['glass_tint']};
    border: 1px solid {t['border']};
    border-radius: {R + 2}px;
}}
QLabel[glassTitle="true"] {{
    background: transparent; color: {t['text']};
    font-size: 18px; font-weight: bold; padding: 4px;
}}
QLabel[glassSub="true"] {{
    background: transparent; color: {t['text_dim']}; font-size: 13px;
}}

/* ── Theme toggle ── */
QPushButton#themeToggle {{
    background: {t['glass_tint']}; color: {t['text_dim']};
    border: 1px solid {t['border']}; border-radius: 16px;
    font-size: 11px; font-weight: bold;
}}
QPushButton#themeToggle:hover {{
    border-color: {t['accent']}; color: {t['text']};
}}
QPushButton#themeToggle:checked {{
    background: {t['accent']}; color: {t['on_accent']};
}}

/* ── VB6 shell chrome (hybrid: VB6 layout parity + modern polish) ──
   Production screenshots se pixel-sampled: login/company header #2496d2,
   left strip teal module buttons (#54a0a0 face, #003232 dark border). */
QLabel[vbHeader="true"] {{
    background: qlineargradient(x1:0, y1:0, x2:0, y2:1,
        stop:0 {t['vb_header_top']}, stop:1 {t['vb_header_bottom']});
    color: {t['vb_header_text']};
    font-size: 15px; font-weight: bold;
    padding: 10px 16px; letter-spacing: 0.5px;
}}
QLabel[vbHeaderSub="true"] {{
    background: transparent;
    color: {t['text_dim']};
    font-size: 11px; font-weight: 600;
}}
QLabel[vbSectionLabel="true"] {{
    background: transparent; color: {t['text_dim']};
    font-size: 11px; font-weight: bold;
}}
QPushButton[vbPrimary="true"] {{
    background: qlineargradient(x1:0, y1:0, x2:0, y2:1,
        stop:0 {t['vb_header_top']}, stop:1 {t['vb_accent']});
    color: #ffffff; border: 1px solid {t['vb_accent_hover']};
    border-radius: 7px; font-weight: bold; font-size: 13px;
    padding: 9px 22px; min-height: 22px;
}}
QPushButton[vbPrimary="true"]:hover {{
    background: {t['vb_accent_hover']};
}}
QPushButton[vbPrimary="true"]:pressed {{
    background: {t['accent_soft']};
}}
QPushButton[vbGhost="true"] {{
    background: {t['glass_tint']}; color: {t['text_dim']};
    border: 1px solid {t['border']};
    border-radius: 7px; font-size: 12px;
    padding: 8px 18px; min-height: 20px;
}}
QPushButton[vbGhost="true"]:hover {{
    border-color: {t['vb_accent']}; color: {t['text']};
}}
QPushButton[vbWarn="true"] {{
    background: {t['glass_tint']}; color: {t['warning']};
    border: 1px solid {t['warning']}; border-radius: 7px;
    font-size: 12px; font-weight: 600; padding: 8px 18px;
}}
QPushButton[vbWarn="true"]:hover {{ background: {t['warning_bg']}; }}
QFrame[vbCard="true"] {{
    background: {t['surface']};
    border: 1px solid {t['border']};
    border-radius: {R + 2}px;
}}
/* VB6 frmCompany/frmPassword: gray desktop pe embedded blue panel
   (screenshot 010_CompanyDetails_Grid.png: bg #636363, panel #2496d2) */
QFrame[vbPanel="true"] {{
    background: qlineargradient(x1:0, y1:0, x2:0, y2:1,
        stop:0 {t['vb_header_top']}, stop:1 {t['vb_accent']});
    border: 1px solid {t['vb_accent_hover']};
    border-radius: 10px;
}}
QFrame[vbPanel="true"] QLabel {{
    background: transparent; color: {t['vb_header_text']};
}}
QFrame[vbDesktop="true"], QDialog[vbDesktop="true"] {{
    background: #636363;
}}
/* Left module strip — VB6: ~107px white strip, teal 3D buttons */
QFrame[moduleStrip="true"] {{
    background: {t['strip_bg']};
    border-right: 1px solid {t['border']};
}}
QPushButton[strip-btn="true"] {{
    background: {t['strip_face']};
    color: {t['strip_text']};
    border: 1px solid {t['strip_border']};
    border-bottom: 3px solid {t['strip_border']};
    border-radius: 6px;
    padding: 8px 4px;
    font-size: 11px; font-weight: bold;
}}
QPushButton[strip-btn="true"]:hover {{
    background: {t['strip_face_hover']};
}}
QPushButton[strip-btn="true"]:checked {{
    background: {t['strip_checked']};
    border-bottom-width: 1px;
    padding-top: 10px;
}}
QPushButton[strip-btn="true"]:checked:hover {{
    background: {t['strip_checked']};
}}
"""


# ============================================================ palette
def palette() -> dict[str, str]:
    """Active token set (copy). Derived keys (sidebar_hover/checked,
    on_sidebar_text, on_accent, status colors) guaranteed — agar
    apply_theme abhi tak na chala ho to abhi resolve karo."""
    global _active
    if "sidebar_hover" not in _active or "on_accent" not in _active:
        _active = _resolve(_active)
    return dict(_active)


def accent() -> str:
    return _active["accent"]


# ============================================================ status palette
# Semantic status colors — room status, expense Dr/Cr, KOT state jaise
# jagah use hote hain. Hardcoded pastels ki jagah mode-adaptive: light
# presets me pale tint + dark text, dark presets me glassy tint + light text.
# Base status hues: mode defaults (user Appearance dialog se override kare).
_STATUS_BASE_LIGHT = {
    "success": "#059669", "warning": "#d97706",
    "danger": "#dc2626", "neutral": "#64748b",
}
_STATUS_BASE_DARK = {
    "success": "#34d399", "warning": "#fbbf24",
    "danger": "#f87171", "neutral": "#94a3b8",
}
_STATUS_NAMES = ("success", "warning", "danger", "neutral")
_STATUS_KEYS = tuple(f"{n}{s}" for n in _STATUS_NAMES
                     for s in ("", "_bg", "_text")) \
    + tuple(f"on_{n}" for n in _STATUS_NAMES)


def _mix(c1: str, c2: str, t: float) -> str:
    """Do hex colors blend karo: t=0 -> c1, t=1 -> c2 (QColor-safe hex)."""
    h1 = (c1 or "#000000").lstrip("#")
    h2 = (c2 or "#000000").lstrip("#")
    if len(h1) != 6 or len(h2) != 6:
        return c1
    try:
        a = [int(h1[i:i + 2], 16) for i in (0, 2, 4)]
        b = [int(h2[i:i + 2], 16) for i in (0, 2, 4)]
    except ValueError:
        return c1
    return "#{:02x}{:02x}{:02x}".format(
        *(round(a[i] + (b[i] - a[i]) * t) for i in range(3)))


def _resolve_status(tokens: dict[str, str], mode: str) -> dict[str, str]:
    """User status bases (ya mode defaults) se derived palette banao.

    bg = cell tint (light: white-mix, dark: dark-mix), text = readable
    variant, on_* = base ke upar contrast-safe label (WCAG).
    """
    out: dict[str, str] = {}
    defaults = _STATUS_BASE_DARK if mode == "dark" else _STATUS_BASE_LIGHT
    for name in _STATUS_NAMES:
        base = tokens.get(name) or defaults[name]
        out[name] = base
        if mode == "dark":
            out[f"{name}_bg"] = _mix(base, "#101020", 0.78)
            out[f"{name}_text"] = _mix(base, "#ffffff", 0.62)
        else:
            out[f"{name}_bg"] = _mix(base, "#ffffff", 0.86)
            out[f"{name}_text"] = _mix(base, "#000000", 0.70)
        out[f"on_{name}"] = ("#ffffff" if _is_dark(base) else "#0f172a")
    return out


def status_colors() -> dict[str, str]:
    """User-editable semantic status palette (active tokens se derived).

    Keys: success/warning/danger/neutral (base hues) + *_bg (soft cell
    tint) + *_text (readable text variant) + on_* (contrast-safe label).
    Guaranteed complete: agar saved user-tokens me koi status family
    missing ho (purane config) to mode defaults se backfill hota hai —
    kot_entry.py jaise bracket-access call sites kabhi KeyError na dein.
    """
    out = {k: _active[k] for k in _STATUS_KEYS if k in _active}
    if len(out) < len(_STATUS_KEYS):
        defaults = status_base_defaults(_active.get("mode", "light"))
        surf = _active.get("surface_solid", "#ffffff")
        bg = _active.get("bg", "#ffffff")
        for n in _STATUS_NAMES:
            base = out.get(n) or defaults.get(n) or "#64748b"
            out.setdefault(n, base)
            out.setdefault(f"{n}_bg", _mix(base, surf, 0.85))
            out.setdefault(f"{n}_text", _mix(base, bg, 0.35))
            out.setdefault(f"on_{n}",
                           "#111111" if _is_dark(base) else "#ffffff")
    return out


def status_base_defaults(mode: str = "light") -> dict[str, str]:
    """Mode ke liye default status base hues (dialog seeding ke liye)."""
    src = _STATUS_BASE_DARK if mode == "dark" else _STATUS_BASE_LIGHT
    return dict(src)


def is_dark() -> bool:
    return _active["mode"] == "dark"


# ============================================================ apply/save
def apply_theme(app: QApplication, theme: str | None = None) -> None:
    """Load saved tokens (ya 'dark'/'light' quick mode) aur QSS lagao."""
    global _active
    saved = load_tokens()
    if theme in ("dark", "light"):
        saved["mode"] = theme
    _active = _resolve(saved)
    app.setStyleSheet(_glass_qss(_active))
    from PyQt6.QtGui import QPalette, QColor
    pal = QPalette()
    pal.setColor(QPalette.ColorRole.Window, QColor(_active["bg"]))
    pal.setColor(QPalette.ColorRole.WindowText, QColor(_active["text"]))
    pal.setColor(QPalette.ColorRole.Base, QColor(_active["surface_solid"]))
    pal.setColor(QPalette.ColorRole.AlternateBase, QColor(_active["bg"]))
    pal.setColor(QPalette.ColorRole.Text, QColor(_active["text"]))
    pal.setColor(QPalette.ColorRole.Button, QColor(_active["surface_solid"]))
    pal.setColor(QPalette.ColorRole.ButtonText, QColor(_active["text"]))
    pal.setColor(QPalette.ColorRole.Highlight, QColor(_active["accent"]))
    pal.setColor(QPalette.ColorRole.HighlightedText,
                 QColor(_active["on_accent"]))
    app.setPalette(pal)


def apply_tokens(app: QApplication, tokens: dict[str, str]) -> None:
    """User edits -> live re-apply (preview ke liye)."""
    global _active
    _active = _resolve(tokens)
    app.setStyleSheet(_glass_qss(_active))


def save_tokens(tokens: dict[str, str]) -> None:
    """Tokens ko QSettings me persist karo (JSON blob)."""
    s = QSettings("HMS_py", "appearance")
    keep = ("mode", "accent", "accent_hover", "bg", "surface_solid", "text",
            "text_dim", "blob1", "blob2", "blob3", "blob4",
            "header_grad_top", "header_grad_bottom", "glass_opacity",
            "radius", "success", "warning", "danger", "neutral",
            "sidebar_top", "sidebar_bottom", "sidebar_text",
            "sidebar_border", "bg_style", "bg_image_path",
            "vb_header_top", "vb_header_bottom", "vb_accent",
            "vb_accent_hover", "vb_header_text", "vb_panel",
            "vb_field_border", "strip_face", "strip_face_hover",
            "strip_checked", "strip_border", "strip_bg", "strip_text")
    s.setValue("tokens", json.dumps({k: tokens.get(k, "") for k in keep}))
    s.sync()


def load_tokens() -> dict[str, str]:
    """Saved user tokens (empty dict agar nahi mile)."""
    s = QSettings("HMS_py", "appearance")
    raw = s.value("tokens", "")
    if not raw:
        return {}
    try:
        data = json.loads(raw)
        return {k: str(v) for k, v in data.items() if v}
    except (ValueError, TypeError):
        return {}


def reset_tokens() -> None:
    s = QSettings("HMS_py", "appearance")
    s.clear()
    s.sync()


def preset_tokens(preset_name: str) -> dict[str, str]:
    """Preset naam -> token override dict (save ke liye ready)."""
    base = {"mode": PRESETS.get(preset_name, PRESETS["Ocean Frost (default)"])
            .get("mode", "light")}
    base.update(PRESETS.get(preset_name, {}))
    return base


def toggle_theme(app: QApplication) -> str:
    """Dark/light glass mode switch (tokens preserve karke)."""
    tokens = dict(load_tokens()) or dict(DEFAULTS)
    tokens["mode"] = "light" if _active["mode"] == "dark" else "dark"
    save_tokens(tokens)
    apply_theme(app)
    return _active["mode"]


def current_theme() -> str:
    return _active["mode"]


def get_font(size: int = 13, bold: bool = False) -> QFont:
    f = QFont("Segoe UI", size)
    f.setBold(bold)
    return f
