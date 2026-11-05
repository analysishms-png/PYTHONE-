import sys, os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
sys.path.insert(0, r'C:\Analysis\HMS_py')
import HMS_py
HMS_py.__path__.insert(0, r'C:\Analysis\HMS_py\HMS_py')
from HMS_py.core import db

cn = db.connect()
cur = cn.cursor()
cur.execute("SELECT Code, Name, PAYTYPE, Type FROM RevMast WHERE PAYTYPE IN ('Cash', 'Cheque', 'Credit Card', 'Company', 'Room', 'Hold', 'Complementary')")
for row in cur.fetchall():
    print(row)
cn.close()