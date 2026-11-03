select
    B.DocId,
    B.BookNo as ResNo,
    PC.vno as Reciptno,
    B.ResStatus as Status,
    CASE
        WHEN PC.vtype = 'ADRES' THEN 'Advance'
        WHEN PC.vtype = 'ARRES' THEN 'Refund'
        ELSE 'Other'
    END AS PaymentType,
    B.vdate as ResDate,
    GF.name as GuestName,
    G.arrDate as ArrivalDate,
    G.DepDate as Depdate,
    PC.amtcr as Amount,
    RM.name as PMode,
    SU.name as Company,
    ST.Name as TravelAgent,
    PC.u_name
from
    booking as B
    left join guestprof as GF on B.guestprof = GF.guestcode
    left join grpbookingdetails as G on B.DocId = G.BookingDocid
    left join paycharge as PC on B.DocId = PC.refdocid
    left join revmast as RM on PC.paycode = RM.rev_code
    left join subgroup as SU on B.Company = SU.sub_code
    left join subgroup as ST on B.TravelAgency = ST.sub_code
where
    exists (
        select
            1
        from
            paycharge as PC
        where
            PC.refdocid = B.DocId
            and PC.vdate between '2025-11-01'
            and '2025-12-15'
            and PC.propertyid = 138
            and PC.vtype in ('ARRES', 'ADRES')
    )
group by
    PC.vno
order by
    PC.vdate asc,
    PC.vno asc