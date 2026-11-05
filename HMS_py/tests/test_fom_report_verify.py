import sys, os
sys.path.insert(0, r"C:\Analysis\HMS_py")
os.chdir(r"C:\Analysis\HMS_py\HMS_py")
import HMS_py
HMS_py.__path__.insert(0, r"C:\Analysis\HMS_py\HMS_py")
from HMS_py.core.reporting import reports
REPORTS = reports.REPORTS
by_key = reports.by_key
for key in ['fom_tax_detail', 'FOMTaxDetail', 'FOMTaxWiseChargeDetail']:
    r = by_key().get(key)
    if r:
        print(f'=== {key} ===')
        print('  title:', r.get('title'))
        print('  module:', r.get('module'))
        print('  menu:', r.get('menu'))
        print('  cols:', r.get('cols'))
        sql = r.get('sql')
        print('  sql:', sql[:200] + '...' if sql and len(sql) > 200 else sql)
        print('  note:', r.get('note'))
        print()
    else:
        print(f'{key}: NOT FOUND')
