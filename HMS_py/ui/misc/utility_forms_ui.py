"""VB6 UI-ONLY forms port: utility dialogs (calendar/image/keyboard/etc).

VB6 originals (FODER/*.frm) — sab runtime utility popups, koi DB table nahi:
  FrmCalender            'Calender'              Form_Load: Calendar1 = Date
  FrmImage               'Image'                 ImagePath prop -> Image1.Picture
                                                 (FaTaxVoucher/pPBill bill preview)
  frmmessageKey          'Key Massage'           borderless popup; TextBox.Tag
                                                 retention amt (fdPostChrg flow)
  repTouchDate           'Select Report Date'    date-picker: FRow/PDate/TxtDate
                                                 props (rFomRepView/rPOSRepView)
  RsTouchScreenKeyBoard  'Touch Screen KeyBoard' on-screen kbd; TxtKeyBoard ->
                                                 ParentForm (NC KOT reason, max 150)
  LockForm               (Form1)                 fullscreen topmost 'Please Wait
                                                 Night Audit Is in Progress . . .'
                                                 + SystemParametersInfo(&H61) kbd lock
  frmMessage             'User Information'      runtime message popup (no
                                                 launcher) -> Qt QMessageBox equiv

Python ports: pure-UI QDialog subclasses with value-returning openers.
Run: python -m HMS_py.ui.utility_forms_ui
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt, QDate
from PyQt6.QtGui import QPixmap
from PyQt6.QtWidgets import (QCalendarWidget, QDialog, QFileDialog,
                             QFormLayout, QGridLayout, QHBoxLayout, QLabel,
                             QLineEdit, QMessageBox, QPushButton, QSpinBox,
                             QVBoxLayout, QWidget)

from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


# ── VB6 FrmCalender 'Calender' ──────────────────────────────────
class CalendarDialog(QDialog):
    """VB6: Form_Load pe Calendar1.Value = Date; pick -> caller."""

    def __init__(self, parent=None, initial=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopMasterForm")
        self.setWindowTitle("Calender - HMS_py")
        self.setFixedSize(420, 380)
        root = QVBoxLayout(self)
        self.cal = QCalendarWidget()
        self.cal.setSelectedDate(
            initial or QDate.currentDate())
        root.addWidget(self.cal)
        btns = QHBoxLayout()
        btns.addStretch()
        ok = QPushButton("  OK  ")
        ok.setProperty("accent", True)
        ok.clicked.connect(self.accept)
        cancel = QPushButton("  Cancel  ")
        cancel.clicked.connect(self.reject)
        btns.addWidget(ok)
        btns.addWidget(cancel)
        root.addLayout(btns)

    def selected_date(self):
        return self.cal.selectedDate().toPyDate()


def open_calender(parent=None):
    dlg = CalendarDialog(parent)
    dlg.exec()
    return dlg.selected_date() if dlg.result() == QDialog.DialogCode.Accepted \
        else None


# ── VB6 FrmImage 'Image' (bill image preview) ───────────────────
class ImagePreviewDialog(QDialog):
    """VB6: ImagePath prop -> Image1.Picture = LoadPicture(path)."""

    def __init__(self, parent=None, image_path: str = ""):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopMasterForm")
        self.setWindowTitle("Image - HMS_py")
        self.resize(640, 520)
        root = QVBoxLayout(self)
        self.lbl = QLabel("(no image)")
        self.lbl.setAlignment(Qt.AlignmentFlag.AlignCenter)
        self.lbl.setStyleSheet("background: #111; color: #eee;")
        root.addWidget(self.lbl, stretch=1)
        btns = QHBoxLayout()
        btns.addStretch()
        close = QPushButton("  Close  ")
        close.clicked.connect(self.reject)
        btns.addWidget(close)
        root.addLayout(btns)
        if image_path:
            self.load_path(image_path)

    def load_path(self, path: str):
        pm = QPixmap(path)
        if pm.isNull():
            self.lbl.setText(f"(cannot load: {path})")
            return
        self.lbl.setPixmap(pm.scaled(
            self.lbl.size(), Qt.AspectRatioMode.KeepAspectRatio,
            Qt.TransformationMode.SmoothTransformation))
        self.setWindowTitle(f"Image - {os.path.basename(path)} - HMS_py")


def open_image_preview(parent=None, image_path: str = ""):
    """FrmImage port — path nahi diya to file-picker khulega."""
    if not image_path:
        image_path, _ = QFileDialog.getOpenFileName(
            parent, "Select Image", "", "Images (*.png *.jpg *.jpeg *.bmp)")
        if not image_path:
            return None
    dlg = ImagePreviewDialog(parent, image_path)
    dlg.exec()
    return image_path


# ── VB6 frmmessageKey 'Key Massage' ─────────────────────────────
class KeyMessageDialog(QDialog):
    """Borderless popup with an amount/text box (retention amt flow).

    VB6: fdPostChrg CmdPostChrg flow — TextBox.Tag me retention amt;
    label text caller set karta hai; OK pe value wapas.
    """

    def __init__(self, parent=None, title: str = "Key Massage",
                 message: str = "", initial: str = "",
                 numeric: bool = False):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopMasterForm")
        self.setWindowTitle(title)
        self.setFixedSize(480, 220)
        root = QVBoxLayout(self)
        self.lbl = QLabel(message)
        self.lbl.setWordWrap(True)
        root.addWidget(self.lbl)
        self.txt = QLineEdit(initial)
        self.txt.setMinimumHeight(34)
        root.addWidget(self.txt)
        btns = QHBoxLayout()
        btns.addStretch()
        ok = QPushButton("  OK  ")
        ok.setProperty("accent", True)
        ok.clicked.connect(self.accept)
        cancel = QPushButton("  Cancel  ")
        cancel.clicked.connect(self.reject)
        btns.addWidget(ok)
        btns.addWidget(cancel)
        root.addLayout(btns)
        self._numeric = numeric

    def value(self) -> str:
        return self.txt.text().strip()


def open_key_message(parent=None, message: str = "", initial: str = "",
                     numeric: bool = False):
    dlg = KeyMessageDialog(parent, message=message, initial=initial,
                           numeric=numeric)
    dlg.exec()
    return dlg.value() if dlg.result() == QDialog.DialogCode.Accepted else None


# ── VB6 repTouchDate 'Select Report Date' ───────────────────────
class SelectReportDateDialog(QDialog):
    """Report-grid date picker.

    VB6 props: FRow (grid row), PDate (picked date), TxtDate (initial
    cell text); cmdDay/Month/Year Up/Down buttons = date navigation.
    Qt: QCalendarWidget + quick day spinners.
    """

    def __init__(self, parent=None, initial=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopMasterForm")
        self.setWindowTitle("Select Report Date - HMS_py")
        self.setFixedSize(440, 430)
        root = QVBoxLayout(self)
        self.cal = QCalendarWidget()
        self.cal.setSelectedDate(initial or QDate.currentDate())
        root.addWidget(self.cal, stretch=1)
        form = QFormLayout()
        self.spin = QSpinBox()
        self.spin.setRange(-3650, 3650)
        self.spin.setSuffix(" days offset")
        form.addRow("Quick offset:", self.spin)
        root.addLayout(form)
        btns = QHBoxLayout()
        btns.addStretch()
        ok = QPushButton("  Select  ")
        ok.setProperty("accent", True)
        ok.clicked.connect(self.accept)
        cancel = QPushButton("  Cancel  ")
        cancel.clicked.connect(self.reject)
        btns.addWidget(ok)
        btns.addWidget(cancel)
        root.addLayout(btns)

    def picked_date(self):
        base = self.cal.selectedDate().toPyDate()
        if self.spin.value():
            from datetime import timedelta
            base = base + timedelta(days=self.spin.value())
        return base


def open_select_report_date(parent=None, initial=None):
    dlg = SelectReportDateDialog(parent, initial)
    dlg.exec()
    return dlg.picked_date() if dlg.result() == QDialog.DialogCode.Accepted \
        else None


# ── VB6 RsTouchScreenKeyBoard 'Touch Screen KeyBoard' ───────────
class TouchKeyboardDialog(QDialog):
    """On-screen keyboard for touch terminals.

    VB6: TxtKeyBoard (MaxLength prop se 150 for NC KOT reason);
    OK pe ParentForm.TxtKeyBoard = global_64.
    """

    ROWS = (
        "1234567890",
        "QWERTYUIOP",
        "ASDFGHJKL",
        "ZXCVBNM",
    )

    def __init__(self, parent=None, caption: str = "Touch Screen KeyBoard",
                 max_len: int = 150, initial: str = ""):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopMasterForm")
        self.setWindowTitle(f"{caption} - HMS_py")
        self.resize(620, 460)
        root = QVBoxLayout(self)
        self.info = QLabel(caption)
        self.info.setWordWrap(True)
        root.addWidget(self.info)
        self.txt = QLineEdit(initial)
        self.txt.setMaxLength(max_len)
        self.txt.setMinimumHeight(40)
        root.addWidget(self.txt)

        grid_host = QWidget()
        grid = QGridLayout(grid_host)
        grid.setSpacing(6)
        for r, row in enumerate(self.ROWS):
            for c, ch in enumerate(row):
                b = QPushButton(ch)
                b.setMinimumSize(46, 44)
                b.clicked.connect(lambda _=False, ch=ch: self._key(ch))
                grid.addWidget(b, r, c)
        # last row: space/back/clear
        b_space = QPushButton("Space")
        b_space.setMinimumHeight(44)
        b_space.clicked.connect(lambda: self._key(" "))
        b_back = QPushButton("<- Back")
        b_back.setMinimumHeight(44)
        b_back.clicked.connect(self._back)
        b_clear = QPushButton("Clear")
        b_clear.setMinimumHeight(44)
        b_clear.clicked.connect(lambda: self.txt.clear())
        grid.addWidget(b_space, 4, 0, 1, 4)
        grid.addWidget(b_back, 4, 4, 1, 3)
        grid.addWidget(b_clear, 4, 7, 1, 3)
        root.addWidget(grid_host, stretch=1)

        btns = QHBoxLayout()
        btns.addStretch()
        ok = QPushButton("  OK  ")
        ok.setProperty("accent", True)
        ok.clicked.connect(self.accept)
        cancel = QPushButton("  Cancel  ")
        cancel.clicked.connect(self.reject)
        btns.addWidget(ok)
        btns.addWidget(cancel)
        root.addLayout(btns)

    def _key(self, ch: str):
        if self.txt.text().length() if False else len(self.txt.text()) \
                < self.txt.maxLength():
            self.txt.setText(self.txt.text() + ch)

    def _back(self):
        t = self.txt.text()
        if t:
            self.txt.setText(t[:-1])

    def text(self) -> str:
        return self.txt.text().strip()


def open_touch_keyboard(parent=None, caption: str = "Touch Screen KeyBoard",
                        max_len: int = 150, initial: str = ""):
    """VB6 flow: OK pe text wapas, empty + mandatory ho to reason prompt."""
    while True:
        dlg = TouchKeyboardDialog(parent, caption, max_len, initial)
        dlg.exec()
        if dlg.result() != QDialog.DialogCode.Accepted:
            return None
        val = dlg.text()
        if val:
            return val
        QMessageBox.information(parent or dlg, "Reason",
                                "Please Enter a Valid Reason.")


# ── VB6 LockForm (Night Audit lock overlay) ─────────────────────
class NightAuditLockOverlay(QWidget):
    """Fullscreen topmost 'Please Wait Night Audit Is in Progress . . .'

    VB6: SetWindowPos(topmost, full screen) + SystemParametersInfo(&H61)
    keyboard-task lock during NA; footer '# DATAMAN COMPUTER SYSTEMS
    (P) LTD.  #' verbatim. QueryUnload pe unlock.
    """

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Night Audit")
        self.setWindowFlags(Qt.WindowType.Window
                            | Qt.WindowType.FramelessWindowHint
                            | Qt.WindowType.WindowStaysOnTopHint)
        self.setStyleSheet("background: #0b2545;")
        root = QVBoxLayout(self)
        root.addStretch()
        brand = QLabel("# DATAMAN COMPUTER SYSTEMS (P) LTD.  #")
        brand.setAlignment(Qt.AlignmentFlag.AlignCenter)
        brand.setStyleSheet("color:#9fc3e8; font-size:10pt;")
        root.addWidget(brand)
        msg = QLabel("Please Wait Night Audit Is in Progress . . .")
        msg.setAlignment(Qt.AlignmentFlag.AlignCenter)
        msg.setWordWrap(True)
        msg.setStyleSheet("color:#fffbe6; font-size:16pt; font-weight:bold;")
        root.addWidget(msg)
        self.status = QLabel("")
        self.status.setAlignment(Qt.AlignmentFlag.AlignCenter)
        self.status.setStyleSheet("color:#cfe3f7; font-size:11pt;")
        root.addWidget(self.status)
        root.addStretch()

    def set_status(self, text: str):
        self.status.setText(text)


def show_nightaudit_lock(parent=None) -> NightAuditLockOverlay:
    """NA runner: show() -> steps -> close() (VB6 LockSystem/UnLockSystem)."""
    ov = NightAuditLockOverlay(parent)
    if parent is not None:
        ov.resize(parent.size())
    ov.show()
    return ov


# ── Standalone launcher ─────────────────────────────────────────
def main() -> int:
    from PyQt6.QtWidgets import QApplication, QMainWindow
    app = QApplication(sys.argv)
    w = QMainWindow()
    w.setWindowTitle("HMS_py - VB6 Utility Forms")
    c = QWidget()
    lay = QVBoxLayout(c)
    for lbl, fn in (
        ("Calender", open_calender),
        ("Image Preview", lambda p=None: open_image_preview(p)),
        ("Key Massage", lambda p=None: open_key_message(
            p, message="Retention amount:", initial="0")),
        ("Select Report Date", open_select_report_date),
        ("Touch Screen KeyBoard", lambda p=None: open_touch_keyboard(
            p, caption="Please Specify, Reason of NC KOT ?", max_len=150)),
        ("Night Audit Lock Overlay", lambda p=None:
            (show_nightaudit_lock(p) or None)),
    ):
        b = QPushButton(lbl)
        b.clicked.connect(lambda _=False, fn=fn: fn(w))
        lay.addWidget(b)
    w.setCentralWidget(c)
    w.resize(360, 260)
    w.show()
    return app.exec()


if __name__ == "__main__":
    sys.exit(main())
