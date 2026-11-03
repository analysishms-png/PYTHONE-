"""Com Port Properties (VB6: Main Setup -> EPABX) — core config + UI smoke.

VB6 MSComm Settings quadruple (baud,parity,data,stop) validation,
Analysis.ini [HMS] persistence round-trip, aur pyserial simulate/probe
paths (core/comport_config.py, door_lock.py pattern).
"""
import os
import sys

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

pytestmark = pytest.mark.unit

from HMS_py.core import comport_config as cpc


# ============================================================
# Settings-string validation (VB6 MSComm1.Settings semantics)
# ============================================================

class TestValidateSettings:
    def test_canonical_default(self):
        assert cpc.validate_settings("9600,n,8,1") == "9600,n,8,1"

    def test_whitespace_and_case_normalized(self):
        assert cpc.validate_settings(" 115200 , E , 8 , 1 ") == "115200,e,8,1"

    def test_all_valid_parities(self):
        for p in ("n", "o", "e", "m", "s"):
            assert cpc.validate_settings(f"9600,{p},8,1") == f"9600,{p},8,1"

    def test_stop_bit_floats(self):
        assert cpc.validate_settings("9600,n,8,1.5") == "9600,n,8,1.5"
        assert cpc.validate_settings("9600,n,8,2") == "9600,n,8,2"

    @pytest.mark.parametrize("bad", [
        "", "   ", "9600,n,8", "9600,n,8,1,1", "abc,n,8,1",
        "7777,n,8,1", "9600,x,8,1", "9600,n,9,1", "9600,n,8,3",
        "9600,n,abc,1", "9600,n,8,abc",
    ])
    def test_invalid_rejected(self, bad):
        with pytest.raises(ValueError):
            cpc.validate_settings(bad)

    def test_error_messages_actionable(self):
        with pytest.raises(ValueError, match="[Bb]aud"):
            cpc.validate_settings("7777,n,8,1")
        with pytest.raises(ValueError, match="Parity"):
            cpc.validate_settings("9600,x,8,1")


# ============================================================
# Persistence — Analysis.ini [HMS] round-trip (tmp file, real INI untouched)
# ============================================================

class TestPersistence:
    def test_round_trip(self, tmp_path):
        ini = tmp_path / "Analysis.ini"
        ini.write_text("[HMS]\n1 = TESTSRV\n", encoding="latin-1")
        saved = cpc.save_config("COM3", "115200,e,8,1", str(ini))
        assert saved["port"] == "COM3"
        assert saved["settings"] == "115200,e,8,1"
        cfg = cpc.get_config(str(ini))
        assert cfg["port"] == "COM3"
        assert cfg["settings"] == "115200,e,8,1"
        # db.load_config ke apne keys preserve rahe (same section share hota hai)
        text = ini.read_text(encoding="latin-1")
        assert "TESTSRV" in text
        assert "ComPort = COM3" in text
        assert "ComPortSettings = 115200,e,8,1" in text

    def test_save_rejects_invalid_settings(self, tmp_path):
        ini = tmp_path / "Analysis.ini"
        with pytest.raises(ValueError):
            cpc.save_config("COM1", "9600,x,8,1", str(ini))
        assert not ini.exists()  # write se pehle reject

    def test_save_rejects_blank_port(self, tmp_path):
        ini = tmp_path / "Analysis.ini"
        with pytest.raises(ValueError):
            cpc.save_config("  ", "9600,n,8,1", str(ini))

    def test_missing_ini_gives_vb6_defaults(self, tmp_path):
        cfg = cpc.get_config(str(tmp_path / "nahi_hai.ini"))
        assert cfg["port"] == "COM1"
        assert cfg["settings"] == cpc.DEFAULT_SETTINGS

    def test_reset_to_default(self, tmp_path):
        ini = tmp_path / "Analysis.ini"
        cpc.save_config("COM7", "19200,o,7,2", str(ini))
        saved = cpc.reset_to_default(str(ini))
        assert saved["port"] == "COM1"
        assert saved["settings"] == cpc.DEFAULT_SETTINGS
        assert cpc.get_config(str(ini))["settings"] == cpc.DEFAULT_SETTINGS


# ============================================================
# Port discovery + probe (pyserial simulate/live, door_lock pattern)
# ============================================================

class TestPortDiscovery:
    def test_list_com_ports_shape(self):
        ports = cpc.list_com_ports()
        assert isinstance(ports, list) and ports
        for p in ports:
            assert set(p) == {"device", "description", "hwid"}
            assert p["device"]

    def test_simulated_listing_when_pyserial_absent(self, monkeypatch):
        monkeypatch.setattr(cpc, "HAS_LIST_PORTS", False)
        ports = cpc.list_com_ports()
        assert [p["device"] for p in ports] == ["COM1", "COM2", "COM3", "COM4"]

    def test_probe_rejects_bad_settings(self):
        res = cpc.probe_port("COM1", "9600,x,8,1")
        assert res["ok"] is False
        assert "Parity" in res["message"]

    def test_probe_simulate_mode(self, monkeypatch):
        monkeypatch.setattr(cpc, "HAS_SERIAL", False)
        res = cpc.probe_port("COM1", "9600,n,8,1")
        assert res["ok"] is True
        assert "simulate" in res["message"].lower()


# ============================================================
# UI smoke — dialog construct ho, fields populate ho, actions wired hon
# ============================================================

class TestComPortUI:
    @pytest.fixture(scope="class")
    def app(self):
        from PyQt6.QtWidgets import QApplication
        return QApplication.instance() or QApplication(sys.argv)

    def _dialog(self, app):
        from HMS_py.ui.comport_ui import ComPortPropertiesDialog
        dlg = ComPortPropertiesDialog()
        try:
            yield dlg
        finally:
            dlg.close()

    def test_dialog_desktop_surface_and_fields(self, app):
        for dlg in self._dialog(app):
            assert dlg.objectName() == "desktopComPortProperties"
            assert dlg.windowTitle() == "Com Port Properties"
            for attr in ("txtPort", "txtBaud", "cmbParity", "cmbData",
                         "cmbStop", "btnProbe", "btnRefresh", "btnSave",
                         "btnReset", "btnExit", "lblStatus"):
                assert hasattr(dlg, attr), f"field missing: {attr}"
            assert dlg.txtPort.count() >= 1
            assert dlg.cmbParity.count() == 5
            assert dlg.cmbData.count() == 4
            assert dlg.cmbStop.count() == 3
            assert dlg.txtBaud.currentText() == "9600"

    def test_save_via_dialog_uses_tmp_ini(self, app, tmp_path, monkeypatch):
        from PyQt6.QtWidgets import QMessageBox
        ini = tmp_path / "Analysis.ini"
        monkeypatch.setattr(cpc, "_ini_path", lambda: str(ini))
        shown = {}
        monkeypatch.setattr(QMessageBox, "information",
                            lambda *a, **k: shown.setdefault("i", True))
        for dlg in self._dialog(app):
            dlg.txtPort.setCurrentText("COM2")
            dlg.txtBaud.setCurrentText("19200")
            dlg.cmbParity.setCurrentText("e")
            dlg._save()
            assert shown.get("i")
            assert "Saved" in dlg.lblStatus.text()
            cfg = cpc.get_config(str(ini))
            assert cfg["port"] == "COM2"
            assert cfg["settings"] == "19200,e,8,1"

    def test_save_invalid_shows_warning_not_crash(self, app, tmp_path, monkeypatch):
        from PyQt6.QtWidgets import QMessageBox
        ini = tmp_path / "Analysis.ini"
        monkeypatch.setattr(cpc, "_ini_path", lambda: str(ini))
        shown = {}
        monkeypatch.setattr(QMessageBox, "warning",
                            lambda *a, **k: shown.setdefault("w", True))
        for dlg in self._dialog(app):
            dlg.txtBaud.setCurrentText("7777")  # non-standard baud
            dlg._save()
            assert shown.get("w")
            assert not ini.exists()
