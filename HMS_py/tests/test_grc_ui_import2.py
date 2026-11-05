import sys
sys.path.insert(0, '.')
import HMS_py
HMS_py.__path__.insert(0, '.')
from HMS_py.ui.front_office import grc_ui
print('grc_ui import OK')
print('GuestRegistrationCardWindow:', hasattr(grc_ui, 'GuestRegistrationCardWindow'))
print('open_guest_reg_card:', hasattr(grc_ui, 'open_guest_reg_card'))
print('ReverseRoomMergeWindow:', hasattr(grc_ui, 'ReverseRoomMergeWindow'))
print('open_reverse_room_merge:', hasattr(grc_ui, 'open_reverse_room_merge'))
