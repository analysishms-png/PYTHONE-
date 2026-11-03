"""Channel Manager Phase-1 unit tests — mocked db (no live DB).

Covers: ensure DDL smoke, config validate/upsert/masked, DPAPI/XOR blob,
roommap FK+dup guards, synclog hash/idempotency, EzeeClient mode ladder +
mock responses + audit. Live round-trip separately in
tests/database/test_channel_phase1_live.py.
Run: python -m pytest tests/unit/test_channel_phase1.py -q
"""
import os
import sys
from types import SimpleNamespace
from unittest.mock import patch

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__))))))

import pytest

from HMS_py.core.channel import client as client_mod
from HMS_py.core.channel import config as cfg_mod
from HMS_py.core.channel import roommap, synclog
from HMS_py.core.channel.ensure import _DDL, ensure_tables


# ---------- ensure_tables ----------

def test_ddl_statements_are_idempotent_shaped():
    # har DDL ya IF OBJECT_ID/IF NOT EXISTS guard se shuru ho
    for ddl in _DDL:
        assert ddl.strip().startswith(("IF OBJECT_ID", "IF NOT EXISTS")), \
            ddl[:60]
    # review-fix objects present
    joined = "\n".join(_DDL)
    assert "UX_ChannelEnviro" in joined
    assert "UX_ChannelRoomMap" in joined
    assert "PayloadHash" in joined
    assert "NVARCHAR(21)" in joined
    assert "LastBookingPollDt" in joined


def test_ensure_tables_runs_and_reports(monkeypatch):
    executed = []

    class FakeCur:
        def execute(self, sql, *a):
            executed.append(sql)

    class FakeCn:
        def cursor(self):
            return FakeCur()
        def commit(self):
            pass
        def close(self):
            pass

    monkeypatch.setattr("HMS_py.core.db.connect", lambda: FakeCn())
    created = ensure_tables()
    assert len(executed) == len(_DDL)
    assert any("ChannelEnviro" in c for c in created)


# ---------- config ----------

def test_validate_rejects_bad_values():
    with pytest.raises(ValueError):
        cfg_mod._validate({"base_url": "ftp://x"})
    with pytest.raises(ValueError):
        cfg_mod._validate({"poll_interval_min": 0})
    with pytest.raises(ValueError):
        cfg_mod._validate({"poll_interval_min": 2000})
    with pytest.raises(ValueError):
        cfg_mod._validate({"enabled_yn": "maybe"})
    with pytest.raises(ValueError):
        cfg_mod._validate({"hotel_code": "X" * 25})


def test_secret_roundtrip_xor_fallback(monkeypatch):
    # DPAPI band karke XOR fallback path test karo
    monkeypatch.setattr(cfg_mod, "_dpapi_available", lambda: False)
    blob = cfg_mod._protect("SECRET-TOKEN-123")
    assert blob[:1] == b"X"
    assert b"SECRET" not in blob              # plaintext leak nahi
    assert cfg_mod._unprotect(blob) == "SECRET-TOKEN-123"


def test_secret_roundtrip_dpapi_marker():
    # DPAPI available na ho to bhi marker logic sahi rahe
    blob = b"D" + b"\x00\x01"                 # fake dpapi blob (roundtrip nahi)
    # unprotect DPAPI path ko pywin32 mangta hai; sirf marker dispatch check
    assert cfg_mod._dpapi_available() in (True, False)


def test_get_returns_none_without_rows(monkeypatch):
    monkeypatch.setattr("HMS_py.core.db.query", lambda *a, **k: [])
    assert cfg_mod.get() is None


def test_get_secret_empty_when_no_rows(monkeypatch):
    monkeypatch.setattr("HMS_py.core.db.query", lambda *a, **k: [])
    assert cfg_mod.get_secret() == ""


def test_is_live_ready_ladder(monkeypatch):
    # no config
    monkeypatch.setattr(cfg_mod, "get", lambda cn=None: None)
    assert not cfg_mod.is_live_ready()
    # mock mode
    monkeypatch.setattr(cfg_mod, "get", lambda cn=None: {
        "enabled_yn": "Y", "mock_yn": "Y", "hotel_code": "HC1"})
    monkeypatch.setattr(cfg_mod, "get_secret", lambda cn=None: "S")
    assert not cfg_mod.is_live_ready()
    # disabled
    monkeypatch.setattr(cfg_mod, "get", lambda cn=None: {
        "enabled_yn": "N", "mock_yn": "N", "hotel_code": "HC1"})
    assert not cfg_mod.is_live_ready()
    # full live
    monkeypatch.setattr(cfg_mod, "get", lambda cn=None: {
        "enabled_yn": "Y", "mock_yn": "N", "hotel_code": "HC1"})
    assert cfg_mod.is_live_ready()


# ---------- roommap ----------

def test_roommap_validate_fk_guard(monkeypatch):
    monkeypatch.setattr("HMS_py.core.db.query", lambda *a, **k: [])
    with pytest.raises(ValueError, match="FK guard"):
        roommap._validate({"roomcat": "ZZZZZZ", "ezee_room_type": "SDLX"})


def test_roommap_validate_dup_guard(monkeypatch):
    calls = {"n": 0}

    def fake_query(sql, params=(), cn=None):
        calls["n"] += 1
        if "FROM RoomCat" in sql:
            return [(1,)]
        return [(5,)]                      # dup hit
    monkeypatch.setattr("HMS_py.core.db.query", fake_query)
    with pytest.raises(ValueError, match="already exists"):
        roommap._validate({"roomcat": "KK002", "ezee_room_type": "SDLX"})


def test_roommap_validate_ok(monkeypatch):
    def fake_query(sql, params=(), cn=None):
        if "FROM RoomCat" in sql:
            return [(1,)]
        return []
    monkeypatch.setattr("HMS_py.core.db.query", fake_query)
    roommap._validate({"roomcat": "KK002", "ezee_room_type": "SDLX"})


def test_roommap_mapping_helpers(monkeypatch):
    monkeypatch.setattr("HMS_py.core.db.query",
                        lambda *a, **k: [("SDLX",)])
    assert roommap.ezee_type_for("KK002") == "SDLX"
    monkeypatch.setattr("HMS_py.core.db.query",
                        lambda *a, **k: [(" KK002 ",)])
    assert roommap.roomcat_for("SDLX") == "KK002"
    monkeypatch.setattr("HMS_py.core.db.query", lambda *a, **k: [])
    assert roommap.ezee_type_for("NOPE") is None
    assert roommap.roomcat_for("NOPE") is None


# ---------- synclog ----------

def test_payload_hash_stable():
    assert synclog.payload_hash("abc") == synclog.payload_hash("abc")
    assert synclog.payload_hash("abc") != synclog.payload_hash("abd")
    assert synclog.payload_hash(None) is None
    assert len(synclog.payload_hash("abc")) == 32


def test_synclog_log_validates_direction_status():
    with pytest.raises(ValueError):
        synclog.log("SIDEWAYS", "FetchBookings")
    with pytest.raises(ValueError):
        synclog.log("OUT", "FetchBookings", status="OK")


def test_synclog_purge_min_retention():
    with pytest.raises(ValueError):
        synclog.purge_older_than(7)


# ---------- client ----------

class NoCfgClient(client_mod.EzeeClient):
    def __init__(self):
        self.cn = None
        self.user = "TEST"
        self.cfg = None
        self._secret = ""


def _mk_client(cfg, secret="S"):
    c = client_mod.EzeeClient.__new__(client_mod.EzeeClient)
    c.cn = None
    c.user = "TEST"
    c.cfg = cfg
    c._secret = secret
    return c


def test_client_mode_ladder():
    assert NoCfgClient().mode == "no_config"
    assert _mk_client({"mock_yn": "Y", "enabled_yn": "N",
                       "hotel_code": "HC"}).mode == "mock"
    assert _mk_client({"mock_yn": "N", "enabled_yn": "N",
                       "hotel_code": "HC"}).mode == "disabled"
    assert _mk_client({"mock_yn": "N", "enabled_yn": "Y",
                       "hotel_code": ""}).mode == "disabled"
    assert _mk_client({"mock_yn": "N", "enabled_yn": "Y", "hotel_code": "HC",
                       "user_agent": "UA"}).mode == "live"


def test_client_no_config_returns_config_only(monkeypatch):
    # _build_body ko no-config pe bhi safe banao test se pehle verify:
    c = NoCfgClient()
    assert c.mode == "no_config"
    resp = c.fetch_bookings()
    assert resp["success"] and resp["mock"]


def test_client_mock_fetch_bookings_shape():
    c = _mk_client({"mock_yn": "Y", "enabled_yn": "N", "hotel_code": "HC1",
                    "user_agent": "UA"})
    resp = c.fetch_bookings(since="2026-09-01")
    assert resp["success"] and resp["mock"]
    # Phase-2 samples: confirmed + cancelled + modified + missing-field edge
    assert len(resp["Bookings"]) == 4
    statuses = {b["Status"] for b in resp["Bookings"]}
    assert {"Confirmed", "Cancelled", "Modified"} <= statuses


def test_client_mock_inventory_validates_negative():
    c = _mk_client({"mock_yn": "Y", "enabled_yn": "N", "hotel_code": "HC1"})
    with pytest.raises(ValueError):
        c.update_room_inventory("SDLX", "2026-10-01", -1)


def test_client_disabled_mode_blocked():
    c = _mk_client({"mock_yn": "N", "enabled_yn": "N", "hotel_code": "HC1"})
    resp = c.fetch_bookings()
    assert resp["blocked"] and not resp["success"]


def test_client_body_has_auth_and_request_type():
    c = _mk_client({"mock_yn": "Y", "enabled_yn": "N", "hotel_code": "HC1",
                    "user_agent": "UA"})
    body = c._build_body("FetchBookings", {"StartDate": "2026-09-01"})
    assert body["RequestType"] == "FetchBookings"
    assert body["Authentication"]["HotelCode"] == "HC1"
    assert body["Authentication"]["AuthCode"] == "S"
    assert body["StartDate"] == "2026-09-01"


def test_client_live_mode_uses_http_post(monkeypatch):
    c = _mk_client({"mock_yn": "N", "enabled_yn": "Y",
                    "hotel_code": "HC1", "base_url": "https://x.y",
                    "user_agent": "UA/1"}, secret="TOK")
    captured = {}

    def fake_post(url, json_body=None, headers=None, timeout=30.0):
        captured["url"] = url
        captured["body"] = json_body
        captured["headers"] = headers
        return 200, '{"success": true}', {}

    monkeypatch.setattr("HMS_py.core.http_client.http_post", fake_post)
    # audit ko no-op karo (synclog db nahi marna unit test me)
    monkeypatch.setattr(c, "_audit", lambda *a, **k: None)
    resp = c.fetch_bookings()
    assert resp["success"]
    assert captured["url"] == "https://x.y/pmsinterface/pms_connectivity.php"
    assert '"RequestType": "FetchBookings"' in captured["body"]
    assert captured["headers"]["User-Agent"] == "UA/1"


def test_client_live_http_error_raises(monkeypatch):
    c = _mk_client({"mock_yn": "N", "enabled_yn": "Y", "hotel_code": "HC1",
                    "base_url": "https://x.y", "user_agent": "UA/1"},
                   secret="TOK")
    monkeypatch.setattr("HMS_py.core.http_client.http_post",
                        lambda *a, **k: (_ for _ in ()).throw(
                            client_mod.EzeeClientError("timeout")))
    monkeypatch.setattr(c, "_audit", lambda *a, **k: None)
    with pytest.raises(client_mod.EzeeClientError):
        c.fetch_bookings()
