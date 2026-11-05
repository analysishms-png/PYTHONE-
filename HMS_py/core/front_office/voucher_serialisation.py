"""Voucher Serialisation (VB6 FrmSerialiseVr.frm pattern).

Serialises voucher numbers for a given Voucher Type, renumbering V_No
sequentially by V_Date order. Archives existing Ledger/LedgerM entries to
LedgerMerge/LedgerMMerge, then re-inserts with new sequential numbers.

Tables used:
- Voucher_Type: lookup valid V_Type values (read-only)
- LedgerM: voucher headers to renumber (read/write)
- Ledger: voucher line items to archive and re-insert (read/write)
- LedgerMerge: archive table for old ledger entries (write)
- LedgerMMerge: archive table for old ledger header entries (write)
- Voucher_Prefix: update Start_Srl_No after renumbering (write)
"""

from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()


def serialise_voucher(
    vtype: str,
    vprefix: str,
    site: str = SITE_CODE,
    user: str = "SA",
    cn=None,
    commit: bool = True,
) -> dict:
    """Serialise voucher numbers for a given V_Type/V_Prefix/Site.

    Process:
    1. Get all LedgerM entries for this vtype/vprefix/site,
       ordered by V_Date, DocId, V_No
    2. Archive existing Ledger lines to LedgerMerge
    3. Delete existing LedgerM entries for this vtype/vprefix/site
    4. Re-insert LedgerM with new sequential V_No starting from 1,
       computing a new DocId for each (D+site+vtype+vprefix+vno)
    5. Re-insert Ledger lines from LedgerMerge back to Ledger,
       updating DocId to the new DocId
    6. Update Voucher_Prefix.Start_Srl_No to the new max V_No

    Returns dict with docids_processed, vnos_assigned, vnos_count.
    """
    vtype = (vtype or "").strip()
    if not vtype:
        raise ValueError("Voucher type zaroori hai")
    if not vprefix:
        raise ValueError("Voucher prefix zaroori hai")

    own = cn is None
    cn = cn or db.connect()
    try:
        # Step 1: Get all LedgerM entries ordered by V_Date, DocId, V_No
        rows = db.query(
            "SELECT DocId, V_No, V_Date FROM LedgerM "
            "WHERE V_Type = ? AND V_Prefix = ? AND Site_Code = ? "
            "ORDER BY V_Date, DocId, V_No",
            (vtype, vprefix, site), cn=cn
        )
        if not rows:
            return {"docids_processed": [], "vnos_assigned": [],
                    "vnos_count": 0}

        # Step 2: Archive existing Ledger lines to LedgerMerge
        for r in rows:
            old_docid = r.DocId
            db.execute(
                "INSERT INTO LedgerMerge "
                "(DocId, V_SNo, V_Type, V_No, Site_Code, V_Prefix, V_Date, "
                "SubCode, AmtDr, AmtCr, ContraSub, Chq_No, Chq_Date, Clg_Date, "
                "Narration, GroupCode, GroupNature, AgRefNo, U_Name, U_EntDt, "
                "U_AE, TImp_Dt, Mth_Year, emp_code, LogSite_Code, SeqNo, "
                "AgRefType, V_Time) "
                "SELECT DocId, V_SNo, V_Type, V_No, Site_Code, V_Prefix, V_Date, "
                "SubCode, AmtDr, AmtCr, ContraSub, Chq_No, Chq_Date, Clg_Date, "
                "Narration, GroupCode, GroupNature, AgRefNo, U_Name, U_EntDt, "
                "U_AE, TImp_Dt, Mth_Year, emp_code, LogSite_Code, SeqNo, "
                "AgRefType, V_Time "
                "FROM Ledger WHERE DocId = ?",
                (old_docid,), cn=cn, commit=False
            )

        # Step 3: Delete existing LedgerM entries for this vtype/vprefix/site
        db.execute(
            "DELETE FROM LedgerM WHERE V_Type = ? AND V_Prefix = ? "
            "AND Site_Code = ?",
            (vtype, vprefix, site), cn=cn, commit=False
        )

        # Step 4: Re-insert LedgerM with new sequential V_No starting from 1
        new_vno = 1
        docid_map = {}  # old_docid -> new_docid
        new_vnos = []

        for r in rows:
            old_docid = r.DocId
            new_vno_val = new_vno
            new_vnos.append(new_vno_val)

            # Build new DocId: D + site(2) + vtype(5-left) + vprefix(5-left) + vno(8-right)
            new_docid = (
                "D" + site.ljust(2) +
                str(vtype).ljust(5) +
                str(vprefix).ljust(5) +
                str(new_vno_val).rjust(8)
            )
            docid_map[old_docid] = new_docid

            db.execute(
                "INSERT INTO LedgerM (DocId, V_Type, V_No, V_Prefix, Site_Code, "
                "V_Date, Narration, U_Name, U_EntDt, U_AE, LogSite_Code) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, getdate(), ?, ?, ?)",
                (new_docid, vtype, new_vno_val, vprefix, site,
                 r.V_Date, r.Narration, user, user, site), cn=cn, commit=False
            )
            new_vno += 1

        # Step 5: Re-insert Ledger lines from LedgerMerge back to Ledger
        # with updated DocId mapping
        ledger_rows = db.query(
            "SELECT * FROM LedgerMerge WHERE V_Type = ? AND V_Prefix = ? "
            "AND Site_Code = ?",
            (vtype, vprefix, site), cn=cn
        )

        for lr in ledger_rows:
            old_docid = lr.DocId
            new_docid = docid_map.get(old_docid, old_docid)

            db.execute(
                "INSERT INTO Ledger (DocId, V_SNo, V_Type, V_No, Site_Code, "
                "V_Prefix, V_Date, SubCode, AmtDr, AmtCr, ContraSub, "
                "Chq_No, Chq_Date, Clg_Date, Narration, GroupCode, "
                "GroupNature, AgRefNo, U_Name, U_EntDt, U_AE, LogSite_Code, "
                "SeqNo, V_Time) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
                "?, ?, ?, ?, ?, ?, ?)",
                (
                    new_docid, lr.V_SNo, lr.V_Type, lr.V_No, lr.Site_Code,
                    lr.V_Prefix, lr.V_Date, lr.SubCode, lr.AmtDr, lr.AmtCr,
                    lr.ContraSub, lr.Chq_No, lr.Chq_Date, lr.Clg_Date,
                    lr.Narration, lr.GroupCode, lr.GroupNature, lr.AgRefNo,
                    lr.U_Name, lr.U_EntDt, lr.U_AE, lr.LogSite_Code,
                    lr.SeqNo, lr.V_Time
                ),
                cn=cn, commit=False
            )

        # Step 6: Update Voucher_Prefix.Start_Srl_No
        max_vno = new_vno - 1
        db.execute(
            "UPDATE Voucher_Prefix SET Start_Srl_No = ? "
            "WHERE V_Type = ? AND Prefix = ? AND Site_Code = ?",
            (max_vno, vtype, vprefix, site), cn=cn, commit=False
        )

        if commit:
            cn.commit()

        return {
            "docids_processed": [r.DocId for r in rows],
            "vnos_assigned": new_vnos,
            "vnos_count": len(new_vnos),
        }
    except Exception:
        try:
            cn.rollback()
        except Exception:
            pass
        raise
    finally:
        if own:
            cn.close()
