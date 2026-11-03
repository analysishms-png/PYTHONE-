select
    roomocc.roomno as roomno,
    roomocc.name as name,
    COALESCE(BB.waitername, AA.waitername) AS waitername,
    COALESCE(BB.vtime, AA.vtime) AS vtime,
    CASE
        WHEN CC.roomno IS NOT NULL THEN "vacant"
        WHEN BB.waitername IS NOT NULL
        AND BB.billno IS NOT NULL THEN "billed"
        WHEN AA.waitername IS NOT NULL
        AND AA.contradocid IS NOT NULL THEN "occupied"
        ELSE "vacant"
    END AS status
from
    roomocc
    left join (
        select
            distinct kot.roomno,
            kot.docid,
            kot.vtime,
            kot.waiter,
            server_mast.name as waitername,
            kot.contradocid
        from
            kot
            left join server_mast on server_mast.scode = kot.waiter
        where
            kot.restcode = 'RS103'
            and kot.roomtype = 'RO'
            and kot.pending = 'Y'
            and kot.voidyn = 'N'
            and (
                kot.delflag = 'N'
                or kot.delflag = ''
            )
            and kot.nckot <> 'Y'
    ) as AA on AA.roomno = roomocc.roomno
    left join (
        select
            sale1.docid,
            MAX(sale1.vno) AS billno,
            MAX(sale1.vtime) AS vtime,
            MAX(sale1.roomno) AS roomno,
            MAX(sale1.waiter) AS waiter,
            MAX(server_mast.name) AS waitername,
            CASE
                WHEN SUM(COALESCE(paycharge.amtcr, 0)) < SUM(sale1.netamt) THEN "Pending"
                ELSE "Settle"
            END AS Status
        from
            sale1
            left join paycharge on sale1.docid = paycharge.docid
            left join server_mast on sale1.waiter = server_mast.scode
        where
            paycharge.docid is null
            and (
                sale1.delflag = ''
                or sale1.delflag = 'N'
            )
            and sale1.roomtype = 'RO'
            and sale1.restcode = 'RS103'
        group by
            sale1.docid
    ) as BB on BB.roomno = roomocc.roomno
    left join (
        select
            distinct sale1.roomno
        from
            sale1
            inner join paycharge on sale1.docid = paycharge.docid
        where
            sale1.restcode = 'RS103'
            and paycharge.restcode = 'RS103'
            and sale1.roomtype = 'RO'
    ) as CC on CC.roomno = roomocc.roomno
where
    roomocc.propertyid = 103
    and roomocc.roomtype = 'RO'
    and roomocc.type is null
group by
    roomocc.roomno
order by
    roomocc.roomno asc