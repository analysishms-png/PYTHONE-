import pytest

from HMS_py.core import epabx_masters as ep


pytestmark = pytest.mark.unit


def test_callcode_config_matches_core_keys_and_schema_widths():
    from HMS_py.ui.epabx_ui import callcode_config

    config = callcode_config()

    assert config.pk_key == "stdcode"
    assert [key for _, key in config.columns] == [
        "stdcode", "calltype", "desc", "pulse"
    ]
    fields = {field.name: field for field in config.fields}
    assert fields["stdcode"].max_len == 10
    assert fields["calltype"].max_len == 15
    assert fields["desc"].max_len == 35
    assert fields["stdcode"].required is True
    assert all(not fields[name].required for name in ("calltype", "desc", "pulse"))


def test_callcode_list_scopes_current_site_and_home(monkeypatch):
    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        return [("011", "STD", "Local", 1.0, "SA", None, "A")]

    monkeypatch.setattr(ep.db, "query", fake_query)

    rows = ep.callcode_list(logsite_code="KK", cn=object())

    assert rows[0]["stdcode"] == "011"
    assert rows[0]["calltype"] == "STD"
    assert rows[0]["desc"] == "Local"
    assert rows[0]["pulse"] == 1.0
    assert "LogSite_Code = ? OR LogSite_Code = 'HO'" in calls[0][0]
    assert calls[0][1] == ("KK",)


def test_callcode_insert_only_requires_stdcode_and_uses_core_keys(monkeypatch):
    cn = object()
    calls = []

    def fake_require_absent(table, column, value, label, **kwargs):
        calls.append(("guard", table, column, value, label, kwargs))

    def fake_execute(sql, params=(), cn=None, commit=True):
        calls.append(("execute", sql, params, cn, commit))
        return 1

    monkeypatch.setattr(ep.db, "require_absent", fake_require_absent)
    monkeypatch.setattr(ep.db, "execute", fake_execute)

    result = ep.callcode_insert({"stdcode": "011"}, cn=cn)

    assert result == 1
    assert calls[0][1:5] == ("TelCallCode", "STDCode", "011", "STD Code")
    assert calls[0][5].get("cn") is cn
    assert calls[1][2][:4] == ("011", "", "", 0.0)


def test_callcode_update_uses_composite_record_keys(monkeypatch):
    calls = []

    def fake_execute(sql, params=(), cn=None, commit=True):
        calls.append((sql, params))
        return 1

    monkeypatch.setattr(ep.db, "execute", fake_execute)

    ep.callcode_update("011", {
        "stdcode": "011", "calltype": "STD", "desc": "Local", "pulse": 2.5,
    })

    assert "STDCode = ?" in calls[0][0]
    assert calls[0][1] == ("STD", "Local", 2.5, ep.USER, "011")
