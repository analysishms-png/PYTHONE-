import sys, os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
sys.path.insert(0, r'C:\Analysis\HMS_py')
import HMS_py
HMS_py.__path__.insert(0, r'C:\Analysis\HMS_py\HMS_py')
from HMS_py.core import db

cn = db.connect()
cur = cn.cursor()
cur.execute("SELECT RTRIM(rm.Code), RTRIM(rm.Name), RTRIM(rm.RoomCat), RTRIM(rm.RoomStat), RTRIM(rm.MaidStation), RTRIM(rm.Type) FROM RoomMast rm WHERE rm.Type = 'RO' ORDER BY rm.Code")
rows = cur.fetchall()
print(f'Total RO rooms: {len(rows)}')
for r in rows[:10]:
    print(f'  {r}')
cn.close()