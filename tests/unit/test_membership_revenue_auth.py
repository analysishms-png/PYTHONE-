import os
import sys
from types import SimpleNamespace

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from PyQt6.QtWidgets import QApplication


_app = QApplication.instance() or QApplication(sys.argv)
pytestmark = pytest.mark.unit


def test_revenue_rights_are_fail_closed_for_unknown_users(monkeypatch):
    from HMS_py.ui import hr_members_ui

    monkeypatch.setattr(
        "HMS_py.core.menu_help.has_row",
        lambda user, caption: False,
    )

    assert hr_members_ui._revenue_rights("LIMITED") == set()
    assert hr_members_ui._revenue_rights("") == set()


def test_revenue_rights_extracts_only_explicit_actions(monkeypatch):
    from HMS_py.ui import hr_members_ui

    monkeypatch.setattr(
        "HMS_py.core.menu_help.has_row",
        lambda user, caption: True,
    )
    monkeypatch.setattr(
        "HMS_py.core.menu_help.rights",
        lambda user, caption: "EP",
    )

    assert hr_members_ui._revenue_rights("LIMITED") == {"E"}


def test_open_memrev_denies_when_rights_are_unavailable(monkeypatch):
    from HMS_py.ui import hr_members_ui

    warnings = []
    monkeypatch.setattr(hr_members_ui, "_revenue_rights", lambda user: set())
    monkeypatch.setattr(
        hr_members_ui.QMessageBox,
        "warning",
        lambda *args, **kwargs: warnings.append(args),
    )
    monkeypatch.setattr(
        hr_members_ui,
        "BaseMasterForm",
        lambda *args, **kwargs: pytest.fail("unauthorized form opened"),
    )

    assert hr_members_ui.open_memrev(SimpleNamespace(), user="LIMITED") is None
    assert warnings


def test_open_memrev_applies_explicit_rights_to_form(monkeypatch):
    from HMS_py.ui import hr_members_ui

    captured = {}

    class FakeForm:
        def __init__(self, config, parent=None):
            captured["config"] = config
            captured["parent"] = parent

        def set_permissions(self, **kwargs):
            captured["permissions"] = kwargs

        def exec(self):
            captured["exec"] = True

    monkeypatch.setattr(hr_members_ui, "_revenue_rights", lambda user: {"A", "D"})
    monkeypatch.setattr(hr_members_ui, "BaseMasterForm", FakeForm)

    parent = SimpleNamespace()
    result = hr_members_ui.open_memrev(parent, user="LIMITED")

    assert isinstance(result, FakeForm)
    assert captured["parent"] is parent
    assert captured["permissions"] == {"add": True, "edit": False, "delete": True}
    assert captured["exec"] is True


def test_base_master_permission_guards_disable_actions():
    from PyQt6.QtWidgets import QDialog
    from HMS_py.ui.base_master import BaseMasterForm, Field, MasterConfig

    class Api:
        @staticmethod
        def list_all():
            return []

    config = MasterConfig(
        title="Permission Test",
        columns=[("Code", "code")],
        fields=[Field("code", "Code", required=True)],
        api=Api,
    )
    form = BaseMasterForm(config)
    try:
        form.set_permissions(add=False, edit=False, delete=False)
        assert not form.btnNew.isEnabled()
        assert not form.btnEdit.isEnabled()
        assert not form.btnDelete.isEnabled()
        form._on_new()
        assert form.state == "Idle"
    finally:
        form.close()


def test_shell_revenue_route_forwards_workbench_user(monkeypatch):
    from HMS_py.ui import hr_members_ui, shell

    calls = []
    monkeypatch.setattr(
        hr_members_ui,
        "open_memrev",
        lambda parent, user="SA": calls.append((parent, user)) or "opened",
    )

    registry = shell._form_registry()
    parent = SimpleNamespace(user="LIMITED")
    assert registry["Revenue Master"](parent) == "opened"
    assert calls == [(parent, "LIMITED")]
