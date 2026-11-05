import sys
sys.path.insert(0, r"C:\Analysis\HMS_py")
import HMS_py
HMS_py.__path__.insert(0, r"C:\Analysis\HMS_py\HMS_py")
from HMS_py.core import db
cn = db.connect()
rows = cn.execute("""
SELECT RTRIM(rm.Type) as Type, COUNT(*) as cnt
FROM RoomMast rm
WHERE rm.Site_Code = 'KK'
GROUP BY RTRIM(rm.Type)
ORDER BY RTRIM(rm.Type)
""")
print("Room types:")
for r in rows:
    print(f"  Type: {r.Type}, Count: {r.cnt}")
cn.close()
