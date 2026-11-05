import sys
sys.path.insert(0, r'C:\Analysis\HMS_py')
import HMS_py
HMS_py.__path__.insert(0, r'C:\Analysis\HMS_py\HMS_py')
from HMS_py.ui.front_office import grc_ui
print('grc_ui import OK')
print([n for n in dir(grc_ui) if not n.startswith('_')])
