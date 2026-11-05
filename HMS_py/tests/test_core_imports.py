import sys
sys.path.insert(0, r'C:\Analysis\HMS_py\HMS_py')
import core.front_office.voucher_serialisation as vs
print('voucher_serialisation import OK')
print('serialise_voucher:', hasattr(vs, 'serialise_voucher'))

from HMS_py.core.front_office import room_occ
print('room_occ import OK')
print('list_merged_leader_rooms:', hasattr(room_occ, 'list_merged_leader_rooms'))
