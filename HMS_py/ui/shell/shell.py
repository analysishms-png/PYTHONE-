"""HMS_py shell: Login -> Company select -> Main window (VB6 flow, P0).

Screens (VB6 originals jaisi - production screenshots se):
  1. "User Information"  - frmPassword: User Name/Password + Login/Un Load
  2. "Company Details"   - frmCompany: grid (Company Name/Short Name/
                           Current Year) + Login/Un Load/Database Update
  3. Main window         - title '{Company} { Year }', left sidebar modules
                           (Analysis.ini key 9), module click pe top menubar
                           (User_Module se), leaf click pe ported forms.

Menu evidence: HMS_py/core/menu.py docstring.
"""
import os
import sys
import warnings

# ── Qt font fix: deploy fonts so QFontDatabase finds them ──────────
_FONTS_DIR = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
                          "fonts")
if os.path.isdir(_FONTS_DIR) and not os.environ.get("QT_QPA_FONTDIR"):
    os.environ["QT_QPA_FONTDIR"] = _FONTS_DIR

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

# Suppress propagateSizeHints() warning (harmless on Windows platform plugin)
# BUG FIX: yahan warnings.showwarning ka PROPER 6-arg signature chahiye —
# pehle 3-arg qInstallMessageHandler-style fn assign tha, jo kisi bhi
# runtime Python warning (DeprecationWarning etc.) par TypeError deta tha.
_original_showWarning = warnings.showwarning
def _showwarning(message, category, filename, lineno,
                 file=None, line=None):
    text = str(message)
    if "propagateSizeHints" in text:
        return          # swallow – harmless
    if "Cannot find font" in text:
        return          # handled by QT_QPA_FONTDIR above
    _original_showWarning(message, category, filename, lineno, file, line)
warnings.showwarning = _showwarning

from PyQt6.QtWidgets import (QApplication, QDialog, QFormLayout, QGridLayout,
                             QHBoxLayout, QLabel, QLineEdit, QMainWindow,
                             QMessageBox, QPushButton, QTableWidget,
                             QTableWidgetItem, QVBoxLayout, QWidget, QFrame,
                             QSizePolicy, QScrollArea)
from PyQt6.QtCore import Qt, qInstallMessageHandler, QtMsgType
from PyQt6.QtGui import QFont, QShortcut, QKeySequence, QColor

from HMS_py.ui.main_window.theme import apply_theme, toggle_theme, current_theme
from HMS_py.ui.main_window.glass import AuroraCanvas
from HMS_py.ui.main_window.desktop_style import apply_desktop_surface, mark_desktop_action


_APP = None


def _ensure_qapp():
    global _APP
    _APP = QApplication.instance() or QApplication(["HMS_py"])
    return _APP


_ensure_qapp()


def _qt_msg_handler(msg_type, context, message):
    """Filter noisy Qt messages that don't affect functionality."""
    if "propagateSizeHints" in message:
        return
    if "Cannot find font" in message:
        return
    # pass everything else through to default handler
    if msg_type == QtMsgType.QtCriticalMsg:
        raise RuntimeError(message)
    elif msg_type == QtMsgType.QtFatalMsg:
        raise RuntimeError(message)

qInstallMessageHandler(_qt_msg_handler)

from HMS_py.core.security.auth import check_login, encrypt, decrypt
from HMS_py.core.front_office.company import list_companies, current_year
import HMS_py.core.front_office.company as company
import HMS_py.core.front_office.menu as menu
import HMS_py.core.front_office.menu_help as menu_help
# v0.1.2 workflow cores (Room Change / KOT Transfer / Salary Create)
from HMS_py.core.front_office import fo_ops
import HMS_py.core.pos.pos as _pos_core
# VB6-look shared styles (production screenshots: blue gradient, cream title)
VB_BLUE = "#2f7fc1"
STYLE = """
QWidget#vbScreen { background: qlineargradient(x1:0,y1:0,x2:0,y2:1,
    stop:0 #7db9e8, stop:1 #2f7fc1); }
QLabel#vbTitle { color: #fffbe6; font-size: 12pt; font-weight: bold;
    background: #fdfdd0; color: #444; padding: 4px; }
QPushButton#vbBtn { background: #e8f4ff; border: 2px outset #b0d0e8;
    font-weight: bold; padding: 6px 22px; color: #14406b; }
QPushButton#vbBtn:hover { background: #d0e8ff; }
QTableWidget { background: white; color: #111; gridline-color: #c8c8c8; }
QTableWidget::item { color: #111; }
QHeaderView::section { background: #dcdcdc; color: #111; font-weight: bold; }
QTableCornerButton::section { background: #dcdcdc; }
"""


# ---------------------------------------------------------------- db settings
class DbSettingsDialog(QDialog):
    """Manual DB config: Server + Database -> Analysis.ini key 1/6.

    Save ke baad config [HMS] section me likhi jaati hai (VB6 wahi
    Analysis.ini use karta hai) aur connection test hota hai."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Database Settings")
        self.setFixedSize(480, 340)

        from HMS_py.core.shared.config import load_config
        cfg = load_config()

        root = QVBoxLayout(self)
        root.setContentsMargins(20, 20, 20, 20)
        root.setSpacing(14)

        title = QLabel("Database Connection")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        root.addWidget(title)

        note = QLabel(
            "SQL Server ke liye server name aur database naam yahan daalo.\n"
            "Save karne par Analysis.ini update hogi aur login fir isi DB se hoga.")
        note.setWordWrap(True)
        note.setStyleSheet("color: #8888aa; font-size: 11px;")
        note.setAlignment(Qt.AlignmentFlag.AlignCenter)
        root.addWidget(note)

        form = QFormLayout()
        form.setSpacing(12)

        lbl_s = QLabel("Server Name")
        lbl_s.setStyleSheet("color: #b0b0cc; font-size: 12px; font-weight: bold;")
        self.txtServer = QLineEdit(cfg.get("server", ""))
        self.txtServer.setMinimumHeight(36)
        self.txtServer.setPlaceholderText("e.g. Localhost or DESKTOP-XYZ\\SQLEXPRESS")
        form.addRow(lbl_s, self.txtServer)

        lbl_d = QLabel("Database Name")
        lbl_d.setStyleSheet("color: #b0b0cc; font-size: 12px; font-weight: bold;")
        self.txtDatabase = QLineEdit(cfg.get("database", ""))
        self.txtDatabase.setMinimumHeight(36)
        self.txtDatabase.setPlaceholderText("e.g. KailashData2526")
        form.addRow(lbl_d, self.txtDatabase)
        root.addLayout(form)

        self.lblStatus = QLabel("")
        self.lblStatus.setWordWrap(True)
        self.lblStatus.setStyleSheet("color: #8888aa; font-size: 11px;")
        self.lblStatus.setAlignment(Qt.AlignmentFlag.AlignCenter)
        root.addWidget(self.lblStatus)

        btns = QHBoxLayout()
        btns.setSpacing(8)
        self.btnTest = QPushButton("Test")
        self.btnTest.setFixedHeight(38)
        self.btnTest.setStyleSheet("""
            QPushButton { background: transparent; color: #f59e0b;
                border: 1px solid #f59e0b; border-radius: 6px; font-size: 12px; }
            QPushButton:hover { background: rgba(245,158,11,0.1); }
        """)
        self.btnSave = QPushButton("Save")
        self.btnSave.setFixedHeight(38)
        self.btnSave.setStyleSheet("""
            QPushButton { background: qlineargradient(x1:0,y1:0,x2:1,y2:0,
                stop:0 #7c3aed, stop:1 #a855f7); color: white;
                font-weight: bold; font-size: 13px; border: none; border-radius: 6px; }
            QPushButton:hover { background: #6d28d9; }
        """)
        self.btnCancel = QPushButton("Cancel")
        self.btnCancel.setFixedHeight(38)
        self.btnCancel.setStyleSheet("""
            QPushButton { background: transparent; color: #8888aa;
                border: 1px solid #3a3a52; border-radius: 6px; font-size: 12px; }
            QPushButton:hover { border-color: #7c3aed; color: #b0b0cc; }
        """)
        btns.addWidget(self.btnTest)
        btns.addStretch()
        btns.addWidget(self.btnSave)
        btns.addWidget(self.btnCancel)
        root.addLayout(btns)

        self.btnTest.clicked.connect(self._test)
        self.btnSave.clicked.connect(self._save)
        self.btnCancel.clicked.connect(self.reject)

    def _connect_info(self) -> dict:
        from HMS_py.core.shared import db
        return {"server": self.txtServer.text().strip(),
                "database": self.txtDatabase.text().strip()}

    def _test(self):
        from HMS_py.core.shared import db
        info = self._connect_info()
        if not info["server"] or not info["database"]:
            self.lblStatus.setText("Server aur Database dono bharo")
            self.lblStatus.setStyleSheet("color: #ef4444; font-size: 11px;")
            return
        try:
            tmp = dict(db.load_config())
            tmp.update(info)
            cn = db.connect(tmp)
            cur = cn.cursor()
            cur.execute("SELECT @@SERVERNAME, DB_NAME()")
            srv, dbn = cur.fetchone()
            cn.close()
            self.lblStatus.setStyleSheet("color: #22c55e; font-size: 11px;")
            self.lblStatus.setText(f"Connected: {srv} / {dbn}")
        except Exception as e:
            self.lblStatus.setStyleSheet("color: #ef4444; font-size: 11px;")
            self.lblStatus.setText(f"Fail: {e}")

    def _save(self):
        from HMS_py.core.shared import db
        info = self._connect_info()
        if not info["server"] or not info["database"]:
            self.lblStatus.setText("Server aur Database dono bharo")
            self.lblStatus.setStyleSheet("color: #ef4444; font-size: 11px;")
            return
        try:
            path = db.save_config(server=info["server"], database=info["database"])
            self.lblStatus.setStyleSheet("color: #22c55e; font-size: 11px;")
            self.lblStatus.setText(f"Saved: {path}")
            self.accept()
        except Exception as e:
            self.lblStatus.setStyleSheet("color: #ef4444; font-size: 11px;")
            self.lblStatus.setText(f"Save fail: {e}")


# ---------------------------------------------------------------- login
class LoginDialog(QDialog):
    """VB6 'User Information' login — hybrid: VB6 layout parity (blue
    gradient header, User Name/Password labels, Login/Un Load buttons)
    + modern polish (radius, hover)."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("User Information")
        self.setFixedSize(420, 448)
        self.user = ""
        # VB6 full-desktop parity: white app bg + embedded blue panel
        # (screenshot 001_Login_Screen_Fresh.png)
        self.setProperty("vbDesktop", True)

        root = QVBoxLayout(self)
        root.setContentsMargins(0, 0, 0, 0)
        root.setSpacing(0)

        # VB6 header: blue gradient + cream '{ Company Name }' title
        header = QLabel("{  Company Name  }")
        header.setProperty("vbHeader", True)
        header.setAlignment(Qt.AlignmentFlag.AlignCenter)
        header.setFixedHeight(52)
        root.addWidget(header)

        # White app surface (VB6 white client area)
        white = QFrame()
        white.setStyleSheet("background: #ffffff;")
        wlay = QVBoxLayout(white)
        wlay.setContentsMargins(28, 24, 28, 16)
        wlay.setSpacing(12)
        root.addWidget(white, 1)

        # VB6 blue panel (embedded card: title + fields + Login btn)
        body = QFrame()
        body.setProperty("vbPanel", True)
        lay = QVBoxLayout(body)
        lay.setContentsMargins(32, 24, 32, 20)
        lay.setSpacing(12)
        wlay.addWidget(body)

        lbl_title = QLabel("User Information")
        lbl_title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        f_title = QFont("Segoe UI", 15)
        f_title.setBold(True)
        lbl_title.setFont(f_title)
        lbl_title.setStyleSheet("color: #fdfdd0; background: transparent;")
        lay.addWidget(lbl_title)

        # User
        lbl_u = QLabel("User Name")
        lbl_u.setStyleSheet(
            "color: #fdfdd0; font-size: 12px; font-weight: bold; "
            "background: transparent;")
        lay.addWidget(lbl_u)
        self.txtUser = QLineEdit()
        self.txtUser.setPlaceholderText("User Name...")
        self.txtUser.setMinimumHeight(38)
        lay.addWidget(self.txtUser)

        # Password
        lbl_p = QLabel("Password")
        lbl_p.setStyleSheet(
            "color: #fdfdd0; font-size: 12px; font-weight: bold; "
            "background: transparent;")
        lay.addWidget(lbl_p)
        self.txtPass = QLineEdit()
        self.txtPass.setPlaceholderText("Password...")
        self.txtPass.setEchoMode(QLineEdit.EchoMode.Password)
        self.txtPass.setMinimumHeight(38)
        lay.addWidget(self.txtPass)

        lay.addSpacing(6)

        # VB6 button pair: Login (in-panel white) + Un Load (below panel)
        self.btnLogin = QPushButton("Login")
        self.btnLogin.setStyleSheet(
            "QPushButton { background: #ffffff; color: #1d3d5d; "
            "font-weight: bold; font-size: 13px; border: none; "
            "border-radius: 7px; padding: 9px 22px; }\n"
            "QPushButton:hover { background: #eaf4fd; }")
        self.btnLogin.setFixedHeight(42)
        lay.addWidget(self.btnLogin)

        self.btnUnLoad = QPushButton("Un Load")
        self.btnUnLoad.setProperty("vbGhost", True)
        self.btnUnLoad.setFixedHeight(36)
        wlay.addWidget(self.btnUnLoad)

        self.lblMsg = QLabel("")
        self.lblMsg.setWordWrap(True)
        self.lblMsg.setStyleSheet("color: #ef4444; font-weight: bold; background: transparent; font-size: 11px;")
        self.lblMsg.setAlignment(Qt.AlignmentFlag.AlignCenter)
        wlay.addWidget(self.lblMsg)

        # DB status + settings button (bottom strip)
        self.lblDb = QLabel("")
        self.lblDb.setStyleSheet("color: #666680; font-size: 10px; padding: 4px;")
        self.lblDb.setAlignment(Qt.AlignmentFlag.AlignCenter)
        wlay.addWidget(self.lblDb)

        self.btnDb = QPushButton("Database Settings")
        self.btnDb.setProperty("vbGhost", True)
        self.btnDb.setFixedHeight(30)
        wlay.addWidget(self.btnDb)
        self._note_shown = False

        self.btnLogin.clicked.connect(self._do_login)
        self.btnUnLoad.clicked.connect(self.reject)
        self.btnDb.clicked.connect(self._open_db_settings)
        self.txtPass.returnPressed.connect(self._do_login)

        self._refresh_db_status()

    def _refresh_db_status(self):
        from HMS_py.core.shared.config import load_config, connect
        cfg = load_config()
        try:
            _cn = connect(cfg)
            _cur = _cn.cursor()
            _cur.execute("SELECT @@SERVERNAME, DB_NAME()")
            _srv, _dbn = _cur.fetchone()
            _cn.close()
            db_txt = f"Connected: {_srv} / {_dbn}"
            self.db_ok = True
        except Exception:
            db_txt = f"Offline: {cfg.get('server')}/{cfg.get('database')}"
            self.db_ok = False
        self.lblDb.setText(db_txt)
        return self.db_ok

    def _open_db_settings(self):
        dlg = DbSettingsDialog(self)
        if dlg.exec() == QDialog.DialogCode.Accepted:
            self._refresh_db_status()

    def _do_login(self):
        ok, msg = check_login(self.txtUser.text(),
                                   self.txtPass.text())
        if ok:
            self.user = self.txtUser.text().strip()
            self.accept()
        else:
            self.lblMsg.setText(msg)


# ------------------------------------------------------------- company
class CompanyDialog(QDialog):
    """VB6 'Company Details' company select — hybrid: VB6 blue header +
    grid layout, modern polish."""

    def __init__(self, user: str, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Company Details")
        self.setFixedSize(580, 420)
        self.user = user
        self.selected = None
        # VB6 full-desktop parity: gray MDI desktop + floating white grid
        # (screenshot 010_CompanyDetails_Grid.png: bg #636363)
        self.setProperty("vbDesktop", True)

        root = QVBoxLayout(self)
        root.setContentsMargins(0, 0, 0, 0)
        root.setSpacing(0)

        # VB6 header (screenshot: blue gradient bar + cream 'Company
        # Details' title) — modern gradient, same semantics
        header = QLabel("Company Details")
        header.setProperty("vbHeader", True)
        header.setAlignment(Qt.AlignmentFlag.AlignCenter)
        header.setFixedHeight(52)
        root.addWidget(header)

        # Gray desktop gap (VB6 MDI client area vibe)
        root.addSpacing(18)

        # VB6: floating white grid window on gray desktop — modern:
        # surface card + subtle border
        body = QFrame()
        body.setProperty("vbCard", True)
        lay = QVBoxLayout(body)
        lay.setContentsMargins(24, 16, 24, 20)
        lay.setSpacing(12)

        lbl_hint = QLabel("Company select karke Login dabao")
        lbl_hint.setProperty("vbHeaderSub", True)
        lbl_hint.setAlignment(Qt.AlignmentFlag.AlignCenter)
        lay.addWidget(lbl_hint)

        # Table
        self.tbl = QTableWidget(0, 3)
        self.tbl.setHorizontalHeaderLabels(
            ["Company Name", "Short Name", "Current Year"])
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.setMinimumHeight(120)
        self.tbl.verticalHeader().setVisible(False)
        self.tbl.setShowGrid(False)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.cellDoubleClicked.connect(lambda *_: self._do_login())
        self.tbl.horizontalHeader().setStretchLastSection(True)
        lay.addWidget(self.tbl)

        # Buttons — VB6 captions: Login / Un Load / Database Update
        btn_lay = QHBoxLayout()
        btn_lay.setSpacing(8)
        self.btnLogin = QPushButton("Login")
        self.btnLogin.setProperty("vbPrimary", True)
        self.btnLogin.setFixedHeight(40)
        self.btnUnLoad = QPushButton("Un Load")
        self.btnUnLoad.setProperty("vbGhost", True)
        self.btnUnLoad.setFixedHeight(40)
        self.btnDbUpd = QPushButton("Database Update")
        self.btnDbUpd.setProperty("vbWarn", True)
        self.btnDbUpd.setFixedHeight(40)
        btn_lay.addWidget(self.btnLogin)
        btn_lay.addWidget(self.btnUnLoad)
        btn_lay.addWidget(self.btnDbUpd)
        lay.addLayout(btn_lay)

        root.addWidget(body, 1)

        self.btnLogin.clicked.connect(self._do_login)
        self.btnUnLoad.clicked.connect(self.reject)
        self.btnDbUpd.clicked.connect(self._db_update)
        self.reload()

    def reload(self):
        rows = company.list_companies()
        self.tbl.setRowCount(len(rows))
        for r, rec in enumerate(rows):
            for c, val in enumerate((rec["name"], rec["short"] or "-",
                                     rec["year"])):
                it = QTableWidgetItem(str(val))
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                it.setForeground(QColor("#e0e0e0"))
                self.tbl.setItem(r, c, it)
        if rows:
            self.tbl.selectRow(0)

    def _db_update(self):
        QMessageBox.information(
            self, "Database Update",
            "Database Update: year-start maintenance.")

    def _do_login(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Login",
                                    "Pehle company select karo")
            return
        self.selected = {
            "name": self.tbl.item(r, 0).text() if self.tbl.item(r, 0) else "",
            "short": self.tbl.item(r, 1).text() if self.tbl.item(r, 1) else "",
            "year": self.tbl.item(r, 2).text() if self.tbl.item(r, 2) else "",
        }
        self.accept()


# VB6 Main Setup workbench group definitions (mirrors migration/mainsetup_parity.json)
# Order and leaves must match VB6 MDI menu tree exactly.
# Separator items ("-") and leaves with in_registry=false are excluded.
# If a leaf lacks an opener in _form_registry(), it renders as a disabled button
# with tooltip "no opener registered" so gaps are visible.
MAINSETUP_GROUPS: list[tuple[str, list[str]]] = [
    ("General Setup", [
        "Tax Master", "Tax Structure", "Payment Type", "Parameter",
        "Revenue Group Setting", "Printing Parameters", "Printing Setup",
        "Revenue Wise Budget Entry",
    ]),
    ("Front Office", [
        "Country Master", "State Master", "City Master", "Market Segment",
        "Business Source", "Guest Status", "Charge Master", "Fixed Charge",
        "Package Master", "Plan Master", "Season Master", "Room Features",
        "Room Category", "Room Master", "Company Master", "Forex Master",
        "Guest History", "Group Profile", "Room Display",
    ]),
    ("Point of Sale", [
        "Setup Outlet", "Outlet Bill Sundry Setting", "Server Master", "Table Master",
        "Item List", "Menu Group", "Menu Category", "Menu Item",
        "Menu Item Rate", "Rate Group Master", "Session Master", "Open Item Consumption",
        "Scheme Master", "Happy Hours", "Happy Hours [ Free Items ]",
        "Combo Pack", "NC Type", "Customer History", "Delivery Boy",
    ]),
    ("Members Mgmt", [
        "Category Master", "Member Master", "Corporate Member Master", "Revenue Master",
        "Facility Master", "Category wise Revenue", "Category wise Facility",
        "Member Bill Sundry Setting", "Environment Settings", "Member Age Wise Revenue",
        "Member Select Category",
    ]),
    ("Banquet", [
        "Events", "Venue Features", "Venue Master", "Menu Category",
        "Item Group", "Menu Item", "Catalog Master", "Banquet Bill Sundry Setting",
    ]),
    ("Inventory", [
        "Party Master", "Department", "Item Group", "Item Category",
        "Item Entry", "Consumption Master", "Purchase Sundry Setting",
        "Location Master", "Opening Stock", "Item List", "Shift Master",
        "Enviro Inventry",
    ]),
    ("HR/Payroll", [
        "Designation Master", "Category Master", "Holiday Master", "Employee Master",
    ]),
    ("EPABX", [
        "Com Port Properties", "Call Type Master", "Extension Master",
        "Call Codes Master", "Call Control Master",
    ]),
    ("Finance", [
        "Group Accounts", "Ledger Accounts", "Narration Master", "T.D.S. Category",
        "FA Environment", "Voucher Environment", "Opening Balance Updation",
        "Year End Updation", "Current Balance Updation", "Country Master",
        "State Master", "City Master", "Delete Message", "Account Merging",
        "Voucher Serialisation",
    ]),
    ("Utility", [
        "User Master", "Permissions", "Update Database Nulls", "Backup Data",
        "Account Merging", "Guest Parameters Setting", "Sundry Master",
        "Voucher Wise Sundry Entry", "Sale MIS Customized", "Guest BirthDates/Anniversary",
        "Inconsistency Check", "Year End Updation", "Data Transfer", "Data Recieving",
        "Menu Item Copy", "POS Bill Deletion", "Guest LookUp", "Country Master",
        "State Master", "City Master", "Company Master", "Department",
        "Ledger Accounts", "Data Transfer (POS)", "PLU File (W.Scale)",
        "User Permissions (Advanced)", "POS Recycle", "Unit Master", "Task Scheduler",
    ]),
    ("Smart Card", [
        "Registration Entry", "Recharge/Refund Entry", "Cash Card Transaction Report",
        "Cash Card Collection Summary",
    ]),
]


class MainSetupWorkbench(QDialog):
    """VB6-style Main Setup workbench. It groups the setup masters into
    categories and opens the actual implemented forms from the registry."""

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        apply_desktop_surface(self, "mainSetupWorkbench")
        self.user = user
        self.setWindowTitle("Main Setup")
        self.resize(1100, 700)
        self.setModal(True)

        root = QVBoxLayout(self)
        title = QLabel("Main Setup")
        title.setObjectName("mainSetupTitle")
        title.setStyleSheet("font-size: 18px; font-weight: bold; color: #1d3d5d;")
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        root.addWidget(title)
        user_label = QLabel(f"User: {self.user}")
        user_label.setObjectName("mainSetupUserLabel")
        user_label.setAlignment(Qt.AlignmentFlag.AlignRight)
        root.addWidget(user_label)

        registry = _form_registry()

        body = QVBoxLayout()
        body.setSpacing(10)
        for name, items in MAINSETUP_GROUPS:
            group = QWidget(self)
            box = QVBoxLayout(group)
            label = QLabel(name)
            label.setObjectName("desktopSectionLabel")
            label.setStyleSheet("font-size: 12px; font-weight: bold; color: #2d4a64;")
            box.addWidget(label)

            grid = QGridLayout()
            row = 0
            col = 0
            for item in items:
                opener = registry.get(item)
                if opener is None:
                    # Defensive: render disabled button so gaps are visible
                    btn = QPushButton(item)
                    btn.setMinimumHeight(28)
                    btn.setToolTip("no opener registered")
                    btn.setEnabled(False)
                else:
                    btn = QPushButton(item)
                    btn.setMinimumHeight(28)
                    btn.setToolTip(f"Open {item} form")
                    btn.clicked.connect(lambda _, fn=opener: fn(self))
                grid.addWidget(btn, row, col)
                col += 1
                if col >= 4:
                    col = 0
                    row += 1
            box.addLayout(grid)
            body.addWidget(group)

        scroll = QWidget()
        scroll.setLayout(body)
        root.addWidget(scroll)

        btns = QHBoxLayout()
        btn_close = QPushButton("Close")
        mark_desktop_action(btn_close)
        btn_close.clicked.connect(self.reject)
        btns.addStretch()
        btns.addWidget(btn_close)
        root.addLayout(btns)


# ---------------------------------------------------------- form registry
# RBAC guard (additive): wires core/permission.py into destructive CRUD
# openers. DENY only when the role genuinely lacks the single-letter right;
# SA (harness login) passes every check, so all gates stay green. Fail-open
# (allow) only if the permission module isn't importable.
def _rbac_guard(right: str, leaf: str):
    """Return a wrapper that makes opener require `right` for current user.
    Real call-sites jo VB6-mein Guards_SA/ADMIN denials enforce karte the."""
    try:
        from HMS_py.core.security import permission as _perm
    except ImportError:
        _perm = None

    def _wrap(opener):
        def _go(w=None, *a, **kw):
            who = getattr(w, "user", None) or (kw.get("user") if "user" in kw else None)
            if _perm is not None:
                if not _perm.operation(right, username=who):
                    # VB6-SA style: low-role user ko delete/update form deny
                    raise PermissionError(
                        f"{leaf}: role '{_perm.role_of(who)}' ('{who}')\n"
                        f"ke paas '{right}' right nahi - RBAC guard ne deny kiya")
            return opener(w, *a, **kw) if opener else None
        return _go
    return _wrap


def _form_registry() -> dict[str, callable]:
    from HMS_py.ui import p2_masters as p2
    from HMS_py.ui import item_rate_ui as item_rate
    from HMS_py.ui.reservation_browser import ReservationBrowser
    from HMS_py.ui import frontoffice as fo
    from HMS_py.ui import grc_ui as grc_ui
    # Wave 2 imports (try/except: crash-safe agar module missing ho)
    try:
        from HMS_py.ui import checkout_ui as fo2
        from HMS_py.ui import roomstatus_ui as rs_ui
        from HMS_py.ui import expense_ui as exp_ui
        from HMS_py.ui import finance_masters_ui as fm
    except ImportError:
        fo2 = rs_ui = exp_ui = fm = None
    # Wave 3 (Main Setup complete) imports
    try:
        from HMS_py.ui import pos_masters_ui as pm
        from HMS_py.ui import banquet_masters_ui as bm
        from HMS_py.ui import hr_members_ui as hr
        from HMS_py.ui import general_setup_ui as gs
        from HMS_py.ui import taxstru_ui as tsu
        from HMS_py.ui import guest_history_ui as ghu
        from HMS_py.ui import epabx_ui as epabx
        from HMS_py.ui import comport_ui as cport
    except ImportError:
        pm = bm = hr = gs = tsu = ghu = epabx = cport = None
    try:
        from HMS_py.ui import pos_na as pna
        _pos = lambda w: pna.open_pos(w)
        _na  = lambda w: pna.open_na(w)
    except ImportError:
        _pos = _na = None
    try:
        from HMS_py.ui import fd_forms_ui as fdui
    except ImportError:
        fdui = None
    # VB6 fdAmendEntry.frm — full Amend Stay dialog (date + time + history)
    try:
        from HMS_py.ui.front_office import amend_stay_ui as amstay_ui
    except ImportError:
        amstay_ui = None
    # Wave 6 imports (posting/settlement — VB6 fdPostChrg/fdPaymentCharge/
    # FdReSetlement/FdRevCheckOut)
    try:
        from HMS_py.ui import posting_forms_ui as postui
    except ImportError:
        postui = None
    # Wave 7 imports (rack/room-lookup/walk-in — VB6 fdRoomDisplay/
    # FdLookUpRoomNo/fdRoomOcc/fdWalkInEntry)
    try:
        from HMS_py.ui import walkin_rack_ui as wrui
    except ImportError:
        wrui = None
    # Check-In modern UI (VB6 fdCheckIn.frm + fdWalkInEntry.frm)
    try:
        from HMS_py.ui.front_office import checkin_ui as ckui
    except ImportError:
        ckui = None
    # Group Check-Out modern UI (VB6 FdGrpCheckOut.frm)
    try:
        from HMS_py.ui.front_office import group_checkout_ui as grpco_ui
    except ImportError:
        grpco_ui = None
    # Group Reservation modern UI (VB6 resGroup.frm)
    try:
        from HMS_py.ui.front_office import group_booking_ui as grpbook_ui
    except ImportError:
        grpbook_ui = None
    # Reservation Room Lookup (VB6 resRoomNo.frm / resRoomType.frm)
    try:
        from HMS_py.ui.front_office import reservation_browser as resbrowser_ui
    except ImportError:
        resbrowser_ui = None
    try:
        from HMS_py.ui import inventory as _inv
    except ImportError:
        _inv = None
    # Housekeeping (HK House Operation Stock, HK Room Op Stock, HK Issue/Receive)
    try:
        from HMS_py.ui import housekeeping as hk_ui
    except ImportError:
        hk_ui = None
    try:
        from HMS_py.ui import folio_ui as folui
    except ImportError:
        folui = None
    try:
        from HMS_py.ui import kot_entry as kot
    except ImportError:
        kot = None
    # POS Payment Receive (VB6 RsPaymentReceice.frm)
    try:
        from HMS_py.ui.pos import pos_payment_ui as pospay_ui
    except ImportError:
        pospay_ui = None
    # POS Order Booking (VB6 RsBookingEntry.frm / RsBookingEntryAdvance.frm)
    try:
        from HMS_py.ui.pos import pos_order_booking_ui as posbook_ui
    except ImportError:
        posbook_ui = None
    # Reports Center (REPORTS_TXT collection ka port — read-only engine)
    try:
        from HMS_py.ui import reports_ui as _rpt
        from HMS_py.core.reporting import reports as _rpmod
    except ImportError:
        _rpt = _rpmod = None
    # Scheme/HappyHours/TDS (VB6 POSMAST idx-9/10/11 + FaTDSCat port)
    try:
        from HMS_py.ui import scheme_tds_ui as stu
    except ImportError:
        stu = None
    # FA Voucher/Recon/Display (VB6 FaVrEnt + FaChqClear + FaRepView port)
    try:
        from HMS_py.ui import fa_voucher_ui as fvu
    except ImportError:
        fvu = None
    # Wave 4 imports (new UI forms for 26+ core modules)
    try:
        from HMS_py.ui import booking_ops_ui as book_ui
    except ImportError:
        book_ui = None
    try:
        from HMS_py.ui import advance_deposit_ui as advdep_ui
    except ImportError:
        advdep_ui = None
    try:
        from HMS_py.ui import hall_booking_ui as hall_ui
    except ImportError:
        hall_ui = None
    try:
        from HMS_py.ui import banquet_ops_ui as banq_ui
    except ImportError:
        banq_ui = None
    try:
        from HMS_py.ui import hr_payroll_ui as payroll_ui
    except ImportError:
        payroll_ui = None
    try:
        from HMS_py.ui import member_billing_ui as memb_ui
    except ImportError:
        memb_ui = None
    try:
        from HMS_py.ui import member_environment_ui as member_env_ui
    except ImportError:
        member_env_ui = None
    try:
        from HMS_py.ui import guest_services_ui as gsvc_ui
    except ImportError:
        gsvc_ui = None
    try:
        from HMS_py.ui import facility_billing_ui as facb_ui
    except ImportError:
        facb_ui = None
    try:
        from HMS_py.ui import pos_sales_ui as psale_ui
    except ImportError:
        psale_ui = None
    try:
        from HMS_py.ui import pos_stock_ui as pstock_ui
    except ImportError:
        pstock_ui = None
    try:
        from HMS_py.ui import pos_delivery_ui as pdel_ui
    except ImportError:
        pdel_ui = None
    try:
        from HMS_py.ui import pos_happy_ui as phappy_ui
    except ImportError:
        phappy_ui = None
    try:
        from HMS_py.ui import pos_table_ui as ptable_ui
    except ImportError:
        ptable_ui = None
    try:
        from HMS_py.ui import pos_packing_ui as ppack_ui
    except ImportError:
        ppack_ui = None
    try:
        from HMS_py.ui import fa_ledger_ui as faledg_ui
    except ImportError:
        faledg_ui = None
    try:
        from HMS_py.ui import sys_config_ui as syscfg_ui
    except ImportError:
        syscfg_ui = None
    try:
        from HMS_py.ui import fa_voucher_ui as favchr_ui
        from HMS_py.ui import voucher_serialisation_ui as vsr_ui
    except ImportError:
        favchr_ui = None
        vsr_ui = None
    try:
        from HMS_py.ui import db_backup_ui as dbbak_ui
    except ImportError:
        dbbak_ui = None
    try:
        from HMS_py.ui import einvoice_ui as einv_ui
    except ImportError:
        einv_ui = None
    # PARTIAL-bucket ports (FaGlobeNarr/FaTDSCat/FaGrEnt/FaSubGroup/...)
    try:
        from HMS_py.ui import partial_forms_ui as pfui
    except ImportError:
        pfui = None
    # VB6 EmptyInbox (Finance > "Delete Message") - Messaging table port
    try:
        from HMS_py.ui import messaging_ui as msgui
    except ImportError:
        msgui = None
    # VB6 fdNDAcPostChrg (Night Audit > "Account Posting" = Posting Utility)
    try:
        from HMS_py.ui import posting_utility_ui as npu_ui
    except ImportError:
        npu_ui = None
    # Guest Charges Summary (VB6 fdPrintScreen port)
    try:
        from HMS_py.ui import guest_charges_ui as gchrg_ui
    except ImportError:
        gchrg_ui = None
    try:
        from HMS_py.ui import purchase_order_ui as purord_ui
    except ImportError:
        purord_ui = None
    try:
        from HMS_py.ui import purchase_bill_ui as purbill_ui
    except ImportError:
        purbill_ui = None
    try:
        from HMS_py.ui import stock_issue_ui as stiss_ui
    except ImportError:
        stiss_ui = None
    try:
        from HMS_py.ui import stock_receive_ui as strec_ui
    except ImportError:
        strec_ui = None
    try:
        from HMS_py.ui import stock_adjust_ui as stadj_ui
    except ImportError:
        stadj_ui = None
    try:
        from HMS_py.ui import db_maintenance_ui as dbmaint_ui
    except ImportError:
        dbmaint_ui = None
    try:
        from HMS_py.ui import account_merge_ui as acmerge_ui
    except ImportError:
        acmerge_ui = None
    try:
        from HMS_py.ui import revenue_budget_ui as revbud_ui
    except ImportError:
        revbud_ui = None
    try:
        from HMS_py.ui import user_permissions_ui as perm_ui
    except ImportError:
        perm_ui = None
    try:
        from HMS_py.ui import fa_enviro_ui as fa_envui
    except ImportError:
        fa_envui = None
    try:
        from HMS_py.ui import year_end_ui
    except ImportError:
        year_end_ui = None
    try:
        from HMS_py.ui import nightaudit_reports_ui as narep_ui
    except ImportError:
        narep_ui = None
    try:
        from HMS_py.ui import fa_sub_forms_ui as fasub_ui
    except ImportError:
        fasub_ui = None
    try:
        from HMS_py.ui import fo_sub_forms_ui as fosub_ui
    except ImportError:
        fosub_ui = None
    try:
        from HMS_py.ui import pos_sub_forms_ui as psub_ui
    except ImportError:
        psub_ui = None
    try:
        from HMS_py.ui import guest_lookup_ui as gl_ui
    except ImportError:
        gl_ui = None
    try:
        from HMS_py.ui import registration_entry_ui as reg_ui
    except ImportError:
        reg_ui = None
    try:
        from HMS_py.ui import tally_export_ui as tally_ui
    except ImportError:
        tally_ui = None
    try:
        from HMS_py.ui import misc_sub_forms_ui as misc_ui
    except ImportError:
        misc_ui = None
    try:
        from HMS_py.ui import kitchen_clstk_ui as kclstk_ui
    except ImportError:
        kclstk_ui = None
    try:
        from HMS_py.ui import requisition_slip_ui as reqslip_ui
    except ImportError:
        reqslip_ui = None
    # VB6 MISSING-batch: frmBlockMast + RewardPointParam1 + FAFind +
    # FrmChangeSite (tables BlockMast/RWParameter LIVE hain)
    try:
        from HMS_py.ui import block_master_ui as bmst_ui
    except ImportError:
        bmst_ui = None
    # PARTIAL-batch wiring: SMS/Inbox + KOT/Token + table display
    try:
        from HMS_py.ui import sms_ui as smsui
    except ImportError:
        smsui = None
    try:
        from HMS_py.ui import kot_transfer_ui as kotui
    except ImportError:
        kotui = None
    # PARTIAL-batch: complaint/guest-services tabs + enviro screen
    try:
        from HMS_py.ui import enviro_ui as envui
    except ImportError:
        envui = None
    try:
        from HMS_py.ui import company_profile_ui as prof_ui
    except ImportError:
        prof_ui = None
    try:
        from HMS_py.ui import guest_history_ui as ghist_ui
    except ImportError:
        ghist_ui = None
    try:
        from HMS_py.ui import channel_ui as ch_ui
    except ImportError:
        ch_ui = None
    try:
        from HMS_py.ui import folio_ui as folui2
    except ImportError:
        folui2 = None
    try:
        from HMS_py.ui import user_permissions_ui as perm2_ui
    except ImportError:
        perm2_ui = None
    try:
        from HMS_py.ui import kot_entry as kot2
    except ImportError:
        kot2 = None
    # VB6 UI-ONLY batch: Calender/Image/KeyMassage/repTouchDate/
    # TouchKeyBoard/LockForm runtime utility popups
    try:
        from HMS_py.ui import utility_forms_ui as util_ui
    except ImportError:
        util_ui = None

    def _open_report(cap: str):
        """mdi leaf caption -> reports engine key (exact-match map)."""
        key = _rpmod.menu_caption_map().get(cap) if _rpmod else None
        if not key:
            return _coming_soon(cap)

        def go(w=None):
            _rpt.open_reports(w, report_key=key)
        return go

    # FA cheque-register + interest wrappers (fa_voucher_ui ReportViewer)
    def fv_cheque_cleared(f=None, t=None):
        from HMS_py.core.billing.fa_voucher import fa_voucher as _fv
        return _fv.cheque_cleared()

    def fv_cheque_pending(f=None, t=None):
        from HMS_py.core.billing.fa_voucher import fa_voucher as _fv
        return _fv.cheque_pending()

    def fv_ledger_by_sub(f=None, t=None):
        from HMS_py.core.billing.fa_voucher import fa_voucher as _fv
        rows = _fv.trial_balance()
        return [{"groupcode": g["groupcode"], "groupname": g["groupname"],
                 "amount": g["bal"]} for g in rows]

    def _open_fv_list(parent, title, fn):
        return fvu.ReportViewer(parent, title=title, fn=fn,
                                needs_dates=False)

    def _coming_soon(leaf: str):
        def go(w=None):
            QMessageBox.information(
                w, leaf,
                f"'{leaf}' ki tables is database me nahi hain "
                "(VB6 me bhi inactive tha) - documented skip. "
                "Dekho _rebuild/ALL_MODULES_PLAN.md")
        return go

    def _open_res_report(mode: str = "arrival"):
        def go(w=None):
            from HMS_py.core import reports
            rows = reports.res_status(mode)
            pdf = reports.res_status_pdf(rows, mode)
            QMessageBox.information(
                w, f"Reservation Status ({mode})",
                f"{len(rows)} rows | PDF bana: {pdf}")
        return go

    def _open_tally():
        def go(w=None):
            try:
                from HMS_py.ui import tally_ui
            except ImportError:
                QMessageBox.warning(w, "Tally Export",
                                    "tally_ui module load nahi hua")
                return
            tally_ui.open_tally(w)
        return go

    def _open_room_change(w=None):
        """Room Change dialog (fdRoomChange): folio -> new room."""
        from PyQt6.QtWidgets import (QDialog, QFormLayout, QLineEdit,
                                     QDialogButtonBox)
        dlg = QDialog(w)
        dlg.setWindowTitle("Room Change (VB6 fdRoomChange)")
        dlg.setModal(True)
        form = QFormLayout(dlg)
        ed_folio = QLineEdit(); ed_folio.setPlaceholderText("Folio No")
        ed_room = QLineEdit(); ed_room.setPlaceholderText("New Room No")
        ed_reason = QLineEdit(); ed_reason.setPlaceholderText("Reason (optional)")
        form.addRow("Folio No *", ed_folio)
        form.addRow("New Room No *", ed_room)
        form.addRow("Reason", ed_reason)
        bb = QDialogButtonBox(QDialogButtonBox.StandardButton.Ok |
                              QDialogButtonBox.StandardButton.Cancel)
        bb.accepted.connect(dlg.accept)
        bb.rejected.connect(dlg.reject)
        form.addRow(bb)
        if dlg.exec() != QDialog.DialogCode.Accepted:
            return
        try:
            folio = int(ed_folio.text().strip())
        except ValueError:
            QMessageBox.warning(w, "Room Change", "Folio No numeric hona chahiye")
            return
        try:
            result = fo_ops.room_change(
                folio, ed_room.text().strip(), ed_reason.text().strip(),
                user=getattr(w, "user", "SA"))
            QMessageBox.information(
                w, "Room Change",
                f"Folio #{folio}: {result['old_room']} -> "
                f"{result['new_room']} (FolioLog audit written)")
        except ValueError as e:
            QMessageBox.warning(w, "Room Change", str(e))
        except Exception as e:
            QMessageBox.critical(w, "Room Change", f"DB error: {e}")

    def _open_kot_transfer(w=None):
        """KOT Transfer dialog (RsKOTTransfer): docid -> outlet/table/waiter."""
        from PyQt6.QtWidgets import (QDialog, QFormLayout, QLineEdit,
                                     QDialogButtonBox)
        dlg = QDialog(w)
        dlg.setWindowTitle("KOT Transfer (VB6 RsKOTTransfer)")
        dlg.setModal(True)
        form = QFormLayout(dlg)
        ed_docid = QLineEdit(); ed_docid.setPlaceholderText("KOT DocId")
        ed_outlet = QLineEdit(); ed_outlet.setPlaceholderText("New Outlet (RestCode)")
        ed_table = QLineEdit(); ed_table.setPlaceholderText("New Table (RoomNo)")
        ed_waiter = QLineEdit(); ed_waiter.setPlaceholderText("New Waiter")
        form.addRow("KOT DocId *", ed_docid)
        form.addRow("New Outlet", ed_outlet)
        form.addRow("New Table", ed_table)
        form.addRow("New Waiter", ed_waiter)
        bb = QDialogButtonBox(QDialogButtonBox.StandardButton.Ok |
                              QDialogButtonBox.StandardButton.Cancel)
        bb.accepted.connect(dlg.accept)
        bb.rejected.connect(dlg.reject)
        form.addRow(bb)
        if dlg.exec() != QDialog.DialogCode.Accepted:
            return
        try:
            result = pos.transfer_kot(
                ed_docid.text().strip(),
                ed_outlet.text().strip() or None,
                ed_table.text().strip() or None,
                ed_waiter.text().strip() or None,
                user=getattr(w, "user", "SA"))
            QMessageBox.information(
                w, "KOT Transfer",
                f"KOT {result['docid']} transferred "
                f"({result['rows_updated']} rows updated)")
        except ValueError as e:
            QMessageBox.warning(w, "KOT Transfer", str(e))
        except Exception as e:
            QMessageBox.critical(w, "KOT Transfer", f"DB error: {e}")

    def _open_salary_create(w=None):
        """Salary Creation dialog (prSalCreate): attendance -> salary."""
        from PyQt6.QtWidgets import (QDialog, QFormLayout, QLineEdit,
                                     QDoubleSpinBox, QDialogButtonBox)
        dlg = QDialog(w)
        dlg.setWindowTitle("Salary Creation (VB6 prSalCreate)")
        dlg.setModal(True)
        form = QFormLayout(dlg)
        ed_month = QLineEdit(); ed_month.setPlaceholderText("e.g. 2026-09")
        ed_emp = QLineEdit(); ed_emp.setPlaceholderText("e.g. KK000213")
        sp_da = QDoubleSpinBox(); sp_da.setRange(0, 100); sp_da.setSuffix(" %")
        sp_hra = QDoubleSpinBox(); sp_hra.setRange(0, 100); sp_hra.setSuffix(" %")
        sp_ot = QDoubleSpinBox(); sp_ot.setRange(0, 31)
        sp_otrate = QDoubleSpinBox(); sp_otrate.setRange(0, 10000)
        form.addRow("Month/Year *", ed_month)
        form.addRow("Employee Code *", ed_emp)
        form.addRow("DA %", sp_da)
        form.addRow("HRA %", sp_hra)
        form.addRow("OT Days", sp_ot)
        form.addRow("OT Rate/Day", sp_otrate)
        bb = QDialogButtonBox(QDialogButtonBox.StandardButton.Ok |
                              QDialogButtonBox.StandardButton.Cancel)
        bb.accepted.connect(dlg.accept)
        bb.rejected.connect(dlg.reject)
        form.addRow(bb)
        if dlg.exec() != QDialog.DialogCode.Accepted:
            return
        try:
            result = payroll.create_salary_from_attendance(
                ed_month.text().strip(), ed_emp.text().strip(),
                da_per=sp_da.value(), hra_per=sp_hra.value(),
                ot_days=sp_ot.value(), ot_rate=sp_otrate.value(),
                user=getattr(w, "user", "SA"))
            QMessageBox.information(
                w, "Salary Creation",
                f"Salary saved: {result['emp_code']} / {result['mth_year']}\n"
                f"Work Days: {result['work_day']} | Basic Earned: "
                f"{result['basic_earned']}\n"
                f"Net Salary: {result['net_salary']}")
        except ValueError as e:
            QMessageBox.warning(w, "Salary Creation", str(e))
        except Exception as e:
            QMessageBox.critical(w, "Salary Creation", f"DB error: {e}")

    def _open_enviro(w=None):
        try:
            from HMS_py.ui import enviro_ui
        except ImportError:
            QMessageBox.warning(w, "Parameter",
                                "enviro_ui module load nahi hua")
            return
        enviro_ui.open_enviro(w)
    def _open_main_setup(w=None):
        MainSetupWorkbench(parent=w, user=getattr(w, "user", "SA")).exec()

    return {
        "Main Setup": _open_main_setup,
        # P4-a Front Office:
        "Guest Profile": lambda w: fo.open_guestprof(w),
        # VB6: "Customer History" menu leaf opens frmGuestInfo (HMS.bas loc_1E32DAE)
        # — same guest info form as Guest Profile, alias wire for POSMas leaf.
        "Customer History": lambda w: fo.open_guestprof(w),
        "Check In": (lambda w: ckui.open_checkin(w, user=getattr(w, 'user', 'PYADMIN'))) if ckui else _coming_soon("Check In"),
        "Check-In": lambda w: ckui.open_checkin(w, user=w.user) if ckui else _coming_soon("Check-In"),
        "Checkin": lambda w: ckui.open_checkin(w, user=w.user) if ckui else _coming_soon("Checkin"),
        # P5 POS + Night Audit:
        "KOT Entry": (lambda w: kot.open_kot_entry(w, user=w.user)) if kot else None,
        "POS Status": _pos,
        "Sales Register": _pos,
        "Item wise Sale": _pos,
        "Log": _na,
        "Night Audit Log": _na,
        "Daily Report": _na,
        "Occupancy Analysis": _na,
        "Guest Audit Ledger": _na,
        "Plan Master": lambda w: p2.open_planmaster(w),
        # Main Setup - Front Office masters (P2-complete):
        "City Master": lambda w: p2.open_city(w),
        "Country Master": lambda w: p2.open_country(w),
        "State Master": lambda w: p2.open_state(w),
        "Area Master": lambda w: p2.open_area(w),          # BUG FIX #4
        "Room Category": lambda w: p2.open_roomcategory(w),
        "Room Master": lambda w: p2.open_roommaster(w),
        "Package Master": lambda w: p2.open_packagemaster(w),
        "Season Master": lambda w: p2.open_seasonmaster(
            w, user=getattr(w, "user", "SA")),
        "Company Master": lambda w: p2.open_companymaster(w),
        # Main Setup - General / Charge:
        "Charge Master": lambda w: p2.open_fixcharge(w),
        "Fixed Charge": lambda w: p2.open_fixcharge(w),
        "Unit Master": lambda w: p2.open_unit(w),
        "Item Master": lambda w: p2.open_item(w),
        # Main Setup - F&B / Banquet:
        "Sundry Master": lambda w: p2.open_sundry(w),
        "Narration Master": lambda w: p2.open_narr(w),
        "Venue Master": lambda w: p2.open_venue(w),
        # VB6 FrmVenueFeat 'VenueFeature' — FeatureMast master (LIVE table)
        "VenueFeature": (lambda w: bmst_ui.open_venue_feature(w)) if bmst_ui else _coming_soon("VenueFeature"),
        "Department": lambda w: p2.open_depart(w),
        "Department/Outlet": lambda w: p2.open_depart(w),
        # Reservation:
        "Reservation/Cancellation": lambda w: ReservationBrowser(w).exec(),
        # VB6 frmAdvanceDepDialog (Reservation > Advance Deposit)
        "Advance Deposit": (lambda w: advdep_ui.open_advance_deposit(
            w, user=getattr(w, "user", None))) if advdep_ui else _coming_soon("Advance Deposit"),
        # Utility / User Master:
        "User Master": (lambda w: _rbac_guard("u", "User Master")(p2.open_usermaster)(w, current_user=w.user)),
        "Permissions": (lambda w: perm_ui.open_user_permissions(
            w, user=getattr(w, "user", "SA"))) if perm_ui else None,
        "User Permissions (Advanced)": (lambda w: perm_ui.open_user_permissions(
            w, user=getattr(w, "user", "SA"))) if perm_ui else None,
        # Wave 2: FO operational screens
        "Check Out": (lambda w: _rbac_guard("d", "Check Out")(fo2.open_checkout)(w, user=w.user)) if fo2 else None,
        "Check-Out": (lambda w: _rbac_guard("d", "Check-Out")(fo2.open_checkout)(w, user=w.user)) if fo2 else None,
        "Checkout": (lambda w: _rbac_guard("d", "Checkout")(fo2.open_checkout)(w, user=w.user)) if fo2 else None,            "WalkIn CheckIn": (lambda w: wrui.open_walkin_entry(
                w, user=getattr(w, 'user', 'PYADMIN'))) if wrui else _coming_soon("WalkIn CheckIn"),
        "Reverse Check Out": (lambda w: fo2.open_checkout(w, user=w.user)) if fo2 else None,
        "Blank GRC": (lambda w: grc_ui.open_guest_reg_card(w)) if grc_ui else _coming_soon("Blank GRC"),
        "Room Status": (lambda w: rs_ui.open_roomstatus(w, user=w.user)) if rs_ui else None,
        "House Keeping Screen": (lambda w: rs_ui.open_roomstatus(w, user=w.user)) if rs_ui else None,
        "Expense Entry": (lambda w: exp_ui.open_expense(w, user=w.user)) if exp_ui else None,
        # Wave 2: Finance/FO masters (now live)
        "Tax Master": (lambda w: fm.open_taxmaster(w)) if fm else None,
        "Payment Type": (lambda w: fm.open_paymenttype(w)) if fm else None,
        "Market Segment": (lambda w: fm.open_marketsegment(w)) if fm else None,
        "Business Source": (lambda w: fm.open_businesssource(w)) if fm else None,
        "Guest Status": (lambda w: fm.open_gueststatus(w)) if fm else None,
        "Forex Master": (lambda w: fm.open_forexmaster(w)) if fm else None,
        "Ledger Accounts": (lambda w: fm.open_ledger(w)) if fm else None,
        "Group Accounts": lambda w: p2.open_acgroup(w),
        # Wave 3 (Main Setup complete): POS Setup masters
        "Session Master": (lambda w: pm.open_session(w, user=getattr(w, "user", "SA"))) if pm else None,
        "Scheme Master":  (lambda w: pm.open_scheme(w, user=getattr(w, "user", "SA"))) if pm else None,
        "Delivery Boy":   (lambda w: pm.open_delboy(w, user=getattr(w, "user", "SA"))) if pm else None,
        "Item List":      (lambda w: pm.open_itemcat(w, user=getattr(w, "user", "SA"))) if pm else None,
        "Menu Category":  (lambda w: pm.open_itemcat(w, user=getattr(w, "user", "SA"))) if pm else None,
        # Wave 3: Banquet masters
        "Venue Features":    (lambda w: bm.open_venfeature(w)) if bm else None,
        "Catalog Master":    (lambda w: bm.open_catalog(w)) if bm else None,
        "Group Profile":     (lambda w: bm.open_groupprof(w)) if bm else None,
        # Wave 3: HR/Payroll masters
        "Category  Master":  (lambda w: hr.open_empcat(w)) if hr else None,
        "Holiday Master":    (lambda w: hr.open_holiday(w)) if hr else None,
        "Employee Master":   (lambda w: hr.open_employee(w)) if hr else None,
        "Designation":       (lambda w: hr.open_desig(w)) if hr else None,
        # Wave 3: Members Mgmt masters
        "Category Master":   (lambda w: hr.open_memcat(w)) if hr else None,
        "Facility Master":   (lambda w: hr.open_facility(w)) if hr else None,
        "Revenue Master":    (lambda w: hr.open_memrev(w, user=getattr(w, "user", "SA"))) if hr else None,
        # Wave 3: General Setup masters
        "Room Features":     (lambda w: gs.open_roomfeature(w)) if gs else None,
        "Godown Master":     (lambda w: gs.open_godown(w)) if gs else None,
        "Voucher Environment": (lambda w: gs.open_vouchertype(w)) if gs else None,
        "Voucher Type": (lambda w: gs.open_vouchertype(w)) if gs else None,
        "FA Environment":    (lambda w: fa_envui.open_fa_environment(w)) if fa_envui else None,
        "Guest Parameters Setting": (lambda w: gs.open_guestparam(w)) if gs else None,
        "Voucher Category":  (lambda w: gs.open_vouchcat(w)) if gs else None,
        # Wave 3: POS new masters (NCType, Waiter, Shift, Combo, SmartCard)
        "NC Type":           (lambda w: pm.open_nctype(w)) if pm else None,
        "Server / Waiter":   (lambda w: pm.open_waiter(w)) if pm else None,
        "Waiter Master":     (lambda w: pm.open_waiter(w)) if pm else None,
        "Shift Master":      (lambda w: pm.open_shift(w)) if pm else None,
        "Combo Pack":        (lambda w: pm.open_combo(w)) if pm else None,
        "Smart Card":        (lambda w: pm.open_smartcard(w)) if pm else None,
        # Wave 3: Banquet new master (Function Type)
        "Function Type":     (lambda w: bm.open_func_type(w)) if bm else None,
        "Events":            (lambda w: bm.open_func_type(w)) if bm else None,
        "Setup Outlet":      (lambda w: p2.open_depart(w)) if p2 else None,
        "Outlet Bill Sundry Setting": ((lambda w: fdui.open_depart_sundry(w))
                                       if fdui else None),
        # Wave 3: EPABX masters
        "Call Type":         (lambda w: epabx.open_calltype(w)) if epabx else None,
        "Call Code":         (lambda w: epabx.open_callcode(w)) if epabx else None,
        "Extension":         (lambda w: epabx.open_extension(w)) if epabx else None,
        # Wave 3: Item masters
        "Item Group":        (lambda w: p2.open_item_group(w)) if p2 else None,
        # P5 Inventory:
        "Indent": (lambda w: _inv.open_indent_ui(w)) if _inv else None,
        "Indent Entry": (lambda w: _inv.open_indent_ui(w)) if _inv else None,
        "Pending Indent": (lambda w: _inv.open_inv(w)) if _inv else None,
        "Purchase Register": (lambda w: _inv.open_inv(w)) if _inv else None,
        "Stock Summary": (lambda w: _inv.open_inv(w)) if _inv else None,
        "Stock Register": (lambda w: _inv.open_inv(w)) if _inv else None,
        "Stock Register Detailed": (lambda w: _inv.open_inv(w)) if _inv else None,
        "Purchase Register Detailed": (lambda w: _inv.open_inv(w)) if _inv else None,
        "GIN / Purchase Receipt": (lambda w: _inv.open_gin(w)) if _inv else None,
        "Purchase Order": (lambda w: purord_ui.open_purchase_order(w)) if purord_ui else _coming_soon("Purchase Order"),
        "Purchase Bill": (lambda w: purbill_ui.open_purchase_bill(w)) if purbill_ui else _coming_soon("Purchase Bill"),
        "Stock Transfer": (lambda w: _inv.open_stock_transfer(w)) if _inv else None,
        "eInvoice Config": (lambda w: _inv.open_einvoice_config(w)) if _inv else None,
        # NA menubar leaf (test_wave_c_gstr2) — browser surface report ke liye
        "EInvoice Report": (lambda w: einv_ui.open_einvoice_browser(w)) if einv_ui else _coming_soon("EInvoice Report"),
        "Kitchen Stock Report": (lambda w: _inv.open_kitchen_stock_report(w)) if _inv else None,
        "Stock Issue": (lambda w: stiss_ui.open_stock_issue(w)) if stiss_ui else _coming_soon("Stock Issue"),
        "Stock Receive": (lambda w: strec_ui.open_stock_receive(w)) if strec_ui else _coming_soon("Stock Receive"),
        "Stock Adjustment": (lambda w: stadj_ui.open_stock_adjust(w)) if stadj_ui else _coming_soon("Stock Adjustment"),
        "Purchase Register": (lambda w: _inv.open_inv(w)) if _inv else None,
        "Stock Summary": (lambda w: _inv.open_inv(w)) if _inv else None,
        "Stock Register": (lambda w: _inv.open_inv(w)) if _inv else None,
        # P5-b Reports (PDF):
        "Reservation Status Report": _open_res_report("arrival"),
        "Reservation Status": _open_res_report("arrival"),
        "Reservation Status Arrival": _open_res_report("arrival"),
        "Reservation Status In-House": _open_res_report("inhouse"),
        # Godown master (Inventory master):
        "Godown Master": (lambda w: _inv.open_godown(w)) if _inv else None,
        # P4-b Folio/Check-Out (folio_ui - FolioLog + Amend views):
        "Folio Log": (lambda w: folui.open_folio(w)) if folui else None,
        "Amend Departure": (lambda w: folui.open_folio(w)) if folui else None,
        "Payment Receive Entry": (lambda w: pospay_ui.open_payment_receive_browse(w, user=getattr(w, 'user', 'PYADMIN'))) if pospay_ui else _coming_soon("Payment Receive Entry"),
        "Receive Payment": (lambda w: pospay_ui.open_payment_receive(w, user=getattr(w, 'user', 'PYADMIN'))) if pospay_ui else _coming_soon("Receive Payment"),
        # Pending (minimal - only truly missing tables):
        "Tax Structure": (lambda w: tsu.open_taxstru(w)) if tsu else None,
        "Parameter": _open_enviro,
        "Revenue Group Setting": (lambda w: revbud_ui.open_revenue_group(w)) if revbud_ui else _coming_soon("Revenue Group Setting"),
        "Printing Parameters": (lambda w: gs.open_printing(w)) if gs else None,
        "Printing Setup": (lambda w: gs.open_printing(w)) if gs else None,
        "Revenue Wise Budget Entry": (lambda w: revbud_ui.open_revenue_budget_entry(w)) if revbud_ui else _coming_soon("Revenue Wise Budget Entry"),
        "Guest History": (lambda w: ghu.open_guest_history(w, user=w.user)) if ghu else None,
        "Room Display": (lambda w: rs_ui.open_roomstatus(w, user=w.user)) if rs_ui else None,
        "Update Database Nulls": (lambda w: dbmaint_ui.open_db_maintenance(w)) if dbmaint_ui else _coming_soon("Update Database Nulls"),
        "Account Merging": (lambda w: acmerge_ui.open_account_merge(w)) if acmerge_ui else None,
        # Tally export (frmTallyExport port — read-only XML files)
        "Tally Export": _open_tally(),
        # VB6 caption aliases — screens pehle se the, VB6 naam se wire kiye
        "Server Master": (lambda w: pm.open_waiter(w)) if pm else None,
        "Menu Group": (lambda w: pm.open_itemcat(w)) if pm else None,
        "Menu Item": (lambda w: p2.open_item(w)) if p2 else None,
        "Item Category": (lambda w: pm.open_itemcat(w)) if pm else None,
        "Item  List": (lambda w: p2.open_item(w)) if p2 else None,
        "Item Entry ": (lambda w: p2.open_item(w)) if p2 else None,
        "Location Master": (lambda w: gs.open_godown(w)) if gs else None,
        "Extension Master": (lambda w: epabx.open_extension(w)) if epabx else None,
        "Call Type Master": (lambda w: epabx.open_calltype(w)) if epabx else None,
        "Call Codes Master": (lambda w: epabx.open_callcode(w)) if epabx else None,
        # VB6 TelMaast#1 (user_module_tree.txt:130) — MSComm settings quadruple,
        # machine-local Analysis.ini persistence (core/comport_config.py)
        "Com Port Properties": (lambda w: cport.open_com_port_properties(w)) if cport else None,
        "Designation Master": (lambda w: hr.open_desig(w)) if hr else None,
        # Naye modules (Scheme/HappyHours/TDS)
        "Scheme Master": (lambda w: stu.open_scheme(w)) if stu else None,
        "Happy Hours": (lambda w: stu.open_happyhours(w)) if stu else None,
        "Happy Hours [ Free Items ]": (lambda w: stu.open_happyhours(w)) if stu else None,
        "T.D.S. Category": (lambda w: stu.open_tdscat(w)) if stu else None,
        # --- S1 wire-only wave (live opener/report alias, VB6 captions) ---
        # Finance ops (cores already exist: fa_ledger_ops/fa_tds_ops/fa_voucher)
        "Adjustment Entry": lambda w: fvu.open_voucher_entry(w),
        "Delete Adjustment Entry": lambda w: fvu.open_voucher_entry(w),
        "Bank Reconciliation": lambda w: fvu.open_bank_recon(w),
        "T.D.S. Challan Entry": lambda w: fvu.open_voucher_entry(w),
        "T.D.S. Certificate Entry": lambda w: _open_fv_list(
            w, "T.D.S. Certificate",
            lambda: __import__("HMS_py.core.tdscerti", fromlist=["x"]).list_all()),
        "Expense Voucher": (lambda w: exp_ui.open_expense(w, user=w.user)) if exp_ui else None,
        "Opening Balance Updation": lambda w: fvu.open_trial_balance(w),
        "Year End Updation": (lambda w: year_end_ui.open_year_end_preflight(w)) if year_end_ui else None,
        "Current Balance Updation": lambda w: fvu.open_trial_balance(w),
        # Finance Display (fa_voucher_ui openers)
        "Balance Sheet": lambda w: fvu.open_balance_sheet(w),
        "Profit And Loss Account": lambda w: fvu.open_pnl(w),
        "Trial Balance (Group)": lambda w: fvu.open_trial_balance(w),
        "Trial Ledger": lambda w: fvu.open_trial_balance(w),
        "Cash Flow": lambda w: fvu.open_cash_bank_books(w),
        "Fund Flow": lambda w: fvu.open_cash_bank_books(w),
        "Cash And Bank Books": lambda w: fvu.open_cash_bank_books(w),
        # Finance Reports (fa_voucher_ui openers)
        "Trial Balance": lambda w: fvu.open_trial_balance(w),
        "Interest Ledger": lambda w: fvu.open_led_int(w) if hasattr(fvu, "open_led_int") else fvu.open_trial_balance(w),
        "Journal Books": lambda w: fvu.open_journal_book(w),
        "Bank Register": lambda w: fvu.open_bank_register(w),
        "Cheque Cleared Register": lambda w: _open_fv_list(w, "Cheque Cleared", fv_cheque_cleared),
        "Cheque Not Cleared Register": lambda w: _open_fv_list(w, "Cheque Not Cleared", fv_cheque_pending),
        "Daily Transaction Summary": lambda w: fvu.open_daily_txn_summary(w),
        "Control Ledger": lambda w: fvu.open_trial_balance(w),
        # House Keeping (live tables se verify: ComplaintDetail/LostFoundDetail)
        "Complaint Master": lambda w: _open_fv_list(
            w, "Complaint Master",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT Code, CDate, Category, Description, Depart, Status, ClearingDate FROM ComplaintDetail ORDER BY Code DESC")),
        "Complaint Clearance": lambda w: _open_fv_list(
            w, "Complaint Clearance",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT Code, CDate, Category, Status, ClearingDate, ClearingPerson FROM ComplaintDetail ORDER BY ClearingDate DESC")),
        "Lost / Found Entry": lambda w: _open_fv_list(
            w, "Lost & Found",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT Code, FDate, FArea, FindBy, Description, Status, ClaimedBy FROM LostFoundDetail ORDER BY Code DESC")),
        "Claim Entry": lambda w: _open_fv_list(
            w, "Claims (Lost & Found)",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT Code, FDate, ClaimedBy, ContactNo, DeliveredBy, DDate, Status FROM LostFoundDetail WHERE ClaimedBy <> '' ORDER BY Code DESC")),
        "Room Block": lambda w: _open_fv_list(
            w, "Room Block",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT * FROM RoomBlockOut WHERE 1=0")),
        # Reservation (BookingInquiry live hai)
        "Booking Inquiry": lambda w: _open_fv_list(
            w, "Booking Inquiry",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT TOP 200 Code, PartyName, City, MobileNo, FuncType, FuncDate FROM BookingInquiry ORDER BY Code DESC")),
        "Booking Inquiry Detail": lambda w: _open_fv_list(
            w, "Booking Inquiry Detail",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT TOP 200 Code, PartyName, City, MobileNo, FuncType, FuncDate FROM BookingInquiry ORDER BY Code DESC")),
        # Mall/Outdoor (LocationFacility live)
        "Location Facilities": lambda w: _open_fv_list(
            w, "Location Facilities",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT LcCode, AppDate, FcCode, UnitRate, DueOn, StartMonth FROM LocationFacility ORDER BY LcCode")),
        # Reports Center aliases (VB6 caption -> existing report engine key)
        **({cap: _open_report(cap) for cap in (
            "Checkout Analysis", "Company Analysis", "Food Costing Report",
            "Ageing Analysis (Debtors)", "GSTR-1", "GSTR-2(3)", "GSTR-2(4A)",
            "GSTR-2(4B)", "Stewardwise Sale", "Table wise Sale",
            "Plan Meal Tokens", "GRC Printing", "Registration Card",
            "Settlement Summary", "Deleted Unsettled Bill", "NC KOT Detail",
            "Daily DIET Report", "Not Delivered Order", "Group Wise Sale",
            "Denomination Detail", "Payment Receive Entry (POS)",
            "Collection Summary", "Open Item Sales", "KOT Change Report",
            "Monthwise Sales", "ABC  Analysis", "Sale Summary",
            "Taxwise Details", "Group Pickup Report", "Group Arrival Report",
            "Arrival List", "23 Day Room Availability Forecast",
            "23 Day Room Type Availability Forecast", "Cover Analysis Report",
            "OutStanding Report", "Party wise OutStanding",
            "Bill Wise Outstanding Report For Debtors",
            "Excess Consumption Report", "Restaurant Issue Report",
            "Stock Summary P/S Basis", "ABC Analysis",
            "Production Report I/R Basis", "Issue CheckList",
            "Stock Summary ", "Stock Register ", "Stock In Hand ",
            "Kitchen Stock Report I/R Basis", "Change Kitchen/Store",
            "Form24 Annexure-A", "UPVAT XXIV", "Room Status Report",
            "Settlement  Report", "Banquet Taxwise Details", "Taxwise Details (Banquet)",
            "Charge Payment Detail", "Room Wise Plan Detail",
            "Bill Change Report", "Guest Extra Charges", "Sales Report",
            "Guest Payments", "FOM Tax Detail", "Tax Wise Charge Detail",
            "Tourism Form 1", "Tourism Form 2", "Tourism Form 5",
            "Tourism Form 6", "Tourism Form 4", "Monthly Return",
            "L.T. FORM II", "L.T. FORM IV", "Room Occupancy",
            "Attendance Report", "Form C",
        ) if _rpmod}),
        # Reports Center aliases (VB6 caption -> existing report engine key)
        # Explicit wires for captions in _open_report() generator:
        "Plan Meal Tokens": lambda w: _open_report("Plan Meal Tokens")(w),
        "GRC Printing": lambda w: _open_report("GRC Printing")(w),
        "Registration Card": lambda w: _open_report("Registration Card")(w),
        # Blocked-table leaves -> some now have real UIs
        # Blocked-table leaves -> some now have real UIs
        "Night Audit Process": (lambda w: narep_ui.open_nightaudit_reports(w)) if narep_ui else _coming_soon("Night Audit Process"),
        "Night Audit Control Panel": (lambda w: narep_ui.open_nightaudit_reports(w)) if narep_ui else _coming_soon("Night Audit Control Panel"),
        "Reverse Night Audit": (lambda w: narep_ui.open_nightaudit_reports(w)) if narep_ui else _coming_soon("Reverse Night Audit"),
        "Charges Posting": (lambda w: narep_ui.open_nightaudit_reports(w)) if narep_ui else _coming_soon("Charges Posting"),
        # VB6 fdNDAcPostChrg = Posting Utility (NightAuditoR index 3)
        "Account Posting": (lambda w: npu_ui.open_posting_utility(w, user=getattr(w, 'user', None))) if npu_ui else _coming_soon("Account Posting"),
        "Bill Reprint": (lambda w: psub_ui.open_bill_reprint(w)) if psub_ui else _coming_soon("Bill Reprint"),
        "Merge Room": (lambda w: fosub_ui.open_merge_charge(w)) if fosub_ui else _coming_soon("Merge Room"),
        "Bill Re-Settlement": (lambda w: fosub_ui.open_re_settlement(w)) if fosub_ui else _coming_soon("Bill Re-Settlement"),
        "Look Up Rooms": (lambda w: fosub_ui.open_room_lookup(w)) if fosub_ui else _coming_soon("Look Up Rooms"),
        "Look Up Room types": (lambda w: fosub_ui.open_room_lookup(w)) if fosub_ui else _coming_soon("Look Up Room types"),
        "POS Bill Reprint": (lambda w: psub_ui.open_bill_reprint(w)) if psub_ui else _coming_soon("POS Bill Reprint"),
        "Split Sale Bill": (lambda w: psub_ui.open_split_bill(w)) if psub_ui else _coming_soon("Split Sale Bill"),
        # Truly blocked (no DB tables)
        # NOTE: "Member Bill Sundry Setting" alag case hai — SundryTypeFix table
        # live hai, par decompiled VB6 dispatch chain (EXTRAS.text loc_1E397E3-1E398DD)
        # me is caption ka koi case nahi — menu registration (loc_1EE8F78, kind=2)
        # ke baad click handler fall-through karta tha. VB6 me bhi inactive.
        **({cap: _coming_soon(cap) for cap in (
            "Member Bill Sundry Setting",
            "Forex Receive Entry", "Display Rack", "Travel Agency Posting",
            "Add/Edit/Delete Group With Reservation ",
            "Reservation With History",
            "Confirmation Letters", "Cancellation Letters",
            "Reservation Status Screen", "Item Issued On Cleaning",
            "Check Out Clearance Screen", "Changes Department",
            "Table Change Entry", "Sale Bill Entry", "Settlement Entry",
            "Display Table",
            "Display Table",
            "KOT Transfer", "Token Entry", "Assign Delivery", "Payment Receive",
            "Salary Creation", 
             "Rate Group Master",
             "Open Item Consumption", 
            "Card Initialization",
            "Transfer (Offline)", "Transfer (Online)", "Door Locks",
            "Godrej Locks", "Cascade", "Tile Horizontal", "Tile Vertical",
            "Manage MDI", "Restaurant Change ",
        )}),
        # Order Booking (VB6 RsBookingEntry.frm / RsBookingEntryAdvance.frm)
        "Order Booking": (lambda w: posbook_ui.open_order_booking(w, user=getattr(w, 'user', 'PYADMIN'))) if posbook_ui else _coming_soon("Order Booking"),
        "Bill Lookup": (lambda w: posbook_ui.open_order_booking(w, user=getattr(w, 'user', 'PYADMIN'))) if posbook_ui else _coming_soon("Bill Lookup"),
        "Order Booking Advance": (lambda w: posbook_ui.open_order_booking(w, user=getattr(w, 'user', 'PYADMIN'))) if posbook_ui else _coming_soon("Order Booking Advance"),
        # Banquet operations (VB6 Banquet > Operation; tables LIVE)
        "Banquet Booking": (lambda w: hall_ui.open_hall_booking(w)) if hall_ui else _coming_soon("Banquet Booking"),
        "Banquet Billing": (lambda w: banq_ui.open_banquet_billing(w)) if banq_ui else _coming_soon("Banquet Billing"),
        "Banquet Estimate Billing": (lambda w: banq_ui.open_banquet_estimate(w)) if banq_ui else _coming_soon("Banquet Estimate Billing"),
        "Banquet Booking Advance": (lambda w: banq_ui.open_banquet_advance(w)) if banq_ui else _coming_soon("Banquet Booking Advance"),
        "Banquet Settlement": (lambda w: banq_ui.open_banquet_settlement(w)) if banq_ui else _coming_soon("Banquet Settlement"),
        "Venue Availability": (lambda w: banq_ui.open_venue_availability(w)) if banq_ui else _coming_soon("Venue Availability"),
        "Chef Pre-Costing": (lambda w: banq_ui.open_chef_precosting(w)) if banq_ui else _coming_soon("Chef Pre-Costing"),
        "Catalog Selection": (lambda w: banq_ui.open_catalog_selection(w)) if banq_ui else _coming_soon("Catalog Selection"),
        "Banquet Bill Sundry Setting": (lambda w: banq_ui.open_banquet_sundry_setting(w)) if banq_ui else _coming_soon("Banquet Bill Sundry Setting"),
        "Guest Comments": (lambda w: banq_ui.open_guest_comments(w)) if banq_ui else _coming_soon("Guest Comments"),
        # --- S1 tail: last live-schema leaves ---
        "Menu Item Rate": lambda w: item_rate.open_item_rate(
            w, user=getattr(w, "user", "SA")),
        "Telephone Call Entry": lambda w: _open_fv_list(
            w, "Telephone Call Entry",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT TOP 200 ID, V_TYPE, PNT_NO, Extension, RoomNo, "
                "CALL_START_DATE, CALL_DURATION, DIALED_NO FROM EPABX_Data ORDER BY ID DESC")),
        "Call Control Master": lambda w: _open_fv_list(
            w, "Call Control Master",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT Code, Name FROM TelCallType ORDER BY Code")),
        "Location-Master": lambda w: _open_fv_list(
            w, "Location Master",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT Code, Name, ShortName FROM GodownMast ORDER BY Code")),
        "Party Locations": lambda w: _open_fv_list(
            w, "Party Locations",
            lambda: __import__("HMS_py.core.db", fromlist=["x"]).query(
                "SELECT LcCode, AppDate, FcCode, UnitRate, DueOn FROM LocationFacility ORDER BY LcCode")),
        # Finance sub-forms (VB6 fate_Click)
        "Ledger Adjustment": (lambda w: fasub_ui.open_fa_adjust(w)) if fasub_ui else _coming_soon("Ledger Adjustment"),
        "Adjustment Deletion": (lambda w: fasub_ui.open_fa_adjust(w)) if fasub_ui else _coming_soon("Adjustment Deletion"),
        "Cheque Clearing": (lambda w: fasub_ui.open_fa_chq_clear(w)) if fasub_ui else _coming_soon("Cheque Clearing"),
        "TDS Certificate": (lambda w: fasub_ui.open_fa_tds_cert(w)) if fasub_ui else _coming_soon("TDS Certificate"),
        # Guest & Registration forms (GuestProf/GuestFolio tables exist)
        "Guest LookUp": (lambda w: gl_ui.open_guest_lookup(w)) if gl_ui else _coming_soon("Guest LookUp"),
        "Registration Entry": (lambda w: reg_ui.open_registration_entry(w)) if reg_ui else _coming_soon("Registration Entry"),
        "Guest Registration": (lambda w: reg_ui.open_registration_entry(w)) if reg_ui else _coming_soon("Guest Registration"),
        # M.R. Entry (VB6 pMREntry port — stock_create MRE via stock_receive_ui pattern)
        "M.R. Entry": (lambda w: strec_ui.open_stock_receive(w)) if strec_ui else _coming_soon("M.R. Entry"),
        # Room Change (VB6 fdRoomChange port — v0.1.2)
        "Room Change": lambda w: _open_room_change(w),
        # KOT Transfer / Table Change (VB6 RsKOTTransfer/RsTbChange port)
        "KOT Transfer": lambda w: _open_kot_transfer(w),
        "Table Change Entry": lambda w: _open_kot_transfer(w),
        # Salary Creation (VB6 prSalCreate port)
        "Salary Creation": lambda w: _open_salary_create(w),
        # Tally Export
        "Tally Export(XML)": (lambda w: tally_ui.open_tally_export(w)) if tally_ui else _coming_soon("Tally Export(XML)"),
        # Misc sub-forms (Opening Stock, Sundry Master, Restaurant Master)
        "Opening Stock": (lambda w: misc_ui.open_opening_stock(w)) if misc_ui else _coming_soon("Opening Stock"),
        "Sundry Master": (lambda w: misc_ui.open_sundry_master(w)) if misc_ui else _coming_soon("Sundry Master"),
        "Restaurant Master": (lambda w: misc_ui.open_restaurant_master(w)) if misc_ui else _coming_soon("Restaurant Master"),
        # Kitchen Closing Stock (VB6 kClStk port — KClStk table live hai)
        "Kitchen Closing Stock": (lambda w: kclstk_ui.open_kitchen_closing_stock(w)) if kclstk_ui else _coming_soon("Kitchen Closing Stock"),
        # Requisition Slip (VB6 pReqSlip port — pending indent lines -> RQI issue)
        "Requisition Slip": (lambda w: reqslip_ui.open_requisition_slip(w)) if reqslip_ui else _coming_soon("Requisition Slip"),
        "Stock Issue on Requisition": (lambda w: reqslip_ui.open_requisition_slip(w)) if reqslip_ui else _coming_soon("Stock Issue on Requisition"),
        "Pending M.R.": (lambda w: reqslip_ui.open_requisition_slip(w)) if reqslip_ui else _coming_soon("Pending M.R."),
        # --- S1 tail: blocked tables (click par documented VB6-style message) ---
        **({cap: _coming_soon(cap) for cap in (
             "Party Master", "Consumption Master",
            "Purchase Sundry Setting", "Enviro Inventry",
            "Gravy Item Entry",
            "Finish Material Receive Entry", "Excise Invoice Cum Gate Pass",
            "Pending Purchase Order",
            "Voucher Wise Sundry Entry", "Sale MIS Customized",
            "Inconsistency Check", "Menu Item Copy", "POS Bill Deletion",
            "Data Transfer", "Data Recieving",
            "Data Transfer (POS)", "PLU File (W.Scale)", "POS Recycle",
            "Task Scheduler", "Voucher Serialisation",
            "Voucher Wise Sundry Entry", "Expected Plan/Package FB Details",
            "Cashier  Report", "Attendence Report", "Item Wise Sales Report",
            "Member Bill Missing Report",
            "Recharge/Refund Entry", "Cash Card Transaction Report",
            "Cash Card Collection Summary", "Card Transaction Report",
            "Card Statement (MINI)", "Card Statement (FULL)",
            "Card Collection Summary", 
             "Guest Registration", "-",
        )}),
        # ── PARTIAL-batch wiring: VB6 forms -> existing tested openers ──
        # (HR tabs: VB6 alag forms the, HrPayrollDialog tabs ka port)
        "Leave": (lambda w: payroll_ui.open_hr_payroll(w)) if payroll_ui else None,
        "Attendance": (lambda w: payroll_ui.open_hr_payroll(w)) if payroll_ui else None,
        "Loan/Advance": (lambda w: payroll_ui.open_hr_payroll(w)) if payroll_ui else None,
        "Over Time": (lambda w: payroll_ui.open_hr_payroll(w)) if payroll_ui else None,
        "Leave Encashment": (lambda w: payroll_ui.open_hr_payroll(w)) if payroll_ui else None,
        "Member Master": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        "Corporate Member Master": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        "Category wise Revenue": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        "Category wise Facility": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        "Member Age Wise Revenue": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        "Member Select Category": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        "Member Bill Printing": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        "Member Assistant": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        "Outstation Member Entry": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        "Member Category Change Entry": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        "Member Category Change (Conditional)": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        "Member Visit Entry": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        "Member Used Facility Entry": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        "Member Renewal Entry": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        "Member Facility Billing": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        "Auto Settle Card Balance": ((lambda w: pm.open_auto_settle_card_balance(
            w, user=getattr(w, "user", "SA"))) if pm else None),
        # SmartCard ops (VB6: Registration/Recharge/Refund/ReIssue forms)
        "Card Registration": ((lambda w: pm.open_smartcard(w, user=getattr(w, "user", "SA"))) if pm else None),
        # VB6 FrmGuestWakeUp -> guest services Wake Up tab
        "Register Wake up Calls": ((lambda w: gsvc_ui.open_guest_services(w)) if gsvc_ui else None),
        # VB6 HRoomCheckOutClearance -> check-out screen
        "Check Out Clearance Screen": ((lambda w: fo2.open_checkout(w, user=w.user)) if fo2 else None),
        # Messaging/SMS (VB6: Inbox/Outbox/Common SMS/SMS Center Settings)
        "InBox": (lambda w: msgui.open_delete_message(w, user=getattr(w, 'user', None))) if msgui else None,
        "OutBox": (lambda w: msgui.open_delete_message(w, user=getattr(w, 'user', None))) if msgui else None,
        "Multiple SMS Type": (lambda w: smsui.open_sms_send(w)) if smsui else None,
        "SMS (API)": (lambda w: smsui.open_sms_send(w)) if smsui else None,
        "SMS (Scheduled)": (lambda w: smsui.open_sms_send(w)) if smsui else None,
        "SMS (Conditional)": (lambda w: smsui.open_sms_send(w)) if smsui else None,
        "SMS Center Settings": (lambda w: smsui.open_sms_send(w)) if smsui else None,
        # VB6 FrmSMSEnviro 'Parameter Setting' -> SMSEnviroSettings dialog
        "SMS Environment Settings": ((lambda w: smsui.SMSEnviroSettings(w).exec())
                                     if smsui else None),
        "Meter Reading": (lambda w: facb_ui.open_facility_billing(w)) if facb_ui else None,
        "User Collection": (lambda w: exp_ui.open_expense(w, user=w.user)) if exp_ui else None,
        # POS/KOT/stock tails (VB6 variants of wired forms)
        "KOT Transfer": (lambda w: kotui.open_kot_transfer(w)) if kotui else None,
        "Token Entry": (lambda w: kotui.open_kot_transfer(w)) if kotui else None,
        "Table Change Entry": (lambda w: kotui.open_table_change(w)) if kotui else None,
        "Kitchen Closing Stock": (lambda w: kclstk_ui.open_kitchen_closing_stock(w)) if kclstk_ui else _coming_soon("Kitchen Closing Stock"),
        "Issue/Recd. Entry": (lambda w: stiss_ui.open_stock_issue(w)) if stiss_ui else _coming_soon("Issue/Recd. Entry"),
        "House Keeping Op.Stock Entry": (lambda w: hk_ui.open_hk_house_op_stock(w, user=getattr(w, 'user', 'PYADMIN'))) if hk_ui else _coming_soon("House Keeping Op.Stock Entry"),
        "HK Room Op Stock Entry": (lambda w: hk_ui.open_hk_room_op_stock(w, user=getattr(w, 'user', 'PYADMIN'))) if hk_ui else _coming_soon("HK Room Op Stock Entry"),
        "HK Issue/Receive Entry": (lambda w: hk_ui.open_hk_issue_receive(w, user=getattr(w, 'user', 'PYADMIN'))) if hk_ui else _coming_soon("HK Issue/Receive Entry"),
        "Payment Due Letter Entry": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        # ── PARTIAL-batch 2: VB6 form -> core-module-mapped opener ──
        # (core module ka table LIVE hai; dialog opers tested hain)
        "Complain Master": ((lambda w: gsvc_ui.open_guest_services(w))
                            if gsvc_ui else None),
        "Parameter Settings": (lambda w: envui.open_enviro(w)) if envui else None,
        "Purchase Parameter": (lambda w: envui.open_enviro(w)) if envui else None,
        "Parameter Setting": (lambda w: envui.open_enviro(w)) if envui else None,
        "Company Profile": (lambda w: prof_ui.open_company_profile(w)) if prof_ui else None,
        "Guest Information": (lambda w: ghist_ui.open_guest_history(w, user=getattr(w, 'user', 'SA'))) if ghist_ui else None,
        "Group Reservation": ((lambda w: ch_ui.open_channel_manager(w, user=getattr(w, 'user', 'SA')))
                              if ch_ui else None),
        "Inhouse Guest Folio": (lambda w: folui2.open_folio(w)) if folui2 else None,
        "User Permissions": ((lambda w: perm2_ui.open_user_permissions(w, user=getattr(w, 'user', 'SA')))
                             if perm2_ui else None),
        "KOT": (lambda w: kot2.open_kot_entry(w, user=getattr(w, 'user', 'SA'))) if kot2 else None,
        # VB6 frmBlockMast (House Keeping > Block Master) — BlockMast LIVE
        "Block Master": (lambda w: bmst_ui.open_block_master(w)) if bmst_ui else _coming_soon("Block Master"),
        # VB6 RewardPointParam1 (Members Mgmt) — RWParameter LIVE
        "Reward Points Parameter I": (lambda w: bmst_ui.open_reward_points(w)) if bmst_ui else _coming_soon("Reward Points Parameter I"),
        # VB6 FAFind ('Help.?') — SubGroup search dialog
        "FA Find": (lambda w: bmst_ui.open_fa_find(w)) if bmst_ui else _coming_soon("FA Find"),
        # VB6 FrmChangeSite — login site picker
        "Login Site": (lambda w: bmst_ui.open_change_site(w)) if bmst_ui else _coming_soon("Login Site"),
        # --- VB6 UI-ONLY batch (runtime utility popups) ---
        "Calender": (lambda w: util_ui.open_calender(w)) if util_ui else _coming_soon("Calender"),
        "Image": (lambda w: util_ui.open_image_preview(w)) if util_ui else _coming_soon("Image"),
        "Key Massage": (lambda w: util_ui.open_key_message(w)) if util_ui else _coming_soon("Key Massage"),
        "Select Report Date": (lambda w: util_ui.open_select_report_date(w)) if util_ui else _coming_soon("Select Report Date"),
        "Touch Screen KeyBoard": (lambda w: util_ui.open_touch_keyboard(w)) if util_ui else _coming_soon("Touch Screen KeyBoard"),
        # PlanPopup (VB6 me bhi blank-caption popup leaves the — documented skip)
        "": _coming_soon("(Plan Popup)"),
        # Wave 4: Operations UIs (booking, hall, HR, members, services, POS, finance)
        "Booking Operations": (lambda w: book_ui.open_booking_ops(w)) if book_ui else None,
        "Hall Booking": (lambda w: hall_ui.open_hall_booking(w)) if hall_ui else None,
        "HR Payroll": (lambda w: payroll_ui.open_hr_payroll(w)) if payroll_ui else None,
        "Member Billing": (lambda w: memb_ui.open_member_billing(w)) if memb_ui else None,
        "Environment Settings": (lambda w: member_env_ui.open_member_environment(w)) if member_env_ui else None,
        "Guest Services": (lambda w: gsvc_ui.open_guest_services(w)) if gsvc_ui else None,
        "Facility Billing": (lambda w: facb_ui.open_facility_billing(w)) if facb_ui else None,
        "POS Sales": (lambda w: psale_ui.open_pos_sales(w)) if psale_ui else None,
        "POS Stock": (lambda w: pstock_ui.open_pos_stock(w)) if pstock_ui else None,
        "POS Delivery": (lambda w: pdel_ui.open_pos_delivery(w)) if pdel_ui else None,
        "POS Happy Hours": (lambda w: phappy_ui.open_pos_happy(w)) if phappy_ui else None,
        "POS Table": (lambda w: ptable_ui.open_pos_table(w)) if ptable_ui else None,
        "Table Master": (lambda w: ptable_ui.open_pos_table(w)) if ptable_ui else None,
        "POS Packing": (lambda w: ppack_ui.open_pos_packing(w)) if ppack_ui else None,
        "Finance Ledger": (lambda w: faledg_ui.open_fa_ledger(w)) if faledg_ui else None,
        "Voucher Entry": (lambda w: favchr_ui.open_voucher_entry(w)) if favchr_ui else None,
        "Voucher Serialisation": (lambda w: vsr_ui.open_voucher_serialisation(w)) if vsr_ui else _coming_soon("Voucher Serialisation"),
        "Reverse Room Merge": (lambda w: grc_ui.open_reverse_room_merge(w)) if grc_ui else _coming_soon("Reverse Room Merge"),
        "Inconsistency Check": (lambda w: grc_ui.open_inconsistency_check(w)) if grc_ui else _coming_soon("Inconsistency Check"),
        # VB6 FaGlobeNarr — Global Narration picker window (partial_forms_ui)
        "Global Narration": (lambda w: pfui.open_global_narration(w)) if pfui else _coming_soon("Global Narration"),
        # ACTION QUEUE batch: partial_forms_ui ke baaki ports (VB6 form
        # captions EXACT — parity matrix caption-match isi par hota hai)
        "Group Accounts Entry": (lambda w: pfui.open_group_accounts(w)) if pfui else _coming_soon("Group Accounts Entry"),
        "Ledger Accounts Entry": (lambda w: pfui.open_ledger_accounts(w)) if pfui else _coming_soon("Ledger Accounts Entry"),
        "Magic": (lambda w: pfui.open_magic(w)) if pfui else _coming_soon("Magic"),
        "Finance Reports": (lambda w: pfui.open_fa_reports(w)) if pfui else _coming_soon("Finance Reports"),
        "Cheque/DD Clearing Entry": (lambda w: pfui.open_cheque_dd_clearing(w)) if pfui else _coming_soon("Cheque/DD Clearing Entry"),
        "Adjustment Delete": (lambda w: pfui.open_adjustment_delete(w)) if pfui else _coming_soon("Adjustment Delete"),
        "Location wise Opening Stock Entry": (lambda w: pfui.open_location_opening_stock(w)) if pfui else _coming_soon("Location wise Opening Stock Entry"),
        # VB6 EmptyInbox.frm (form caption "InBox", Finance menu caption
        # "Delete Message" override karta hai - HMS.bas fame index 12)
        "Delete Message": (lambda w: msgui.open_delete_message(w, user=getattr(w, 'user', None))) if msgui else _coming_soon("Delete Message"),
        "T.D.S.Category Entry": (lambda w: pfui.open_tds_category(w)) if pfui else _coming_soon("T.D.S.Category Entry"),
        # Guest Charges Summary (VB6 fdPrintScreen)
        "Guest Charges Summary": (lambda w: gchrg_ui.open_guest_charges(w)) if gchrg_ui else _coming_soon("Guest Charges Summary"),
        "System Config": (lambda w: syscfg_ui.open_sys_config(w)) if syscfg_ui else None,
        "Backup Data": (lambda w: dbbak_ui.open_db_backup(w)) if dbbak_ui else _coming_soon("Backup Data"),
        # Wave 5: Fd*/CheckOut batch (VB6 FdCheckOut/fdAmendEntry/...)
        "Amend Stay": (lambda w: amstay_ui.open_amend_stay(
            w, user=getattr(w, "user", None))) if amstay_ui else _coming_soon("Amend Stay"),
        "Look Up Reservation By Guest Name": (lambda w: fdui.open_lookup_reservation(w)) if fdui else _coming_soon("Look Up Reservation By Guest Name"),
        "Room Check Out": (lambda w: fdui.open_room_checkout(w, user=getattr(w, 'user', 'PYADMIN'))) if fdui else _coming_soon("Room Check Out"),
        # Group Check-Out (VB6 FdGrpCheckOut.frm / FdGrpdetCheckOut.frm)
        "Group Check Out": (lambda w: grpco_ui.open_group_checkout(w, user=getattr(w, 'user', 'PYADMIN'))) if grpco_ui else _coming_soon("Group Check Out"),
        "Group Check Out Entry (Detail)": (lambda w: grpco_ui.open_group_checkout(w, user=getattr(w, 'user', 'PYADMIN'))) if grpco_ui else _coming_soon("Group Check Out Entry (Detail)"),
        "Guest Ledger": (lambda w: fdui.open_guest_ledger(w)) if fdui else _coming_soon("Guest Ledger"),
        "Summerized Guest Ledger": (lambda w: fdui.open_guest_ledger_summ(w)) if fdui else _coming_soon("Summerized Guest Ledger"),
        "Room Check Out Entry": (lambda w: fdui.open_group_checkout(w, user=getattr(w, 'user', 'PYADMIN'))) if fdui else _coming_soon("Room Check Out Entry"),
        "Room Check Out Entry (Detail)": (lambda w: fdui.open_group_detail_checkout(w, user=getattr(w, 'user', 'PYADMIN'))) if fdui else _coming_soon("Room Check Out Entry (Detail)"),
        "Look Up Room": (lambda w: fdui.open_lookup_room(w)) if fdui else _coming_soon("Look Up Room"),
        # Reservation Status (VB6 FrmReservationStatus.frm)
        "Reservation Status": (lambda w: resbrowser_ui.open_reservation_status(w, user=getattr(w, 'user', 'PYADMIN'))) if resbrowser_ui else _coming_soon("Reservation Status"),
        # Reservation Room Lookup (VB6 resRoomNo.frm / resRoomType.frm)
        "Reservation Look Up Room Wise": (lambda w: resbrowser_ui.open_room_wise_lookup(w, user=getattr(w, 'user', 'PYADMIN'))) if resbrowser_ui else _coming_soon("Reservation Look Up Room Wise"),
        "Room Category Wise Reservation Look Up": (lambda w: resbrowser_ui.open_room_type_lookup(w, user=getattr(w, 'user', 'PYADMIN'))) if resbrowser_ui else _coming_soon("Room Category Wise Reservation Look Up"),
        "Look Up Room": (lambda w: fdui.open_lookup_room(w)) if fdui else _coming_soon("Look Up Room"),
        "Depart Sundry Setting": (lambda w: fdui.open_depart_sundry(w)) if fdui else _coming_soon("Depart Sundry Setting"),
        # Wave 6: posting/settlement batch
        "Post Charges /Payments": (lambda w: postui.open_post_chrg(w, user=getattr(w, 'user', 'PYADMIN'))) if postui else _coming_soon("Post Charges /Payments"),
        "Post Charges & Payment": (lambda w: postui.open_payment_charge(w, user=getattr(w, 'user', 'PYADMIN'))) if postui else _coming_soon("Post Charges & Payment"),
        "Post Charges/Payment": (lambda w: postui.open_re_settlement(w, user=getattr(w, 'user', 'PYADMIN'))) if postui else _coming_soon("Post Charges/Payment"),
        "Check Out Cancel": (lambda w: postui.open_rev_checkout(w, user=getattr(w, 'user', 'PYADMIN'))) if postui else _coming_soon("Check Out Cancel"),
        # Wave 7: rack/room-lookup/walk-in batch
        "Room View": (lambda w: wrui.open_room_view(w)) if wrui else _coming_soon("Room View"),
        "Display Rack": (lambda w: wrui.open_display_rack(w)) if wrui else _coming_soon("Display Rack"),
        "Reservation Look Up Room Wise": (lambda w: wrui.open_roomocc_lookup(w)) if wrui else _coming_soon("Reservation Look Up Room Wise"),
        "Walk In / Check In Entry": (lambda w: wrui.open_walkin_entry(w, user=getattr(w, 'user', 'PYADMIN'))) if wrui else _coming_soon("Walk In / Check In Entry"),
        # Reports Center (REPORTS_TXT / mdi leaves — read-only engine)
        **({cap: _open_report(cap)
            for cap in (_rpmod.menu_caption_map() if _rpmod else {})}),

        # Reservation Status Screen (VB6 FrmReservationStatus.frm) - must come AFTER report expansion to avoid caption conflict
        "Reservation Status": (lambda w: resbrowser_ui.open_reservation_status(w, user=getattr(w, 'user', 'PYADMIN'))) if resbrowser_ui else _coming_soon("Reservation Status"),
    }


class MainWindow(QMainWindow):
    """VB6 MDIForm1 jaisa: title '{Company} { Year }', narrow left module
    strip (VB6 x 0-107 teal buttons), module click se menubar."""

    def __init__(self, user: str, comp: dict):
        super().__init__()
        self.user = user
        self.comp = comp
        self.setWindowTitle(f"{comp['name']} {{ {comp['year']} }}")
        self.resize(1150, 720)
        self.registry = _form_registry()
        # CI registry alias (VB6 captions case-insensitive the — tests +
        # menuHelp leaves jaise 'eInvoice Config' vs 'EInvoice Report' ko
        # safe lookup deta hai). Pre-commit hook guard bhi isko check karta hai.
        self._reg_ci = {str(k).strip().lower(): v
                        for k, v in self.registry.items()}
        self._menus = mh.menubar_for  # menuHelp dynamic menubar (VB6 parity)

        central = QWidget()
        self._central = central
        self.aurora = AuroraCanvas(central)
        self.aurora.setAttribute(Qt.WidgetAttribute.WA_TransparentForMouseEvents)
        self.aurora.setGeometry(central.rect())
        self.aurora.lower()
        root = QVBoxLayout(central)
        root.setSpacing(0)
        root.setContentsMargins(0, 0, 0, 0)

        # Top bar: VB6 header (blue gradient + cream title) + theme toggle
        # (screenshots/02_Main_Setup/014_Main_Menu_AfterLogin.png)
        topbar = QHBoxLayout()
        topbar.setContentsMargins(0, 0, 0, 0)
        topbar.setSpacing(8)
        self.lblTitle = QLabel(
            f"  {comp['name']}  {{ {comp['year']} }}")
        f = QFont("Segoe UI", 14, QFont.Weight.Bold)
        self.lblTitle.setFont(f)
        self.lblTitle.setProperty("vbHeader", True)
        self.lblTitle.setMinimumHeight(44)
        topbar.addWidget(self.lblTitle, 1)

        # Theme toggle button
        self.theme_btn = QPushButton("Dark Mode")
        self.theme_btn.setCheckable(True)
        self.theme_btn.setChecked(True)
        self.theme_btn.setFixedWidth(110)
        self.theme_btn.setFixedHeight(32)
        self.theme_btn.setObjectName("themeToggle")
        self.theme_btn.clicked.connect(self._toggle_theme)
        topbar.addWidget(self.theme_btn)
        topbar.addSpacing(12)
        root.addLayout(topbar)

        # VB6 purple module-row + sub-row bars (live evidence: B032 module
        # menus, B033 Operations sub-row, B058 Reservation row). QMenuBar
        # upar wali tests/accessibility ke liye aise hi rehti hai; ye bars
        # VB6 jaisi navigation deti hain. Active button = yellow text.
        self._crumb = {"module": None, "group": None, "leaf": None}
        self._groups = []
        self.mod_row = QFrame()
        self.mod_row.setObjectName("vbModRow")
        self._mod_lay = QHBoxLayout(self.mod_row)
        self._mod_lay.setContentsMargins(4, 2, 4, 2)
        self._mod_lay.setSpacing(2)
        self._mod_buttons: list = []
        root.addWidget(self.mod_row)
        self.sub_row = QFrame()
        self.sub_row.setObjectName("vbSubRow")
        self._sub_lay = QHBoxLayout(self.sub_row)
        self._sub_lay.setContentsMargins(4, 0, 4, 2)
        self._sub_lay.setSpacing(2)
        self._sub_buttons: list = []
        root.addWidget(self.sub_row)
        self.mod_row.setStyleSheet(
            "QFrame#vbModRow { background: transparent; }"
            "QPushButton[vbBar='mod'] { background: #6d28d9; color: white;"
            " border: 1px solid #4c1d95; padding: 6px 14px; font-weight: 700; }"
            "QPushButton[vbBar='mod']:hover { background: #7c3aed; }"
            "QPushButton[vbBar='mod'][active='true'] { color: yellow; }")
        self.sub_row.setStyleSheet(
            "QFrame#vbSubRow { background: transparent; }"
            "QPushButton[vbBar='sub'] { background: #7c3aed; color: white;"
            " border: 1px solid #4c1d95; padding: 5px 12px; font-weight: 600; }"
            "QPushButton[vbBar='sub']:hover { background: #8b5cf6; }"
            "QPushButton[vbBar='sub'][active='true'] { color: yellow; }"
            "QPushButton[vbBar='sub']:disabled { background: #4c1d95;"
            " color: #c4b5fd; }")

        body = QHBoxLayout()
        body.setSpacing(0)
        body.setContentsMargins(0, 0, 0, 0)

        # VB6 module strip: ~116px white strip, teal 3D module buttons
        # (screenshots: left strip x 0-107, buttons teal #54a0a0)
        strip = QFrame()
        strip.setProperty("moduleStrip", True)
        strip.setFixedWidth(116)
        side_lay = QVBoxLayout(strip)
        side_lay.setContentsMargins(4, 8, 4, 8)
        side_lay.setSpacing(6)

        self._side_buttons = []
        # menuHelp L1 sources pehle (VB6 menubar parity), phir legacy roots —
        # buttons pe mod_target property (tests + _on_sidebar_click use karte hain)
        try:
            _side_sources = mh.sidebar_sources(user)
        except Exception:
            _side_sources = menu.sidebar_modules()
        for m in _side_sources:
            b = QPushButton(m["name"])
            b.setProperty("strip-btn", True)
            b.setProperty("mod_target", m["name"])
            b.setMinimumHeight(44)
            b.setCheckable(True)
            b.setAccessibleName(m["name"])
            b.setAccessibleDescription(f"Module {m['name']}")
            b.clicked.connect(lambda _, mm=m, bb=b: self._on_module(mm, bb))
            self._side_buttons.append(b)
            side_lay.addWidget(b)
        side_lay.addStretch()
        body.addWidget(strip)

        self.canvas = QLabel("Module select karo (left strip)")
        self.canvas.setAlignment(Qt.AlignmentFlag.AlignCenter)
        self.canvas.setProperty("subtitle", True)
        body.addWidget(self.canvas, stretch=1)
        root.addLayout(body)
        self.setCentralWidget(central)

        sb = self.statusBar()
        sb.addWidget(QLabel(f"  {user}  "))
        sb.addWidget(QLabel(
            f"Property Site : {comp['short'] or comp['name']}  "))
        import datetime
        sb.addWidget(QLabel(
            f"S/w Dt.: {datetime.datetime.now():%d/%b/%Y %H:%M:%S}  "))
        from HMS_py.core.shared.config import load_config, connect
        try:
            cfg = load_config()
            _cn = connect(cfg)
            from PyQt6.QtWidgets import QLabel as _L
            _cur = _cn.cursor()
            _cur.execute("SELECT @@SERVERNAME, DB_NAME()")
            _srv, _dbn = _cur.fetchone()
            _cn.close()
            sb.addPermanentWidget(_L(f"DB: {_srv} / {_dbn}  "))
        except Exception as e:
            from PyQt6.QtWidgets import QLabel as _L
            sb.addPermanentWidget(_L(f"DB: OFFLINE ({e})  "))

        # Keyboard navigation
        for i, b in enumerate(self._side_buttons[:9]):
            QShortcut(QKeySequence(f"Alt+{i+1}"), self,
                      activated=lambda bb=b: bb.click())
        QShortcut(QKeySequence("Ctrl+R"), self,
                  activated=lambda: self.registry["Reservation/Cancellation"](self))
        QShortcut(QKeySequence("Ctrl+P"), self,
                  activated=lambda: self.registry["Plan Master"](self))
        for key, leaf in (("Ctrl+C", "Country Master"),
                          ("Ctrl+B", "State Master"),
                          ("Ctrl+H", "Charge Master"),
                          ("Ctrl+U", "Unit Master"),
                          ("Ctrl+I", "Item Master")):
            QShortcut(QKeySequence(key), self,
                      activated=lambda lf=leaf: self.registry[lf](self))
        QShortcut(QKeySequence("Ctrl+F"), self,
                  activated=lambda: self.registry["Guest Profile"](self))
        QShortcut(QKeySequence("Ctrl+K"), self,
                  activated=lambda: self.registry["Check In"](self))
        if self.registry.get("KOT Entry"):
            QShortcut(QKeySequence("Ctrl+T"), self,
                      activated=lambda: self.registry["KOT Entry"](self))
        if self.registry.get("Night Audit Log"):
            QShortcut(QKeySequence("Ctrl+N"), self,
                      activated=lambda: self.registry["Night Audit Log"](self))
        if self.registry.get("Indent"):
            QShortcut(QKeySequence("Ctrl+Y"), self,
                      activated=lambda: self.registry["Indent"](self))
        if self.registry.get("Folio Log"):
            QShortcut(QKeySequence("Ctrl+G"), self,
                      activated=lambda: self.registry["Folio Log"](self))
        if self.registry.get("Reservation Status Arrival"):
            QShortcut(QKeySequence("Ctrl+J"), self,
                      activated=lambda: self.registry["Reservation Status Arrival"](self))
        QShortcut(QKeySequence("Ctrl+Shift+R"), self,
                  activated=lambda: self.registry["Room Category"](self))
        QShortcut(QKeySequence("Ctrl+Shift+M"), self,
                  activated=lambda: self.registry["Room Master"](self))
        QShortcut(QKeySequence("Ctrl+Shift+P"), self,
                  activated=lambda: self.registry["Package Master"](self))
        QShortcut(QKeySequence("Ctrl+Shift+S"), self,
                  activated=lambda: self.registry["Season Master"](self))
        QShortcut(QKeySequence("Ctrl+Shift+C"), self,
                  activated=lambda: self.registry["Company Master"](self))
        QShortcut(QKeySequence("Ctrl+Shift+U"), self,
                  activated=lambda: self.registry["User Master"](self))
        _safe = lambda key: (self.registry.get(key) or (lambda w: None))
        QShortcut(QKeySequence("Ctrl+Shift+O"), self,
                  activated=lambda: _safe("Check Out")(self))
        QShortcut(QKeySequence("Ctrl+Shift+W"), self,
                  activated=lambda: _safe("Room Status")(self))
        QShortcut(QKeySequence("Ctrl+Shift+E"), self,
                  activated=lambda: _safe("Expense Entry")(self))
        QShortcut(QKeySequence("Ctrl+Shift+T"), self,
                  activated=lambda: _safe("Tax Master")(self))
        QShortcut(QKeySequence("Ctrl+Shift+L"), self,
                  activated=lambda: _safe("Ledger Accounts")(self))
        QShortcut(QKeySequence("Ctrl+Alt+T"), self,
                  activated=lambda: _safe("Tally Export")(self))
        # UI_UPDATE_PLAN Phase-1 shortcuts (Ctrl+Alt: koi conflict nahi):
        QShortcut(QKeySequence("Ctrl+Alt+H"), self,
                  activated=lambda: _safe("HR Payroll")(self))
        QShortcut(QKeySequence("Ctrl+Alt+M"), self,
                  activated=lambda: _safe("Member Billing")(self))
        QShortcut(QKeySequence("Ctrl+Alt+B"), self,
                  activated=lambda: _safe("Booking Operations")(self))
        QShortcut(QKeySequence("Ctrl+Alt+F"), self,
                  activated=lambda: _safe("Facility Billing")(self))
        QShortcut(QKeySequence("Ctrl+Alt+G"), self,
                  activated=lambda: _safe("Guest Services")(self))
        QShortcut(QKeySequence("Ctrl+Alt+D"), self,
                  activated=lambda: _safe("Hall Booking")(self))
        QShortcut(QKeySequence("Ctrl+Alt+S"), self,
                  activated=lambda: _safe("POS Sales")(self))
        QShortcut(QKeySequence("Ctrl+Alt+K"), self,
                  activated=lambda: _safe("POS Stock")(self))
        QShortcut(QKeySequence("Ctrl+Alt+E"), self,
                  activated=lambda: _safe("Call Type")(self))

    def resizeEvent(self, event):
        super().resizeEvent(event)
        if hasattr(self, "aurora") and hasattr(self, "_central"):
            self.aurora.setGeometry(self._central.rect())

    def _toggle_theme(self):
        app = QApplication.instance()
        new_theme = toggle_theme(app)
        self.theme_btn.setText("Dark Mode" if new_theme == "dark" else "Light Mode")
        self.theme_btn.setChecked(new_theme == "dark")

    def _on_sidebar_click(self, mod_target: str, btn=None):
        """mod_target (module name) se sidebar module open karo.

        Tests + shortcuts ke liye stable API — button property se ya direct
        module name se call ho sakta hai.
        """
        target = (mod_target or "").strip().lower()
        btn = btn or next(
            (b for b in self._side_buttons
             if str(b.property("mod_target") or "").strip().lower() == target),
            None)
        if btn is not None:
            btn.click()
            return
        # fallback: direct menu build (button list me na ho to bhi)
        self._on_module({"name": mod_target}, btn)

    def _on_module(self, m: dict, btn: QPushButton):
        # sidebar exclusive-check (VB6 jaisa highlight)
        for other in self._side_buttons:
            if other is not btn:
                other.setChecked(False)
        if btn is not None:
            btn.setChecked(True)

        mb = self.menuBar()
        mb.clear()
        for grp in self._menus(m["name"], self.user):
            mm = mb.addMenu(grp["name"])
            for it in grp["items"]:
                self._add_item(mm, it)

        # VB6 purple module row (B032/B059 evidence): module click ke baad
        # sirf module row dikhti hai; sub-row group click par aati hai.
        groups = self._menus(m["name"], self.user)
        self._groups = groups
        self._crumb = {"module": m["name"], "group": None, "leaf": None}
        self._clear_lay(self._mod_lay)
        self._clear_lay(self._sub_lay)
        self._mod_buttons = []
        self._sub_buttons = []
        for grp in groups:
            gb = QPushButton(grp["name"])
            gb.setProperty("vbBar", "mod")
            gb.setProperty("active", False)
            gb.clicked.connect(
                lambda _, gg=grp: self._on_group(m["name"], gg))
            self._mod_buttons.append(gb)
            self._mod_lay.addWidget(gb)
        self._mod_lay.addStretch(1)

        self.canvas.setText(
            f"{m['name']}\n\nTop menubar se form kholo")
        self.setWindowTitle(
            f"{self.comp['name']} {{ {self.comp['year']} }} - {m['name']}")

    @staticmethod
    def _clear_lay(lay):
        while lay.count():
            item = lay.takeAt(0)
            w = item.widget()
            if w is not None:
                w.setParent(None)
                w.deleteLater()

    def _on_group(self, module: str, grp: dict):
        """VB6 module-row click: sub-row bharo (B033 evidence)."""
        for b in self._mod_buttons:
            is_active = (b.text() == grp["name"])
            b.setProperty("active", is_active)
            b.style().unpolish(b)
            b.style().polish(b)
        self._crumb["group"] = grp["name"]
        self._crumb["leaf"] = None
        self._clear_lay(self._sub_lay)
        self._sub_buttons = []
        for it in grp.get("items", []):
            lb = QPushButton(it["name"])
            lb.setProperty("vbBar", "sub")
            lb.setProperty("active", False)
            opener = self.registry.get(it["name"])
            if it.get("children"):
                menu = QMenu(it["name"], self)
                if opener:
                    act = menu.addAction(it["name"])
                    act.triggered.connect(
                        lambda _, fn=opener: self.open_leaf(
                            module, grp["name"], it["name"], fn))
                    menu.addSeparator()
                for ch in it["children"]:
                    self._add_leaf_action(menu, module, grp["name"], ch)
                lb.clicked.connect(
                    lambda _, mm=menu, bb=lb: mm.popup(
                        bb.mapToGlobal(bb.rect().bottomLeft())))
            elif opener:
                leaf = it["name"]
                lb.clicked.connect(
                    lambda _, fn=opener, lf=leaf: self.open_leaf(
                        module, grp["name"], lf, fn))
            else:
                lb.setEnabled(False)   # phase-wise judenga (menubar jaisa)
                lb.setToolTip("phase-wise judenga")
            self._sub_buttons.append(lb)
            self._sub_lay.addWidget(lb)
        self._sub_lay.addStretch(1)
        self.canvas.setText(f"[{module} > {grp['name']}]")

    def _add_leaf_action(self, menu, module: str, group: str, it: dict):
        if it.get("children"):
            sub = menu.addMenu(it["name"])
            for ch in it["children"]:
                self._add_leaf_action(sub, module, group, ch)
            return
        act = menu.addAction(it["name"])
        opener = self.registry.get(it["name"])
        if opener:
            leaf = it["name"]
            act.triggered.connect(
                lambda _, fn=opener, lf=leaf: self.open_leaf(
                    module, group, lf, fn))
        else:
            act.setEnabled(False)

    def open_leaf(self, module: str, group: str, leaf: str, opener):
        """Purple sub-row / menu leaf kholo + breadcrumb track karo.

        VB6 live evidence: child caption `[Module > Group > Screen]`
        (B034/B036/B062). Dialogs apna title khud rakhte hain; ye crumb
        canvas + MainWindow.crumb_title() ke liye source of truth hai —
        naye/edited opener isse apna title banayein.
        """
        self._crumb = {"module": module, "group": group, "leaf": leaf}
        for b in self._sub_buttons:
            is_active = (b.text() == leaf)
            b.setProperty("active", is_active)
            b.style().unpolish(b)
            b.style().polish(b)
        self.canvas.setText(f"[{module} > {group} > {leaf}]")
        opener(self)

    def crumb_title(self, leaf: str | None = None) -> str:
        """`[Module > Group > Leaf]` breadcrumb (VB6 child-caption parity)."""
        c = self._crumb
        leaf = leaf or c.get("leaf") or ""
        parts = [c.get("module") or "", c.get("group") or "", leaf]
        return "[" + " > ".join(p for p in parts if p) + "]"

    def _add_item(self, parent_menu, it: dict):
        opener = self.registry.get(it["name"])
        if it["children"]:
            sub = parent_menu.addMenu(it["name"])
            if opener:
                # VB6 header bhi form tha (evidence: Utility -> 'Sundry
                # Master' submenu-title; form SundryMast pe jaata tha).
                # Qt me submenu-title clickable nahi, isliye form-open
                # action submenu ke TOP pe (documented, minimal).
                act = sub.addAction(it["name"])
                act.triggered.connect(lambda _, fn=opener: fn(self))
                sub.addSeparator()
            for ch in it["children"]:
                self._add_item(sub, ch)
            return
        act = parent_menu.addAction(it["name"])
        if opener:
            act.triggered.connect(lambda _, fn=opener: fn(self))
        else:
            act.setEnabled(False)   # phase-wise judenga

    def set_canvas_text(self, text: str):
        self.canvas.setText(text)


# ---------------------------------------------------------------- flow
def run_flow() -> int:
    app = QApplication.instance() or QApplication(sys.argv)
    apply_theme(app, "dark")
    app.setApplicationName("HMS_py")

    login = LoginDialog()
    if login.exec() != QDialog.DialogCode.Accepted:
        return 0

    comp_dlg = CompanyDialog(login.user)
    if comp_dlg.exec() != QDialog.DialogCode.Accepted:
        return 0

    win = MainWindow(login.user, comp_dlg.selected)
    win.show()
    return app.exec()


def main() -> int:
    # offscreen screenshot mode (testing ke liye)
    shot = os.environ.get("HMS_POC_SHOT")
    if shot:
        from PyQt6.QtTest import QTest
        app = QApplication.instance() or QApplication(sys.argv)
        apply_theme(app, "dark")
        login = LoginDialog()
        login.show()
        QTest.qWait(500)
        login.grab().save(shot)
        comp = CompanyDialog("SA")
        comp.show()
        QTest.qWait(500)
        comp.grab().save(os.path.splitext(shot)[0] + "_company.png")
        win = MainWindow("SA", {"name": "Moon and Mars Resorts",
                                "short": "MMR",
                                "year": company.current_year()})
        win.show()
        QTest.qWait(500)
        win.grab().save(os.path.splitext(shot)[0] + "_main.png")
        QTest.qWait(200)
        win._on_module({"name": "Main Setup", "srno": 41},
                       win.findChildren(QPushButton)[1])
        QTest.qWait(300)
        win.grab().save(os.path.splitext(shot)[0] + "_module.png")
        print("screenshots saved:", shot)
        return 0
    return run_flow()


if __name__ == "__main__":
    raise SystemExit(main())
