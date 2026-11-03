"""Channel Phase-4 unit tests — mocked db/client (no live DB).

rates.py: rate pick (first-non-zero, weekend RateW), RatePlan resolution
(explicit vs auto-suffix), date expansion, unrated skip, push (live-gate,
payload capture, rate-limit, fail-audit); stop-sell join + unmapped skip.
Run: python -m pytest tests/unit/test_channel_phase4.py -q
"""
import datetime
import os
import sys
from types import SimpleNamespace

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__))))))

from HMS_py.core.channel import rates as ch_rates


D1 = datetime.date(2026, 10, 1)    # Thursday
D2 = datetime.date(2026, 10, 2)    # Friday
SAT = datetime.date(2026, 10, 3)   # Saturday


def _defaults(single=1500.0, multiple=1600.0, ratew=0.0):
    out = {"KK002": {}}                     # roomcat-keyed (get_default_rates shape)
    if single is not None:
        out["KK002"]["Single"] = {"rate1": single, "rate2": 0, "rate3": 0,
                                   "rate4": 0, "rate5": 0, "ratew": ratew}
    if multiple is not None:
        out["KK002"]["Multiple"] = {"rate1": 0, "rate2": multiple,
                                    "rate3": 0, "rate4": 0, "rate5": 0,
                                    "ratew": ratew}
    return out


def _patch(monkeypatch, mappings=None, defaults=None, blocks=None):
    monkeypatch.setattr(ch_rates, "roommap", SimpleNamespace(
        list_all=lambda cn=None, only_active=False:
            mappings if mappings is not None else
            [{"roomcat": "KK002", "ezee_room_type": "Superior DLX",
              "rate_plan": "", "active_yn": "Y"}]))
    monkeypatch.setattr(ch_rates, "ratelist", SimpleNamespace(
        get_default_rates=lambda rc, cn=None:
            (defaults if defaults is not None else _defaults()).get(rc, {})))
    monkeypatch.setattr(ch_rates, "db", SimpleNamespace(
        query=lambda sql, params=(), cn=None: blocks or []))


# ============================================================
# rate_rows: rate pick + resolution
# ============================================================

def test_rate_rows_auto_suffix_per_occtype(monkeypatch):
    _patch(monkeypatch)
    out = ch_rates.rate_rows(D1)
    assert out["unrated"] == []
    assert len(out["rows"]) == 2                     # Single + Multiple
    plans = {r["rate_plan"]: r["rate"] for r in out["rows"]}
    assert plans == {"KK002-Single": 1500.0, "KK002-Multiple": 1600.0}
    row = out["rows"][0]
    assert row["ezee_room_type"] == "Superior DLX"
    assert row["occtype"] in ("Single", "Multiple")


def test_rate_rows_explicit_plan_single_row_per_day(monkeypatch):
    _patch(monkeypatch, mappings=[
        {"roomcat": "KK002", "ezee_room_type": "Superior DLX",
         "rate_plan": "EP", "active_yn": "Y"}])
    out = ch_rates.rate_rows(D1)
    assert len(out["rows"]) == 1
    r = out["rows"][0]
    assert r["rate_plan"] == "EP"
    assert r["occtype"] is None
    # sorted(defaults) = [Multiple, Single] -> Multiple ka 1600 pehle milta hai
    assert r["rate"] == 1600.0


def test_rate_pick_weekend_uses_ratew(monkeypatch):
    _patch(monkeypatch, defaults=_defaults(single=1500.0, multiple=None,
                                           ratew=2200.0))
    out = ch_rates.rate_rows(D1, SAT)
    by_date = {r["date"]: r["rate"] for r in out["rows"]}
    assert by_date[D1] == 1500.0                     # weekday -> Rate1
    assert by_date[SAT] == 2200.0                    # Sat + RateW>0


def test_all_zero_rates_unrated_skip(monkeypatch):
    _patch(monkeypatch, defaults=_defaults(single=0.0, multiple=0.0))
    out = ch_rates.rate_rows(D1, D2)
    assert out["rows"] == []
    assert len(out["unrated"]) == 4                  # 2 occtypes x 2 din
    u = out["unrated"][0]
    assert u["roomcat"] == "KK002"
    assert u["plan"].startswith("KK002-")


def test_unrated_category_not_in_defaults(monkeypatch):
    # mapping hai par RateList defaults hi nahi -> per-day unrated, crash nahi
    _patch(monkeypatch, defaults={})
    out = ch_rates.rate_rows(D1)
    assert out["rows"] == []
    assert len(out["unrated"]) == 1                  # 1 din x 1 cat
    assert out["unrated"][0]["plan"] == "KK002-?"


def test_date_expansion_count(monkeypatch):
    _patch(monkeypatch)
    out = ch_rates.rate_rows(D1, D1 + datetime.timedelta(days=4))
    assert len(out["rows"]) == 10                    # 5 din x 2 occtypes
    dates = sorted({r["date"] for r in out["rows"]})
    assert len(dates) == 5


def test_unmapped_roomcat_no_rows(monkeypatch):
    _patch(monkeypatch, mappings=[])                 # koi mapping nahi
    out = ch_rates.rate_rows(D1)
    assert out["rows"] == [] and out["unrated"] == []


# ============================================================
# push_rates: live-gate, payloads, rate-limit, fail-audit
# ============================================================

class LiveClient:
    mode = "live"

    def __init__(self, fail=False):
        self.rate_calls = []
        self.stop_calls = []
        self.fail = fail

    def set_room_rate(self, room_type, rate_plan, date_iso, rate):
        if self.fail:
            raise RuntimeError("boom")
        self.rate_calls.append((room_type, rate_plan, date_iso, rate))
        return {"success": True}

    def update_stop_sell(self, room_type, date_iso, stop_sell):
        if self.fail:
            raise RuntimeError("boom")
        self.stop_calls.append((room_type, date_iso, stop_sell))
        return {"success": True}


class MockClient(LiveClient):
    mode = "mock"


def test_push_rates_not_live_skips(monkeypatch):
    _patch(monkeypatch)
    out = ch_rates.push_rates(D1, client=MockClient())
    assert out["skipped_reason"].startswith("mode=")
    assert out["pushed"] == 0 and out["calls"] == 0


def test_push_rates_payloads(monkeypatch):
    _patch(monkeypatch)
    cl = LiveClient()
    out = ch_rates.push_rates(D1, client=cl)
    assert out["pushed"] == 2 and out["calls"] == 2
    assert sorted(cl.rate_calls) == [
        ("Superior DLX", "KK002-Multiple", "2026-10-01", 1600.0),
        ("Superior DLX", "KK002-Single", "2026-10-01", 1500.0)]


def test_push_rates_rate_limit(monkeypatch):
    _patch(monkeypatch, mappings=[
        {"roomcat": "KK002", "ezee_room_type": "Superior DLX",
         "rate_plan": "EP", "active_yn": "Y"}])
    monkeypatch.setattr(ch_rates, "MAX_PUSH_CALLS", 3)
    cl = LiveClient()
    out = ch_rates.push_rates(D1, D1 + datetime.timedelta(days=9),
                              client=cl)
    assert out["calls"] == 3                         # 10 din the, cap 3
    assert [c[2] for c in cl.rate_calls] == [
        "2026-10-01", "2026-10-02", "2026-10-03"]


def test_push_rates_fail_audited(monkeypatch):
    _patch(monkeypatch)
    audits = []
    monkeypatch.setattr(ch_rates, "synclog", SimpleNamespace(
        log=lambda *a, **k: audits.append((a[1], a[4]))))  # dir, status
    cl = LiveClient(fail=True)
    out = ch_rates.push_rates(D1, client=cl)
    assert out["failed"] == 2 and out["pushed"] == 0
    assert out["calls"] == 2
    assert audits == [("SetRoomRate", "F"), ("SetRoomRate", "F")]


def test_push_rates_unrated_count(monkeypatch):
    _patch(monkeypatch, defaults=_defaults(single=0.0, multiple=0.0))
    out = ch_rates.push_rates(D1, D2, client=LiveClient())
    assert out["pushed"] == 0 and out["calls"] == 0
    assert out["unrated"] == 4


# ============================================================
# stop_sell_rows + push_stop_sell
# ============================================================

def _blocks():
    return [
        ("KK002", datetime.datetime(2026, 10, 2),
         datetime.datetime(2026, 10, 4)),            # window ke andar
        ("KK002", datetime.datetime(2026, 9, 20),
         datetime.datetime(2026, 10, 10)),           # window clip dono taraf
        ("KK999", datetime.datetime(2026, 10, 2),
         datetime.datetime(2026, 10, 3)),            # unmapped -> skip
        ("KK002", datetime.datetime(2026, 11, 1),
         datetime.datetime(2026, 11, 5)),            # window ke bahar
    ]


def test_stop_sell_rows_join_and_clip(monkeypatch):
    _patch(monkeypatch, blocks=_blocks())
    rows = ch_rates.stop_sell_rows(D1, SAT)
    got = [(r["roomcat"], r["date"]) for r in rows]
    # KK002: Oct2,3 (block1) + Oct1,2,3 (block2 clip) = 5 rows, unmapped 0
    assert got == [
        ("KK002", D1), ("KK002", D2), ("KK002", D2),
        ("KK002", SAT), ("KK002", SAT)]
    assert all(r["ezee_room_type"] == "Superior DLX" for r in rows)


def test_stop_sell_no_blocks(monkeypatch):
    _patch(monkeypatch, blocks=[])
    assert ch_rates.stop_sell_rows(D1, SAT) == []


def test_push_stop_sell_not_live_skips(monkeypatch):
    _patch(monkeypatch, blocks=_blocks())
    out = ch_rates.push_stop_sell(D1, SAT, client=MockClient())
    assert out["skipped_reason"].startswith("mode=")


def test_push_stop_sell_payloads(monkeypatch):
    _patch(monkeypatch, blocks=_blocks())
    cl = LiveClient()
    out = ch_rates.push_stop_sell(D1, SAT, client=cl)
    assert out["pushed"] == 5 and out["calls"] == 5
    assert all(stop is True for _, _, stop in cl.stop_calls)
    assert sorted(c[1] for c in cl.stop_calls) == [
        "2026-10-01", "2026-10-02", "2026-10-02",
        "2026-10-03", "2026-10-03"]


def test_push_stop_sell_fail_audited(monkeypatch):
    _patch(monkeypatch, blocks=_blocks()[:1])   # Oct2..Oct4 ∩ Oct1..Oct2 = 1 din
    audits = []
    monkeypatch.setattr(ch_rates, "synclog", SimpleNamespace(
        log=lambda *a, **k: audits.append((a[1], a[4]))))  # dir, status
    out = ch_rates.push_stop_sell(D1, D2, client=LiveClient(fail=True))
    assert out["failed"] == 1
    assert audits == [("UpdateStopSell", "F")]
