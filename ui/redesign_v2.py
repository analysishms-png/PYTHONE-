"""
HMS_py UI Redesign v2 — Redesigned Sidebar, Dashboard, and Core Widgets.

Based on web research:
- Collapsible inset sidebar (Shadcnblocks)
- Shift strip with quick actions (Dashboard 18)
- Status-colored availability calendar (Dashboard 14)
- Bidirectional occupancy chart (Dashboard 15)
- Operations-first design (Bookini)
- Glassmorphism KPI cards (DEV Community)
- Status-color language (all research)
"""
from __future__ import annotations

import os, sys, json, time
from typing import Optional, List, Dict, Any
from dataclasses import dataclass, field

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.environ["QT_QPA_PLATFORM"] = "offscreen"

from PyQt6.QtWidgets import (QWidget, QVBoxLayout, QHBoxLayout,
                             QPushButton, QLabel, QFrame, QScrollArea,
                             QTableWidget, QTableWidgetItem, QTreeWidget,
                             QTreeWidgetItem, QTabWidget, QAbstractItemView,
                             QSizePolicy)
from PyQt6.QtCore import Qt, QTimer, pyqtSignal, QSize
from PyQt6.QtGui import QFont, QColor, QIcon, QPixmap, QAction, QShortcut
from PyQt6.QtSvgWidgets import QSvgWidget

from HMS_py.ui.theme_v2 import (
    DESIGN_TOKENS, SIDEBAR_GROUPS, KPI_CARDS,
    get_design_tokens, get_sidebar_qss, get_kpi_card_qss,
    get_calendar_styles, get_module_screen_qss, get_status_class,
    CARD_STYLES
)
from HMS_py.core import menu_help as _mh
from HMS_py.core import db as _db
from HMS_py.ui.business_logic_viewer import (
    get_manager, create_business_logic_ui,
    BusinessLogicDashboard, BusinessLogicViewer
)


# ── Status color mapping for room availability ──
ROOM_STATUS_COLORS = {
    "Vacant": "#10b981",      # Green
    "Occupied": "#ef4444",    # Red
    "Dirty": "#f59e0b",       # Yellow
    "Cleaning": "#3b82f6",    # Blue
    "Maintenance": "#6b7280",  # Gray
    "Reserved": "#8b5cf6",    # Purple
}


@dataclass
class KPICard:
    """KPI Card data model"""
    id: str
    label: str
    icon: str
    value: str
    trend: Optional[str] = None
    trend_direction: str = "up"  # "up" or "down"
    color: str = "accent"


class GlassCard(QFrame):
    """Glassmorphism card widget with backdrop blur"""
    
    clicked = pyqtSignal()
    
    def __init__(self, title: str = "", subtitle: str = "", parent=None):
        super().__init__(parent)
        self.setObjectName("module_card")
        self.setup_ui(title, subtitle)
    
    def setup_ui(self, title: str, subtitle: str = ""):
        layout = QVBoxLayout(self)
        layout.setContentsMargins(20, 20, 20, 20)
        layout.setSpacing(12)
        
        # Header
        header = QFrame()
        header.setObjectName("module_card_header")
        header_layout = QHBoxLayout(header)
        header_layout.setContentsMargins(20, 16, 20, 16)
        
        title_label = QLabel(title)
        title_label.setObjectName("module_title")
        title_label.setFont(QFont(DESIGN_TOKENS["font_heading"], 22, QFont.Weight.Bold))
        header_layout.addWidget(title_label)
        
        if subtitle:
            subtitle_label = QLabel(subtitle)
            subtitle_label.setObjectName("module_subtitle")
            header_layout.addWidget(subtitle_label)
        
        header_layout.addStretch()
        layout.addWidget(header)
        
        # Content area (to be filled by subclass)
        self.content_layout = QVBoxLayout()
        self.content_layout.setSpacing(12)
        layout.addLayout(self.content_layout)
        layout.addStretch()
    
    def add_widget(self, widget: QWidget):
        """Add a widget to the card content"""
        self.content_layout.addWidget(widget)
    
    def add_spacer(self):
        """Add a stretch spacer"""
        self.content_layout.addStretch()


class KPICardWidget(QFrame):
    """Glassmorphism KPI card with trend indicator"""
    
    def __init__(self, kpi: KPICard, parent=None):
        super().__init__(parent)
        self.setObjectName("kpi_card")
        self.setFixedWidth(200)
        self.setup_ui(kpi)
    
    def setup_ui(self, kpi: KPICard):
        layout = QVBoxLayout(self)
        layout.setContentsMargins(16, 16, 16, 16)
        layout.setSpacing(8)
        
        # Icon + Label
        icon_label = QLabel(f"{kpi.icon} {kpi.label.upper()}")
        icon_label.setFont(QFont(DESIGN_TOKENS["font_body"], 10))
        icon_label.setStyleSheet(f"color: {DESIGN_TOKENS['text_dim']};")
        layout.addWidget(icon_label)
        
        # Value
        value_label = QLabel(kpi.value)
        value_label.setObjectName("kpi_value")
        value_label.setFont(QFont(DESIGN_TOKENS["font_heading"], 24, QFont.Weight.Bold))
        layout.addWidget(value_label)
        
        # Trend
        if kpi.trend:
            trend_label = QLabel(kpi.trend)
            trend_label.setObjectName("kpi_trend")
            trend_label.setStyleSheet(
                f"color: {DESIGN_TOKENS['status_vacant'] if kpi.trend_direction == 'up' else DESIGN_TOKENS['status_occupied']};"
                f"font-size: 12px;"
            )
            trend_label.setFont(QFont(DESIGN_TOKENS["font_body"], 11))
            layout.addWidget(trend_label)
        
        # Apply glass card style
        self.setStyleSheet(CARD_STYLES["kpi_card"])


class SidebarButton(QPushButton):
    """Sidebar navigation button with VB6 teal gradient"""
    
    def __init__(self, label: str, target: str, shortcut: str = "", icon: str = "", parent=None):
        super().__init__(label, parent)
        self.setObjectName("sidebar_btn")
        self.setProperty("mod_target", target)
        self.setCursor(Qt.CursorShape.PointingHandCursor)
        self.setup_ui()
    
    def setup_ui(self):
        self.setFont(QFont(DESIGN_TOKENS["font_body"], 13))
        self.setMinimumHeight(36)
        self.setSizePolicy(QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Fixed)


class Sidebar(QWidget):
    """Collapsible sidebar with grouped navigation"""
    
    module_clicked = pyqtSignal(str)
    
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setObjectName("sidebar")
        self.setFixedWidth(240)
        self.setup_ui()
    
    def setup_ui(self):
        layout = QVBoxLayout(self)
        layout.setContentsMargins(0, 0, 0, 0)
        layout.setSpacing(0)
        
        # Logo/Title at top
        logo = QFrame()
        logo.setFixedHeight(60)
        logo_layout = QHBoxLayout(logo)
        logo_layout.setContentsMargins(20, 10, 20, 10)
        
        logo_icon = QLabel("🏨")
        logo_icon.setFont(QFont("Segoe UI", 24))
        logo_layout.addWidget(logo_icon)
        
        logo_text = QLabel("HMS PRO")
        logo_text.setFont(QFont(DESIGN_TOKENS["font_heading"], 18, QFont.Weight.Bold))
        logo_text.setStyleSheet(f"color: {DESIGN_TOKENS['sidebar_text']};")
        logo_layout.addWidget(logo_text)
        
        logo_layout.addStretch()
        layout.addWidget(logo)
        
        # Sidebar sections from SIDEBAR_GROUPS
        for group_key, group_data in SIDEBAR_GROUPS.items():
            # Section label
            section_label = QFrame()
            section_label.setObjectName("sidebar_section")
            section_label.setFixedHeight(30)
            section_layout = QHBoxLayout(section_label)
            section_layout.setContentsMargins(20, 4, 20, 4)
            
            section_text = QLabel(group_data["label"].upper())
            section_text.setObjectName("sidebar_section_label")
            section_layout.addWidget(section_text)
            layout.addWidget(section_label)
            
            # Section items
            for item in group_data["items"]:
                btn = SidebarButton(
                    label=f"  {item['icon']}  {item['label']}",
                    target=item["target"],
                    shortcut=item["shortcut"]
                )
                btn.clicked.connect(lambda checked, t=item["target"]: self.module_clicked.emit(t))
                layout.addWidget(btn)
        
        layout.addStretch()
        
        # Apply sidebar styles
        self.setStyleSheet(get_sidebar_qss())


class ShiftStrip(QFrame):
    """Shift strip with quick action buttons (Dashboard 18 style)"""
    
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setup_ui()
    
    def setup_ui(self):
        layout = QHBoxLayout(self)
        layout.setContentsMargins(20, 12, 20, 12)
        layout.setSpacing(12)
        layout.setAlignment(Qt.AlignmentFlag.AlignVCenter)
        
        # Shift info
        shift_frame = QFrame()
        shift_layout = QVBoxLayout(shift_frame)
        shift_layout.setSpacing(4)
        
        shift_label = QLabel("🔴 Morning Shift")
        shift_label.setFont(QFont(DESIGN_TOKENS["font_heading"], 14, QFont.Weight.Bold))
        shift_label.setStyleSheet(f"color: {DESIGN_TOKENS['text_main']};")
        shift_layout.addWidget(shift_label)
        
        date_label = QLabel(f"Today: {time.strftime('%Y-%m-%d')}")
        date_label.setFont(QFont(DESIGN_TOKENS["font_body"], 11))
        date_label.setStyleSheet(f"color: {DESIGN_TOKENS['text_dim']};")
        shift_layout.addWidget(date_label)
        
        layout.addWidget(shift_frame)
        layout.addSpacing(20)
        
        # Quick action buttons
        quick_actions = [
            ("🏨 Assign Rooms", "assign"),
            ("📥 Check-In", "checkin"),
            ("🧹 Housekeeping Queue", "housekeeping"),
            ("⭐ VIP Arrivals", "vip"),
        ]
        
        for label, action in quick_actions:
            btn = QPushButton(label)
            btn.setFixedSize(150, 50)
            btn.setCursor(Qt.CursorShape.PointingHandCursor)
            btn.setStyleSheet(f"""
                QPushButton {{
                    background-color: {DESIGN_TOKENS['surface_card']};
                    color: {DESIGN_TOKENS['text_main']};
                    border: {DESIGN_TOKENS['glass_border']};
                    border-radius: {DESIGN_TOKENS['radius_md']};
                    font-family: {DESIGN_TOKENS['font_body']};
                    font-size: {DESIGN_TOKENS['font_size_sm']};
                    text-align: left;
                    padding: 8px 12px;
                }}
                QPushButton:hover {{
                    background-color: {DESIGN_TOKENS['accent']};
                    border-color: {DESIGN_TOKENS['accent']};
                    box-shadow: {DESIGN_TOKENS['shadow_glow']};
                }}
            """)
            layout.addWidget(btn)
        
        layout.addStretch()
        self.setStyleSheet(f"""
            QFrame {{
                background-color: {DESIGN_TOKENS['bg_dark_lighter']};
                border: 1px solid {DESIGN_TOKENS['border']};
                border-radius: {DESIGN_TOKENS['radius_lg']};
                padding: 12px 0;
            }}
        """)


class OccupancyCalendar(QFrame):
    """Availability calendar with status-colored cells (Dashboard 14 style)"""
    
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setup_ui()
    
    def setup_ui(self):
        layout = QVBoxLayout(self)
        layout.setContentsMargins(20, 16, 20, 16)
        
        # Header
        header = QHBoxLayout()
        title = QLabel("Room Availability")
        title.setFont(QFont(DESIGN_TOKENS["font_heading"], 16, QFont.Weight.Bold))
        header.addWidget(title)
        header.addStretch()
        
        # Legend
        for status, color in ROOM_STATUS_COLORS.items():
            legend = QLabel(f"● {status}")
            legend.setStyleSheet(f"color: {color}; font-size: 11px;")
            legend.setFont(QFont(DESIGN_TOKENS["font_body"], 10))
            header.addWidget(legend)
        
        layout.addLayout(header)
        
        # Calendar widget
        self.calendar = QFrame()
        self.calendar.setObjectName("calendar_widget")
        self.calendar.setMinimumHeight(300)
        self.calendar.setStyleSheet(get_calendar_styles())
        layout.addWidget(self.calendar)
        
        layout.addStretch()
        self.setStyleSheet(CARD_STYLES["stat_card"])


class RoomStatusGrid(QWidget):
    """Visual room status grid per floor (Bookini style)"""
    
    def __init__(self, rooms: List[Dict[str, Any]], parent=None):
        super().__init__(parent)
        self.rooms = rooms
        self.setup_ui()
    
    def setup_ui(self):
        layout = QVBoxLayout(self)
        layout.setContentsMargins(20, 16, 20, 16)
        
        # Title
        title = QLabel("Room Status Board")
        title.setFont(QFont(DESIGN_TOKENS["font_heading"], 18, QFont.Weight.Bold))
        title.setStyleSheet(f"color: {DESIGN_TOKENS['text_main']};")
        layout.addWidget(title)
        
        # Room grid
        grid_layout = QHBoxLayout()
        grid_layout.setSpacing(8)
        
        for room in self.rooms:
            room_frame = QFrame()
            room_frame.setFixedSize(80, 80)
            room_frame.setCursor(Qt.CursorShape.PointingHandCursor)
            
            status = room.get("status", "Vacant")
            color = ROOM_STATUS_COLORS.get(status, "#6b7280")
            
            room_layout = QVBoxLayout(room_frame)
            room_layout.setSpacing(4)
            room_layout.setContentsMargins(8, 8, 8, 8)
            
            room_no = QLabel(room.get("room_no", "N/A"))
            room_no.setFont(QFont(DESIGN_TOKENS["font_heading"], 14, QFont.Weight.Bold))
            room_no.setStyleSheet(f"color: {color};")
            room_layout.addWidget(room_no)
            
            room_type = QLabel(room.get("room_type", ""))
            room_type.setFont(QFont(DESIGN_TOKENS["font_body"], 9))
            room_type.setStyleSheet(f"color: {DESIGN_TOKENS['text_dim']};")
            room_layout.addWidget(room_type)
            
            # Status indicator
            status_label = QLabel(status)
            status_label.setStyleSheet(f"background-color: {color}; color: #fff; border-radius: 4px; font-size: 9px; padding: 2px 4px;")
            status_label.setAlignment(Qt.AlignmentFlag.AlignCenter)
            room_layout.addWidget(status_label)
            
            room_frame.setStyleSheet(f"""
                QFrame {{
                    background-color: {DESIGN_TOKENS['surface_card']};
                    border: 2px solid {color};
                    border-radius: {DESIGN_TOKENS['radius_md']};
                    border: 1px solid {DESIGN_TOKENS['border']};
                }}
                QFrame:hover {{
                    border-color: {color};
                    box-shadow: {DESIGN_TOKENS['shadow_glow']};
                }}
            """)
            grid_layout.addWidget(room_frame)
        
        layout.addLayout(grid_layout)
        layout.addStretch()
        self.setStyleSheet(CARD_STYLES["stat_card"])


class DashboardWidget(QWidget):
    """Main dashboard with KPI cards, shift strip, and quick modules"""
    
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setup_ui()
    
    def setup_ui(self):
        layout = QVBoxLayout(self)
        layout.setContentsMargins(20, 16, 20, 16)
        layout.setSpacing(16)
        
        # Header
        header = QHBoxLayout()
        title = QLabel("Operations Dashboard")
        title.setFont(QFont(DESIGN_TOKENS["font_heading"], 24, QFont.Weight.Bold))
        title.setStyleSheet(f"color: {DESIGN_TOKENS['text_main']};")
        header.addWidget(title)
        header.addStretch()
        
        user_label = QLabel("👤 kanpur")
        user_label.setStyleSheet(f"color: {DESIGN_TOKENS['text_dim']};")
        header.addWidget(user_label)
        layout.addLayout(header)
        
        # KPI Cards row
        kpi_frame = QFrame()
        kpi_layout = QHBoxLayout(kpi_frame)
        kpi_layout.setSpacing(16)
        
        sample_kpis = [
            KPICard("occupancy", "Occupancy Rate", "📊", "68%", "+2%", "up"),
            KPICard("adr", "Average Daily Rate", "💰", "$85", "+$5", "up"),
            KPICard("revpar", "RevPAR", "📈", "$58", "-$2", "down"),
            KPICard("revenue", "Today Revenue", "🏦", "$12.4K", "+$1.2K", "up"),
            KPICard("arrivals", "Arrivals", "🚪", "14", "+3", "up"),
            KPICard("housekeeping", "HK Queue", "🧹", "8", "-2", "down"),
        ]
        
        for kpi in sample_kpis:
            card = KPICardWidget(kpi)
            kpi_layout.addWidget(card)
        
        kpi_frame.setStyleSheet(get_kpi_card_qss())
        layout.addWidget(kpi_frame)
        
        # Shift Strip
        shift = ShiftStrip()
        layout.addWidget(shift)
        
        # Main content row
        content_layout = QHBoxLayout()
        content_layout.setSpacing(16)
        
        # Left: Occupancy Calendar
        calendar = OccupancyCalendar()
        calendar.setFixedWidth(400)
        content_layout.addWidget(calendar)
        
        # Right: Quick Module Access
        modules_frame = QFrame()
        modules_layout = QVBoxLayout(modules_frame)
        modules_layout.setSpacing(12)
        
        modules_title = QLabel("Quick Access")
        modules_title.setFont(QFont(DESIGN_TOKENS["font_heading"], 16, QFont.Weight.Bold))
        modules_title.setStyleSheet(f"color: {DESIGN_TOKENS['text_main']};")
        modules_layout.addWidget(modules_title)
        
        module_buttons = [
            ("🏨 Front Office", "Front Office"),
            ("📅 Reservation", "Reservation"),
            ("🧹 Housekeeping", "Housekeeping"),
            ("🍽 Point of Sale", "POS"),
            ("💵 Finance", "Finance"),
            ("📦 Inventory", "Inventory"),
        ]
        
        for label, target in module_buttons:
            btn = QPushButton(f"  {label}")
            btn.setFixedHeight(40)
            btn.setCursor(Qt.CursorShape.PointingHandCursor)
            btn.setStyleSheet(f"""
                QPushButton {{
                    background-color: {DESIGN_TOKENS['surface_card']};
                    color: {DESIGN_TOKENS['text_main']};
                    border: {DESIGN_TOKENS['glass_border']};
                    border-radius: {DESIGN_TOKENS['radius_md']};
                    font-family: {DESIGN_TOKENS['font_body']};
                    font-size: {DESIGN_TOKENS['font_size_md']};
                    text-align: left;
                    padding: 8px 16px;
                }}
                QPushButton:hover {{
                    background-color: {DESIGN_TOKENS['accent']};
                    border-color: {DESIGN_TOKENS['accent']};
                }}
            """)
            modules_layout.addWidget(btn)
        
        # Business Logic overview button
        bl_btn = QPushButton("  📋 Business Logic Overview")
        bl_btn.setFixedHeight(40)
        bl_btn.setCursor(Qt.CursorShape.PointingHandCursor)
        bl_btn.setStyleSheet(f"""
            QPushButton {{
                background-color: {DESIGN_TOKENS['accent']};
                color: #fff;
                border: none;
                border-radius: {DESIGN_TOKENS['radius_md']};
                font-family: {DESIGN_TOKENS['font_body']};
                font-size: {DESIGN_TOKENS['font_size_md']};
                text-align: left;
                padding: 8px 16px;
                font-weight: bold;
            }}
            QPushButton:hover {{
                background-color: {DESIGN_TOKENS['accent_dark']};
                box-shadow: {DESIGN_TOKENS['shadow_glow']};
            }}
        """)
        modules_layout.addWidget(bl_btn)
        
        modules_frame.setStyleSheet(CARD_STYLES["stat_card"])
        content_layout.addWidget(modules_frame)
        
        layout.addLayout(content_layout)
        layout.addStretch()
        
        self.setStyleSheet(f"""
            QWidget {{
                background-color: {DESIGN_TOKENS['bg_dark']};
            }}
        """)


class MainWindow(QWidget):
    """Main window with sidebar + content area"""
    
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("HMS PRO")
        self.setMinimumSize(1200, 700)
        self.setup_ui()
    
    def setup_ui(self):
        layout = QHBoxLayout(self)
        layout.setContentsMargins(0, 0, 0, 0)
        layout.setSpacing(0)
        
        # Sidebar
        self.sidebar = Sidebar(self)
        layout.addWidget(self.sidebar)
        
        # Content area
        self.content = QFrame()
        self.content.setObjectName("module_screen")
        self.content_layout = QVBoxLayout(self.content)
        self.content_layout.setContentsMargins(20, 16, 20, 16)
        
        # Show dashboard by default
        self.show_dashboard()
        
        layout.addWidget(self.content)
        
        # Apply styles
        self.setStyleSheet(get_qss("dark"))
    
    def show_dashboard(self):
        """Show dashboard in content area"""
        # Clear content
        while self.content_layout.count():
            child = self.content_layout.takeAt(0)
            if child.widget():
                child.widget().setParent(None)
        
        dashboard = DashboardWidget(self.content)
        self.content_layout.addWidget(dashboard)
        self.content_layout.addStretch()
    
    def show_module(self, module_name: str):
        """Show specific module with business logic integration"""
        # Clear content
        while self.content_layout.count():
            child = self.content_layout.takeAt(0)
            if child.widget():
                child.widget().setParent(None)
        
        card = GlassCard(title=f"{module_name}", subtitle="Module screen")
        
        # Add sample content table
        table = QTableWidget(5, 4)
        table.setHorizontalHeaderLabels(["ID", "Name", "Status", "Action"])
        table.setStyleSheet(f"""
            QTableWidget {{
                background-color: {DESIGN_TOKENS['bg_dark']};
                gridline-color: {DESIGN_TOKENS['border']};
                color: {DESIGN_TOKENS['text_main']};
                border: 1px solid {DESIGN_TOKENS['border']};
                border-radius: {DESIGN_TOKENS['radius_md']};
            }}
            QHeaderView::section {{
                background-color: {DESIGN_TOKENS['bg_dark_lighter']};
                color: {DESIGN_TOKENS['text_main']};
                border-bottom: 2px solid {DESIGN_TOKENS['accent']};
                padding: 8px 12px;
                font-weight: bold;
            }}
        """)
        card.add_widget(table)
        card.add_spacer()
        
        # Add Business Logic Viewer
        bl_manager = get_manager()
        bl_viewer = create_business_logic_ui(bl_manager, module_name)
        bl_viewer.setFixedHeight(400)
        card.add_widget(bl_viewer)
        card.add_spacer()
        
        self.content_layout.addWidget(card)
        self.content_layout.addStretch()


def create_ui_demo():
    """Create a demo of the redesigned UI"""
    from PyQt6.QtWidgets import QApplication
    
    app = QApplication(sys.argv)
    window = MainWindow()
    window.show()
    
    return window


if __name__ == "__main__":
    print("HMS_py UI Redesign v2 — Components loaded")
    print(f"  Design tokens: {len(DESIGN_TOKENS)}")
    print(f"  Sidebar groups: {len(SIDEBAR_GROUPS)}")
    print(f"  KPI cards: {len(KPI_CARDS)}")
    print(f"  Status colors: {list(ROOM_STATUS_COLORS.keys())}")
    print(f"  QSS themes: dark, light")
