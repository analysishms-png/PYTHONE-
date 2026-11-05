with open(r'C:\Analysis\HMS_py\HMS_py\ui\shell\shell.py', 'r', encoding='utf-8') as f:
    content = f.read()

# Add HK Room Op Stock Entry after House Keeping Op.Stock Entry
content = content.replace(
    '"House Keeping Op.Stock Entry": (lambda w: hk_ui.open_hk_house_op_stock(w, user=getattr(w, \'user\', \'PYADMIN\'))) if hk_ui else _coming_soon("House Keeping Op.Stock Entry"),',
    '"House Keeping Op.Stock Entry": (lambda w: hk_ui.open_hk_house_op_stock(w, user=getattr(w, \'user\', \'PYADMIN\'))) if hk_ui else _coming_soon("House Keeping Op.Stock Entry"),\n        "HK Room Op Stock Entry": (lambda w: hk_ui.open_hk_room_op_stock(w, user=getattr(w, \'user\', \'PYADMIN\'))) if hk_ui else _coming_soon("HK Room Op Stock Entry"),'
)

with open(r'C:\Analysis\HMS_py\HMS_py\ui\shell\shell.py', 'w', encoding='utf-8') as f:
    f.write(content)

print('Fixed')