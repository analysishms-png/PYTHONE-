import os
import sys
from types import SimpleNamespace

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from PyQt6.QtWidgets import QApplication, QPushButton


_app = QApplication.instance() or QApplication(sys.argv)
pytestmark = pytest.mark.unit


def test_vouchcat_list_scopes_current_site_and_home(monkeypatch):
    from HMS_py.core import general_setup

    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        return [("FA", "FAD", "KK", "KK"), ("FA", "FAC", "KK", "HO")]

    monkeypatch.setattr(general_setup.db, "query", fake_query)

    rows = general_setup.vouchcat_list(logsite_code="KK", cn=object())

    assert rows == [
        {"category": "FA", "ncat": "FAD", "site_code": "KK", "logsite_code": "KK"},
        {"category": "FA", "ncat": "FAC", "site_code": "KK", "logsite_code": "HO"},
    ]
    assert "LogSite_Code = ? OR LogSite_Code = 'HO'" in calls[0][0]
    assert "ORDER BY Category, NCat" in calls[0][0]
    assert calls[0][1] == ("KK",)


def test_vouchcat_get_and_exists_use_composite_key(monkeypatch):
    from HMS_py.core import general_setup

    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        return [("FA", "FAD", "KK", "KK")]

    monkeypatch.setattr(general_setup.db, "query", fake_query)

    assert general_setup.vouchcat_get("FA", "FAD", logsite_code="KK") == {
        "category": "FA", "ncat": "FAD", "site_code": "KK", "logsite_code": "KK"
    }
    assert general_setup.vouchcat_exists("FA", "FAD", logsite_code="KK")
    assert all("Category = ?" in sql and "NCat = ?" in sql for sql, _ in calls)
    assert all(params == ("KK", "FA", "FAD") for _, params in calls)


def test_voucher_type_list_scopes_current_site_and_home(monkeypatch):
    from HMS_py.core import general_setup

    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        return [SimpleNamespace(
            V_Type="FAD", Category="FA", NCat="FAD", Description="Finance",
            Number_Method="Automatic", Start_No=1, Short_Name="FAD",
            Site_Code="KK", LogSite_Code="KK", U_NAME="SA", U_EntDt=None,
            U_AE="A",
        )]

    monkeypatch.setattr(general_setup.db, "query", fake_query)

    rows = general_setup.voucher_type_list(logsite_code="KK", cn=object())

    assert "LogSite_Code = ? OR LogSite_Code = 'HO'" in calls[0][0]
    assert calls[0][1] == ("KK",)
    assert rows[0]["vtype"] == "FAD"
    assert rows[0]["ncat"] == "FAD"
    assert rows[0]["logsite_code"] == "KK"


def test_voucher_child_readers_use_scoped_table_queries(monkeypatch):
    from HMS_py.core import general_setup

    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        if "Voucher_Prefix" in sql:
            return [("FAD", "2026-04-01", "2026-03-31", "A", 1,
                     "KK", None, "KK", "SA", "A")]
        return [("FAD", "GRP1", "Y", "N", "KK", None, "KK", "SA", "A")]

    monkeypatch.setattr(general_setup.db, "query", fake_query)

    prefix = general_setup.voucher_prefix_list("FAD", logsite_code="KK")
    include = general_setup.voucher_include_list("FAD", logsite_code="KK")
    exclude = general_setup.voucher_exclude_list("FAD", logsite_code="KK")

    assert prefix[0]["prefix"] == "A"
    assert include[0]["group_code"] == "GRP1"
    assert exclude[0]["dr"] == "Y"
    assert len(calls) == 3
    assert all("LogSite_Code = ? OR LogSite_Code = 'HO'" in sql for sql, _ in calls)
    assert all(params == ("KK", "FAD") for _, params in calls)


def test_voucher_type_and_category_write_paths_are_disabled(monkeypatch):
    from HMS_py.core import general_setup

    monkeypatch.setattr(
        general_setup.db,
        "execute",
        lambda *args, **kwargs: pytest.fail("write attempted"),
    )

    with pytest.raises(PermissionError):
        general_setup.vouchcat_insert({"category": "FA", "ncat": "FAD"})
    with pytest.raises(PermissionError):
        general_setup.vouchcat_update("FA", "FAD", {"ncat": "NEW"})
    with pytest.raises(PermissionError):
        general_setup.vouchcat_delete("FA", "FAD")


def test_voucher_environment_dialog_is_read_only(monkeypatch):
    from HMS_py.core import general_setup
    from HMS_py.ui import voucher_environment_ui

    monkeypatch.setattr(general_setup, "voucher_type_list", lambda: [{
        "vtype": "FAD", "category": "FA", "ncat": "FAD", "desc": "Finance",
        "method": "Automatic", "startno": 1, "short": "FAD",
    }])
    monkeypatch.setattr(general_setup, "vouchcat_list", lambda: [{
        "category": "FA", "ncat": "FAD", "site_code": "KK", "logsite_code": "KK",
    }])
    monkeypatch.setattr(general_setup, "voucher_prefix_list", lambda vtype: [])
    monkeypatch.setattr(general_setup, "voucher_include_list", lambda vtype: [])
    monkeypatch.setattr(general_setup, "voucher_exclude_list", lambda vtype: [])

    dialog = voucher_environment_ui.VoucherEnvironmentDialog()
    try:
        captions = {button.text() for button in dialog.findChildren(QPushButton)}
        assert "Save" not in captions
        assert "Delete" not in captions
        assert "New" not in captions
        assert dialog.types_table.rowCount() == 1
        assert dialog.categories_table.rowCount() == 1
        assert dialog.prefix_table.columnCount() == 5
        assert dialog.include_table.columnCount() == 4
        assert dialog.exclude_table.columnCount() == 4
    finally:
        dialog.close()


def test_shell_routes_voucher_environment_aliases(monkeypatch):
    from HMS_py.ui import general_setup_ui, shell

    opened = []
    monkeypatch.setattr(
        general_setup_ui,
        "open_vouchertype",
        lambda parent: opened.append(("types", parent)) or "types",
    )
    monkeypatch.setattr(
        general_setup_ui,
        "open_vouchcat",
        lambda parent: opened.append(("categories", parent)) or "categories",
    )

    registry = shell._form_registry()
    parent = object()
    assert registry["Voucher Environment"](parent) == "types"
    assert registry["Voucher Type"](parent) == "types"
    assert registry["Voucher Category"](parent) == "categories"
    assert opened == [("types", parent), ("types", parent), ("categories", parent)]


def test_voucher_category_browser_is_read_only(monkeypatch):
    from HMS_py.core import general_setup
    from HMS_py.ui import voucher_environment_ui

    monkeypatch.setattr(general_setup, "vouchcat_list", lambda: [{
        "category": "FA", "ncat": "FAD", "site_code": "KK", "logsite_code": "KK",
    }])

    dialog = voucher_environment_ui.VoucherCategoryBrowser()
    try:
        assert dialog.table.rowCount() == 1
        captions = {button.text() for button in dialog.findChildren(QPushButton)}
        assert "Save" not in captions
        assert "Delete" not in captions
    finally:
        dialog.close()
