import os
import sys

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from PyQt6.QtWidgets import QApplication, QPushButton

pytestmark = pytest.mark.unit


_app = QApplication.instance() or QApplication(sys.argv)


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


def test_revenue_group_list_reads_revmast_in_group_order(monkeypatch):
    from HMS_py.core import revenue_budget as rb

    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        return [(1, "Room Charges", "RMCH", "Detail")]

    monkeypatch.setattr(rb.db, "query", fake_query)

    rows = rb.revenue_group_list(cn=object())

    assert len(calls) == 1
    assert "FROM RevMast" in calls[0][0]
    assert "ORDER BY GroupSrNo" in calls[0][0]
    assert rows == [{
        "sno": 1,
        "code": "RMCH",
        "name": "Room Charges",
        "flag_amr": "Detail",
    }]


def test_revenue_group_save_updates_ordinal_positions_transactionally(monkeypatch):
    from HMS_py.core import revenue_budget as rb

    cn = FakeConnection()
    calls = []

    def fake_execute(sql, params=(), cn=None, commit=True):
        calls.append((sql, params, cn, commit))
        return 1

    monkeypatch.setattr(rb.db, "execute", fake_execute)

    count = rb.revenue_group_save(
        [{"code": "RMCH"}, {"code": "TOUT"}], cn=cn
    )

    assert count == 2
    assert cn.commits == 1
    assert cn.rollbacks == 0
    assert len(calls) == 2
    assert all("UPDATE RevMast" in call[0] for call in calls)
    assert all(call[3] is False for call in calls)
    assert [call[1][0] for call in calls] == [1, 2]
    assert [call[1][-1] for call in calls] == ["RMCH", "TOUT"]


def test_revenue_group_save_rolls_back_when_update_fails(monkeypatch):
    from HMS_py.core import revenue_budget as rb

    cn = FakeConnection()
    calls = []

    def fake_execute(sql, params=(), cn=None, commit=True):
        calls.append(params)
        if len(calls) == 2:
            raise RuntimeError("update failed")
        return 1

    monkeypatch.setattr(rb.db, "execute", fake_execute)

    with pytest.raises(RuntimeError, match="update failed"):
        rb.revenue_group_save([{"code": "A"}, {"code": "B"}], cn=cn)

    assert cn.commits == 0
    assert cn.rollbacks == 1


def test_revenue_group_move_swaps_rows_and_keeps_boundaries():
    from HMS_py.core import revenue_budget as rb

    rows = [{"code": "A"}, {"code": "B"}, {"code": "C"}]

    assert rb.move_revenue_group(rows, 1, -1) == [
        {"code": "B"}, {"code": "A"}, {"code": "C"}
    ]
    assert rb.move_revenue_group(rows, 1, 1) == [
        {"code": "A"}, {"code": "C"}, {"code": "B"}
    ]
    assert rb.move_revenue_group(rows, 0, -1) == rows
    assert rb.move_revenue_group(rows, 2, 1) == rows


def test_budget_months_reads_distinct_budget_details_months(monkeypatch):
    from HMS_py.core import revenue_budget as rb

    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        return [("Aug/2026",), ("Sep/2026",)]

    monkeypatch.setattr(rb.db, "query", fake_query)

    assert rb.budget_months(cn=object()) == ["Aug/2026", "Sep/2026"]
    assert "DISTINCT Month_Year" in calls[0][0]
    assert "FROM BudgetDetails" in calls[0][0]
    assert "SNo" not in calls[0][0]


def test_missing_budget_details_reads_are_safe(monkeypatch):
    from HMS_py.core import revenue_budget as rb

    def missing_table(*args, **kwargs):
        raise RuntimeError("Invalid object name 'BudgetDetails'")

    monkeypatch.setattr(rb.db, "query", missing_table)

    assert rb.budget_months() == []
    assert rb.budget_list("Sep/2026") == []


def test_budget_list_reads_selected_month_from_budget_details(monkeypatch):
    from HMS_py.core import revenue_budget as rb

    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        return [(
            1, "Sep/2026", "RMCH", "Room Charges", 1250.5, "",
            "PYADMIN", None, "A", "KK", "KK",
        )]

    monkeypatch.setattr(rb.db, "query", fake_query)

    rows = rb.budget_list("Sep/2026", cn=object())

    assert "FROM BudgetDetails" in calls[0][0]
    assert "Month_Year = ?" in calls[0][0]
    assert calls[0][1] == ("Sep/2026",)
    assert rows == [{
        "sno": 1,
        "month_year": "Sep/2026",
        "rev_code": "RMCH",
        "detail": "Room Charges",
        "budget": 1250.5,
        "header": "",
        "u_name": "PYADMIN",
        "u_ae": "A",
        "site_code": "KK",
        "logsite_code": "KK",
    }]


def test_budget_save_replaces_month_in_one_transaction(monkeypatch):
    from HMS_py.core import revenue_budget as rb

    cn = FakeConnection()
    calls = []

    def fake_execute(sql, params=(), cn=None, commit=True):
        calls.append((sql, params, cn, commit))
        return 1

    monkeypatch.setattr(rb.db, "execute", fake_execute)

    count = rb.budget_save(
        "Sep/2026",
        [
            {"sno": 1, "rev_code": "RMCH", "detail": "Room", "budget": 100},
            {"sno": 2, "header": "FRONT DESK", "detail": "FRONT DESK"},
        ],
        cn=cn,
    )

    assert count == 2
    assert cn.commits == 1
    assert cn.rollbacks == 0
    assert len(calls) == 3
    assert "DELETE FROM BudgetDetails" in calls[0][0]
    assert "Month_Year = ?" in calls[0][0]
    assert "LogSite_Code = ?" in calls[0][0]
    assert calls[0][1] == ("Sep/2026", "KK")
    assert "INSERT INTO BudgetDetails" in calls[1][0]
    assert "Site_Code" in calls[1][0]
    assert calls[1][1][0] == 1
    assert calls[1][1][1] == "Sep/2026"
    assert calls[1][1][2] == "RMCH"
    assert calls[1][1][4] == 100.0


def test_budget_save_rolls_back_on_insert_failure(monkeypatch):
    from HMS_py.core import revenue_budget as rb

    cn = FakeConnection()
    calls = []

    def fake_execute(sql, params=(), cn=None, commit=True):
        calls.append(sql)
        if sql.startswith("INSERT"):
            raise RuntimeError("insert failed")
        return 1

    monkeypatch.setattr(rb.db, "execute", fake_execute)

    with pytest.raises(RuntimeError, match="insert failed"):
        rb.budget_save(
            "Sep/2026",
            [{"sno": 1, "rev_code": "RMCH", "detail": "Room", "budget": 1}],
            cn=cn,
        )

    assert cn.commits == 0
    assert cn.rollbacks == 1


@pytest.mark.parametrize("month", ["", "2026-09", "Sep/2026/extra"])
def test_budget_save_rejects_invalid_month(month, monkeypatch):
    from HMS_py.core import revenue_budget as rb

    monkeypatch.setattr(
        rb.db, "execute", lambda *args, **kwargs: pytest.fail("DB touched")
    )

    with pytest.raises(ValueError, match="Month_Year"):
        rb.budget_save(month, [])


def test_budget_save_rejects_invalid_detail_line(monkeypatch):
    from HMS_py.core import revenue_budget as rb

    monkeypatch.setattr(
        rb.db, "execute", lambda *args, **kwargs: pytest.fail("DB touched")
    )

    with pytest.raises(ValueError, match="RevCode"):
        rb.budget_save("Sep/2026", [{"sno": 1, "detail": "Room", "budget": 1}])


def test_separate_revenue_windows_are_exposed():
    from HMS_py.ui import revenue_budget_ui as ui

    assert hasattr(ui, "RevenueGroupWindow")
    assert hasattr(ui, "RevenueWiseBudgetWindow")


def test_main_setup_registry_routes_to_separate_openers(monkeypatch):
    from HMS_py.ui import revenue_budget_ui as ui
    from HMS_py.ui import shell

    opened = []
    monkeypatch.setattr(
        ui, "open_revenue_group", lambda parent: opened.append("group") or "group"
    )
    monkeypatch.setattr(
        ui, "open_revenue_budget_entry", lambda parent: opened.append("budget") or "budget"
    )

    registry = shell._form_registry()
    parent = object()

    assert registry["Revenue Group Setting"](parent) == "group"
    assert registry["Revenue Wise Budget Entry"](parent) == "budget"
    assert opened == ["group", "budget"]


def test_main_setup_workbench_contains_revenue_buttons():
    from HMS_py.ui.shell import MainSetupWorkbench

    workbench = MainSetupWorkbench()
    try:
        captions = {button.text() for button in workbench.findChildren(QPushButton)}
    finally:
        workbench.close()

    assert "Revenue Group Setting" in captions
    assert "Revenue Wise Budget Entry" in captions


def test_revenue_group_window_reorders_without_crud_actions(monkeypatch):
    from HMS_py.core import revenue_budget as rb
    from HMS_py.ui import revenue_budget_ui as ui

    rows = [
        {"sno": 1, "code": "A", "name": "Alpha", "flag_amr": "Detail"},
        {"sno": 2, "code": "B", "name": "Beta", "flag_amr": "Detail"},
    ]
    monkeypatch.setattr(rb, "revenue_group_list", lambda: [dict(row) for row in rows])

    window = ui.RevenueGroupWindow()
    try:
        assert not hasattr(window, "btn_add")
        assert not hasattr(window, "btn_delete")
        window.rg_table.selectRow(1)
        window._move(-1)
        assert [window._rows[index]["code"] for index in range(2)] == ["B", "A"]
    finally:
        window.close()


def test_revenue_budget_window_collects_grid_before_save(monkeypatch):
    from HMS_py.core import revenue_budget as rb
    from HMS_py.ui import revenue_budget_ui as ui

    saved = []
    monkeypatch.setattr(rb, "budget_months", lambda: ["Sep/2026"])
    monkeypatch.setattr(rb, "budget_list", lambda month: [{
        "sno": 1,
        "month_year": month,
        "rev_code": "RMCH",
        "detail": "Room",
        "budget": 10.0,
        "header": "",
    }])
    monkeypatch.setattr(rb, "budget_save", lambda month, rows: saved.append((month, rows)) or len(rows))

    window = ui.RevenueWiseBudgetWindow()
    try:
        window.bg_table.item(0, 3).setText("25.50")
        window.save()
    finally:
        window.close()

    assert saved[0][0] == "Sep/2026"
    assert saved[0][1][0]["rev_code"] == "RMCH"
    assert saved[0][1][0]["budget"] == "25.50"
