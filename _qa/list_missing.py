"""List MISSING checklist items, with and without a VB6 form."""
import json
from collections import Counter

items = json.load(open(r"C:\Analysis\HMS_py\_qa\menu_checklist.json", encoding="utf-8"))
miss = [i for i in items if i["status"] == "MISSING"]
print("MISSING total:", len(miss))
withform = [i for i in miss if i["vb6_form"]]
print("MISSING with VB6 form:", len(withform))
print()
print("By module:", dict(Counter(i["module"] for i in miss)))
print()
for i in withform:
    print(f"{i['code']:>4} | {i['module']:<7} | {i['option'][:44]:<44} | {i['vb6_form']}")
print()
print("--- MISSING without VB6 form (first 40) ---")
for i in [x for x in miss if not x["vb6_form"]][:40]:
    print(f"{i['code']:>4} | {i['module']:<7} | {i['option'][:50]}")
