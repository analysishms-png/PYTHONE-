with open(r'C:\Analysis\HMS_py\HMS_py\ui\shell\shell.py', 'r', encoding='utf-8') as f:
    content = f.read()

# The issue is that Order Booking entries are inside a set comprehension that expects only strings.
# We need to move them out of the comprehension and add them as separate registry entries.

# First, remove the problematic lines from the comprehension
content = content.replace(
    """            'Order Booking': (lambda w: posbook_ui.open_order_booking(w, user=getattr(w, 'user', 'PYADMIN'))) if posbook_ui else _coming_soon("Order Booking"),
            "Bill Lookup": (lambda w: posbook_ui.open_order_booking(w, user=getattr(w, 'user', 'PYADMIN'))) if posbook_ui else _coming_soon("Bill Lookup"),
            "Order Booking Advance": (lambda w: posbook_ui.open_order_booking(w, user=getattr(w, 'user', 'PYADMIN'))) if posbook_ui else _coming_soon("Order Booking Advance"),
            "KOT Transfer", "Token Entry", "Assign Delivery", "Payment Receive",""",
    """            "Display Table",
            "KOT Transfer", "Token Entry", "Assign Delivery", "Payment Receive","""
)

# Now add the entries to the main registry dictionary after the comprehension
content = content.replace(
    '        )}),\n        # Banquet operations',
    """        )}),
        # Order Booking (VB6 RsBookingEntry.frm / RsBookingEntryAdvance.frm)
        "Order Booking": (lambda w: posbook_ui.open_order_booking(w, user=getattr(w, 'user', 'PYADMIN'))) if posbook_ui else _coming_soon("Order Booking"),
        "Bill Lookup": (lambda w: posbook_ui.open_order_booking(w, user=getattr(w, 'user', 'PYADMIN'))) if posbook_ui else _coming_soon("Bill Lookup"),
        "Order Booking Advance": (lambda w: posbook_ui.open_order_booking(w, user=getattr(w, 'user', 'PYADMIN'))) if posbook_ui else _coming_soon("Order Booking Advance"),
        # Banquet operations"""
)

with open(r'C:\Analysis\HMS_py\HMS_py\ui\shell\shell.py', 'w', encoding='utf-8') as f:
    f.write(content)

print('Fixed')