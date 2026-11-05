import sys, os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
sys.path.insert(0, r'C:\Analysis\HMS_py')
import HMS_py
HMS_py.__path__.insert(0, r'C:\Analysis\HMS_py\HMS_py')
from HMS_py.core import checkin

rows = checkin.list_checkins()
print(f'Check-ins loaded: {len(rows)}')
for r in rows[:5]:
    print(f'  Folio:{r["folio"]} Date:{r["vdate"]} Name:{r["name"]} Vprefix:{r["vprefix"]}')