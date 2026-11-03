import os
import sys

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from PyQt6.QtWidgets import (QAbstractItemView, QApplication, QLabel,
                             QPushButton)


_app = QApplication.instance() or QApplication(sys.argv)
pytestmark = pytest.mark.unit


def test_desktop_style_targets_marked_widget_surfaces():
    from HMS_py.ui.desktop_style import desktop_qss

    assert 'QWidget[desktopSurface="true"]' in desktop_qss()


def test_main_setup_workbench_has_classic_desktop_shell():
    from HMS_py.ui.shell import MainSetupWorkbench

    workbench = MainSetupWorkbench(user="SA")
    try:
        assert workbench.objectName() == "mainSetupWorkbench"
        assert workbench.findChild(QLabel, "mainSetupUserLabel") is not None
        assert workbench.findChild(QLabel, "mainSetupUserLabel").text() == "User: SA"
        buttons = workbench.findChildren(QPushButton)
        assert buttons
        assert all(button.property("desktopAction") is True for button in buttons[:-1])
    finally:
        workbench.close()


def test_base_master_form_exposes_compact_desktop_toolbar():
    from HMS_py.ui.base_master import BaseMasterForm, Field, MasterConfig

    class Api:
        @staticmethod
        def list_all():
            return []

    config = MasterConfig(
        title="Desktop Test",
        columns=[("Code", "code")],
        fields=[Field("code", "Code", required=True)],
        api=Api,
    )
    form = BaseMasterForm(config)
    try:
        assert form.objectName() == "desktopMasterForm"
        assert form.property("desktopSurface") is True
        for button in (form.btnNew, form.btnEdit, form.btnDelete,
                       form.btnSave, form.btnCancel, form.btnExit):
            assert button.property("desktopAction") is True
        assert form.lblState.objectName() == "desktopStateLabel"
    finally:
        form.close()


def test_read_only_main_setup_viewers_use_desktop_surface(monkeypatch):
    from HMS_py.core import general_setup, revenue_budget, seasonmaster
    from HMS_py.ui import revenue_budget_ui, seasonmaster_ui, voucher_environment_ui

    monkeypatch.setattr(seasonmaster, "list_years", lambda: [])
    monkeypatch.setattr(seasonmaster, "list_rows", lambda year: [])
    monkeypatch.setattr(seasonmaster, "get_weekend", lambda: None)
    monkeypatch.setattr(general_setup, "voucher_type_list", lambda: [])
    monkeypatch.setattr(general_setup, "vouchcat_list", lambda: [])
    monkeypatch.setattr(general_setup, "voucher_prefix_list", lambda vtype: [])
    monkeypatch.setattr(general_setup, "voucher_include_list", lambda vtype: [])
    monkeypatch.setattr(general_setup, "voucher_exclude_list", lambda vtype: [])
    monkeypatch.setattr(revenue_budget, "revenue_group_list", lambda: [])
    monkeypatch.setattr(revenue_budget, "budget_months", lambda: [])
    monkeypatch.setattr(revenue_budget, "budget_list", lambda month: [])
    monkeypatch.setattr(revenue_budget, "budget_revenue_options", lambda: [])

    viewers = [
        seasonmaster_ui.SeasonMasterDialog(),
        voucher_environment_ui.VoucherEnvironmentDialog(),
        revenue_budget_ui.RevenueGroupWindow(),
        revenue_budget_ui.RevenueWiseBudgetWindow(),
    ]
    try:
        for viewer in viewers:
            assert viewer.property("desktopSurface") is True
            assert viewer.objectName().startswith("desktop")
            assert all(
                button.property("desktopAction") is True
                for button in viewer.findChildren(QPushButton)
            )
    finally:
        for viewer in viewers:
            viewer.close()


def test_main_setup_launchers_use_desktop_surface():
    from HMS_py.ui.epabx_ui import EPABXLauncher
    from HMS_py.ui.general_setup_ui import GeneralSetupLauncher
    from HMS_py.ui.hr_members_ui import HRMembersLauncher
    from HMS_py.ui.p2_masters import P2Launcher

    launchers = [
        GeneralSetupLauncher(),
        HRMembersLauncher(),
        EPABXLauncher(),
        P2Launcher(),
    ]
    try:
        for launcher in launchers:
            assert launcher.property("desktopSurface") is True
            assert launcher.objectName().startswith("desktop")
            assert all(
                button.property("desktopAction") is True
                for button in launcher.findChildren(QPushButton)
            )
    finally:
        for launcher in launchers:
            launcher.close()


def test_table_master_delete_guard_protects_production_rows():
    from HMS_py.ui.pos_table_ui import table_delete_guard

    assert table_delete_guard("PYT01") is None
    assert table_delete_guard("T01") is not None


def test_guest_lookup_is_read_only_desktop_surface(monkeypatch):
    from HMS_py.ui import guest_lookup_ui

    monkeypatch.setattr(guest_lookup_ui.db, "query", lambda *args, **kwargs: [])
    window = guest_lookup_ui.GuestLookupWindow()
    try:
        assert window.property("desktopSurface") is True
        assert window.table.editTriggers() == QAbstractItemView.EditTrigger.NoEditTriggers
    finally:
        window.close()


def test_tds_category_config_matches_core_field_contract():
    from HMS_py.ui.scheme_tds_ui import tdscat_config

    names = {field.name for field in tdscat_config().fields}
    assert "tdsper" in names
    assert "tdspercentage" not in names


def test_tds_category_delete_guard_allows_only_test_rows():
    from HMS_py.ui.scheme_tds_ui import make_delete_guard

    guard = make_delete_guard("PYT")
    assert guard("PYT01") is None
    assert guard("LIVE01") is not None


def test_workbench_exposes_read_only_setup_leaves():
    from HMS_py.ui.shell import MainSetupWorkbench

    workbench = MainSetupWorkbench()
    try:
        captions = {button.text() for button in workbench.findChildren(QPushButton)}
    finally:
        workbench.close()
    assert {"Guest History", "Happy Hours", "Guest LookUp"} <= captions


def test_workbench_exposes_admin_permission_actions():
    from HMS_py.ui.shell import MainSetupWorkbench

    workbench = MainSetupWorkbench()
    try:
        captions = {button.text() for button in workbench.findChildren(QPushButton)}
    finally:
        workbench.close()
    assert "User Master" in captions
    assert "Permissions" in captions
    assert "User Permissions (Advanced)" in captions


def test_member_environment_viewer_is_read_only(monkeypatch):
    from HMS_py.core import member_billing
    from HMS_py.ui import member_environment_ui

    monkeypatch.setattr(
        member_billing, "get_memenviro",
        lambda: {"bill_header": "HMS", "bill_footer": "Thanks"})
    dialog = member_environment_ui.MemberEnvironmentDialog()
    try:
        captions = {button.text() for button in dialog.findChildren(QPushButton)}
        assert "Save" not in captions
        assert dialog.property("desktopSurface") is True
    finally:
        dialog.close()


def test_member_environment_route_uses_memenviro(monkeypatch):
    from HMS_py.ui import member_environment_ui, shell

    calls = []
    monkeypatch.setattr(
        member_environment_ui, "open_member_environment",
        lambda parent=None: calls.append(parent) or "member-env",
    )
    assert shell._form_registry()["Environment Settings"]("parent") == "member-env"
    assert calls == ["parent"]


def test_fa_environment_route_uses_fa_enviro(monkeypatch):
    from HMS_py.ui import fa_enviro_ui, shell

    calls = []
    monkeypatch.setattr(
        fa_enviro_ui, "open_fa_environment",
        lambda parent=None: calls.append(parent) or "fa",
    )
    assert shell._form_registry()["FA Environment"]("parent") == "fa"
    assert calls == ["parent"]


def test_item_group_route_uses_item_grp_master(monkeypatch):
    from HMS_py.ui import p2_masters, shell

    calls = []
    monkeypatch.setattr(
        p2_masters, "open_item_group",
        lambda parent=None: calls.append(parent) or "group",
    )
    assert shell._form_registry()["Item Group"]("parent") == "group"
    assert calls == ["parent"]


def test_item_and_table_aliases_route_to_existing_masters(monkeypatch):
    from HMS_py.ui import p2_masters, pos_table_ui, shell

    item_calls = []
    table_calls = []
    monkeypatch.setattr(
        p2_masters, "open_item",
        lambda parent=None: item_calls.append(parent) or "item",
    )
    monkeypatch.setattr(
        pos_table_ui, "open_pos_table",
        lambda parent=None: table_calls.append(parent) or "table",
    )
    registry = shell._form_registry()
    parent = object()

    assert registry["Menu Item"](parent) == "item"
    assert registry["Item Entry "](parent) == "item"
    assert registry["Table Master"](parent) == "table"
    assert item_calls == [parent, parent]
    assert table_calls == [parent]


def test_year_end_preflight_has_no_write_actions(monkeypatch):
    from HMS_py.core import year_end
    from HMS_py.ui import year_end_ui

    monkeypatch.setattr(
        year_end, "get_fy_dates",
        lambda: {"fy": "2026-27", "start": "2026-04-01",
                 "end": "2027-03-31"})
    monkeypatch.setattr(year_end, "check_datelock", lambda value: False)
    monkeypatch.setattr(
        year_end, "year_end_summary",
        lambda: {"subgroup_count": 1, "acgroup_count": 1, "balance": 0.0})

    dialog = year_end_ui.YearEndPreflightDialog()
    try:
        captions = {button.text() for button in dialog.findChildren(QPushButton)}
        assert "Execute Year-End" not in captions
        assert "Carry Forward Balances (Ctrl+C)" not in captions
        assert dialog.property("desktopSurface") is True
    finally:
        dialog.close()


def test_year_end_route_uses_preflight_only(monkeypatch):
    from HMS_py.ui import shell, year_end_ui

    calls = []
    monkeypatch.setattr(
        year_end_ui, "open_year_end_preflight",
        lambda parent=None: calls.append(parent) or "preflight",
    )
    assert shell._form_registry()["Year End Updation"]("parent") == "preflight"
    assert calls == ["parent"]


def test_permission_routes_use_matrix_editor(monkeypatch):
    from HMS_py.ui import shell, user_permissions_ui

    calls = []
    monkeypatch.setattr(
        user_permissions_ui, "open_user_permissions",
        lambda parent=None, user="SA":
            calls.append((parent, user)) or "permissions",
    )
    registry = shell._form_registry()
    parent = type("Parent", (), {"user": "LIMITED"})()

    assert registry["Permissions"](parent) == "permissions"
    assert registry["User Permissions (Advanced)"](parent) == "permissions"
    assert calls == [(parent, "LIMITED"), (parent, "LIMITED")]


def test_dedicated_main_setup_aliases_are_wired(monkeypatch):
    from HMS_py.ui import banquet_masters_ui, fd_forms_ui, p2_masters
    from HMS_py.ui import shell

    calls = []
    monkeypatch.setattr(
        banquet_masters_ui, "open_func_type",
        lambda parent=None: calls.append(("events", parent)) or "events")
    monkeypatch.setattr(
        p2_masters, "open_depart",
        lambda parent=None: calls.append(("outlet", parent)) or "outlet")
    monkeypatch.setattr(
        fd_forms_ui, "open_depart_sundry",
        lambda parent=None: calls.append(("sundry", parent)) or "sundry")

    registry = shell._form_registry()
    assert registry["Events"]("p") == "events"
    assert registry["Setup Outlet"]("p") == "outlet"
    assert registry["Outlet Bill Sundry Setting"]("p") == "sundry"
    assert calls == [("events", "p"), ("outlet", "p"), ("sundry", "p")]
