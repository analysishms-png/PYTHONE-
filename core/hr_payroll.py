"""HR/Payroll - Salary, Attendence, Loan, Leave_Ench, OverTime CRUD."""
from __future__ import annotations
from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()

# === Salary ===
def _map_salary(r) -> dict:
    try:
        return {"mth_year": r.Mth_Year or "", "emp_code": r.Emp_Code or "", "work_day": r.Work_Day or 0.0, "cl": r.CL or 0.0, "leave": r.Leave or 0.0, "sunday": r.Sunday or 0.0, "holiday": r.Holiday or 0.0, "absent": r.Absent or 0.0, "basic": r.Basic or 0.0, "da": r.DA or 0.0, "hra": r.HRA or 0.0, "net_salary": r.Net_Salary or 0.0, "site_code": r.Site_Code or "", "u_name": r.U_Name or "", "u_ae": r.U_AE or ""}
    except AttributeError:
        return {"Emp_Code": str(r[0] or "")}


def list_salary(cn=None, limit=500):
    rows = db.query(f"SELECT TOP {int(limit)} * FROM Salary WHERE Site_Code = ? ORDER BY Emp_Code DESC",
                    (SITE_CODE,), cn=cn)
    return [_map_salary(r) for r in rows]


def get_salary(Mth_Year, Emp_Code, cn=None):
    rows = db.query("SELECT * FROM Salary WHERE Mth_Year = ? AND Emp_Code = ?", (Mth_Year, Emp_Code), cn=cn)
    return _map_salary(rows[0]) if rows else None


def search_salary(term, cn=None, limit=100):
    rows = db.query(f"SELECT TOP {int(limit)} * FROM Salary WHERE Site_Code = ? AND (Emp_Code LIKE ? OR Mth_Year LIKE ?)",
                    (SITE_CODE, f"%{term}%", f"%{term}%"), cn=cn)
    return [_map_salary(r) for r in rows]


def insert_salary(rec, cn=None, commit=True, site=SITE_CODE, user=USER):
    code_rows = db.query("SELECT MAX(Emp_Code) FROM Salary", cn=cn)
    new_pk = (code_rows[0][0] or 0) + 1 if code_rows and code_rows[0][0] else 1
    db.execute(
        "INSERT INTO Salary (Mth_Year,Emp_Code,Work_Day,CL,Leave,Sunday,Holiday,Absent,Basic,DA,HRA,Income_Tax,Other_Allow,Other_Deduc,Conveyance,Medical,LTA,PF,EPF,ESI,Loan,Advance,Net_Salary,Loan_Bal,OverTime,OverTimeAmt,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,getdate(),'A',?)",
        (rec.get("mth_year",""), rec.get("emp_code",""), rec.get("work_day",0.0), rec.get("cl",0.0), rec.get("leave",0.0), rec.get("sunday",0.0), rec.get("holiday",0.0), rec.get("absent",0.0), rec.get("basic",0.0), rec.get("da",0.0), rec.get("hra",0.0), rec.get("income_tax",0.0), rec.get("other_allow",0.0), rec.get("other_deduc",0.0), rec.get("conveyance",0.0), rec.get("medical",0.0), rec.get("lta",0.0), rec.get("pf",0.0), rec.get("epf",0.0), rec.get("esi",0.0), rec.get("loan",0.0), rec.get("advance",0.0), rec.get("net_salary",0.0), rec.get("loan_bal",0.0), rec.get("overtime",0.0), rec.get("overtime_amt",0.0), site, user, site),
        cn=cn, commit=commit)
    return get_salary(rec.get("mth_year",""), new_pk, cn=cn)


def delete_salary(Mth_Year, Emp_Code, cn=None, commit=True):
    return db.execute("DELETE FROM Salary WHERE Mth_Year = ? AND Emp_Code = ?", (Mth_Year, Emp_Code), cn=cn, commit=commit)

# === Attendance ===
# VB6 prAttend.frm evidence: DAILY attendance `Attend` table use karta hai
# (V_Date, Emp_Code, FirstShift, SecondShift — P/A/H), 1323 live rows.
# Monthly `attendence` (Attn_Str) sirf PrAttend1 lookup me hai — live 0 rows.
# Port pehle galat table (Attendence) use karta tha -> attendance tab khali.
def _map_attend(r) -> dict:
    try:
        return {"v_prefix": r.V_Prefix or "", "v_date": r.V_Date,
                "emp_code": r.Emp_Code or "",
                "firstshift": r.FirstShift or "",
                "secondshift": r.SecondShift or ""}
    except AttributeError:
        return {"Emp_Code": str(r[0] or "")}


def _map_attendence(r) -> dict:
    """Legacy monthly-Attn_Str mapper (Attendence table, 0 rows live).
    UI compat ke liye rakha; daily API niche `list_attendance` etc."""
    try:
        return {"mth_year": r.Mth_Year or "", "emp_code": r.Emp_Code or "", "attn_str": r.Attn_Str or "", "site_code": r.Site_Code or ""}
    except AttributeError:
        return {"Emp_Code": str(r[0] or "")}


def list_attendance(cn=None, limit=500):
    """VB6 prAttend fill: Attend + Employee/Depart/Desig joins, latest first."""
    rows = db.query(
        "SELECT TOP " + str(int(limit)) + " A.V_Prefix, A.V_Date, A.Emp_Code, "
        "A.FirstShift, A.SecondShift, E.Name AS EmpName, "
        "ISNULL(D.Name,'') AS Department, ISNULL(DG.Name,'') AS Designation "
        "FROM Attend A LEFT JOIN Employee E ON E.Code = A.Emp_Code "
        "LEFT JOIN Depart D ON D.Code = E.Department "
        "LEFT JOIN Desig DG ON DG.Code = E.Designation "
        "WHERE A.Site_Code = ? ORDER BY A.V_Date DESC, A.Emp_Code",
        (SITE_CODE,), cn=cn)
    out = []
    for r in rows:
        d = _map_attend(r)
        d["emp_name"] = (r.EmpName or "").strip() if r.EmpName else ""
        d["department"] = r.Department or ""
        d["designation"] = r.Designation or ""
        out.append(d)
    return out


def get_attendance(emp_code: str, v_date, cn=None) -> dict | None:
    """VB6: ek employee-ek din ki shift rows (First/Second)."""
    rows = db.query(
        "SELECT A.V_Prefix, A.V_Date, A.Emp_Code, A.FirstShift, "
        "A.SecondShift FROM Attend A WHERE A.Emp_Code = ? AND "
        "CONVERT(date, A.V_Date) = CONVERT(date, ?) ORDER BY A.V_Date",
        (emp_code, v_date), cn=cn)
    return _map_attend(rows[0]) if rows else None


def insert_attendance(emp_code: str, v_date, firstshift: str = "",
                      secondshift: str = "", vprefix: str | None = None,
                      cn=None, commit: bool = True, user: str = USER) -> dict:
    """VB6 daily save: shift codes P/A/H/W (FirstShift, SecondShift)."""
    if not str(emp_code or "").strip():
        raise ValueError("Emp_Code zaroori hai")
    if not v_date:
        raise ValueError("V_Date zaroori hai")
    vp = str(vprefix or db.get_vprefix())
    cur = db.query(
        "SELECT 1 FROM Attend WHERE Emp_Code = ? AND CONVERT(date, V_Date) "
        "= CONVERT(date, ?)", (emp_code, v_date), cn=cn)
    if cur:
        raise ValueError(
            f"Attendance already exists for {emp_code} on {v_date} "
            "(VB6: duplicate V_Date+Emp_Code reject)")
    db.execute(
        "INSERT INTO Attend (V_Prefix, V_Date, Emp_Code, FirstShift, "
        "SecondShift, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (vp, v_date, emp_code, str(firstshift or "")[:1],
         str(secondshift or "")[:1], SITE_CODE, user, SITE_CODE),
        cn=cn, commit=commit)
    return get_attendance(emp_code, v_date, cn=cn)


def delete_attendance(emp_code: str, v_date, cn=None,
                      commit: bool = True) -> int:
    """VB6: Delete From Attend Where V_Date=<d> (+Emp_Code scope)."""
    return db.execute(
        "DELETE FROM Attend WHERE Emp_Code = ? AND "
        "CONVERT(date, V_Date) = CONVERT(date, ?)",
        (emp_code, v_date), cn=cn, commit=commit)


def list_attendence(cn=None, limit=500):
    """Legacy monthly API — Attendence table live me 0 rows (PrAttend1 only)."""
    rows = db.query(f"SELECT TOP {int(limit)} * FROM Attendence WHERE Site_Code = ? ORDER BY Emp_Code DESC",
                    (SITE_CODE,), cn=cn)
    return [_map_attendence(r) for r in rows]


def get_attendence(Mth_Year, Emp_Code, cn=None):
    rows = db.query("SELECT * FROM Attendence WHERE Mth_Year = ? AND Emp_Code = ?", (Mth_Year, Emp_Code), cn=cn)
    return _map_attendence(rows[0]) if rows else None


def search_attendence(term, cn=None, limit=100):
    rows = db.query(f"SELECT TOP {int(limit)} * FROM Attendence WHERE Site_Code = ? AND (Emp_Code LIKE ? OR Mth_Year LIKE ?)",
                    (SITE_CODE, f"%{term}%", f"%{term}%"), cn=cn)
    return [_map_attendence(r) for r in rows]


def insert_attendence(rec, cn=None, commit=True, site=SITE_CODE, user=USER):
    code_rows = db.query("SELECT MAX(Emp_Code) FROM Attendence", cn=cn)
    new_pk = (code_rows[0][0] or 0) + 1 if code_rows and code_rows[0][0] else 1
    db.execute(
        "INSERT INTO Attendence (Mth_Year,Emp_Code,Attn_Str,Site_Code,LogSite_Code) VALUES (?,?,?,?,?)",
        (rec.get("mth_year",""), rec.get("emp_code",""), rec.get("attn_str",""), site, site),
        cn=cn, commit=commit)
    return get_attendence(rec.get("mth_year",""), new_pk, cn=cn)


def delete_attendence(Mth_Year, Emp_Code, cn=None, commit=True):
    return db.execute("DELETE FROM Attendence WHERE Mth_Year = ? AND Emp_Code = ?", (Mth_Year, Emp_Code), cn=cn, commit=commit)

# === Loan ===
def _map_loan(r) -> dict:
    try:
        return {"sr_no": r.Sr_No or 0, "v_type": r.V_Type or "", "v_date": r.V_Date, "emp_code": r.Emp_Code or "", "amount": r.Amount or 0.0, "installment": r.Installment or 0.0, "remark": r.Remark or "", "ac_code": r.AC_Code or "", "mth_year": r.Mth_Year or "", "site_code": r.Site_Code or "", "u_name": r.U_Name or "", "u_ae": r.U_AE or ""}
    except AttributeError:
        return {"Sr_No": str(r[0] or "")}


def list_loan(cn=None, limit=500):
    rows = db.query(f"SELECT TOP {int(limit)} * FROM Loan WHERE Site_Code = ? ORDER BY Sr_No DESC",
                    (SITE_CODE,), cn=cn)
    return [_map_loan(r) for r in rows]


def get_loan(Sr_No, cn=None):
    rows = db.query("SELECT * FROM Loan WHERE Sr_No = ?", (Sr_No,), cn=cn)
    return _map_loan(rows[0]) if rows else None


def search_loan(term, cn=None, limit=100):
    rows = db.query(f"SELECT TOP {int(limit)} * FROM Loan WHERE Site_Code = ? AND (Emp_Code LIKE ? OR Remark LIKE ?)",
                    (SITE_CODE, f"%{term}%", f"%{term}%"), cn=cn)
    return [_map_loan(r) for r in rows]


def insert_loan(rec, cn=None, commit=True, site=SITE_CODE, user=USER):
    code_rows = db.query("SELECT MAX(Sr_No) FROM Loan", cn=cn)
    new_pk = (code_rows[0][0] or 0) + 1 if code_rows and code_rows[0][0] else 1
    # 14 columns = 10 params + 4 literals ('LD', getdate(), getdate(), 'A')
    db.execute(
        "INSERT INTO Loan (Sr_No, V_Type, V_Date, Emp_Code, Amount, Installment, "
        "Remark, AC_Code, Mth_Year, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, 'LD', getdate(), ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (new_pk,
         rec.get("emp_code", ""),
         rec.get("amount", 0.0),
         rec.get("installment", 0.0),
         rec.get("remark", ""),
         rec.get("ac_code", ""),
         rec.get("mth_year", ""),
         site,
         user,
         site),
        cn=cn, commit=commit)
    return get_loan(new_pk, cn=cn)


def delete_loan(Sr_No, cn=None, commit=True):
    return db.execute("DELETE FROM Loan WHERE Sr_No = ?", (Sr_No,), cn=cn, commit=commit)

# === Leave_Ench ===
def _map_leave_ench(r) -> dict:
    try:
        return {"sr_no": r.Sr_No or 0, "l_date": r.L_Date, "emp_code": r.Emp_Code or "", "leave_ench": r.Leave_Ench or 0.0, "amt_ench": r.Amt_Ench or 0.0, "ac_code": r.AC_Code or "", "site_code": r.Site_Code or "", "u_name": r.U_Name or "", "u_ae": r.U_AE or ""}
    except AttributeError:
        return {"Sr_No": str(r[0] or "")}


def list_leave_ench(cn=None, limit=500):
    rows = db.query(f"SELECT TOP {int(limit)} * FROM Leave_Ench WHERE Site_Code = ? ORDER BY Sr_No DESC",
                    (SITE_CODE,), cn=cn)
    return [_map_leave_ench(r) for r in rows]


def get_leave_ench(Sr_No, cn=None):
    rows = db.query("SELECT * FROM Leave_Ench WHERE Sr_No = ?", (Sr_No,), cn=cn)
    return _map_leave_ench(rows[0]) if rows else None


def search_leave_ench(term, cn=None, limit=100):
    rows = db.query(f"SELECT TOP {int(limit)} * FROM Leave_Ench WHERE Site_Code = ? AND (Emp_Code LIKE ?)",
                    (SITE_CODE, f"%{term}%"), cn=cn)
    return [_map_leave_ench(r) for r in rows]


def insert_leave_ench(rec, cn=None, commit=True, site=SITE_CODE, user=USER):
    code_rows = db.query("SELECT MAX(Sr_No) FROM Leave_Ench", cn=cn)
    new_pk = (code_rows[0][0] or 0) + 1 if code_rows and code_rows[0][0] else 1
    db.execute(
        "INSERT INTO Leave_Ench (Sr_No,L_Date,Emp_Code,Leave_Ench,Amt_Ench,AC_Code,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES (?,?,?,?,?,?,?,getdate(),'A',?)",
        (new_pk, rec.get("l_date"), rec.get("emp_code",""), rec.get("leave_ench",0.0), rec.get("amt_ench",0.0), rec.get("ac_code",""), site, site),
        cn=cn, commit=commit)
    return get_leave_ench(new_pk, cn=cn)


def delete_leave_ench(Sr_No, cn=None, commit=True):
    return db.execute("DELETE FROM Leave_Ench WHERE Sr_No = ?", (Sr_No,), cn=cn, commit=commit)

# === Leave Balance (kanpur txt rule 13: Leave balance = Entitled - Used) ===
# Entitlement: Employee.Tot_CL_Allow / Tot_EL_Allow / Tot_DL_Allow /
# Tot_VL_Allow (VB6 HRMast per-category yearly allowance cols).
# Opening: OP_Casual / OP_Earned / OP_* (pichhle saal ka carry).
# Used: Salary table ke per-month CL/Leave(EL)/Absent(DL proxy) +
# Leave_Ench (encashed) — VB6 Leave balance sheet ka source bhi yahi.
LEAVE_TYPES = {
    "CL": {"allow": "Tot_CL_Allow", "open": "OP_Casual",
           "curr": "Curr_Casual", "used": "cl"},
    "EL": {"allow": "Tot_EL_Allow", "open": "OP_Earned",
           "curr": "Curr_Earned", "used": "leave"},
    "DL": {"allow": "Tot_DL_Allow", "open": "OP_Casual",
           "curr": "Curr_DL", "used": "absent"},
    "VL": {"allow": "Tot_VL_Allow", "open": "OP_Casual",
           "curr": "Curr_VL", "used": "leave"},
}


def leave_balance(emp_code: str, cn=None) -> dict:
    """Employee ka leave balance (VB6 HRLeave rule: Entitled - Used).

    Per type: entitled = Tot_*_Allow + opening(OP_*); used = Salary rows
    ka CL/Leave/Absent sum + Leave_Ench (encash = used hi hai);
    balance = entitled - used. Curr_* (DB me running balance) bhi
    report karte hain — VB6 frm cross-check col.
    Returns {emp_code, name, types: {CL: {...}, ...}, total_balance}.
    """
    emp = db.query(
        "SELECT Name, Tot_CL_Allow, Tot_EL_Allow, Tot_DL_Allow, "
        "Tot_VL_Allow, OP_Casual, OP_Earned, Curr_Casual, Curr_Earned, "
        "Curr_DL, Curr_VL FROM Employee WHERE Code = ?",
        (emp_code,), cn=cn)
    if not emp:
        raise ValueError(f"Employee '{emp_code}' nahi mila")
    e = emp[0]
    used_rows = db.query(
        "SELECT ISNULL(SUM(CL), 0), ISNULL(SUM(Leave), 0), "
        "ISNULL(SUM(Absent), 0) FROM Salary WHERE Emp_Code = ?",
        (emp_code,), cn=cn)
    used_map = {"cl": float(used_rows[0][0] or 0),
                "leave": float(used_rows[0][1] or 0),
                "absent": float(used_rows[0][2] or 0)}
    ench_rows = db.query(
        "SELECT ISNULL(SUM(Leave_Ench), 0) FROM Leave_Ench "
        "WHERE Emp_Code = ?", (emp_code,), cn=cn)
    ench = float(ench_rows[0][0] or 0)

    curr_map = {"CL": float(e.Curr_Casual or 0), "EL": float(e.Curr_Earned or 0),
                "DL": float(e.Curr_DL or 0), "VL": float(e.Curr_VL or 0)}
    open_map = {"CL": float(e.OP_Casual or 0), "EL": float(e.OP_Earned or 0),
                "DL": float(e.OP_Casual or 0), "VL": float(e.OP_Casual or 0)}
    allow_map = {"CL": float(e.Tot_CL_Allow or 0), "EL": float(e.Tot_EL_Allow or 0),
                 "DL": float(e.Tot_DL_Allow or 0), "VL": float(e.Tot_VL_Allow or 0)}

    types: dict[str, dict] = {}
    total = 0.0
    for lt, spec in LEAVE_TYPES.items():
        used = used_map[spec["used"]] + (ench if lt == "EL" else 0.0)
        entitled = allow_map[lt] + open_map[lt]
        bal = round(entitled - used, 2)
        types[lt] = {"entitled": round(entitled, 2), "used": round(used, 2),
                     "balance": bal, "opening": open_map[lt],
                     "db_running": curr_map[lt]}
        total += bal
    return {"emp_code": emp_code, "name": (e.Name or "").strip(),
            "types": types, "encashed_days": ench,
            "total_balance": round(total, 2)}


# === OverTime ===
def _map_overtime(r) -> dict:
    try:
        return {"empcode": r.EmpCode or "", "otdate": r.OTDate, "otime": r.OTime or 0.0, "site_code": r.Site_Code or "", "amount": r.Amount or 0.0, "remark": r.Remark or "", "otrate": r.OTRate or 0.0, "u_name": r.U_Name or "", "u_ae": r.U_AE or ""}
    except AttributeError:
        return {"EmpCode": str(r[0] or "")}


def list_overtime(cn=None, limit=500):
    rows = db.query(f"SELECT TOP {int(limit)} * FROM OverTime WHERE Site_Code = ? ORDER BY EmpCode DESC",
                    (SITE_CODE,), cn=cn)
    return [_map_overtime(r) for r in rows]


def get_overtime(EmpCode, cn=None):
    rows = db.query("SELECT * FROM OverTime WHERE EmpCode = ?", (EmpCode,), cn=cn)
    return _map_overtime(rows[0]) if rows else None


def search_overtime(term, cn=None, limit=100):
    rows = db.query(f"SELECT TOP {int(limit)} * FROM OverTime WHERE Site_Code = ? AND (EmpCode LIKE ?)",
                    (SITE_CODE, f"%{term}%"), cn=cn)
    return [_map_overtime(r) for r in rows]


def insert_overtime(rec, cn=None, commit=True, site=SITE_CODE, user=USER):
    code_rows = db.query("SELECT MAX(EmpCode) FROM OverTime", cn=cn)
    new_pk = (code_rows[0][0] or 0) + 1 if code_rows and code_rows[0][0] else 1
    db.execute(
        "INSERT INTO OverTime (EmpCode,OTDate,OTime,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,Amount,Remark,OTRate) VALUES (?,getdate(),?,?,?,?,getdate(),'A',?,?,?)",
        (new_pk, rec.get("otime",0.0), site, user, site, rec.get("amount",0.0), rec.get("remark",""), rec.get("otrate",0.0)),
        cn=cn, commit=commit)
    return get_overtime(new_pk, cn=cn)


def delete_overtime(EmpCode, cn=None, commit=True):
    return db.execute("DELETE FROM OverTime WHERE EmpCode = ?", (EmpCode,), cn=cn, commit=commit)


class HRPayrollAPI:
    def list_salary(self, cn=None, limit=500): return list_salary(cn, limit)
    def get_salary(self, mth_year, emp_code, cn=None): return get_salary(mth_year, emp_code, cn)
    def search_salary(self, term, cn=None, limit=100): return search_salary(term, cn, limit)
    def insert_salary(self, rec, cn=None, commit=True, site=SITE_CODE, user=USER): return insert_salary(rec, cn, commit, site, user)
    def delete_salary(self, mth_year, emp_code, cn=None, commit=True): return delete_salary(mth_year, emp_code, cn, commit)
    def list_attendance(self, cn=None, limit=500): return list_attendance(cn, limit)
    def get_attendance(self, emp_code, v_date, cn=None): return get_attendance(emp_code, v_date, cn)
    def insert_attendance(self, emp_code, v_date, firstshift="", secondshift="", cn=None, commit=True, user=USER): return insert_attendance(emp_code, v_date, firstshift, secondshift, cn=cn, commit=commit, user=user)
    def update_attendance(self, emp_code, v_date, rec, cn=None, commit=True, user=USER): return update_attendance(emp_code, v_date, rec, cn=cn, commit=commit, user=user)
    def delete_attendance(self, emp_code, v_date, cn=None, commit=True): return delete_attendance(emp_code, v_date, cn=cn, commit=commit)
    def list_attendence(self, cn=None, limit=500): return list_attendence(cn, limit)
    def get_attendence(self, mth_year, emp_code, cn=None): return get_attendence(mth_year, emp_code, cn)
    def search_attendence(self, term, cn=None, limit=100): return search_attendence(term, cn, limit)
    def insert_attendence(self, rec, cn=None, commit=True, site=SITE_CODE, user=USER): return insert_attendence(rec, cn, commit, site, user)
    def delete_attendence(self, mth_year, emp_code, cn=None, commit=True): return delete_attendence(mth_year, emp_code, cn, commit)
    def list_loan(self, cn=None, limit=500): return list_loan(cn, limit)
    def get_loan(self, sr_no, cn=None): return get_loan(sr_no, cn)
    def search_loan(self, term, cn=None, limit=100): return search_loan(term, cn, limit)
    def insert_loan(self, rec, cn=None, commit=True, site=SITE_CODE, user=USER): return insert_loan(rec, cn, commit, site, user)
    def delete_loan(self, sr_no, cn=None, commit=True): return delete_loan(sr_no, cn, commit)
    def list_leave_ench(self, cn=None, limit=500): return list_leave_ench(cn, limit)
    def get_leave_ench(self, sr_no, cn=None): return get_leave_ench(sr_no, cn)
    def search_leave_ench(self, term, cn=None, limit=100): return search_leave_ench(term, cn, limit)
    def insert_leave_ench(self, rec, cn=None, commit=True, site=SITE_CODE, user=USER): return insert_leave_ench(rec, cn, commit, site, user)
    def delete_leave_ench(self, sr_no, cn=None, commit=True): return delete_leave_ench(sr_no, cn, commit)
    def list_overtime(self, cn=None, limit=500): return list_overtime(cn, limit)
    def get_overtime(self, empcode, cn=None): return get_overtime(empcode, cn)
    def search_overtime(self, term, cn=None, limit=100): return search_overtime(term, cn, limit)
    def insert_overtime(self, rec, cn=None, commit=True, site=SITE_CODE, user=USER): return insert_overtime(rec, cn, commit, site, user)
    def delete_overtime(self, empcode, cn=None, commit=True): return delete_overtime(empcode, cn, commit)
    def leave_balance(self, emp_code, cn=None): return leave_balance(emp_code, cn)


# ============================================================
# Phase A (api-mismatch audit): UI hr_payroll_ui.py in update fns ko
# call karta tha par core me the hi nahi -> Edit buttons AttributeError.
# ============================================================
def update_salary(mth_year, emp_code, rec, cn=None, commit=True,
                  user=USER) -> dict:
    sets, params = [], []
    for fld in ("Work_Day", "CL", "Leave", "Sunday", "Holiday", "Absent",
                "Basic", "DA", "HRA", "Income_Tax", "Other_Allow",
                "Other_Deduc", "Conveyance", "Medical", "LTA", "PF", "EPF",
                "ESI", "Loan", "Advance", "Net_Salary", "Loan_Bal",
                "OverTime", "OverTimeAmt"):
        key = fld.lower()
        if key in rec:
            sets.append(fld + " = ?")
            params.append(float(rec[key] or 0))
    if not sets:
        raise ValueError("Koi field update nahi diya")
    sets += ["U_Name = ?", "U_EntDt = getdate()", "U_AE = 'E'"]
    params += [user, mth_year, emp_code]
    db.execute("UPDATE Salary SET " + ", ".join(sets) +
               " WHERE Mth_Year = ? AND Emp_Code = ?", params,
               cn=cn, commit=commit)
    return get_salary(mth_year, emp_code, cn=cn)


def update_attendance(emp_code: str, v_date, rec: dict, cn=None,
                      commit: bool = True, user: str = USER) -> dict:
    """VB6 daily edit: Attend row ki FirstShift/SecondShift update."""
    n = db.execute(
        "UPDATE Attend SET FirstShift = ?, SecondShift = ?, U_Name = ?, "
        "U_EntDt = getdate(), U_AE = 'E' WHERE Emp_Code = ? AND "
        "CONVERT(date, V_Date) = CONVERT(date, ?)",
        (str(rec.get("firstshift", "") or "")[:1],
         str(rec.get("secondshift", "") or "")[:1],
         user, emp_code, v_date), cn=cn, commit=commit)
    if not n:
        raise ValueError(
            f"Attend row nahi mili: {emp_code} @ {v_date}")
    return get_attendance(emp_code, v_date, cn=cn)


def update_attendence(emp_code, date_or_mth, rec, cn=None, commit=True,
                      user=USER) -> dict:
    # UI (Emp_Code, Date, rec) bhejta hai; DB key Mth_Year+Emp_Code hai.
    # Attn_Str = "In-Out-Status" composite (VB6 Attendence string pattern).
    attn = rec.get("attn_str")
    if attn is None:
        parts = [str(rec.get("intime", "") or ""),
                 str(rec.get("outtime", "") or ""),
                 str(rec.get("status", "") or "")]
        attn = "-".join(p for p in parts if p)
    mth = str(rec.get("mth_year") or "")
    d = str(date_or_mth or "")
    if not mth and len(d) >= 7 and d[4:5] == "-":
        mth = d[:7]
    db.execute(
        "UPDATE Attendence SET Attn_Str = ?, U_Name = ?, "
        "U_EntDt = getdate(), U_AE = 'E' WHERE Mth_Year = ? AND Emp_Code = ?",
        (attn, user, mth, emp_code), cn=cn, commit=commit)
    return get_attendence(mth, emp_code, cn=cn)


def update_loan(emp_code, sr_no, rec, cn=None, commit=True,
                user=USER) -> dict:
    sr = rec.get("sr_no", sr_no)
    sets, params = [], []
    if "amount" in rec:
        sets.append("Amount = ?"); params.append(float(rec["amount"] or 0))
    if "installment" in rec:
        sets.append("Installment = ?"); params.append(float(rec["installment"] or 0))
    if "remark" in rec:
        sets.append("Remark = ?"); params.append(str(rec["remark"] or ""))
    if "ac_code" in rec:
        sets.append("AC_Code = ?"); params.append(str(rec["ac_code"] or ""))
    if "mth_year" in rec:
        sets.append("Mth_Year = ?"); params.append(str(rec["mth_year"] or ""))
    if not sets:
        raise ValueError("Koi field update nahi diya")
    sets += ["U_Name = ?", "U_EntDt = getdate()", "U_AE = 'E'"]
    params += [user, sr]
    db.execute("UPDATE Loan SET " + ", ".join(sets) + " WHERE Sr_No = ?",
               params, cn=cn, commit=commit)
    return get_loan(sr, cn=cn)


def update_overtime(empcode, date_or_none, rec, cn=None, commit=True,
                    user=USER) -> dict:
    sets, params = [], []
    if "otime" in rec:
        sets.append("OTime = ?"); params.append(float(rec["otime"] or 0))
    if "otrate" in rec:
        sets.append("OTRate = ?"); params.append(float(rec["otrate"] or 0))
    if "amount" in rec:
        sets.append("Amount = ?"); params.append(float(rec["amount"] or 0))
    if "remark" in rec:
        sets.append("Remark = ?"); params.append(str(rec["remark"] or ""))
    if not sets:
        raise ValueError("Koi field update nahi diya")
    sets += ["U_Name = ?", "U_EntDt = getdate()", "U_AE = 'E'"]
    params += [user, empcode]
    db.execute("UPDATE OverTime SET " + ", ".join(sets) +
               " WHERE EmpCode = ?", params, cn=cn, commit=commit)
    return get_overtime(empcode, cn=cn)
