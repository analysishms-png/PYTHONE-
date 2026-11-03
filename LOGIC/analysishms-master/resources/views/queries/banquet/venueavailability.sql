select
    venueocc.venucode,
    venueocc.fromdate,
    venueocc.dromtime as fromtime,
    venueocc.todate,
    venueocc.totime,
    hallbook.partyname,
    hallbook.expatt,
    hallbook.guaratt,
    hallbook.coverrate,
    COALESCE(SUM(paychargeh.amtcr), 0) as advancesum
from
    venueocc
    left join hallbook on hallbook.docid = venueocc.fpdocid
    left join paychargeh on paychargeh.contradocid = hallbook.docid
where
    venueocc.propertyid = 103
    and venueocc.fromdate = '2025-10-15'
group by
    venueocc.venucode,
    venueocc.fromdate,
    venueocc.dromtime,
    venueocc.todate,
    venueocc.totime,
    hallbook.partyname,
    hallbook.expatt,
    hallbook.guaratt,
    hallbook.coverrate