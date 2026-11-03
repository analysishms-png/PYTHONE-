import pytest
from types import SimpleNamespace


pytestmark = pytest.mark.unit


def test_memrev_config_uses_canonical_core_keys_and_widths():
    from HMS_py.ui.hr_members_ui import memrev_config

    config = memrev_config()
    fields = {field.name: field for field in config.fields}

    assert [key for _, key in config.columns] == [
        "code", "desc", "accode", "status"
    ]
    assert fields["desc"].max_len == 50
    assert fields["accode"].max_len == 8
    assert fields["acposting"].max_len == 10
    assert fields["subsdetails"].max_len == 20
    assert fields["status"].max_len == 10
    assert fields["status"].default == "Active"
    assert "acountyn" in fields
    assert "refundableyn" in fields
    assert "subschargeyn" in fields


def test_memrev_list_scopes_current_site_and_home(monkeypatch):
    from HMS_py.core import members_masters as mm

    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        return [SimpleNamespace(
            Code="KK0001", Description="Membership", AcountYN="Y",
            ACPosting="Detailed", TaxStru="GST", SubsDetails="Recurring",
            RefundableYN="Y", SubsChargeYN="N", AcCode="SUB001",
            Status="Active", Site_Code="KK", U_NAME="SA", U_EntDt=None,
            U_AE="A", LogSite_Code="KK",
        )]

    monkeypatch.setattr(mm.db, "query", fake_query)

    rows = mm.memrev_list(logsite_code="KK", cn=object())

    assert rows[0]["desc"] == "Membership"
    assert rows[0]["acountyn"] == "Y"
    assert rows[0]["site_code"] == "KK"
    assert rows[0]["logsite_code"] == "KK"
    assert "LogSite_Code = ? OR LogSite_Code = 'HO'" in calls[0][0]
    assert calls[0][1] == ("KK",)


def test_validate_memrev_normalizes_vb6_values():
    from HMS_py.core import members_masters as mm

    result = mm.validate_memrev({
        "code": "KK0001",
        "desc": "Membership",
        "acountyn": "Yes",
        "acposting": "Detailed",
        "taxstru": "GST",
        "subsdetails": "Recurring",
        "refundableyn": "Yes",
        "subschargeyn": "No",
        "accode": "SUB001",
        "status": "Active",
    })

    assert result["acountyn"] == "Y"
    assert result["refundableyn"] == "Y"
    assert result["subschargeyn"] == "N"
    assert result["status"] == "Active"


@pytest.mark.parametrize("field,value,message", [
    ("acountyn", "Maybe", "Account Y/N"),
    ("refundableyn", "Maybe", "Refundable Y/N"),
    ("subschargeyn", "Maybe", "Subscription Charge Y/N"),
    ("subsdetails", "Monthly", "Subscription Details"),
    ("acposting", "Other", "A/C Posting"),
    ("status", "Inactive", "Status"),
])
def test_validate_memrev_rejects_invalid_values(field, value, message):
    from HMS_py.core import members_masters as mm

    record = {
        "code": "KK0001", "desc": "Membership", "acountyn": "N",
        "acposting": "", "taxstru": "GST", "subsdetails": "Recurring",
        "refundableyn": "N", "subschargeyn": "N", "accode": "",
        "status": "Active",
    }
    record[field] = value

    with pytest.raises(ValueError, match=message):
        mm.validate_memrev(record)


def test_validate_memrev_requires_account_fields_when_account_is_yes():
    from HMS_py.core import members_masters as mm

    with pytest.raises(ValueError, match="Account Code"):
        mm.validate_memrev({
            "code": "KK0001", "desc": "Membership", "acountyn": "Y",
            "acposting": "", "taxstru": "GST", "subsdetails": "Recurring",
            "refundableyn": "N", "subschargeyn": "N", "accode": "",
            "status": "Active",
        })


def test_memrev_write_api_validates_before_database(monkeypatch):
    from HMS_py.core import members_masters as mm

    monkeypatch.setattr(
        mm.db, "execute", lambda *args, **kwargs: pytest.fail("write attempted")
    )

    with pytest.raises(ValueError, match="Subscription Details"):
        mm.memrev_insert({"code": "KK0001", "desc": "Membership"})
    with pytest.raises(ValueError, match="Subscription Details"):
        mm.memrev_update("KK0001", {"desc": "Membership"})


def test_generated_membership_revenue_pk_can_be_left_blank(monkeypatch):
    from HMS_py.ui.base_master import BaseMasterForm
    from HMS_py.ui.hr_members_ui import memrev_config

    class Api:
        inserted = []

        @staticmethod
        def list_all():
            return []

        @staticmethod
        def exists(code):
            return False

        @staticmethod
        def insert(record):
            Api.inserted.append(record)

    config = memrev_config()
    config.api = Api
    from PyQt6.QtWidgets import QApplication, QMessageBox
    app = QApplication.instance() or QApplication([])
    assert app is not None
    monkeypatch.setattr(
        QMessageBox, "warning", lambda *args, **kwargs: QMessageBox.StandardButton.Ok
    )
    form = BaseMasterForm(config)
    try:
        assert config.generated_pk is True
        form._on_new()
        form.edits["desc"].setText("Membership")
        form._on_save()
        assert Api.inserted[0]["code"] == ""
    finally:
        form.close()
