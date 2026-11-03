import pytest

from HMS_py.core import epabx_masters as ep


pytestmark = pytest.mark.unit


def test_calltype_config_matches_schema_and_core_keys():
    from HMS_py.ui.epabx_ui import calltype_config

    config = calltype_config()
    fields = {field.name: field for field in config.fields}

    assert [key for _, key in config.columns] == [
        "code", "calltype", "shortname"
    ]
    assert fields["code"].max_len == 5
    assert fields["calltype"].max_len == 15
    assert fields["shortname"].max_len == 5
    assert fields["accode"].max_len == 8
    assert fields["taxstru"].max_len == 6


def test_calltype_list_scopes_current_site_and_home(monkeypatch):
    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        return [("STD", "STD", "S", "SUB001", "GST", "KK", "KK",
                 "SA", None, "A")]

    monkeypatch.setattr(ep.db, "query", fake_query)

    rows = ep.calltype_list(logsite_code="KK", cn=object())

    assert rows[0]["code"] == "STD"
    assert rows[0]["logsite_code"] == "KK"
    assert "LogSite_Code = ? OR LogSite_Code = 'HO'" in calls[0][0]
    assert calls[0][1] == ("KK",)


def test_calltype_writer_is_disabled(monkeypatch):
    monkeypatch.setattr(
        ep.db, "execute", lambda *args, **kwargs: pytest.fail("write attempted")
    )

    with pytest.raises(PermissionError):
        ep.calltype_insert({"code": "STD", "calltype": "STD"})
    with pytest.raises(PermissionError):
        ep.calltype_update("STD", {"calltype": "STD"})
    with pytest.raises(PermissionError):
        ep.calltype_delete("STD")


def test_calltype_opener_applies_read_only_permissions(monkeypatch):
    from HMS_py.ui import epabx_ui

    captured = {}

    class FakeForm:
        def __init__(self, config, parent=None):
            captured["config"] = config

        def set_permissions(self, **kwargs):
            captured["permissions"] = kwargs

        def exec(self):
            captured["exec"] = True

    monkeypatch.setattr(epabx_ui, "BaseMasterForm", FakeForm)
    result = epabx_ui.open_calltype(object())

    assert isinstance(result, FakeForm)
    assert captured["permissions"] == {"add": False, "edit": False, "delete": False}
    assert captured["exec"] is True
