import pytest

from HMS_py.core import members_masters as mm


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


def _record(code="KK0001"):
    return {
        "code": code,
        "desc": "Membership",
        "acountyn": "N",
        "acposting": "",
        "taxstru": "GST",
        "subsdetails": "Recurring",
        "refundableyn": "N",
        "subschargeyn": "N",
        "accode": "",
        "status": "Active",
    }


def test_next_code_uses_site_prefix_and_four_digit_sequence(monkeypatch):
    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        return [(8,)]

    monkeypatch.setattr(mm.db, "query", fake_query)

    assert mm.memrev_next_code(logsite_code="KK", cn=object()) == "KK0008"
    assert "SUBSTRING(Code,3,4)" in calls[0][0]
    assert calls[0][1] == ("KK",)


def test_memrev_insert_uses_scoped_duplicate_guard_and_transaction(monkeypatch):
    cn = FakeConnection()
    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append(("query", sql, params))
        return []

    def fake_require_absent(table, column, value, label, **kwargs):
        calls.append(("guard", table, column, value, label, kwargs))

    def fake_execute(sql, params=(), cn=None, commit=True):
        calls.append(("execute", sql, params, cn, commit))
        return 1

    monkeypatch.setattr(mm.db, "query", fake_query)
    monkeypatch.setattr(mm.db, "require_absent", fake_require_absent)
    monkeypatch.setattr(mm.db, "execute", fake_execute)

    assert mm.memrev_insert(_record(), cn=cn) == 1
    assert cn.commits == 1
    assert cn.rollbacks == 0
    assert any(call[0] == "guard" and call[5].get("cn") is cn for call in calls)
    execute = next(call for call in calls if call[0] == "execute")
    assert execute[4] is False
    assert "INSERT INTO MembershipRevMast" in execute[1]


def test_memrev_insert_rolls_back_on_failure(monkeypatch):
    cn = FakeConnection()

    monkeypatch.setattr(mm.db, "query", lambda *args, **kwargs: [])
    monkeypatch.setattr(mm.db, "require_absent", lambda *args, **kwargs: None)

    def fail_execute(*args, **kwargs):
        raise RuntimeError("insert failed")

    monkeypatch.setattr(mm.db, "execute", fail_execute)

    with pytest.raises(RuntimeError, match="insert failed"):
        mm.memrev_insert(_record(), cn=cn)

    assert cn.commits == 0
    assert cn.rollbacks == 1


def test_memrev_update_excludes_current_code_from_duplicate_check(monkeypatch):
    cn = FakeConnection()
    calls = []

    def fake_query(sql, params=(), cn=None):
        calls.append((sql, params))
        return []

    def fake_execute(sql, params=(), cn=None, commit=True):
        calls.append(("execute", sql, params, cn, commit))
        return 1

    monkeypatch.setattr(mm.db, "query", fake_query)
    monkeypatch.setattr(mm.db, "execute", fake_execute)

    assert mm.memrev_update("KK0001", _record("KK0001"), cn=cn) == 1
    duplicate = next(call for call in calls if call[0].startswith("SELECT COUNT"))
    assert "Code <> ?" in duplicate[0]
    assert duplicate[1][-1] == "KK0001"
    assert cn.commits == 1


def test_memrev_delete_is_transactional(monkeypatch):
    cn = FakeConnection()
    calls = []

    def fake_execute(sql, params=(), cn=None, commit=True):
        calls.append((sql, params, cn, commit))
        return 1

    monkeypatch.setattr(mm.db, "execute", fake_execute)

    assert mm.memrev_delete("KK0001", cn=cn) == 1
    assert calls[0][3] is False
    assert cn.commits == 1
    assert "DELETE FROM MembershipRevMast" in calls[0][0]
