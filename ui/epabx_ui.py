"""EPABX Masters UI (VB6: Main Setup -> EPABX).
Tables: TelCallType, TelCallCode, TelExt"""
from __future__ import annotations
import os, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

from PyQt6.QtWidgets import (QApplication, QMainWindow, QPushButton,
                             QVBoxLayout, QWidget)
from HMS_py.core.epabx_masters import CallTypeAPI, CallCodeAPI, TelExtAPI
from HMS_py.ui.base_master import BaseMasterForm, Field, MasterConfig, make_delete_guard
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


def calltype_config() -> MasterConfig:
    return MasterConfig(
        title="Call Type Master (EPABX) - HMS_py",
        columns=[("Code", "code"), ("CallType", "calltype"),
                  ("Short", "shortname")],
        fields=[
            Field("code", "Type Code", max_len=5, required=True),
            Field("calltype", "Call Type Name", max_len=15, required=True),
            Field("shortname", "Short Name", max_len=5),
            Field("accode", "A/C Code", max_len=8),
            Field("taxstru", "Tax Structure", max_len=6),
        ],
        api=CallTypeAPI,
        pk_key="code",
        delete_guard=make_delete_guard("PYT"),
    )


def callcode_config() -> MasterConfig:
    return MasterConfig(
        title="Call Code Master (EPABX) - HMS_py",
        columns=[("STD", "stdcode"), ("Type", "calltype"),
                  ("Description", "desc"), ("Pulse", "pulse")],
        fields=[
            Field("stdcode", "STD Code", max_len=10, required=True),
            Field("calltype", "Call Type Code", max_len=15),
            Field("desc", "Description", max_len=35),
            Field("pulse", "Pulse In Sec", default="0"),
        ],
        api=CallCodeAPI,
        pk_key="stdcode",
        delete_guard=make_delete_guard("PYT"),
    )


def ext_config() -> MasterConfig:
    return MasterConfig(
        title="Extension Master (EPABX) - HMS_py",
        columns=[("Code", "code"), ("Description", "desc"),
                  ("Extension", "extension"), ("Type", "type"), ("Room", "room")],
        fields=[
            Field("code", "Extension Code", max_len=5, required=True),
            Field("desc", "Description", max_len=35, required=True),
            Field("extension", "Extension No", max_len=10),
            Field("type", "Type", max_len=10),
            Field("room", "Room No", max_len=5),
            Field("shop", "Shop No", max_len=10),
            Field("dept", "Department Code", max_len=5),
            Field("pulserate", "Pulse Rate", default="0"),
        ],
        api=TelExtAPI,
        pk_key="code",
        delete_guard=make_delete_guard("PYT"),
    )


def _open(cfg_fn, parent=None):
    BaseMasterForm(cfg_fn(), parent).exec()

def open_calltype(parent=None):
    form = BaseMasterForm(calltype_config(), parent)
    form.set_permissions(add=False, edit=False, delete=False)
    form.exec()
    return form
def open_callcode(parent=None):  _open(callcode_config, parent)
def open_extension(parent=None): _open(ext_config, parent)


class EPABXLauncher(QMainWindow):
    def __init__(self):
        super().__init__()
        apply_desktop_surface(self, "desktopEPABXLauncher")
        self.setWindowTitle("HMS_py - EPABX Masters")
        self.resize(340, 200)
        c = QWidget(); lay = QVBoxLayout(c)
        for lbl, fn in [("Call Type Master", open_calltype),
                        ("Call Code Master", open_callcode),
                        ("Extension Master", open_extension)]:
            b = QPushButton(lbl); mark_desktop_action(b); b.clicked.connect(fn); lay.addWidget(b)
        self.setCentralWidget(c)


if __name__ == "__main__":
    app = QApplication(sys.argv)
    w = EPABXLauncher(); w.show()
    raise SystemExit(app.exec())
