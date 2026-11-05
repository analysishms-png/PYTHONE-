with open(r'C:\Analysis\HMS_py\HMS_py\ui\shell\shell.py', 'r', encoding='utf-8') as f:
    content = f.read()

# Fix the missing quote
content = content.replace(
    '"Order Booking": (lambda w: posbook_ui.open_order_booking(w, user=getattr(w, "user", "PYADMIN"))) if posbook_ui else _coming_soon("Order Booking"),',
    '"Order Booking": (lambda w: posbook_ui.open_order_booking(w, user=getattr(w, "user", "PYADMIN"))) if posbook_ui else _coming_soon("Order Booking"),'
)

with open(r'C:\Analysis\HMS_py\HMS_py\ui\shell\shell.py', 'w', encoding='utf-8') as f:
    f.write(content)

print('Fixed')