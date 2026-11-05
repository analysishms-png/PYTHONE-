with open(r'C:\Analysis\HMS_py\HMS_py\ui\shell\shell.py', 'r', encoding='utf-8') as f:
    content = f.read()

# Fix Order Booking and Order Booking Advance
content = content.replace(
    '"Order Booking", "Bill Lookup", "Order Booking Advance",',
    '"Order Booking": (lambda w: posbook_ui.open_order_booking(w, user=getattr(w, "user", "PYADMIN"))) if posbook_ui else _coming_soon("Order Booking"),\n            "Bill Lookup": (lambda w: posbook_ui.open_order_booking(w, user=getattr(w, "user", "PYADMIN"))) if posbook_ui else _coming_soon("Bill Lookup"),\n            "Order Booking Advance": (lambda w: posbook_ui.open_order_booking(w, user=getattr(w, "user", "PYADMIN"))) if posbook_ui else _coming_soon("Order Booking Advance"),'
)

with open(r'C:\Analysis\HMS_py\HMS_py\ui\shell\shell.py', 'w', encoding='utf-8') as f:
    f.write(content)

print('Fixed')