select
    acgroup.maingroupname as name,
    ledger.docid,
    ledger.vtype,
    ledger.vdate,
    SUM(ledger.amtdr) - SUM(ledger.amtcr) AS balance,
    subgroup.group_code
from
    ledger
    left join subgroup on subgroup.sub_code = ledger.subcode
    left join acgroup on acgroup.group_code = subgroup.group_code
where
    ledger.propertyid = 123
    and ledger.vdate between '2025-09-16'
    and '2025-09-16'
group by
    acgroup.maingroupcode
order by
    acgroup.maingroupname asc



    