"""MISSING-batch port: Block Master + Reward Points + FA Find + Login Site.

VB6 evidence (FODER/frmBlockMast.frm, RewardPointParam1.frm, FAFind.frm,
FrmChangeSite.frm):
  - BlockMast fill: (LogSite_Code='<site>' or 'HO') ORDER BY Name
  - Block insert: Code,Name,ShortName,Status + audit (U_Name/U_EntDt/U_AE)
  - RWParameter fill: Order by SNo; Code auto 'RW'+nnnn; delete by Code
  - FAFind: SubGroup LIKE search grid ('Help.?')
  - FrmChangeSite: site list pick ('Login Site')
Python:
  - core/blockmast.py + core/rwparameter.py (faithful fill/save/delete)
  - ui/block_master_ui.py (2 BaseMasterForm + 2 pick dialogs)
  - shell registry: 'Block Master', 'Reward Points Parameter I',
    'FA Find', 'Login Site', 'VenueFeature' wired
"""
from __future__ import annotations

import os
import sys
from pathlib import Path

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

pytestmark = [pytest.mark.unit] if hasattr(pytest.mark, "unit") else []

_QAPP = None


def _stub_msgboxes():
    from PyQt6.QtWidgets import QDialog, QMessageBox
    QDialog.exec = lambda self, *a, **k: QDialog.DialogCode.Rejected
    QMessageBox.information = staticmethod(
        lambda *a, **k: QMessageBox.StandardButton.Ok)
    QMessageBox.warning = staticmethod(
        lambda *a, **k: QMessageBox.StandardButton.Ok)
    QMessageBox.critical = staticmethod(
        lambda *a, **k: QMessageBox.StandardButton.Ok)
    QMessageBox.question = staticmethod(
        lambda *a, **k: QMessageBox.StandardButton.Yes)


@pytest.fixture(autouse=True)
def _modal_guard():
    import PyQt6.QtWidgets as W
    _saved = (W.QDialog.exec, W.QMessageBox.information,
              W.QMessageBox.warning, W.QMessageBox.critical,
              W.QMessageBox.question)
    _stub_msgboxes()
    yield
    (W.QDialog.exec, W.QMessageBox.information,
     W.QMessageBox.warning, W.QMessageBox.critical,
     W.QMessageBox.question) = _saved


def _qapp():
    global _QAPP
    from PyQt6.QtWidgets import QApplication
    _QAPP = QApplication.instance() or QApplication([])
    return _QAPP


# ── core layer ──────────────────────────────────────────────────
def test_blockmast_validate():
    from HMS_py.core import blockmast
    with pytest.raises(ValueError):
        blockmast._validate({"code": "", "name": "X"})
    with pytest.raises(ValueError):
        blockmast._validate({"code": "B01", "name": ""})
    with pytest.raises(ValueError):
        blockmast._validate({"code": "TOOLONGCODE", "name": "X"})
    # short >2 chars rejected
    with pytest.raises(ValueError):
        blockmast._validate({"code": "B01", "name": "X", "short": "ABC"})


def test_rwparameter_validate():
    from HMS_py.core import rwparameter
    with pytest.raises(ValueError):
        rwparameter._validate({"code": "", "name": "X"})
    with pytest.raises(ValueError):
        rwparameter._validate({"code": "RW1", "name": ""})
    # non-numeric float field rejected
    with pytest.raises(ValueError):
        rwparameter._validate({"code": "RW1", "name": "X",
                               "rpoint": "abc"})


# ── registry wiring ─────────────────────────────────────────────
def test_registry_wired():
    from HMS_py.ui import shell
    reg = shell._form_registry()
    reg_ci = {k.lower(): fn for k, fn in reg.items()}
    for cap in ("Block Master", "Reward Points Parameter I",
                "FA Find", "Login Site", "VenueFeature"):
        fn = reg_ci.get(cap.lower())
        assert fn is not None, f"{cap} not in registry"
        assert "coming_soon" not in repr(fn), f"{cap} still coming_soon"


# ── UI forms open offscreen ─────────────────────────────────────
def test_block_master_form():
    _qapp()
    from HMS_py.ui.block_master_ui import open_block_master
    f = open_block_master()
    assert f.windowTitle().startswith("Block Master")
    cols = [f.tbl.horizontalHeaderItem(i).text()
            for i in range(f.tbl.columnCount())]
    assert cols == ["Code", "Name", "Short", "Status"]
    f.close()


def test_reward_points_form():
    _qapp()
    from HMS_py.ui.block_master_ui import open_reward_points
    f = open_reward_points()
    assert f.windowTitle().startswith("Reward Points")
    cols = [f.tbl.horizontalHeaderItem(i).text()
            for i in range(f.tbl.columnCount())]
    assert cols[0] == "Code" and cols[1] == "Name"
    f.close()


def test_fa_find_dialog():
    _qapp()
    from HMS_py.ui.block_master_ui import FAFindDialog
    d = FAFindDialog()
    assert d.windowTitle() == "FA Find - HMS_py"
    assert d.tbl.columnCount() == 2
    d.close()


def test_change_site_dialog():
    _qapp()
    from HMS_py.ui.block_master_ui import ChangeSiteDialog
    d = ChangeSiteDialog()
    assert d.windowTitle() == "Login Site - HMS_py"
    d.close()


def test_venue_feature_form():
    _qapp()
    from HMS_py.ui.block_master_ui import open_venue_feature
    f = open_venue_feature()
    assert f.windowTitle().startswith("VenueFeature")
    cols = [f.tbl.horizontalHeaderItem(i).text()
            for i in range(f.tbl.columnCount())]
    assert cols == ["Code", "Name", "Status"]
    f.close()


def test_featuremast_validate():
    from HMS_py.core import featuremast
    with pytest.raises(ValueError):
        featuremast._validate({"code": "", "name": "X"})
    with pytest.raises(ValueError):
        featuremast._validate({"code": "F01", "name": ""})
    with pytest.raises(ValueError):
        featuremast._validate({"code": "F01", "name": "X",
                               "status": "12345678901"})
