import os
import sys
from types import SimpleNamespace

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from PyQt6.QtWidgets import (QAbstractItemView, QApplication, QCheckBox,
                             QPushButton, QTableWidgetItem)


_app = QApplication.instance() or QApplication(sys.argv)
pytestmark = pytest.mark.unit


def test_list_years_scopes_current_site_and_home(monkeypatch):
    from HMS_py.core import seasonmaster

    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        return [(2026, "KK", "KK"), (2025, "KK", "HO")]

    monkeypatch.setattr(seasonmaster.db, "query", fake_query)

    assert seasonmaster.list_years(logsite_code="KK", cn=object()) == [2026, 2025]
    assert "YEAR(FromDate)" in calls[0][0]
    assert "LogSite_Code = ? OR LogSite_Code = 'HO'" in calls[0][0]
    assert calls[0][1] == ("KK",)


def test_list_rows_scopes_year_and_maps_season_fields(monkeypatch):
    from HMS_py.core import seasonmaster

    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        return [SimpleNamespace(FromDate="2026-04-01", ToDate="2026-06-30",
                                RateCode="a", Site_Code="KK", U_Name="SA",
                                U_EntDt="2026-03-20", U_AE="A",
                                LogSite_Code="KK")]

    monkeypatch.setattr(seasonmaster.db, "query", fake_query)

    rows = seasonmaster.list_rows(2026, logsite_code="KK", cn=object())

    assert "YEAR(FromDate) = ?" in calls[0][0]
    assert calls[0][1] == ("KK", 2026)
    assert rows == [{
        "fromdate": "2026-04-01",
        "todate": "2026-06-30",
        "ratecode": "A",
        "site_code": "KK",
        "logsite_code": "KK",
        "u_name": "SA",
        "u_entdt": "2026-03-20",
        "u_ae": "A",
    }]


def test_get_weekend_uses_current_logsite_only(monkeypatch):
    from HMS_py.core import seasonmaster

    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        return [("**  *  ",)]

    monkeypatch.setattr(seasonmaster.db, "query", fake_query)

    assert seasonmaster.get_weekend(logsite_code="KK", cn=object()) == "**  *  "
    assert "FROM SeasonMast1 WHERE LogSite_Code = ?" in calls[0][0]
    assert "HO" not in calls[0][0]
    assert calls[0][1] == ("KK",)


@pytest.mark.parametrize("value,expected", [
    ("6", 2006),
    ("26", 2026),
    ("026", 2026),
    ("2026", 2026),
])
def test_normalize_year_matches_vb6_prefix_rules(value, expected):
    from HMS_py.core import seasonmaster

    assert seasonmaster.normalize_year(value) == expected


def test_validate_rows_normalizes_dates_and_rate_code():
    from HMS_py.core import seasonmaster

    rows = seasonmaster.validate_rows(2026, [
        {"from_ddmm": "0104", "to_ddmm": "3006", "ratecode": "a"},
    ])

    assert rows == [{
        "fromdate": "2026-04-01",
        "todate": "2026-06-30",
        "ratecode": "A",
    }]


@pytest.mark.parametrize("row,message", [
    ({"from_ddmm": "", "to_ddmm": "3006", "ratecode": "A"}, "Value Required"),
    ({"from_ddmm": "3004", "to_ddmm": "0104", "ratecode": "A"}, "To Date Must Be Greater"),
    ({"from_ddmm": "0104", "to_ddmm": "3006", "ratecode": "1"}, "Valid Rate Code"),
])
def test_validate_rows_rejects_invalid_periods(row, message):
    from HMS_py.core import seasonmaster

    with pytest.raises(ValueError, match=message):
        seasonmaster.validate_rows(2026, [row])


def test_validate_rows_rejects_overlapping_periods():
    from HMS_py.core import seasonmaster

    with pytest.raises(ValueError, match="Date Already Feeded"):
        seasonmaster.validate_rows(2026, [
            {"from_ddmm": "0104", "to_ddmm": "3006", "ratecode": "A"},
            {"from_ddmm": "1505", "to_ddmm": "3105", "ratecode": "B"},
        ])


def test_weekend_flags_map_monday_through_sunday():
    from HMS_py.core import seasonmaster

    assert seasonmaster.weekend_flags("**  *  ") == {
        "Monday": True,
        "Tuesday": True,
        "Wednesday": False,
        "Thursday": False,
        "Friday": True,
        "Saturday": False,
        "Sunday": False,
    }


class FakeConnection:
    def __init__(self):
        self.commits = 0
        self.rollbacks = 0

    def commit(self):
        self.commits += 1

    def rollback(self):
        self.rollbacks += 1


def test_save_year_replaces_periods_and_weekend_atomically(monkeypatch):
    from HMS_py.core import seasonmaster

    calls = []
    cn = FakeConnection()

    def fake_execute(sql, params=(), cn=None, commit=True):
        calls.append((sql, params, commit))
        return 1

    monkeypatch.setattr(seasonmaster.db, "execute", fake_execute)

    assert seasonmaster.save_year(
        2026,
        [{"from_ddmm": "0104", "to_ddmm": "3006", "ratecode": "A"}],
        "**  *  ",
        logsite_code="KK",
        cn=cn,
    ) == 1

    assert "DELETE FROM SeasonMast" in calls[0][0]
    assert "INSERT INTO SeasonMast" in calls[1][0]
    assert "DELETE FROM SeasonMast1" in calls[2][0]
    assert "INSERT INTO SeasonMast1" in calls[3][0]
    assert all(call[2] is False for call in calls)
    assert calls[3][1][0] == "**  *  "
    assert cn.commits == 1


def test_save_year_rejects_invalid_rows_before_opening_transaction(monkeypatch):
    from HMS_py.core import seasonmaster

    cn = FakeConnection()
    monkeypatch.setattr(
        seasonmaster.db, "execute",
        lambda *args, **kwargs: pytest.fail("invalid rows must not write"),
    )

    with pytest.raises(ValueError, match="Value Required"):
        seasonmaster.save_year(
            2026, [{"from_ddmm": "", "to_ddmm": "3006", "ratecode": "A"}],
            "", cn=cn)


def test_season_rights_are_fail_closed(monkeypatch):
    from HMS_py.ui import seasonmaster_ui

    assert seasonmaster_ui._season_rights("SA") == {"A", "E"}
    assert seasonmaster_ui._season_rights("") == set()

    from HMS_py.core import menu_help
    monkeypatch.setattr(menu_help, "has_row", lambda user, caption: False)
    assert seasonmaster_ui._season_rights("PYUSER") == set()


def test_season_editor_is_explicitly_editable(monkeypatch):
    from HMS_py.core import seasonmaster
    from HMS_py.ui import seasonmaster_ui

    monkeypatch.setattr(seasonmaster, "list_years", lambda: [2026])
    monkeypatch.setattr(seasonmaster, "list_rows", lambda year: [])
    monkeypatch.setattr(seasonmaster, "get_weekend", lambda: "       ")

    dialog = seasonmaster_ui.SeasonMasterDialog(editable=True)
    try:
        captions = {button.text() for button in dialog.findChildren(QPushButton)}
        assert "Save" in captions
        assert dialog.grid.editTriggers() != QAbstractItemView.EditTrigger.NoEditTriggers
        assert all(box.isEnabled() for box in dialog.findChildren(QCheckBox))
    finally:
        dialog.close()


def test_season_editor_saves_collected_year_and_weekend(monkeypatch):
    from HMS_py.core import seasonmaster
    from HMS_py.ui import seasonmaster_ui

    monkeypatch.setattr(seasonmaster, "list_years", lambda: [2026])
    monkeypatch.setattr(seasonmaster, "list_rows", lambda year: [])
    monkeypatch.setattr(seasonmaster, "get_weekend", lambda: "       ")
    calls = []
    monkeypatch.setattr(
        seasonmaster, "save_year",
        lambda year, rows, weekend, **kwargs:
            calls.append((year, rows, weekend, kwargs)) or 1,
    )

    dialog = seasonmaster_ui.SeasonMasterDialog(editable=True)
    try:
        dialog.grid.setRowCount(1)
        for col, value in enumerate(("0104", "3006", "A")):
            dialog.grid.setItem(0, col, QTableWidgetItem(value))
        dialog._weekend_checks[0].setChecked(True)
        dialog._save()
        assert calls[0][0:3] == (
            2026,
            [{"from_ddmm": "0104", "to_ddmm": "3006", "ratecode": "A"}],
            "*      ",
        )
    finally:
        dialog.close()


def test_p2_seasonmaster_opener_uses_read_only_dialog(monkeypatch):
    from HMS_py.ui import p2_masters, seasonmaster_ui

    calls = []
    monkeypatch.setattr(
        seasonmaster_ui,
        "open_seasonmaster",
        lambda parent, **kwargs:
            calls.append((parent, kwargs)) or "opened",
    )

    assert p2_masters.open_seasonmaster("parent", user="SA") == "opened"
    assert calls == [("parent", {"editable": True, "user": "SA"})]


def test_shell_season_route_forwards_user(monkeypatch):
    from HMS_py.ui import p2_masters, shell

    calls = []
    monkeypatch.setattr(
        p2_masters, "open_seasonmaster",
        lambda parent=None, user="SA": calls.append((parent, user)) or "opened",
    )
    parent = type("Parent", (), {"user": "PYADMIN"})()

    assert shell._form_registry()["Season Master"](parent) == "opened"
    assert calls == [(parent, "PYADMIN")]


def test_seasonmaster_dialog_is_read_only_year_and_weekend_view(monkeypatch):
    from HMS_py.core import seasonmaster
    from HMS_py.ui import seasonmaster_ui

    monkeypatch.setattr(seasonmaster, "list_years", lambda: [2026])
    monkeypatch.setattr(seasonmaster, "list_rows", lambda year: [{
        "fromdate": "2026-04-01",
        "todate": "2026-06-30",
        "ratecode": "A",
    }])
    monkeypatch.setattr(seasonmaster, "get_weekend", lambda: "**  *  ")

    dialog = seasonmaster_ui.SeasonMasterDialog()
    try:
        captions = {button.text() for button in dialog.findChildren(QPushButton)}
        assert dialog.grid.columnCount() == 3
        assert "Save" not in captions
        assert "Delete" not in captions
        assert len(dialog.findChildren(QCheckBox)) == 7
    finally:
        dialog.close()
