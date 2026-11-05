import sys
sys.path.insert(0, r'C:\Analysis\HMS_py\HMS_py')
import HMS_py
HMS_py.__path__.insert(0, r'C:\Analysis\HMS_py\HMS_py')
from HMS_py.ui.front_office import voucher_serialisation_ui
print('grc_ui import OK')
print('VoucherEntryDialog:', hasattr(voucher_serialisation_ui, 'VoucherSerialisationWindow'))
print('open_voucher_serialisation:', hasattr(grc_ui, 'open_voucher_serialisation'))
print('VoucherEntryDialog:', hasattr(grc_ui, 'VoucherSerialisationWindow'))
