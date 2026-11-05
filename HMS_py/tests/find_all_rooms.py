import sys
sys.path.insert(0, r"C:\Analysis\HMS_py")
import HMS_py
HMS_py.__path__.insert(0, r"C:\Analysis\HMS_py\HMS_py")
from HMS_py.core import db
cn = db.connect()
rows = cn.execute("""
SELECT rm.Code, rm.Type, rm.Site_Code
FROM RoomMast rm
WHERE rm.Site_Code = 'KK'
ORDER BY rm.Code
""")
print("All RO rooms in site KK:")
for r in rows:
    print(f"  {r.Code} (Type: {r.Type})")
cn.close()
