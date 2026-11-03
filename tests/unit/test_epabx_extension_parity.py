import pytest

from HMS_py.core import epabx_masters as ep


pytestmark = pytest.mark.unit


def test_extension_config_matches_core_keys_and_schema_widths():
    from HMS_py.ui.epabx_ui import ext_config

    config = ext_config()
    fields = {field.name: field for field in config.fields}

    assert config.pk_key == "code"
    assert [key for _, key in config.columns] == [
        "code", "desc", "extension", "type", "room"
    ]
    assert fields["desc"].max_len == 35
    assert fields["room"].max_len == 5
    assert fields["shop"].max_len == 10
    assert fields["dept"].max_len == 5
    assert fields["code"].max_len == 5
    assert fields["description" if "description" in fields else "desc"].required is True


def test_extension_core_limits_match_checked_in_schema():
    assert ep.TELEXT_LIMITS == {
        "code": 5,
        "desc": 35,
        "extension": 10,
        "type": 10,
        "room": 5,
        "shop": 10,
        "dept": 5,
    }


def test_extension_ui_uses_core_record_keys():
    from HMS_py.ui.epabx_ui import ext_config

    fields = {field.name for field in ext_config().fields}
    assert {"desc", "room", "shop", "dept"}.issubset(fields)
    assert "description" not in fields
    assert "roomno" not in fields
    assert "shopno" not in fields
    assert "depcode" not in fields
