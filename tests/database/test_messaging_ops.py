"""Messaging core (VB6 EmptyInbox / Finance > Delete Message) - rollback-safe.

Covers the deliberate deviation from VB6: delete keyed on (VType, VNo),
not VNo alone (VB6 VNo per-VType sequence hai - cross-type delete bug).
"""
from __future__ import annotations

import datetime

import pytest

from HMS_py.core import messaging_ops as mops

pytestmark = pytest.mark.database

SITE = "KK"


def _seed(cn, *, vtype, vno, sender, receiver, cleared, subject="s"):
    cn.cursor().execute(
        "INSERT INTO Messaging (VType, VNo, VDate, VTime, Sender, Receiver, "
        "Cleared, ReadYN, Subject, Message, Site_Code, U_Name, U_EntDt, "
        "U_AE) VALUES (?, ?, ?, '10:00', ?, ?, ?, 'N', ?, 'body', ?, "
        "'PYADMIN', ?, 'A')",
        (vtype, vno, datetime.datetime(2026, 9, 27), sender, receiver,
         cleared, subject, SITE, datetime.datetime(2026, 9, 27)))


def _count(cn, vno) -> int:
    cur = cn.cursor()
    cur.execute("SELECT COUNT(*) FROM Messaging WHERE VNo = ?", (vno,))
    return int(cur.fetchone()[0])


def test_users_exclude_and_list_filters(db_transaction):
    cn = db_transaction
    _seed(cn, vtype="MSG", vno=999901, sender="admin", receiver="SUPER1",
          cleared="Y")
    _seed(cn, vtype="MSG", vno=999902, sender="admin", receiver="SUPER2",
          cleared="N")

    users = mops.messaging_users(cn=cn, exclude="admin")
    assert "admin" not in users and len(users) >= 1

    # VB6 CmdShow default: Cleared='Y'
    cleared = mops.messaging_list(sender="admin", cleared="Y", cn=cn)
    assert [r["vno"] for r in cleared] == [999901]
    assert cleared[0]["vtype"] == "MSG"
    assert cleared[0]["message"] == "body"

    # cleared=None -> dono
    allrows = mops.messaging_list(cleared=None, cn=cn)
    assert {999901, 999902} <= {r["vno"] for r in allrows}

    by_recv = mops.messaging_list(receiver="SUPER2", cleared=None, cn=cn)
    assert [r["vno"] for r in by_recv] == [999902]

    cn.rollback()


def test_delete_scoped_to_vtype_vno(db_transaction):
    cn = db_transaction
    assert _count(cn, 999911) == 0                    # precondition
    _seed(cn, vtype="MSG", vno=999911, sender="a", receiver="b", cleared="Y")
    _seed(cn, vtype="SMS", vno=999911, sender="a", receiver="b", cleared="Y")
    assert _count(cn, 999911) == 2

    n = mops.messaging_delete([("MSG", 999911)], cn=cn, commit=False)
    assert n == 1
    cur = cn.cursor()
    cur.execute("SELECT VType FROM Messaging WHERE VNo = ?", (999911,))
    assert [r[0] for r in cur.fetchall()] == ["SMS"]   # VB6 bug: SMS bhi jaata

    cn.rollback()
    # rollback se seed + delete dono gayab -> DB me 999911 kabhi nahi
    assert _count(cn, 999911) == 0


def test_delete_vno_int_and_empty(db_transaction):
    cn = db_transaction
    assert mops.messaging_delete([], cn=cn, commit=False) == 0
    assert _count(cn, 999921) == 0                    # precondition
    _seed(cn, vtype="MSG", vno=999921, sender="a", receiver="b", cleared="Y")
    n = mops.messaging_delete([999921], cn=cn, commit=False)   # VB6 style
    assert n == 1
    assert _count(cn, 999921) == 0
    cn.rollback()
    assert _count(cn, 999921) == 0                     # rollback ne seed bhi hataya
