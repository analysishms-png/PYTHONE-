select
    booking.BookedBy,
    booking.Remarks,
    booking.pickupdrop,
    grpbookingdetails.*,
    DATE_SUB(grpbookingdetails.DepDate, INTERVAL 1 DAY) as depdate_minus_one,
    room_cat.cat_code,
    room_cat.name as roomcatname,
    guestprof.con_prefix,
    guestprof.mobile_no,
    guestprof.guestcode,
    grpbookingdetails.GuestProf,
    plan_mast.pcode,
    plan_mast.name as planname,
    bookingplandetails.sno1 as bsno1,
    bookingplandetails.netplanamt as plannetamt
from
    grpbookingdetails
    inner join guestprof on guestprof.guestcode = grpbookingdetails.GuestProf
    inner join room_cat on grpbookingdetails.RoomCat = room_cat.cat_code
    left join plan_mast on grpbookingdetails.Plan_Code = plan_mast.pcode
    left join bookingplandetails on bookingplandetails.docid = grpbookingdetails.BookingDocid
    and bookingplandetails.sno1 = grpbookingdetails.Sno
    left join booking on booking.DocId = grpbookingdetails.BookingDocid
    and booking.Property_ID = 119
where
    grpbookingdetails.Property_ID = 119
    and grpbookingdetails.Cancel = 'N'
    and (
        grpbookingdetails.Plan_Code is not null
        or grpbookingdetails.Plan_Code is null
    )
    and (
        grpbookingdetails.ContraDocId = ''
        or grpbookingdetails.ContraDocId is null
    )