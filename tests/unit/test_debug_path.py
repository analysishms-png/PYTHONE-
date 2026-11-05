import sys, importlib
print("PYTEST sys.path[:5]:", sys.path[:5])
try:
    m = importlib.import_module("HMS_py")
    print("HMS_py file:", m.__file__)
except Exception as e:
    print("HMS_py import FAIL:", e)
try:
    m = importlib.import_module("HMS_py.core.db")
    print("HMS_py.core.db OK:", m.__file__)
except Exception as e:
    print("HMS_py.core.db FAIL:", type(e).__name__, e)
