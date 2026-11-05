import sys
sys.path.insert(0, r"C:\Analysis\HMS_py")
import HMS_py
HMS_py.__path__.insert(0, r"C:\Analysis\HMS_py\HMS_py")
from HMS_py.ui.shell.shell import _form_registry
reg = _form_registry()
keys = list(reg.keys())
for k in keys:
    if 'plan meal' in k.lower() or 'grc printing' in k.lower() or 'registration card' in k.lower():
        print(f"FOUND: {k!r}")
print(f"\nTotal registry keys: {len(keys)}")
