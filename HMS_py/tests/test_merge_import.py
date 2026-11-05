import sys
sys.path.insert(0, r"C:\Analysis\HMS_py")
import HMS_py
HMS_py.__path__.insert(0, r"C:\Analysis\HMS_py\HMS_py")
from HMS_py.core.front_office import fo_ops
print("reverse_room_merge import OK:", hasattr(fo_ops, 'reverse_room_merge'))
import inspect
print(inspect.signature(fo_ops.reverse_room_merge))
