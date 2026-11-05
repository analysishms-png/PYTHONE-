import sys
sys.path.insert(0, r"C:\Analysis\HMS_py")
import HMS_py
HMS_py.__path__.insert(0, r"C:\Analysis\HMS_py\HMS_py")
from HMS_py.core import db
cn = db.connect()
rows = cn.execute("""
SELECT ro.RoomNo, gf.Name, gf.FolioNo
FROM RoomOcc ro
INNER JOIN GuestFolio gf ON gf.DocId = ro.DocId AND gf.Site_Code = ro.Site_Code
WHERE ro.ChkOutDate IS NULL AND ro.Site_Code = 'KK'
ORDER BY ro.RoomNo
""")
print("Occupied rooms:")
for r in rows:
    print(f"  Room: {r.RoomNo}, Folio: {r.FolioNo}, Guest: {r.Name}")
cn.close()
