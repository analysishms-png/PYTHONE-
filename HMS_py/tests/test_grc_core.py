import sys
sys.path.insert(0, r"C:\Analysis\HMS_py")
import HMS_py
HMS_py.__path__.insert(0, r"C:\Analysis\HMS_py\HMS_py")
from HMS_py.core.front_office import room_occ
print("room_occ import OK:", hasattr(room_occ, 'list_merged_leader_rooms'))
import inspect
print(inspect.signature(room_occ.list_merged_leader_rooms))
