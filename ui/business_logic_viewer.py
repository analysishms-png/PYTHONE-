"""
HMS_py Business Logic Manager — Integrates kanpur_business_logic/ into UI Redesign v2.

Parses all 10 business logic text files and provides structured data
for module detail views, SQL operation panels, and workflow displays.
"""
from __future__ import annotations

import os, re, json
from typing import Optional, List, Dict, Any
from dataclasses import dataclass, field
from pathlib import Path

# PyQt6 imports (before UI classes)
from PyQt6.QtWidgets import (QWidget, QVBoxLayout, QHBoxLayout,
                               QLabel, QFrame, QTabWidget, QTableWidget,
                               QTableWidgetItem, QTextEdit, QHeaderView,
                               QSizePolicy)
from PyQt6.QtCore import Qt
from PyQt6.QtGui import QFont
from HMS_py.ui.theme_v2 import DESIGN_TOKENS, CARD_STYLES

# Path to business logic files
BL_DIR = Path(__file__).resolve().parent.parent / "_qa" / "kanpur_business_logic"


@dataclass
class SQLOperation:
    """A single SQL operation from business logic"""
    name: str
    sql: str
    
    @classmethod
    def from_line(cls, line: str) -> Optional["SQLOperation"]:
        """Parse a line like 'CREATE_VOUCHER: INSERT INTO Voucher ...'"""
        line = line.strip()
        if not line or line.startswith("#") or line.startswith("Database"):
            return None
        if ":" in line:
            parts = line.split(":", 1)
            name = parts[0].strip()
            sql = parts[1].strip()
            if name and sql:
                return cls(name=name, sql=sql)
        return None


@dataclass
class BusinessRule:
    """A single business rule number and description"""
    number: int
    description: str
    
    @classmethod
    def from_line(cls, line: str) -> Optional["BusinessRule"]:
        """Parse a line like '   1. Double-entry bookkeeping: every voucher has debit and credit'"""
        pattern = r"\s*(\d+)\.\s*(.+)"
        m = re.match(pattern, line)
        if m:
            return cls(number=int(m.group(1)), description=m.group(2).strip())
        return None


@dataclass
class ModuleBusinessLogic:
    """Complete business logic for one module"""
    module_name: str
    vb6_files: List[str] = field(default_factory=list)
    business_rules: List[BusinessRule] = field(default_factory=list)
    database_tables: List[str] = field(default_factory=list)
    sql_operations: List[SQLOperation] = field(default_factory=list)
    workflow: str = ""
    authentication: str = ""
    menu_system: str = ""
    key_forms: str = ""
    notes: str = ""
    
    def to_dict(self) -> Dict[str, Any]:
        return {
            "module_name": self.module_name,
            "vb6_files": self.vb6_files,
            "business_rules": [r.__dict__ for r in self.business_rules],
            "database_tables": self.database_tables,
            "sql_operations": [s.__dict__ for s in self.sql_operations],
            "workflow": self.workflow,
            "authentication": self.authentication,
            "menu_system": self.menu_system,
            "key_forms": self.key_forms,
            "notes": self.notes,
        }


class BusinessLogicManager:
    """Manages all business logic files and provides structured access"""
    
    def __init__(self):
        self._modules: Dict[str, ModuleBusinessLogic] = {}
        self._load_all()
    
    def _load_all(self):
        """Load all business logic text files from kanpur_business_logic/"""
        if not BL_DIR.exists():
            return
        
        for bl_file in sorted(BL_DIR.glob("*_business_logic.txt")):
            module = self._parse_file(bl_file)
            if module:
                self._modules[module.module_name] = module
    
    def _parse_file(self, filepath: Path) -> Optional[ModuleBusinessLogic]:
        """Parse a single business logic text file"""
        with open(filepath, "r", encoding="utf-8", errors="ignore") as f:
            content = f.read()
        
        lines = content.split("\n")
        
        # Extract module name from first line
        module_name = ""
        for line in lines[:5]:
            if line.strip() and not line.startswith("="):
                module_name = line.strip().replace("MODULE - BUSINESS LOGIC", "").strip()
                break
        
        if not module_name:
            module_name = filepath.stem.replace("_business_logic", "").title()
        
        result = ModuleBusinessLogic(module_name=module_name)
        
        section = ""  # Current section
        
        for line in lines:
            stripped = line.strip()
            
            # Detect sections
            if stripped.startswith("VB6 Source Files:"):
                section = "files"
                continue
            elif stripped.startswith("Business Rules:"):
                section = "rules"
                continue
            elif stripped.startswith("Database Tables:"):
                section = "tables"
                continue
            elif stripped.startswith("SQL Operations:"):
                section = "sql"
                continue
            elif stripped.startswith("Workflow:"):
                section = "workflow"
                continue
            elif stripped.startswith("Authentication:"):
                section = "auth"
                continue
            elif stripped.startswith("Menu System:"):
                section = "menu"
                continue
            elif stripped.startswith("Key Forms:"):
                section = "forms"
                continue
            elif stripped.startswith("Note:"):
                section = "notes"
                continue
            
            # Skip section headers and empty lines
            if not stripped or stripped.startswith("=") or stripped.startswith("#"):
                continue
            
            # Parse based on section
            if section == "files" and line.startswith("  "):
                # VB6 file entry
                result.vb6_files.append(stripped)
            elif section == "rules":
                rule = BusinessRule.from_line(line)
                if rule:
                    result.business_rules.append(rule)
            elif section == "tables" and line.startswith("  "):
                # Table names listed (comma-separated)
                for t in stripped.split(","):
                    t = t.strip().rstrip(",")
                    if t and not t.startswith("#"):
                        result.database_tables.append(t)
            elif section == "sql":
                op = SQLOperation.from_line(line)
                if op:
                    result.sql_operations.append(op)
            elif section == "workflow" and stripped:
                # Multi-line workflow
                if result.workflow:
                    result.workflow += "\n" + stripped
                else:
                    result.workflow = stripped
            elif section == "auth" and stripped:
                result.authentication += stripped + "\n"
            elif section == "menu" and stripped:
                result.menu_system += stripped + "\n"
            elif section == "forms" and stripped:
                result.key_forms += stripped + "\n"
            elif section == "notes" and stripped:
                result.notes += stripped + "\n"
        
        # Clean auth/menu/forms
        result.authentication = result.authentication.strip()
        result.menu_system = result.menu_system.strip()
        result.key_forms = result.key_forms.strip()
        
        return result
    
    def get_module(self, module_name: str) -> Optional[ModuleBusinessLogic]:
        """Get business logic for a specific module by name"""
        return self._modules.get(module_name)
    
    def get_all_modules(self) -> Dict[str, ModuleBusinessLogic]:
        """Get all loaded modules"""
        return self._modules
    
    def get_module_names(self) -> List[str]:
        """Get all module names"""
        return list(self._modules.keys())
    
    def get_summary(self) -> Dict[str, Any]:
        """Get summary of all business logic data"""
        return {
            "total_modules": len(self._modules),
            "modules": {
                name: {
                    "vb6_files": len(m.vb6_files),
                    "business_rules": len(m.business_rules),
                    "database_tables": len(m.database_tables),
                    "sql_operations": len(m.sql_operations),
                    "module_name": m.module_name,
                }
                for name, m in self._modules.items()
            }
        }


# ── UI Widgets ──


class BusinessLogicViewer(QWidget):
    """Displays business logic for a selected module"""
    
    def __init__(self, manager: BusinessLogicManager, module_name: str, parent=None):
        super().__init__(parent)
        self.manager = manager
        self.module_name = module_name
        self.setup_ui()
    
    def setup_ui(self):
        layout = QVBoxLayout(self)
        layout.setContentsMargins(20, 16, 20, 16)
        layout.setSpacing(16)
        
        module = self.manager.get_module(self.module_name)
        if not module:
            label = QLabel(f"No business logic found for '{self.module_name}'")
            label.setStyleSheet(f"color: {DESIGN_TOKENS['text_dim']}; font-size: 14px;")
            layout.addWidget(label)
            layout.addStretch()
            self.setLayout(layout)
            return
        
        # Module Header
        header = QFrame()
        header.setObjectName("bl_header")
        header_layout = QHBoxLayout(header)
        header_layout.setContentsMargins(20, 16, 20, 16)
        
        title = QLabel(f"📋 {module.module_name} — Business Logic")
        title.setFont(QFont(DESIGN_TOKENS["font_heading"], 20, QFont.Weight.Bold))
        title.setStyleSheet(f"color: {DESIGN_TOKENS['text_main']};")
        header_layout.addWidget(title)
        
        # Stats
        stats = QLabel(
            f"{len(module.vb6_files)} VB6 files | "
            f"{len(module.business_rules)} rules | "
            f"{len(module.database_tables)} tables | "
            f"{len(module.sql_operations)} SQL ops"
        )
        stats.setFont(QFont(DESIGN_TOKENS["font_body"], 11))
        stats.setStyleSheet(f"color: {DESIGN_TOKENS['text_dim']};")
        header_layout.addWidget(stats)
        
        header_layout.addStretch()
        layout.addWidget(header)
        
        # Tab widget for organized display
        tabs = QTabWidget()
        
        # Tab 1: VB6 Source Files
        files_tab = QFrame()
        files_layout = QVBoxLayout(files_tab)
        files_layout.setContentsMargins(20, 16, 20, 16)
        
        files_title = QLabel("VB6 Source Files")
        files_title.setFont(QFont(DESIGN_TOKENS["font_heading"], 14, QFont.Weight.Bold))
        files_layout.addWidget(files_title)
        
        files_list = QTableWidget(len(module.vb6_files), 1)
        files_list.setHorizontalHeaderLabels(["Source File"])
        files_list.setStyleSheet(f"""
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
            }}
        """)
        for i, vf in enumerate(module.vb6_files):
            item = QTableWidgetItem(vf)
            files_list.setItem(i, 0, item)
        files_layout.addWidget(files_list)
        
        tabs.addTab(files_tab, f"Files ({len(module.vb6_files)})")
        
        # Tab 2: Business Rules
        rules_tab = QFrame()
        rules_layout = QVBoxLayout(rules_tab)
        rules_layout.setContentsMargins(20, 16, 20, 16)
        
        rules_title = QLabel("Business Rules")
        rules_title.setFont(QFont(DESIGN_TOKENS["font_heading"], 14, QFont.Weight.Bold))
        rules_layout.addWidget(rules_title)
        
        rules_list = QTableWidget(len(module.business_rules), 2)
        rules_list.setHorizontalHeaderLabels(["#", "Rule"])
        rules_list.setStyleSheet(f"""
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
            }}
        """)
        rules_list.horizontalHeader().setSectionResizeMode(1, QHeaderView.ResizeMode.Stretch)
        for i, rule in enumerate(module.business_rules):
            num_item = QTableWidgetItem(str(rule.number))
            desc_item = QTableWidgetItem(rule.description)
            num_item.setTextAlignment(Qt.AlignmentFlag.AlignCenter)
            rules_list.setItem(i, 0, num_item)
            rules_list.setItem(i, 1, desc_item)
        rules_layout.addWidget(rules_list)
        
        tabs.addTab(rules_tab, f"Rules ({len(module.business_rules)})")
        
        # Tab 3: Database Tables
        tables_tab = QFrame()
        tables_layout = QVBoxLayout(tables_tab)
        tables_layout.setContentsMargins(20, 16, 20, 16)
        
        tables_title = QLabel("Database Tables")
        tables_title.setFont(QFont(DESIGN_TOKENS["font_heading"], 14, QFont.Weight.Bold))
        tables_layout.addWidget(tables_title)
        
        tables_list = QTableWidget(len(module.database_tables), 1)
        tables_list.setHorizontalHeaderLabels(["Table Name"])
        tables_list.setStyleSheet(f"""
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
            }}
        """)
        for i, tbl in enumerate(module.database_tables):
            tables_list.setItem(i, 0, QTableWidgetItem(tbl))
        tables_layout.addWidget(tables_list)
        
        tabs.addTab(tables_tab, f"Tables ({len(module.database_tables)})")
        
        # Tab 4: SQL Operations
        sql_tab = QFrame()
        sql_layout = QVBoxLayout(sql_tab)
        sql_layout.setContentsMargins(20, 16, 20, 16)
        
        sql_title = QLabel("SQL Operations")
        sql_title.setFont(QFont(DESIGN_TOKENS["font_heading"], 14, QFont.Weight.Bold))
        sql_layout.addWidget(sql_title)
        
        sql_list = QTableWidget(len(module.sql_operations), 2)
        sql_list.setHorizontalHeaderLabels(["Operation", "SQL Statement"])
        sql_list.setStyleSheet(f"""
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
            }}
        """)
        sql_list.horizontalHeader().setSectionResizeMode(1, QHeaderView.ResizeMode.Stretch)
        for i, op in enumerate(module.sql_operations):
            name_item = QTableWidgetItem(op.name)
            sql_item = QTableWidgetItem(op.sql)
            sql_list.setItem(i, 0, name_item)
            sql_list.setItem(i, 1, sql_item)
        sql_layout.addWidget(sql_list)
        
        tabs.addTab(sql_tab, f"SQL ({len(module.sql_operations)})")
        
        # Tab 5: Workflow & Details
        detail_tab = QFrame()
        detail_layout = QVBoxLayout(detail_tab)
        detail_layout.setContentsMargins(20, 16, 20, 16)
        
        if module.workflow:
            wf_label = QLabel("Workflow")
            wf_label.setFont(QFont(DESIGN_TOKENS["font_heading"], 14, QFont.Weight.Bold))
            wf_label.setStyleSheet(f"color: {DESIGN_TOKENS['text_main']};")
            detail_layout.addWidget(wf_label)
            
            wf_text = QTextEdit(module.workflow)
            wf_text.setReadOnly(True)
            wf_text.setStyleSheet(f"""
                QTextEdit {{
                    background-color: {DESIGN_TOKENS['bg_dark']};
                    color: {DESIGN_TOKENS['text_main']};
                    border: 1px solid {DESIGN_TOKENS['border']};
                    border-radius: {DESIGN_TOKENS['radius_md']};
                    font-family: {DESIGN_TOKENS['font_body']};
                    font-size: {DESIGN_TOKENS['font_size_md']};
                    padding: 12px;
                }}
            """)
            detail_layout.addWidget(wf_text)
        
        if module.key_forms:
            forms_label = QLabel("Key Forms")
            forms_label.setFont(QFont(DESIGN_TOKENS["font_heading"], 14, QFont.Weight.Bold))
            forms_label.setStyleSheet(f"color: {DESIGN_TOKENS['text_main']};")
            detail_layout.addWidget(forms_label)
            
            forms_text = QTextEdit(module.key_forms)
            forms_text.setReadOnly(True)
            forms_text.setStyleSheet(f"""
                QTextEdit {{
                    background-color: {DESIGN_TOKENS['bg_dark']};
                    color: {DESIGN_TOKENS['text_main']};
                    border: 1px solid {DESIGN_TOKENS['border']};
                    border-radius: {DESIGN_TOKENS['radius_md']};
                    font-family: {DESIGN_TOKENS['font_body']};
                    font-size: {DESIGN_TOKENS['font_size_md']};
                    padding: 12px;
                }}
            """)
            detail_layout.addWidget(forms_text)
        
        if module.authentication:
            auth_label = QLabel("Authentication")
            auth_label.setFont(QFont(DESIGN_TOKENS["font_heading"], 14, QFont.Weight.Bold))
            auth_label.setStyleSheet(f"color: {DESIGN_TOKENS['text_main']};")
            detail_layout.addWidget(auth_label)
            
            auth_text = QTextEdit(module.authentication)
            auth_text.setReadOnly(True)
            auth_text.setStyleSheet(f"""
                QTextEdit {{
                    background-color: {DESIGN_TOKENS['bg_dark']};
                    color: {DESIGN_TOKENS['text_main']};
                    border: 1px solid {DESIGN_TOKENS['border']};
                    border-radius: {DESIGN_TOKENS['radius_md']};
                    font-family: {DESIGN_TOKENS['font_body']};
                    font-size: {DESIGN_TOKENS['font_size_md']};
                    padding: 12px;
                }}
            """)
            detail_layout.addWidget(auth_text)
        
        tabs.addTab(detail_tab, "Details")
        
        layout.addWidget(tabs)
        layout.addStretch()
        
        # Apply glass card style
        self.setStyleSheet(CARD_STYLES["stat_card"])


class BusinessLogicDashboard(QWidget):
    """Dashboard showing all modules with business logic summary"""
    
    def __init__(self, manager: BusinessLogicManager, parent=None):
        super().__init__(parent)
        self.manager = manager
        self.setup_ui()
    
    def setup_ui(self):
        layout = QVBoxLayout(self)
        layout.setContentsMargins(20, 16, 20, 16)
        layout.setSpacing(16)
        
        # Header
        header = QHBoxLayout()
        title = QLabel("Business Logic Overview")
        title.setFont(QFont(DESIGN_TOKENS["font_heading"], 22, QFont.Weight.Bold))
        title.setStyleSheet(f"color: {DESIGN_TOKENS['text_main']};")
        header.addWidget(title)
        
        total_label = QLabel(
            f"{self.manager.get_all_modules().__len__()} modules | "
            f"{sum(len(m.business_rules) for m in self.manager.get_all_modules().values())} total rules"
        )
        total_label.setStyleSheet(f"color: {DESIGN_TOKENS['text_dim']};")
        header.addWidget(total_label)
        header.addStretch()
        layout.addLayout(header)
        
        # Module cards grid
        grid_layout = QHBoxLayout()
        grid_layout.setSpacing(16)
        
        for name in sorted(self.manager.get_module_names()):
            module = self.manager.get_module(name)
            if not module:
                continue
            
            card = QFrame()
            card.setFixedWidth(280)
            card.setCursor(Qt.CursorShape.PointingHandCursor)
            card.setObjectName("module_bl_card")
            
            card_layout = QVBoxLayout(card)
            card_layout.setContentsMargins(16, 16, 16, 16)
            card_layout.setSpacing(10)
            
            # Module icon
            icon_label = QLabel("📋")
            icon_label.setFont(QFont("Segoe UI", 28))
            card_layout.addWidget(icon_label)
            
            # Module name
            name_label = QLabel(module.module_name)
            name_label.setFont(QFont(DESIGN_TOKENS["font_heading"], 16, QFont.Weight.Bold))
            name_label.setStyleSheet(f"color: {DESIGN_TOKENS['text_main']};")
            card_layout.addWidget(name_label)
            
            # Stats
            stats_text = (
                f"VB6: {len(module.vb6_files)} | "
                f"Rules: {len(module.business_rules)} | "
                f"Tables: {len(module.database_tables)} | "
                f"SQL: {len(module.sql_operations)}"
            )
            stats_label = QLabel(stats_text)
            stats_label.setFont(QFont(DESIGN_TOKENS["font_body"], 11))
            stats_label.setStyleSheet(f"color: {DESIGN_TOKENS['text_dim']};")
            card_layout.addWidget(stats_label)
            
            # Divider
            divider = QFrame()
            divider.setFixedHeight(1)
            divider.setStyleSheet(f"background-color: {DESIGN_TOKENS['border']};")
            card_layout.addWidget(divider)
            
            # First 2 rules preview
            preview_text = ""
            for rule in module.business_rules[:2]:
                preview_text += f"  {rule.number}. {rule.description[:60]}...\n"
            if module.business_rules[2:]:
                preview_text += f"  +{len(module.business_rules) - 2} more rules"
            
            preview_label = QLabel(preview_text)
            preview_label.setFont(QFont(DESIGN_TOKENS["font_body"], 10))
            preview_label.setStyleSheet(f"color: {DESIGN_TOKENS['text_dim']};")
            preview_label.setWordWrap(True)
            card_layout.addWidget(preview_label)
            
            # Hover effect
            card.setStyleSheet(f"""
                QFrame {{
                    background-color: {DESIGN_TOKENS['surface_card']};
                    border: 1px solid {DESIGN_TOKENS['border']};
                    border-radius: {DESIGN_TOKENS['radius_md']};
                }}
                QFrame:hover {{
                    border-color: {DESIGN_TOKENS['accent']};
                    box-shadow: {DESIGN_TOKENS['shadow_glow']};
                }}
            """)
            
            grid_layout.addWidget(card)
        
        layout.addLayout(grid_layout)
        layout.addStretch()
        
        self.setStyleSheet(f"""
            QWidget {{
                background-color: {DESIGN_TOKENS['bg_dark']};
            }}
        """)


def create_business_logic_ui(manager: BusinessLogicManager, module_name: str) -> QWidget:
    """Create a BusinessLogicViewer for a specific module"""
    return BusinessLogicViewer(manager, module_name)


def create_business_dashboard(manager: BusinessLogicManager) -> QWidget:
    """Create a BusinessLogicDashboard showing all modules"""
    return BusinessLogicDashboard(manager)


# ── Integration with redesign_v2.py ──


def integrate_business_logic_with_shell(shell_widget, manager: BusinessLogicManager):
    """Integrate business logic viewer into existing shell widget"""
    pass  # Shell integration handled by calling BusinessLogicViewer in content area


# Singleton instance
_bl_manager: Optional[BusinessLogicManager] = None


def get_manager() -> BusinessLogicManager:
    """Get or create the BusinessLogicManager singleton"""
    global _bl_manager
    if _bl_manager is None:
        _bl_manager = BusinessLogicManager()
    return _bl_manager


if __name__ == "__main__":
    manager = get_manager()
    summary = manager.get_summary()
    print(f"HMS_py Business Logic Manager — Loaded")
    print(f"  Total modules: {summary['total_modules']}")
    for name, stats in summary['modules'].items():
        print(f"  {name}: {stats['business_rules']} rules, {stats['database_tables']} tables, {stats['sql_operations']} SQL ops")
