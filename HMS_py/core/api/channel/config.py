"""ChannelEnviro config — 1-row get/save (eInvoice pattern, review-fixed).

- DPAPI-first secret storage (win32crypt CryptProtectData), XOR fallback.
- Unique (Provider, LogSite_Code) enforced by index; save() upserts.
- Validation: BaseURL scheme/host, poll interval 1..1440, YN flags.
- Network never happens here; client.py honours MockYN/EnabledYN.
"""
from __future__ import annotations

import base64

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()

PROVIDER = "EZEE"
DEFAULT_URL = "https://live.ipms247.com"
_XOR_KEY = b"HMSpyChannelV1"          # fallback-only obfuscation key


# ---------- secret blob helpers (DPAPI-first) ----------

def _dpapi_available() -> bool:
    try:
        import win32crypt  # noqa: F401
        return True
    except ImportError:
        return False


def _protect(plain: str) -> bytes:
    data = plain.encode("utf-8")
    if _dpapi_available():
        import win32crypt
        blob = win32crypt.CryptProtectData(data, "HMSpy-ChannelAuthCode",
                                           None, None, None, 0)
        return b"D" + blob                     # D = DPAPI marker
    xored = bytes(b ^ _XOR_KEY[i % len(_XOR_KEY)] for i, b in enumerate(data))
    return b"X" + base64.b64encode(xored)      # X = XOR fallback marker


def _unprotect(blob: bytes | None) -> str:
    if not blob:
        return ""
    marker, payload = blob[:1], blob[1:]
    if marker == b"D":
        import win32crypt
        _desc, data = win32crypt.CryptUnprotectData(payload, None, None,
                                                    None, 0)
        return data.decode("utf-8")
    if marker == b"X":
        xored = base64.b64decode(payload)
        return bytes(b ^ _XOR_KEY[i % len(_XOR_KEY)]
                     for i, b in enumerate(xored)).decode("utf-8")
    return ""


# ---------- validation ----------

def _validate(cfg: dict):
    url = str(cfg.get("base_url") or DEFAULT_URL).strip()
    if not (url.startswith("https://") or url.startswith("http://")):
        raise ValueError("BaseURL http(s):// se shuru hona chahiye")
    poll = int(cfg.get("poll_interval_min") or 15)
    if not 1 <= poll <= 1440:
        raise ValueError("PollIntervalMin 1..1440 ke beech ho")
    for k in ("enabled_yn", "mock_yn"):
        v = str(cfg.get(k) or "").upper()
        if v not in ("Y", "N"):
            raise ValueError(f"{k} 'Y' ya 'N' hona chahiye")
    hotel = str(cfg.get("hotel_code") or "").strip()
    if len(hotel) > 20:
        raise ValueError("HotelCode max 20 chars")


# ---------- row mapping ----------

def _map(r) -> dict:
    return {
        "id": r.Id, "provider": r.Provider,
        "hotel_code": (r.HotelCode or "").strip(),
        "base_url": (r.BaseURL or "").strip(),
        "poll_interval_min": r.PollIntervalMin,
        "enabled_yn": r.EnabledYN, "mock_yn": r.MockYN,
        "user_agent": (r.UserAgent or "").strip(),
        "last_booking_poll_dt": r.LastBookingPollDt,
        "last_change_id": (r.LastChangeId or "").strip(),
    }


_COLS = ("Id, Provider, HotelCode, BaseURL, PollIntervalMin, EnabledYN, "
         "MockYN, UserAgent, LastBookingPollDt, LastChangeId")


def get(cn=None) -> dict | None:
    """1-row config (secret kabhi return nahi hota). None = abhi setup nahi."""
    rows = db.query(f"SELECT {_COLS} FROM ChannelEnviro WHERE Provider = ? "
                    "AND LogSite_Code = ?", (PROVIDER, SITE_CODE), cn=cn)
    return _map(rows[0]) if rows else None


def get_secret(cn=None) -> str:
    """AuthCode decrypt karke (DPAPI/XOR) — sirf client.py use kare."""
    rows = db.query("SELECT AuthCode FROM ChannelEnviro WHERE Provider = ? "
                    "AND LogSite_Code = ?", (PROVIDER, SITE_CODE), cn=cn)
    return _unprotect(rows[0][0] if rows else None)


def save(cfg: dict, user: str = USER, cn=None, commit: bool = True) -> int:
    """Upsert 1-row config. AuthCode plain string aaye to protect karke
    store; None/'' aaye to existing rehta hai."""
    _validate(cfg)
    own = cn is None
    if own:
        cn = db.connect()
    try:
        cur = cn.cursor()
        cur.execute("SELECT Id FROM ChannelEnviro WHERE Provider = ? "
                    "AND LogSite_Code = ?", (PROVIDER, SITE_CODE))
        row = cur.fetchone()
        secret_blob = None
        if cfg.get("auth_code"):
            secret_blob = _protect(str(cfg["auth_code"]))
        if row is None:
            cur.execute(
                "INSERT INTO ChannelEnviro (Provider, HotelCode, AuthCode, "
                "BaseURL, PollIntervalMin, EnabledYN, MockYN, UserAgent, "
                "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
                (PROVIDER, str(cfg.get("hotel_code") or "").strip(),
                 secret_blob, str(cfg.get("base_url") or DEFAULT_URL).strip(),
                 int(cfg.get("poll_interval_min") or 15),
                 str(cfg.get("enabled_yn") or "N").upper(),
                 str(cfg.get("mock_yn") or "Y").upper(),
                 str(cfg.get("user_agent") or "").strip(),
                 SITE_CODE, user, SITE_CODE))
            new_id = cur.execute("SELECT @@IDENTITY").fetchone()[0]
        else:
            new_id = row[0]
            sets = ["HotelCode = ?", "BaseURL = ?", "PollIntervalMin = ?",
                    "EnabledYN = ?", "MockYN = ?", "UserAgent = ?",
                    "U_Name = ?", "U_EntDt = getdate()", "U_AE = 'E'"]
            params = [str(cfg.get("hotel_code") or "").strip(),
                      str(cfg.get("base_url") or DEFAULT_URL).strip(),
                      int(cfg.get("poll_interval_min") or 15),
                      str(cfg.get("enabled_yn") or "N").upper(),
                      str(cfg.get("mock_yn") or "Y").upper(),
                      str(cfg.get("user_agent") or "").strip(), user]
            if secret_blob is not None:
                sets.append("AuthCode = ?")
                params.append(secret_blob)
            params += [new_id]
            cur.execute("UPDATE ChannelEnviro SET " + ", ".join(sets)
                        + " WHERE Id = ?", params)
        if commit:
            cn.commit()
        return int(new_id)
    except Exception:
        if own:
            try:
                cn.rollback()
            except Exception:
                pass
        raise
    finally:
        if own:
            cn.close()


def set_poll_cursor(poll_dt, change_id: str | None = None, cn=None,
                    commit: bool = True) -> int:
    """FetchBookings success ke baad cursor update (booking_in.py use karega)."""
    return db.execute(
        "UPDATE ChannelEnviro SET LastBookingPollDt = ?, "
        "LastChangeId = ISNULL(?, LastChangeId) "
        "WHERE Provider = ? AND LogSite_Code = ?",
        (poll_dt, change_id, PROVIDER, SITE_CODE), cn=cn, commit=commit)


def is_live_ready(cn=None) -> bool:
    """Live (network) mode allowed sirf jab: EnabledYN='Y' AND MockYN='N'
    AND HotelCode AND AuthCode dono set hon."""
    cfg = get(cn=cn)
    if not cfg:
        return False
    if cfg["enabled_yn"] != "Y" or cfg["mock_yn"] != "N":
        return False
    if not cfg["hotel_code"]:
        return False
    return bool(get_secret(cn=cn))
