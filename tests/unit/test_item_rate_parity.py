import datetime
import os
import sys

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
from PyQt6.QtWidgets import QApplication, QPushButton

_app = QApplication.instance() or QApplication(sys.argv)
from HMS_py.core import item_rate as ir


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


def _row(party="", rate=100, site="KK", app_date=datetime.date(2030, 1, 1)):
    return (
        "ITEM01", "R01", rate, site, "SA", datetime.datetime(2029, 12, 1),
        "A", app_date, "KK", 120, party,
    )


def _record(**overrides):
    record = {
        "itemcode": "ITEM01",
        "restcode": "R01",
        "appdate": datetime.date(2030, 1, 1),
        "rate": 100,
        "party": "",
        "mrp": 120,
    }
    record.update(overrides)
    return record


def test_save_batch_uses_canonical_key_and_one_transaction(monkeypatch):
    calls = []
    cn = FakeConnection()

    def fake_query(sql, params=(), cn=None):
        calls.append(("query", sql, params))
        return []

    def fake_execute(sql, params=(), cn=None, commit=True):
        calls.append(("execute", sql, params, commit))
        return 1

    monkeypatch.setattr(ir.db, "query", fake_query)
    monkeypatch.setattr(ir.db, "execute", fake_execute)

    assert ir.save_batch([_record()], cn=cn) == 1
    execute_calls = [call for call in calls if call[0] == "execute"]
    assert "INSERT INTO ItemRate" in execute_calls[0][1]
    assert execute_calls[0][2][0:2] == ("ITEM01", "R01")
    assert execute_calls[0][3] is False
    assert cn.commits == 1


def test_save_batch_rejects_different_party_for_same_database_key(monkeypatch):
    cn = FakeConnection()
    monkeypatch.setattr(ir.db, "query", lambda *args, **kwargs: [_row(party="A")])

    with pytest.raises(ValueError, match="canonical key"):
        ir.save_batch([_record(party="B")], cn=cn)


def test_effective_rate_prefers_party_then_general(monkeypatch):
    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        if "Party = ?" in sql:
            return [(175,)]
        return [(150,)]

    monkeypatch.setattr(ir.db, "query", fake_query)

    assert ir.effective_rate(
        "ITEM01", "R01", datetime.date(2030, 1, 1), party="A") == 175
    assert len(calls) == 1
    assert calls[0][1][-1] == "A"


def test_effective_rate_falls_back_to_general_rate(monkeypatch):
    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        return [] if "Party = ?" in sql else [(150,)]

    monkeypatch.setattr(ir.db, "query", fake_query)

    assert ir.effective_rate(
        "ITEM01", "R01", datetime.date(2030, 1, 1), party="A") == 150
    assert len(calls) == 2
    assert "Party = ''" in calls[1][0]


def test_delete_uses_exact_item_outlet_date_key(monkeypatch):
    calls = []
    cn = FakeConnection()
    monkeypatch.setattr(
        ir.db, "execute",
        lambda sql, params=(), cn=None, commit=True:
            calls.append((sql, params, commit)) or 1,
    )

    assert ir.delete("ITEM01", "R01", datetime.date(2030, 1, 1), cn=cn) == 1
    assert "ItemCode = ? AND RestCode = ? AND AppDate = ?" in calls[0][0]
    assert calls[0][1] == ("ITEM01", "R01", datetime.date(2030, 1, 1))
    assert calls[0][2] is False
    assert cn.commits == 1


def test_item_rate_dialog_has_classic_surface(monkeypatch):
    from HMS_py.ui.item_rate_ui import ItemRateDialog

    monkeypatch.setattr(ir, "list_rates", lambda *args, **kwargs: [])
    dialog = ItemRateDialog(user="SA", can_edit=True)
    try:
        assert dialog.property("desktopSurface") is True
        assert "Save" in {button.text() for button in dialog.findChildren(QPushButton)}
    finally:
        dialog.close()


def test_menu_item_rate_route_uses_dedicated_opener(monkeypatch):
    from HMS_py.ui import item_rate_ui, shell

    calls = []
    monkeypatch.setattr(
        item_rate_ui, "open_item_rate",
        lambda parent=None, user="SA": calls.append((parent, user)) or "opened",
    )

    parent = type("Parent", (), {"user": "PYADMIN"})()
    assert shell._form_registry()["Menu Item Rate"](parent) == "opened"
    assert calls == [(parent, "PYADMIN")]
