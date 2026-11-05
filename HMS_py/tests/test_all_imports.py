import sys
import os
# Add HMS_py package directory to path (parent of this test file's parent)
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))
os.chdir(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
import HMS_py
HMS_py.__path__.insert(0, os.path.dirname(os.path.abspath(__file__)))
from HMS_py.core.front_office import voucher_serialisation
print('voucher_serialisation import OK')
print('serialise_voucher:', hasattr(voucher_serialisation, 'serialise_voucher'))

from HMS_py.core.front_office import room_occ
print('room_occ import OK')
print('list_merged_leader_rooms:', hasattr(room_occ, 'list_merged_leader_rooms'))

from HMS_py.ui.front_office import grc_ui
print('grc_ui import OK')
print('GuestRegistrationCardWindow:', hasattr(grc_ui, 'GuestRegistrationCardWindow'))
print('open_guest_reg_card:', hasattr(grc_ui, 'open_guest_reg_card'))
print('ReverseRoomMergeWindow:', hasattr(grc_ui, 'ReverseRoomMergeWindow'))
print('open_reverse_room_merge:', hasattr(grc_ui, 'open_reverse_room_merge'))
