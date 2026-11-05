import sys
sys.path.insert(0, r"C:\Analysis\HMS_py")
import HMS_py
HMS_py.__path__.insert(0, r"C:\Analysis\HMS_py\HMS_py")
from HMS_py.core import db
cn = db.connect()
rows = cn.execute("""
SELECT TOP 20 rm.Code
FROM RoomMast rm
LEFT JOIN RoomOcc ro ON rm.Code = ro.RoomNo AND ro.ChkOutDate IS NULL AND ro.Site_Code = rm.Site_Code
WHERE RTRIM(rm.Type) = 'RO'
  AND rm.Code NOT IN (SELECT RTRIM(ro.RoomNo) FROM RoomOcc ro WHERE ro.ChkOutDate IS NULL AND ro.Site_Code = 'KK')
  AND rm.Site_Code = 'KK'
ORDER BY rm.Code
""")
print("Free RO rooms:")
for r in rows:
    print(f"  {r.Code}")
cn.close()
