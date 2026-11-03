"""Com Port Properties UI (VB6: Main Setup -> EPABX -> Com Port Properties).

VB6 MSComm Settings quadruple (port, baud, parity, data, stop) ka classic
config form. Core logic core/comport_config.py (pyserial probe + Analysis.ini
persistence). VB6 form table-less tha — yahan bhi koi DB table nahi.
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__)))))

from PyQt6.QtWidgets import (QApplication, QComboBox, QDialog, QFormLayout,
                             QHBoxLayout, QLabel, QLineEdit, QMessageBox,
                             QPushButton, QVBoxLayout)

from HMS_py.core import comport_config as cpc
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


def open_com_port_properties(parent=None):
    """Modal config dialog — registry opener (VB6 caption ke saath)."""
    dlg = ComPortPropertiesDialog(parent)
    dlg.exec()
    return dlg


class ComPortPropertiesDialog(QDialog):
    """Port + Settings (baud,parity,data,stop) + Probe + Save/Reset form."""

    def __init__(self, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopComPortProperties")
        self.setWindowTitle("Com Port Properties")
        self.resize(420, 260)

        cfg = cpc.get_config()

        # QDialog me central widget nahi hota — layout seedha dialog par
        lay = QVBoxLayout(self)

        title = QLabel("Com Port Properties (EPABX)")
        title.setStyleSheet("font-size: 14px; font-weight: bold;")
        lay.addWidget(title)

        form = QFormLayout()
        self.txtPort = QComboBox()
        self.txtPort.setEditable(True)
        self._reload_ports()
        self.txtPort.setCurrentText(cfg["port"])

        self.txtBaud = QComboBox()
        self.txtBaud.setEditable(True)
        self.txtBaud.addItems([str(b) for b in cpc.BAUD_RATES])

        self.cmbParity = QComboBox()
        self.cmbParity.addItems(["n", "o", "e", "m", "s"])

        self.cmbData = QComboBox()
        self.cmbData.addItems(["8", "7", "6", "5"])

        self.cmbStop = QComboBox()
        self.cmbStop.addItems(["1", "1.5", "2"])

        form.addRow("Port:", self.txtPort)
        form.addRow("Baud Rate:", self.txtBaud)
        form.addRow("Parity:", self.cmbParity)
        form.addRow("Data Bits:", self.cmbData)
        form.addRow("Stop Bits:", self.cmbStop)
        lay.addLayout(form)

        self.lblStatus = QLabel("")
        self.lblStatus.setWordWrap(True)
        lay.addWidget(self.lblStatus)

        btns = QHBoxLayout()
        self.btnProbe = QPushButton("Probe")
        mark_desktop_action(self.btnProbe)
        self.btnProbe.setToolTip(
            "Port ko current settings se kholkar turant band karo (test)")
        self.btnRefresh = QPushButton("Refresh Ports")
        mark_desktop_action(self.btnRefresh)
        self.btnSave = QPushButton("Save")
        mark_desktop_action(self.btnSave)
        self.btnReset = QPushButton("Reset to Default")
        mark_desktop_action(self.btnReset)
        self.btnExit = QPushButton("Exit")
        mark_desktop_action(self.btnExit)
        self.btnProbe.clicked.connect(self._probe)
        self.btnRefresh.clicked.connect(self._reload_ports)
        self.btnSave.clicked.connect(self._save)
        self.btnReset.clicked.connect(self._reset)
        self.btnExit.clicked.connect(self.reject)
        btns.addWidget(self.btnProbe)
        btns.addWidget(self.btnRefresh)
        btns.addStretch(1)
        btns.addWidget(self.btnSave)
        btns.addWidget(self.btnReset)
        btns.addWidget(self.btnExit)
        lay.addLayout(btns)

        self._apply_saved_settings(cfg["settings"])

    # ---- helpers ----

    def _apply_saved_settings(self, settings: str) -> None:
        try:
            baud_s, parity, data_s, stop_s = [
                p.strip() for p in settings.split(",")]
            self.txtBaud.setCurrentText(baud_s)
            self.cmbParity.setCurrentText(parity.lower())
            self.cmbData.setCurrentText(data_s)
            self.cmbStop.setCurrentText(stop_s)
        except (ValueError, AttributeError):
            # corrupt saved settings — VB6 defaults dikha do
            self.txtBaud.setCurrentText("9600")
            self.cmbParity.setCurrentText("n")
            self.cmbData.setCurrentText("8")
            self.cmbStop.setCurrentText("1")

    def _settings_string(self) -> str:
        return (f"{self.txtBaud.currentText().strip()},"
                f"{self.cmbParity.currentText().strip().lower()},"
                f"{self.cmbData.currentText().strip()},"
                f"{self.cmbStop.currentText().strip()}")

    def _reload_ports(self) -> None:
        current = self.txtPort.currentText().strip()
        self.txtPort.clear()
        for p in cpc.list_com_ports():
            label = (f"{p['device']} — {p['description']}"
                     if p.get("description") else p["device"])
            self.txtPort.addItem(label, p["device"])
        if current:
            self.txtPort.setCurrentText(current)

    def _current_device(self) -> str:
        # Typed free-text port (jaise COM5 jo list me nahi) priority rakhta hai;
        # dropdown item label "COMx — description" ho to device part lo.
        text = self.txtPort.currentText().strip()
        if " — " in text:
            return text.split(" — ")[0].strip()
        return text or (self.txtPort.currentData() or "").strip()

    # ---- actions ----

    def _probe(self) -> None:
        device = self._current_device()
        result = cpc.probe_port(device, self._settings_string())
        self.lblStatus.setText(result["message"])
        if result["ok"]:
            QMessageBox.information(self, "Probe", result["message"])
        else:
            QMessageBox.warning(self, "Probe", result["message"])

    def _save(self) -> None:
        try:
            saved = cpc.save_config(self._current_device(),
                                    self._settings_string())
            self.lblStatus.setText(
                f"Saved: {saved['port']} ({saved['settings']})")
            QMessageBox.information(
                self, "Save",
                f"Com Port settings saved:\n{saved['port']} — "
                f"{saved['settings']}\n({saved['path']})")
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
        except OSError as e:
            QMessageBox.critical(
                self, "Save", f"Analysis.ini write fail: {e}")

    def _reset(self) -> None:
        try:
            saved = cpc.reset_to_default()
            self.txtPort.setCurrentText(saved["port"])
            self._apply_saved_settings(saved["settings"])
            self.lblStatus.setText("Reset to VB6 default (COM1, 9600,n,8,1)")
        except OSError as e:
            QMessageBox.critical(self, "Reset", f"Analysis.ini write fail: {e}")


if __name__ == "__main__":
    app = QApplication(sys.argv)
    dlg = ComPortPropertiesDialog()
    dlg.show()
    raise SystemExit(app.exec())
