"""ChannelSyncLog — har eZee API call ka audit record.

Review fixes: PayloadHash (md5 of request) idempotent-retry detection ke
liye; 90-day retention purge helper.
"""
from __future__ import annotations

import datetime
import hashlib
import json

from HMS_py.core import db
from HMS_py.core.channel.config import PROVIDER, SITE_CODE, USER


def payload_hash(req_payload) -> str | None:
    """md5 hex of request payload (dict -> json). None-safe."""
    if req_payload is None:
        return None
    if isinstance(req_payload, (dict, list)):
        req_payload = json.dumps(req_payload, sort_keys=True,
                                 default=str)
    if isinstance(req_payload, str):
        req_payload = req_payload.encode("utf-8")
    return hashlib.md5(req_payload).hexdigest()


def log(direction: str, request_type: str, req_payload=None, resp_payload=None,
        status: str = "S", err_msg: str = "", retries: int = 0,
        user: str = USER, cn=None, commit: bool = True) -> int:
    """Ek API call ka record. Returns new log Id (SCOPE_IDENTITY)."""
    if direction not in ("OUT", "IN"):
        raise ValueError("Direction 'OUT' ya 'IN' hona chahiye")
    if status not in ("S", "F"):
        raise ValueError("Status 'S' ya 'F' hona chahiye")
    own = cn is None
    if own:
        cn = db.connect()
    try:
        cur = cn.cursor()
        cur.execute(
            "INSERT INTO ChannelSyncLog (Provider, Direction, RequestType, "
            "ReqPayload, RespPayload, Status, ErrMsg, Retries, PayloadHash, "
            "Site_Code, U_Name, U_EntDt, LogSite_Code) "
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), ?); "
            "SELECT CAST(SCOPE_IDENTITY() AS INT);",
            (PROVIDER, direction, request_type,
             None if req_payload is None else str(req_payload)[:100000],
             None if resp_payload is None else str(resp_payload)[:100000],
             status, (err_msg or "")[:500], int(retries),
             payload_hash(req_payload), SITE_CODE, user, SITE_CODE))
        cur.nextset()
        log_id = int(cur.fetchone()[0])
        if commit:
            cn.commit()
        return log_id
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


def list_recent(top: int = 100, status: str | None = None, cn=None) -> list[dict]:
    sql = ("SELECT Id, Direction, RequestType, Status, ErrMsg, Retries, "
           "PayloadHash, U_EntDt FROM ChannelSyncLog WHERE Provider = ? "
           "AND LogSite_Code = ?")
    params: list = [PROVIDER, SITE_CODE]
    if status in ("S", "F"):
        sql += " AND Status = ?"
        params.append(status)
    sql += " ORDER BY Id DESC"
    rows = db.query(sql if top else sql, tuple(params[:len(params)]), cn=cn)
    out = []
    for r in rows[:top]:
        out.append({"id": r.Id, "direction": r.Direction,
                    "request_type": r.RequestType, "status": r.Status,
                    "err_msg": r.ErrMsg or "", "retries": r.Retries,
                    "payload_hash": r.PayloadHash, "ent_dt": r.U_EntDt})
    return out


def find_same_hash(req_payload, since_dt=None,
                   exclude_log_id: int | None = None,
                   cn=None) -> int | None:
    """Idempotency: isi payload ka pichhla successful log (optional
    since_dt window ke andar). Returns Id ya None."""
    h = payload_hash(req_payload)
    if not h:
        return None
    sql = ("SELECT TOP 1 Id FROM ChannelSyncLog WHERE PayloadHash = ? "
           "AND Status = 'S'")
    params: list = [h]
    if since_dt is not None:
        sql += " AND U_EntDt >= ?"
        params.append(since_dt)
    if exclude_log_id:
        sql += " AND Id <> ?"
        params.append(exclude_log_id)
    rows = db.query(sql + " ORDER BY Id DESC", tuple(params), cn=cn)
    return rows[0][0] if rows else None


def purge_older_than(days: int = 90, cn=None, commit: bool = True) -> int:
    """Retention (plan review fix): NVARCHAR(MAX) payloads pe control."""
    if days < 30:
        raise ValueError("Retention 30+ din rakho (safety)")
    cutoff = datetime.datetime.now() - datetime.timedelta(days=days)
    return db.execute("DELETE FROM ChannelSyncLog WHERE U_EntDt < ?",
                      (cutoff,), cn=cn, commit=commit)
