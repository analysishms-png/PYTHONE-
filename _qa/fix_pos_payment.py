with open(r'C:\Analysis\HMS_py\HMS_py\core\pos\pos_payment.py', 'r', encoding='utf-8') as f:
    content = f.read()

# Fix payment_type_list and payment_type_get
content = content.replace(
'''def payment_type_list(cn=None) -> list[dict]:
    """Get all payment types from RevMast (VB6 REVMAST where Category='PayType')."""
    rows = db.query(
        "SELECT Code, Name, ShortName, Category, Type, "
        "U_Name, U_EntDt, U_AE "
        "FROM RevMast WHERE Category = 'PayType' ORDER BY Code", cn=cn)
    return [{"code": r[0] or "", "name": r[1] or "",
             "short": r[2] or "", "category": r[3] or "",
             "type": r[4] or "", "u_name": r[5] or "",
             "u_entdt": r[6], "u_ae": r[6] or ""} for r in rows]


def payment_type_get(code: str, cn=None) -> dict | None:
    rows = db.query(
        "SELECT Code, Name, ShortName, Category, Type, "
        "U_Name, U_EntDt, U_AE "
        "FROM RevMast WHERE Code = ? AND Category = 'PayType'", (code,), cn=cn)''',
'''def payment_type_list(cn=None) -> list[dict]:
    """Get all payment types from RevMast (VB6 REVMAST where PAYTYPE='PayType')."""
    rows = db.query(
        "SELECT Code, Name, ShortName, PAYTYPE, Type, "
        "U_Name, U_EntDt, U_AE "
        "FROM RevMast WHERE PAYTYPE = 'PayType' ORDER BY Code", cn=cn)
    return [{"code": r[0] or "", "name": r[1] or "",
             "short": r[2] or "", "category": r[3] or "",
             "type": r[4] or "", "u_name": r[5] or "",
             "u_entdt": r[5], "u_ae": r[5] or ""} for r in rows]


def payment_type_get(code: str, cn=None) -> dict | None:
    rows = db.query(
        "SELECT Code, Name, ShortName, PAYTYPE, Type, "
        "U_Name, U_EntDt, U_AE "
        "FROM RevMast WHERE Code = ? AND PAYTYPE = 'PayType'", (code,), cn=cn)''')

with open(r'C:\Analysis\HMS_py\HMS_py\core\pos\pos_payment.py', 'w', encoding='utf-8') as f:
    f.write(content)

print('Fixed')