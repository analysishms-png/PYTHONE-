"""Internal user-to-user messaging (VB6: Messaging table).

VB6 references:
  EmptyInbox.frm  (Finance > "Delete Message", form caption "InBox")
    Form_Load : DGSender/DGReceiver <- USERMAST user_name list
                (current user exclude)
    CmdShow   : Select * from Messaging
                  where Sender='<sender>' and Receiver='<receiver>'
                    and Cleared='Y'
    BtnDelete : MsgBox "Are you sure to delete selected mails." (vbYesNo)
                -> BeginTrans
                -> har ticked row par: Delete from Messaging where VNo=<n>
                -> CommitTrans, MsgBox "Inbox Message Deleted Successfully."
  HMS.bas (InBox/OutBox): Update Messaging Set Cleared='Y'/ReadYN=...

Deviation (BUG-fix style, DepOpStk/BUG-015 ki tarah): VB6 sirf VNo par
delete karta hai, lekin VNo per-VType sequence hai -> do VType ke same VNo
wo delete kar deta. Yahan (VType, VNo) pair par delete hota hai.
"""
from __future__ import annotations

from HMS_py.core import db

USER = db.get_user()


def messaging_users(cn=None, exclude: str = "") -> list[str]:
    """USERMAST user_name list (VB6 combo fill, exclude = current user)."""
    rows = db.query(
        "SELECT user_name FROM USERMAST WHERE user_name <> ? "
        "ORDER BY user_name", (exclude or "",), cn=cn)
    return [str(r[0] or "").strip() for r in rows]


def _fmt_dt(d, t) -> str:
    if d is None and t is None:
        return ""
    dpart = ""
    if d is not None:
        try:
            dpart = d.strftime("%d/%m/%Y")
        except Exception:
            dpart = str(d)[:10]
    tpart = str(t or "").strip()
    return (dpart + " " + tpart).strip()


def messaging_list(sender: str | None = None, receiver: str | None = None,
                   cleared: str | None = "Y", limit: int = 500,
                   cn=None) -> list[dict]:
    """VB6 CmdShow query. cleared=None -> filter skip (VB6 default 'Y')."""
    sql = ["SELECT TOP " + str(int(limit)) +
           " VType, VNo, VDate, VTime, Sender, Receiver, Cleared, "
           "ClearedDate, ClearedTime, ReadYN, ReadDate, ReadTime, "
           "Subject, Message FROM Messaging"]
    where, args = [], []
    if sender:
        where.append("Sender = ?")
        args.append(sender)
    if receiver:
        where.append("Receiver = ?")
        args.append(receiver)
    if cleared is not None:
        where.append("Cleared = ?")
        args.append(cleared)
    if where:
        sql.append("WHERE " + " AND ".join(where))
    sql.append("ORDER BY VDate DESC, VNo DESC")
    rows = db.query(" ".join(sql), tuple(args), cn=cn)
    out = []
    for r in rows:
        out.append({
            "vtype": (r[0] or "").strip(),
            "vno": int(r[1] or 0),
            "vdate": _fmt_dt(r[2], r[3]),
            "sender": (r[4] or "").strip(),
            "receiver": (r[5] or "").strip(),
            "cleared": (r[6] or "").strip(),
            "cleared_dt": _fmt_dt(r[7], r[8]),
            "read_yn": (r[9] or "").strip(),
            "read_dt": _fmt_dt(r[10], r[11]),
            "subject": (r[12] or "").strip(),
            "message": str(r[13] or ""),
        })
    return out


def messaging_delete(vnos: list[tuple[str, int]] | list[int], cn=None,
                     commit: bool = True) -> int:
    """Delete messages. Accepts (vtype, vno) tuples (safe) or bare VNo ints
    (VB6 style - deletes across all VTypes). Returns rows deleted."""
    if not vnos:
        return 0
    own = cn is None
    cn = cn or db.connect()
    try:
        cur = cn.cursor()
        n = 0
        for item in vnos:
            if isinstance(item, (tuple, list)):
                vtype, vno = (item[0] or "").strip(), int(item[1])
                cur.execute(
                    "DELETE FROM Messaging WHERE VType = ? AND VNo = ?",
                    (vtype, vno))
            else:
                cur.execute("DELETE FROM Messaging WHERE VNo = ?",
                            (int(item),))
            n += cur.rowcount if cur.rowcount and cur.rowcount > 0 else 0
        if commit:
            cn.commit()
        return n
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
