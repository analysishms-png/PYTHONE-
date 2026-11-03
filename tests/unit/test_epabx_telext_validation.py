import pytest

from HMS_py.core import epabx_masters as ep


pytestmark = pytest.mark.unit


def test_telext_list_scopes_current_site_and_home(monkeypatch):
    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        return [("EXT01", "Reception", 101, "Room", "101", "SHOP1",
                 "D1", 1.5, "KK", "KK", "SA", None, "A")]

    monkeypatch.setattr(ep.db, "query", fake_query)

    rows = ep.telext_list(logsite_code="KK", cn=object())

    assert rows[0]["code"] == "EXT01"
    assert rows[0]["room"] == "101"
    assert rows[0]["logsite_code"] == "KK"
    assert "LogSite_Code = ? OR LogSite_Code = 'HO'" in calls[0][0]
    assert calls[0][1] == ("KK",)


def test_validate_telext_normalizes_valid_room_record():
    result = ep.validate_telext({
        "code": "EXT01",
        "desc": "Reception",
        "extension": "101",
        "type": "room",
        "room": "101",
        "pulserate": "1.5",
    })

    assert result["type"] == "Room"
    assert result["extension"] == 101
    assert result["pulserate"] == 1.5


@pytest.mark.parametrize("record,message", [
    ({"code": "EXT01", "desc": "", "extension": "101", "type": "Room",
      "room": "101", "pulserate": "1"}, "Description"),
    ({"code": "EXT01", "desc": "Reception", "extension": "101",
      "type": "", "room": "101", "pulserate": "1"}, "Type"),
    ({"code": "EXT01", "desc": "Reception", "extension": "101",
      "type": "Room", "room": "101", "pulserate": "0"}, "greater than zero"),
    ({"code": "EXT01", "desc": "Reception", "extension": "ABC",
      "type": "Room", "room": "101", "pulserate": "1"}, "Extension"),
    ({"code": "EXT01", "desc": "Reception", "extension": "101",
      "type": "Room", "room": "", "pulserate": "1"}, "Room"),
])
def test_validate_telext_rejects_invalid_records(record, message):
    with pytest.raises(ValueError, match=message):
        ep.validate_telext(record)


def test_telext_insert_validates_before_database(monkeypatch):
    monkeypatch.setattr(
        ep.db, "execute", lambda *args, **kwargs: pytest.fail("write attempted")
    )

    with pytest.raises(ValueError, match="Pulse"):
        ep.telext_insert({
            "code": "EXT01", "desc": "Reception", "extension": "101",
            "type": "Room", "room": "101", "pulserate": "0",
        })
