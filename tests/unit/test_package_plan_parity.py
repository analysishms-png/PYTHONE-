import os
import sys

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
from PyQt6.QtWidgets import QApplication, QPushButton

_app = QApplication.instance() or QApplication(sys.argv)
from HMS_py.core import packagemaster as pm


pytestmark = pytest.mark.unit


class FakeConnection:
    def __init__(self):
        self.commits = 0
        self.rollbacks = 0
        self.closes = 0

    def commit(self):
        self.commits += 1

    def rollback(self):
        self.rollbacks += 1

    def close(self):
        self.closes += 1


def _record(**overrides):
    record = {
        "code": "PKG01",
        "name": "Test Package",
        "total": 1000.0,
        "pkg_amount": 1000.0,
        "plan_package": "Package",
        "active": "Y",
        "room_per": 2,
        "room_rate": 500,
        "nights": 1,
        "adults": 2,
        "childs": 0,
        "room_cat": "STD",
        "tariff": "RACK",
    }
    record.update(overrides)
    return record


def test_package_list_scopes_records_to_package_type(monkeypatch):
    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params, cn))
        return [(
            "PKG01", "Test Package", 1000.0, "Package", "Yes", "Y",
            2, 500, 1000.0, "", "", 1, 2, 0, "", "STD", "RACK",
            "", "", "PYADMIN", None, "A",
        )]

    cn = FakeConnection()
    monkeypatch.setattr(pm.db, "query", fake_query)

    rows = pm.list_all(cn=cn)

    assert rows[0]["code"] == "PKG01"
    assert rows[0]["plan_package"] == "Package"
    assert "Plan_Package = ?" in calls[0][0]
    assert calls[0][1] == ("Package",)


def test_package_get_without_type_filter_uses_valid_where_clause(monkeypatch):
    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        return []

    monkeypatch.setattr(pm.db, "query", fake_query)

    assert pm.get("PKG01", plan_package=None) is None
    assert "WHERE Code = ?" in calls[0][0]
    assert "WHERE  AND" not in calls[0][0]


def test_package_insert_forces_package_type_and_persists_real_columns(monkeypatch):
    calls = []
    cn = FakeConnection()

    monkeypatch.setattr(pm.db, "require_absent",
                        lambda *args, **kwargs: calls.append(("guard", args)))
    def fake_execute(sql, params=(), cn=None, commit=True):
        calls.append(("execute", sql, params, commit))
        if commit:
            cn.commit()
        return 1

    monkeypatch.setattr(pm.db, "execute", fake_execute)

    assert pm.insert(_record(plan_package="Plan"), cn=cn) == 1

    sql_call = next(call for call in calls if call[0] == "execute")
    assert "PackageAmount" in sql_call[1]
    assert "Plan_Package" in sql_call[1]
    assert sql_call[2][3] == "Package"
    assert sql_call[3] is True
    assert cn.commits == 1


def test_package_amount_must_match_total():
    with pytest.raises(ValueError, match="Package Amount Mismatched"):
        pm._validate(_record(total=1000, pkg_amount=950))


def test_save_with_children_writes_header_and_child_rows_in_one_transaction(monkeypatch):
    calls = []
    cn = FakeConnection()

    monkeypatch.setattr(pm.db, "require_absent", lambda *args, **kwargs: None)
    monkeypatch.setattr(
        pm.db, "execute",
        lambda sql, params=(), cn=None, commit=True:
            calls.append((sql, params, commit)) or 1,
    )

    result = pm.save_with_children(
        _record(),
        plan_rows=[{"chrgcode": "MIN", "revcode": "RMN"}],
        token_rows=[{"chrgcode": "TOK", "rate": 10, "remarks": "Extra"}],
        mode="insert",
        cn=cn,
    )

    assert result == 1
    assert all(call[2] is False for call in calls)
    assert any("INSERT INTO PlanMast" in call[0] for call in calls)
    assert any("INSERT INTO Plan1" in call[0] for call in calls)
    assert any("INSERT INTO PlanTokenDetails" in call[0] for call in calls)
    assert cn.commits == 1


def test_save_with_children_can_persist_plan_type(monkeypatch):
    calls = []
    cn = FakeConnection()
    monkeypatch.setattr(pm.db, "require_absent", lambda *args, **kwargs: None)
    monkeypatch.setattr(
        pm.db, "execute",
        lambda sql, params=(), cn=None, commit=True:
            calls.append((sql, params, commit)) or 1,
    )

    pm.save_with_children(
        _record(plan_package="Plan"),
        mode="insert",
        kind="Plan",
        cn=cn,
    )

    header = next(call for call in calls if "INSERT INTO PlanMast" in call[0])
    assert header[1][3] == "Plan"


def test_package_delete_removes_children_before_header(monkeypatch):
    calls = []
    cn = FakeConnection()

    monkeypatch.setattr(
        pm.db, "execute",
        lambda sql, params=(), cn=None, commit=True:
            calls.append((sql, params, commit)) or 1,
    )

    assert pm.delete("PKG01", cn=cn) == 1
    assert [call[0].split()[1] for call in calls] == [
        "FROM", "FROM", "FROM",
    ]
    assert "PlanTokenDetails" in calls[0][0]
    assert "Plan1" in calls[1][0]
    assert "PlanMast" in calls[2][0]
    assert all(call[2] is False for call in calls)
    assert cn.commits == 1


def test_package_ui_config_exposes_persisted_columns():
    from HMS_py.ui.p2_masters import packagemaster_config

    names = {field.name for field in packagemaster_config().fields}

    assert "total" in names
    assert "pkg_amount" in names
    assert "room_rate" in names
    assert "validfrom" not in names
    assert "rate" not in names
    assert "desc" not in names


def test_plan_list_scopes_records_to_plan_type(monkeypatch):
    from HMS_py.core import plans

    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        return []

    monkeypatch.setattr(plans.db, "query", fake_query)

    assert plans.list_plans() == []
    assert "Plan_Package = ?" in calls[0][0]
    assert calls[0][1] == ("Plan",)


def test_plan_insert_forces_plan_type(monkeypatch):
    from HMS_py.core import plans

    calls = []
    cn = FakeConnection()
    monkeypatch.setattr(plans.db, "require_absent",
                        lambda *args, **kwargs: None)

    def fake_execute(sql, params=(), cn=None, commit=True):
        calls.append((sql, params, commit))
        if commit:
            cn.commit()
        return 1

    monkeypatch.setattr(plans.db, "execute", fake_execute)

    assert plans.insert("PLN01", "Test Plan", 1000, "CP", cn=cn) == 1
    assert calls[0][1][3] == "Plan"
    assert calls[0][2] is True


def test_plan_delete_removes_children_before_header(monkeypatch):
    from HMS_py.core import plans

    calls = []
    cn = FakeConnection()

    def fake_execute(sql, params=(), cn=None, commit=True):
        calls.append((sql, params, commit))
        if commit:
            cn.commit()
        return 1

    monkeypatch.setattr(plans.db, "execute", fake_execute)

    assert plans.delete("PLN01", cn=cn) == 1
    assert "PlanTokenDetails" in calls[0][0]
    assert "Plan1" in calls[1][0]
    assert "PlanMast" in calls[2][0]
    assert all(call[2] is False for call in calls)
    assert cn.commits == 1


def test_plan_master_form_uses_desktop_surface(monkeypatch):
    from HMS_py.core import plans
    from HMS_py.ui.plan_master import PlanMasterForm

    monkeypatch.setattr(plans, "list_plans", lambda: [])

    form = PlanMasterForm()
    try:
        assert form.objectName() == "desktopPlanMaster"
        assert form.property("desktopSurface") is True
        assert all(
            button.property("desktopAction") is True
            for button in form.findChildren(QPushButton)
        )
    finally:
        form.close()


def test_package_editor_loads_plan_and_token_child_rows(monkeypatch):
    from HMS_py.ui import p2_masters
    from HMS_py.core import packagemaster

    record = _record()
    monkeypatch.setattr(packagemaster, "list_all",
                        lambda *args, **kwargs: [record])
    monkeypatch.setattr(packagemaster, "get",
                        lambda *args, **kwargs: record)
    monkeypatch.setattr(
        packagemaster, "list_plan1",
        lambda code: [{"chrgcode": "MIN", "revcode": "RMN",
                       "flatrate": 100, "adult": 1, "child": 0,
                       "extraadult": 0, "extrachild": 0, "nodays": 1,
                       "planper": 1, "perdayamount": 100,
                       "netamount": 100}],
    )
    monkeypatch.setattr(
        packagemaster, "list_token_details",
        lambda code: [{"sno": 1, "plancode": code, "chrgcode": "TOK",
                       "rate": 10, "remarks": "Extra"}],
    )

    form = p2_masters.PackageMasterForm(
        p2_masters.packagemaster_config())
    try:
        form.tbl.selectRow(0)
        form._on_edit()
        assert form.plan_table.rowCount() == 1
        assert form.token_table.rowCount() == 1
        assert form.property("desktopSurface") is True
        form._on_cancel()
        assert form.plan_table.rowCount() == 0
        assert form.token_table.rowCount() == 0
    finally:
        form.close()


def test_plan_package_editor_uses_plan_scope(monkeypatch):
    from HMS_py.ui import p2_masters
    from HMS_py.core import packagemaster

    record = _record(plan_package="Plan")
    monkeypatch.setattr(
        packagemaster, "list_all",
        lambda cn=None, plan_package=pm.PACKAGE_TYPE:
            [record] if plan_package == "Plan" else [],
    )
    monkeypatch.setattr(
        packagemaster, "get",
        lambda code, cn=None, plan_package=pm.PACKAGE_TYPE:
            record if plan_package == "Plan" else None,
    )
    monkeypatch.setattr(packagemaster, "list_plan1", lambda code: [])
    monkeypatch.setattr(packagemaster, "list_token_details", lambda code: [])

    form = p2_masters.PackageMasterForm(
        p2_masters.planmaster_config(), kind="Plan")
    try:
        assert form.property("desktopSurface") is True
        form.tbl.selectRow(0)
        form._on_edit()
        assert form.edit_pk == "PKG01"
    finally:
        form.close()


def test_shell_plan_route_uses_shared_package_editor(monkeypatch):
    from HMS_py.ui import p2_masters, shell

    calls = []
    monkeypatch.setattr(
        p2_masters, "open_planmaster",
        lambda parent=None: calls.append(parent) or "opened",
    )

    assert shell._form_registry()["Plan Master"]("parent") == "opened"
    assert calls == ["parent"]
