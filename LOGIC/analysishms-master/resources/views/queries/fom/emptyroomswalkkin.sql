select
    rm.rcode,
    rm.room_cat
from
    room_mast as rm
where
    rm.propertyid = 103
    and rm.room_cat = 2103
    and rm.rcode not in (
        select
            ro.roomno
        from
            roomocc as ro
        where
            ro.propertyid = 103
            and ro.type is null
            and ro.roomcat = 2103
            and ro.chkindate < '2025-04-15'
            and ro.depdate >= '2025-04-14'
    )
    and rm.rcode not in (
        select
            gb.RoomNo
        from
            grpbookingdetails as gb
        where
            gb.Property_ID = 103
            and gb.ArrDate < '2025-04-15'
            and gb.DepDate > '2025-04-14'
            and gb.chkoutyn = 'N'
            and gb.Cancel = 'N'
            and gb.RoomNo != 0
    )
    and rm.rcode not in (
        select
            rb.roomcode
        from
            roomblockout as rb
        where
            rb.fromdate < '2025-04-15'
            and rb.todate > '2025-04-14'
            and rb.propertyid = 103
            and rb.type = 'O'
    )