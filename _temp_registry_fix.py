# Wave 5: Fd*/CheckOut batch (VB6 FdCheckOut/fdAmendEntry/...)
        "Amend Stay": (lambda w: amstay_ui.open_amend_stay(
            w, user=getattr(w, "user", None))) if amstay_ui else _coming_soon("Amend Stay"),
        "Look Up Reservation By Guest Name": (lambda w: fdui.open_lookup_reservation(w)) if fdui else _coming_soon("Look Up Reservation By Guest Name"),
        "Room Check Out": (lambda w: fdui.open_room_checkout(w, user=getattr(w, 'user', 'PYADMIN'))) if fdui else _coming_soon("Room Check Out"),
        # Group Check-Out (VB6 FdGrpCheckOut.frm / FdGrpdetCheckOut.frm)
        "Group Check Out": (lambda w: grpco_ui.open_group_checkout(w, user=getattr(w, 'user', 'PYADMIN'))) if grpco_ui else _coming_soon("Group Check Out"),
        "Group Check Out Entry (Detail)": (lambda w: grpco_ui.open_group_checkout(w, user=getattr(w, 'user', 'PYADMIN'))) if grpco_ui else _coming_soon("Group Check Out Entry (Detail)"),
        "Guest Ledger": (lambda w: fdui.open_guest_ledger(w)) if fdui else _coming_soon("Guest Ledger"),
        "Summerized Guest Ledger": (lambda w: fdui.open_guest_ledger_summ(w)) if fdui else _coming_soon("Summerized Guest Ledger"),
        "Room Check Out Entry": (lambda w: fdui.open_group_checkout(w, user=getattr(w, 'user', 'PYADMIN'))) if fdui else _coming_soon("Room Check Out Entry"),
        "Room Check Out Entry (Detail)": (lambda w: fdui.open_group_detail_checkout(w, user=getattr(w, 'user', 'PYADMIN'))) if fdui else _coming_soon("Room Check Out Entry (Detail)"),
        "Look Up Room": (lambda w: fdui.open_lookup_room(w)) if fdui else _coming_soon("Look Up Room"),
        # Group Reservation (VB6 resGroup.frm)
        "Group Reservation": (lambda w: grpbook_ui.open_group_reservation(w, user=getattr(w, 'user', 'PYADMIN'))) if grpbook_ui else _coming_soon("Group Reservation"),
        # Reservation Status (VB6 FrmReservationStatus.frm)
        "Reservation Status": (lambda w: resbrowser_ui.open_reservation_status(w, user=getattr(w, 'user', 'PYADMIN'))) if resbrowser_ui else _coming_soon("Reservation Status"),
        # Reservation Room Lookup (VB6 resRoomNo.frm / resRoomType.frm)
        "Reservation Look Up Room Wise": (lambda w: resbrowser_ui.open_room_wise_lookup(w, user=getattr(w, 'user', 'PYADMIN'))) if resbrowser_ui else _coming_soon("Reservation Look Up Room Wise"),
        "Room Category Wise Reservation Look Up": (lambda w: resbrowser_ui.open_room_type_lookup(w, user=getattr(w, 'user', 'PYADMIN'))) if resbrowser_ui else _coming_soon("Room Category Wise Reservation Look Up"),
        "Look Up Room": (lambda w: fdui.open_lookup_room(w)) if fdui else _coming_soon("Look Up Room"),
        "Depart Sundry Setting": (lambda w: fdui.open_depart_sundry(w)) if fdui else _coming_soon("Depart Sundry Setting"),