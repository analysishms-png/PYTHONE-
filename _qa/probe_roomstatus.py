import sys, os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
sys.path.insert(0, r'C:\Analysis\HMS_py')
import HMS_py
HMS_py.__path__.insert(0, r'C:\Analysis\HMS_py\HMS_py')
from HMS_py.core import db, roomstatus

cn = db.connect()
cur = cn.cursor()

print('=== RoomMast (all) ===')
cur.execute("SELECT RTRIM(Type), RTRIM(Code), RTRIM(Name), RTRIM(RoomCat), RTRIM(RoomStat), RTRIM(MaidStation), RTRIM(Site_Code), RTRIM(LogSite_Code) FROM RoomMast ORDER BY Type, Code")
rows = cur.fetchall()
print(f'Total: {len(rows)}')
for r in rows:
    print(f'  {r}')

print()
print('=== RoomOcc in-house (ChkOutDate IS NULL) ===')
cur.execute("SELECT RTRIM(RoomNo), FolioNo, DocId, SNo, Site_Code, Vprefix, RTRIM(Vtype), ChkInDate, ChkOutDate, DepDate FROM RoomOcc WHERE ChkOutDate IS NULL ORDER BY RoomNo")
rows = cur.fetchall()
print(f'Total: {len(rows)}')
for r in rows:
    print(f'  {r}')

print()
print('=== RoomBLockOut ===')
try:
    cur.execute("SELECT RTRIM(RoomCode), RTRIM(ISNULL(Type,'')), Reasons, FromDate, ToDate FROM RoomBLockOut")
    rows = cur.fetchall()
    print(f'Total: {len(rows)}')
    for r in rows:
        print(f'  {r}')
except Exception as e:
    print(f'Error: {e}')

cn.close()