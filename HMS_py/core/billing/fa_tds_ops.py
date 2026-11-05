"""TDS Operations (VB6: FaTDSCat, FaTDSChal, FaTDSCertificate - Finance → TDS).

Tables:
- TDSCat: TDS Category master (Code, Name, TDSLimit, TDSPercentage)
- TDSChal: TDS Challan header (DocId PK)
- TDSChal1: TDS Challan detail (DocId+VSNo PK)
- TDSCerti: TDS Certificate (CertiNo PK)
- LedgerTDS: TDS per voucher line (for party-wise TDS)

Schema: verified from live KailashData2526 DB.
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()


# ============================================================
# TDSCat - TDS Category Master
# ============================================================
def _map_tdscat(r) -> dict:
    try:
        return {
            "code": r.Code or "", "name": (r.Name or "").strip(),
            "tdslimit": float(r.TDSLimit or 0),
            "tdspercentage": float(r.TDSPercentage or 0),
        }
    except AttributeError:
        c, n, l, p = r[:4]
        return {"code": c or "", "name": (n or "").strip(),
                "tdslimit": float(l or 0), "tdspercentage": float(p or 0)}


def tdscat_list(cn=None) -> list[dict]:
    rows = db.query(
        "SELECT Code, Name, TDSLimit, TDSPercentage FROM TDSCat "
        "ORDER BY Code", cn=cn)
    return [_map_tdscat(r) for r in rows]


def tdscat_get(code: str, cn=None) -> dict | None:
    rows = db.query(
        "SELECT Code, Name, TDSLimit, TDSPercentage FROM TDSCat "
        "WHERE RTRIM(Code) = ?", (code,), cn=cn)
    return _map_tdscat(rows[0]) if rows else None


def tdscat_insert(rec: dict, cn=None, commit: bool = True) -> int:
    code = (rec.get("code") or "").strip()
    name = (rec.get("name") or "").strip()
    if not code or not name:
        raise ValueError("Code aur Name zaroori hain")
    return db.execute(
        "INSERT INTO TDSCat (Code, Name, TDSLimit, TDSPercentage, "
        "U_Name, U_EntDt, U_AE, Site_Code, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, getdate(), 'A', ?, ?)",
        (code, name, float(rec.get("tdslimit") or 0),
         float(rec.get("tdspercentage") or 0), USER, SITE_CODE, SITE_CODE),
        cn=cn, commit=commit)


def tdscat_update(code: str, rec: dict, cn=None, commit: bool = True) -> int:
    return db.execute(
        "UPDATE TDSCat SET Name = ?, TDSLimit = ?, TDSPercentage = ?, "
        "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE RTRIM(Code) = ?",
        ((rec.get("name") or "").strip(), float(rec.get("tdslimit") or 0),
         float(rec.get("tdspercentage") or 0), USER, code),
        cn=cn, commit=commit)


def tdscat_delete(code: str, cn=None, commit: bool = True) -> int:
    return db.execute("DELETE FROM TDSCat WHERE RTRIM(Code) = ?", (code,),
                      cn=cn, commit=commit)


# ============================================================
# TDSChal - TDS Challan Header (VB6 FaTDSChal)
# ============================================================
def _map_tdschal(r) -> dict:
    try:
        return {
            "docid": r.DocId or "", "chaltype": r.ChalType or "",
            "chalno": r.ChalNo or "", "chaldate": r.ChalDate,
            "v_prefix": r.v_Prefix or "",
            "bankcode": r.BankCode or "", "monthno": r.MonthNo or "",
            "tdsamt": float(r.TDSAmt or 0),
            "chq_no": r.Chq_No or "", "chq_date": r.Chq_Date,
            "bank_name": (r.BankName or "").strip(),
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        d, ct, cn2, cd, site, vp, bc, mn, ta, cq, cqd, un, _, uae, bn, lgs = r
        return {
            "docid": d or "", "chaltype": ct or "",
            "chalno": cn2 or "", "chaldate": cd,
            "v_prefix": vp or "",
            "bankcode": bc or "", "monthno": mn or "",
            "tdsamt": float(ta or 0),
            "chq_no": cq or "", "chq_date": cqd,
            "bank_name": (bn or "").strip(),
            "u_name": un or "", "u_ae": uae or "",
        }


def _validate_tdschal(rec: dict):
    if not rec.get("docid", "").strip():
        raise ValueError("DocId zaroori hai")


def tdschal_list(cn=None, limit: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {int(limit)} DocId, ChalType, ChalNo, ChalDate, Site_Code, "
        "v_Prefix, BankCode, MonthNo, TDSAmt, Chq_No, Chq_Date, "
        "U_Name, U_EntDt, U_AE, BankName, LogSite_Code "
        "FROM TDSChal ORDER BY DocId", cn=cn)
    return [_map_tdschal(r) for r in rows]


def tdschal_get(docid: str, cn=None) -> dict | None:
    rows = db.query(
        "SELECT DocId, ChalType, ChalNo, ChalDate, Site_Code, v_Prefix, "
        "BankCode, MonthNo, TDSAmt, Chq_No, Chq_Date, U_Name, U_EntDt, "
        "U_AE, BankName, LogSite_Code "
        "FROM TDSChal WHERE DocId = ?", (docid,), cn=cn)
    return _map_tdschal(rows[0]) if rows else None


def tdschal_insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate_tdschal(rec)
    return db.execute(
        "INSERT INTO TDSChal (DocId, ChalType, ChalNo, ChalDate, Site_Code, "
        "v_Prefix, BankCode, MonthNo, TDSAmt, Chq_No, Chq_Date, "
        "U_Name, U_EntDt, U_AE, BankName, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?)",
        (rec["docid"], rec.get("chaltype", ""), rec.get("chalno", ""),
         rec.get("chaldate"), SITE_CODE, rec.get("v_prefix", ""),
         rec.get("bankcode", ""), rec.get("monthno", ""),
         float(rec.get("tdsamt") or 0),
         rec.get("chq_no", ""), rec.get("chq_date"),
         USER, rec.get("bank_name", ""), SITE_CODE),
        cn=cn, commit=commit)


def tdschal_update(docid: str, rec: dict, cn=None, commit: bool = True) -> int:
    _validate_tdschal(rec)
    return db.execute(
        "UPDATE TDSChal SET ChalType = ?, ChalNo = ?, ChalDate = ?, "
        "v_Prefix = ?, BankCode = ?, MonthNo = ?, TDSAmt = ?, "
        "Chq_No = ?, Chq_Date = ?, U_Name = ?, U_EntDt = getdate(), "
        "U_AE = 'E', BankName = ? WHERE DocId = ?",
        (rec.get("chaltype", ""), rec.get("chalno", ""),
         rec.get("chaldate"), rec.get("v_prefix", ""),
         rec.get("bankcode", ""), rec.get("monthno", ""),
         float(rec.get("tdsamt") or 0),
         rec.get("chq_no", ""), rec.get("chq_date"),
         USER, rec.get("bank_name", ""), docid),
        cn=cn, commit=commit)


def tdschal_delete(docid: str, cn=None, commit: bool = True) -> int:
    return db.execute("DELETE FROM TDSChal WHERE DocId = ?", (docid,),
                      cn=cn, commit=commit)


# ============================================================
# TDSChal1 - TDS Challan Detail (VB6 FaTDSChal grid)
# ============================================================
def _map_tdschal1(r) -> dict:
    try:
        return {
            "docid": r.DocId or "", "vsno": r.VSNo or 0,
            "chaltype": r.ChalType or "", "chalno": r.ChalNo or "",
            "chaldate": r.ChalDate,
            "tds_docid": r.TDSDOCID or "", "tds_vsno": r.TDSVSNo or 0,
            "v_date": r.V_Date,
            "tdscode": r.TDSCODE or "", "accode": r.ACCODE or "",
            "amt": float(r.Amt or 0), "tds": float(r.TDS or 0),
            "tdsamt": float(r.TDSAmt or 0),
            "certi_no": r.CertiNo or "", "certi_date": r.CertiDate,
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        d, vs, ct, cn2, site, cd, td, tvs, vd, tc, ac, amt, t, ta, \
            cno, cdt, un, _, uae, lgs = r
        return {
            "docid": d or "", "vsno": vs or 0,
            "chaltype": ct or "", "chalno": cn2 or "",
            "chaldate": cd,
            "tds_docid": td or "", "tds_vsno": tvs or 0,
            "v_date": vd,
            "tdscode": tc or "", "accode": ac or "",
            "amt": float(amt or 0), "tds": float(t or 0),
            "tdsamt": float(ta or 0),
            "certi_no": cno or "", "certi_date": cdt,
            "u_name": un or "", "u_ae": uae or "",
        }


def _validate_tdschal1(rec: dict):
    if not rec.get("docid", "").strip():
        raise ValueError("DocId zaroori hai")


def tdschal1_list(cn=None, limit: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {int(limit)} DocId, VSNo, ChalType, ChalNo, Site_Code, "
        "ChalDate, TDSDOCID, TDSVSNo, V_Date, TDSCODE, ACCODE, "
        "Amt, TDS, TDSAmt, CertiNo, CertiDate, U_Name, U_EntDt, U_AE, "
        "LogSite_Code FROM TDSChal1 ORDER BY DocId, VSNo", cn=cn)
    return [_map_tdschal1(r) for r in rows]


def tdschal1_get(docid: str, vsno: int, cn=None) -> dict | None:
    rows = db.query(
        "SELECT DocId, VSNo, ChalType, ChalNo, Site_Code, ChalDate, "
        "TDSDOCID, TDSVSNo, V_Date, TDSCODE, ACCODE, Amt, TDS, TDSAmt, "
        "CertiNo, CertiDate, U_Name, U_EntDt, U_AE, LogSite_Code "
        "FROM TDSChal1 WHERE DocId = ? AND VSNo = ?",
        (docid, vsno), cn=cn)
    return _map_tdschal1(rows[0]) if rows else None


def tdschal1_lines(docid: str, cn=None) -> list[dict]:
    """Get all detail lines for a challan header."""
    rows = db.query(
        "SELECT DocId, VSNo, ChalType, ChalNo, Site_Code, ChalDate, "
        "TDSDOCID, TDSVSNo, V_Date, TDSCODE, ACCODE, Amt, TDS, TDSAmt, "
        "CertiNo, CertiDate, U_Name, U_EntDt, U_AE, LogSite_Code "
        "FROM TDSChal1 WHERE DocId = ? ORDER BY VSNo",
        (docid,), cn=cn)
    return [_map_tdschal1(r) for r in rows]


def tdschal1_insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate_tdschal1(rec)
    return db.execute(
        "INSERT INTO TDSChal1 (DocId, VSNo, ChalType, ChalNo, Site_Code, "
        "ChalDate, TDSDOCID, TDSVSNo, V_Date, TDSCODE, ACCODE, "
        "Amt, TDS, TDSAmt, CertiNo, CertiDate, U_Name, U_EntDt, U_AE, "
        "LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (rec["docid"], rec["vsno"], rec.get("chaltype", ""),
         rec.get("chalno", ""), SITE_CODE,
         rec.get("chaldate"), rec.get("tds_docid", ""),
         rec.get("tds_vsno", 0), rec.get("v_date"),
         rec.get("tdscode", ""), rec.get("accode", ""),
         float(rec.get("amt") or 0), float(rec.get("tds") or 0),
         float(rec.get("tdsamt") or 0),
         rec.get("certi_no", ""), rec.get("certi_date"),
         USER, SITE_CODE),
        cn=cn, commit=commit)


def tdschal1_delete(docid: str, vsno: int, cn=None, commit: bool = True) -> int:
    return db.execute(
        "DELETE FROM TDSChal1 WHERE DocId = ? AND VSNo = ?",
        (docid, vsno), cn=cn, commit=commit)


def tdschal1_delete_all(docid: str, cn=None, commit: bool = True) -> int:
    """Delete all detail lines for a challan."""
    return db.execute(
        "DELETE FROM TDSChal1 WHERE DocId = ?", (docid,),
        cn=cn, commit=commit)


def tds_amt(onamt: float, tds_pct: float) -> float:
    """FA-5 VB6 FaVrEnt loc_F0875D: (ONAMT * TDS) / 100, Format '0' (integer rupees)."""
    v = float(onamt or 0) * float(tds_pct or 0) / 100.0
    return float(int(v + 0.5) if v >= 0 else int(v - 0.5))


def tds_detail(subcode: str, d_from=None, d_to=None, cn=None) -> list[dict]:
    """Party-wise TDS lines (VB6 FaTDSCertificate: LEDGERTDS by TDSDrCode).
    Returns dicts with 'tds_amt' (UI FaTDSCertificate sum key)."""
    subcode = (subcode or "").strip()
    sql = ("SELECT t.DocId, t.V_SNo, t.V_DATE, t.TDSCode, t.TDSDrCode, "
           "t.TDSYN, t.ONAMT, t.TDS, t.TDSAMT, t.TDSPOST, t.TDSDocId, "
           "t.TDSV_SNo, s.Name "
           "FROM LEDGERTDS t "
           "LEFT JOIN SubGroup s ON s.SubCode = t.TDSDrCode "
           "WHERE RTRIM(t.TDSDrCode) = ?")
    params: list = [subcode]
    if d_from is not None:
        sql += " AND t.V_DATE >= ?"
        params.append(d_from)
    if d_to is not None:
        sql += " AND t.V_DATE <= ?"
        params.append(d_to)
    sql += " ORDER BY t.V_DATE, t.DocId, t.V_SNo"
    rows = db.query(sql, tuple(params), cn=cn)
    return [{
        "docid": r[0] or "", "v_sno": r[1] or 0, "v_date": r[2],
        "tdscode": r[3] or "", "tdsdrcode": r[4] or "",
        "tdsyn": r[5] or "", "onamt": float(r[6] or 0),
        "tds": float(r[7] or 0), "tds_amt": float(r[8] or 0),
        "tdspost": r[9] or "", "tds_docid": r[10] or "",
        "tds_v_sno": r[11] or 0, "name": (r[12] or "").strip(),
    } for r in rows]


# ============================================================
# TDSCertificate - TDS Certificate (VB6 FaTDSCertificate)
# ============================================================
def _map_tdscerti(r) -> dict:
    try:
        return {
            "certi_no": r.CertiNo or "", "certi_date": r.CertiDate,
            "code": r.Code or "", "site_code": r.Site_Code or "",
            "from_date": r.FromDate, "to_date": r.ToDate,
            "tds_amt": float(r.TDSAmt or 0),
            "full_name": (r.FullName or "").strip(),
            "desig": (r.Desig or "").strip(),
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        cn, cd, co, sc, fd, td, ta, fn, dg, un, _, uae, lgs = r[:13]
        return {
            "certi_no": cn or "", "certi_date": cd,
            "code": co or "", "site_code": sc or "",
            "from_date": fd, "to_date": td,
            "tds_amt": float(ta or 0),
            "full_name": (fn or "").strip(),
            "desig": (dg or "").strip(),
            "u_name": un or "", "u_ae": uae or "",
        }


def tdscerti_list(cn=None, limit: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {int(limit)} CertiNo, CertiDate, Code, Site_Code, "
        "FromDate, ToDate, TDSAmt, FullName, Desig, U_Name, U_EntDt, "
        "U_AE, LogSite_Code FROM TDSCerti ORDER BY CertiNo", cn=cn)
    return [_map_tdscerti(r) for r in rows]


def tdscerti_get(certi_no: str, cn=None) -> dict | None:
    rows = db.query(
        "SELECT CertiNo, CertiDate, Code, Site_Code, FromDate, ToDate, "
        "TDSAmt, FullName, Desig, U_Name, U_EntDt, U_AE, LogSite_Code "
        "FROM TDSCerti WHERE CertiNo = ?", (certi_no,), cn=cn)
    return _map_tdscerti(rows[0]) if rows else None


def tdscerti_insert(rec: dict, cn=None, commit: bool = True) -> int:
    certi_no = (rec.get("certi_no") or "").strip()
    code = (rec.get("code") or "").strip()
    if not certi_no or not code:
        raise ValueError("CertiNo aur Code zaroori hain")
    return db.execute(
        "INSERT INTO TDSCerti (CertiNo, CertiDate, Code, Site_Code, "
        "FromDate, ToDate, TDSAmt, FullName, Desig, U_Name, U_EntDt, "
        "U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (certi_no, rec.get("certi_date"), code, SITE_CODE,
         rec.get("from_date"), rec.get("to_date"),
         float(rec.get("tds_amt") or 0),
         (rec.get("full_name") or "").strip(),
         (rec.get("desig") or "").strip(), USER, SITE_CODE),
        cn=cn, commit=commit)


def tdscerti_update(certi_no: str, rec: dict, cn=None, commit: bool = True) -> int:
    return db.execute(
        "UPDATE TDSCerti SET CertiDate = ?, Code = ?, Site_Code = ?, "
        "FromDate = ?, ToDate = ?, TDSAmt = ?, FullName = ?, Desig = ?, "
        "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE CertiNo = ?",
        (rec.get("certi_date"), rec.get("code"), SITE_CODE,
         rec.get("from_date"), rec.get("to_date"),
         float(rec.get("tds_amt") or 0),
         (rec.get("full_name") or "").strip(),
         (rec.get("desig") or "").strip(), USER, certi_no),
        cn=cn, commit=commit)


def tdscerti_delete(certi_no: str, cn=None, commit: bool = True) -> int:
    return db.execute("DELETE FROM TDSCerti WHERE CertiNo = ?",
                      (certi_no,), cn=cn, commit=commit)


# ============================================================
# TDS Calculation (VB6 FaTDSCat.frm)
# ============================================================
def tds_categories(cn=None) -> list[dict]:
    """TDSCat rows [{code, name, limit, percentage}]."""
    rows = db.query(
        "SELECT Code, Name, TDSLimit, TDSPercentage FROM TDSCat "
        "ORDER BY Code", cn=cn)
    return [{"code": r[0] or "", "name": (r[1] or "").strip(),
             "limit": float(r[2] or 0), "percentage": float(r[3] or 0)}
            for r in rows]


def tds_calculate(amount: float, tdscat_code: str, cn=None,
                  apply_limit: bool = True) -> dict:
    """VB6 TDS calc: Amount * Rate / 100 (TDSCat.TDSPercentage).

    apply_limit=True (default): amount < TDSLimit => TDS 0 (limit rule).
    TDSCat row na mile => ValueError (silent 0 galat posting karta).
    Returns {amount, tdscat, rate, limit, tds, deducted}.
    """
    rows = db.query(
        "SELECT Name, TDSLimit, TDSPercentage FROM TDSCat WHERE Code = ?",
        (tdscat_code,), cn=cn)
    if not rows:
        raise ValueError(f"TDSCat '{tdscat_code}' nahi mila")
    name, limit, pct = (rows[0][0], float(rows[0][1] or 0),
                        float(rows[0][2] or 0))
    amt = round(float(amount or 0), 2)
    below_limit = apply_limit and limit > 1.0 and amt < limit
    tds = 0.0 if below_limit else round(amt * pct / 100.0, 2)
    return {"amount": amt, "tdscat": tdscat_code, "name": name,
            "rate": pct, "limit": limit, "tds": tds,
            "deducted": not below_limit}


# ============================================================
# TDS Challan Generation (VB6 FaTDSChal.frm TopCtrl1_eSave)
# Creates TDSChal header + TDSChal1 lines from pending LEDGERTDS
# Updates LEDGERTDS.TDSPOST='Y', creates Ledger entries
# ============================================================
def generate_tds_challan(tds_docid: str, tds_vsno: int, certi_no: str,
                        certi_date, cn=None, commit: bool = True) -> dict:
    """Update TDSChal1 with CertiNo/CertiDate, mark LEDGERTDS TDSPOST='Y'."""
    own = cn is None
    cn = cn or db.connect()
    try:
        # Update TDSChal1
        db.execute(
            "UPDATE TDSChal1 SET CertiNo = ?, CertiDate = ?, "
            "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
            "WHERE DocId = ? AND VSNo = ?",
            (certi_no, certi_date, USER, tds_docid, tds_vsno), cn=cn, commit=False)

        # Mark LEDGERTDS as posted
        db.execute(
            "UPDATE LEDGERTDS SET TDSPOST = 'Y' "
            "WHERE TDSDocId = ? AND TDSV_SNo = ?",
            (tds_docid, tds_vsno), cn=cn, commit=False)

        if commit:
            cn.commit()
        return {"certi_no": certi_no, "tds_docid": tds_docid, "tds_vsno": tds_vsno}
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


# ============================================================
# API Classes for BaseMasterForm
# ============================================================
class _TDSCatAPI:
    @staticmethod
    def list_all(cn=None): return tdscat_list(cn)
    @staticmethod
    def get(code, cn=None): return tdscat_get(code, cn)
    @staticmethod
    def exists(code, cn=None): return tdscat_get(code, cn) is not None
    @staticmethod
    def insert(rec, cn=None, commit=True): return tdscat_insert(rec, cn, commit)
    @staticmethod
    def update(code, rec, cn=None, commit=True): return tdscat_update(code, rec, cn, commit)
    @staticmethod
    def delete(code, cn=None, commit=True): return tdscat_delete(code, cn, commit)

TDSCatAPI = _TDSCatAPI()


class _TDSChalAPI:
    @staticmethod
    def list_all(cn=None, limit=500): return tdschal_list(cn, limit)
    @staticmethod
    def get(docid, cn=None): return tdschal_get(docid, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return tdschal_insert(rec, cn, commit)
    @staticmethod
    def update(docid, rec, cn=None, commit=True): return tdschal_update(docid, rec, cn, commit)
    @staticmethod
    def delete(docid, cn=None, commit=True): return tdschal_delete(docid, cn, commit)

TDSChalAPI = _TDSChalAPI()


class _TDSChal1API:
    @staticmethod
    def list_all(cn=None, limit=500): return tdschal1_list(cn, limit)
    @staticmethod
    def get(docid, vsno, cn=None): return tdschal1_get(docid, vsno, cn)
    @staticmethod
    def lines(docid, cn=None): return tdschal1_lines(docid, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return tdschal1_insert(rec, cn, commit)
    @staticmethod
    def delete(docid, vsno, cn=None, commit=True): return tdschal1_delete(docid, vsno, cn, commit)
    @staticmethod
    def delete_all(docid, cn=None, commit=True): return tdschal1_delete_all(docid, cn, commit)

TDSChal1API = _TDSChal1API()


class _TDSCertificateAPI:
    @staticmethod
    def list_all(cn=None, limit=500): return tdscerti_list(cn, limit)
    @staticmethod
    def get(certi_no, cn=None): return tdscerti_get(certi_no, cn)
    @staticmethod
    def exists(certi_no, cn=None): return tdscerti_get(certi_no, cn) is not None
    @staticmethod
    def insert(rec, cn=None, commit=True): return tdscerti_insert(rec, cn, commit)
    @staticmethod
    def update(certi_no, rec, cn=None, commit=True): return tdscerti_update(certi_no, rec, cn, commit)
    @staticmethod
    def delete(certi_no, cn=None, commit=True): return tdscerti_delete(certi_no, cn, commit)

TDSCertificateAPI = _TDSCertificateAPI()