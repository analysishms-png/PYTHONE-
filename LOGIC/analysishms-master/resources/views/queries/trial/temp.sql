select
    CASE
        WHEN acgroup.undergroup = "Y" THEN subgroup.name
        ELSE acgroup.group_name
    END AS name,
    SUM(ledger.amtdr) - SUM(ledger.amtcr) AS balance,
    ledger.subcode,
    acgroup.undergroup
from
    ledger
    left join subgroup on subgroup.sub_code = ledger.subcode
    left join acgroup on acgroup.group_code = subgroup.group_code
where
    ledger.propertyid = 123
    and ledger.vdate between '2025-09-16'
    and '2025-09-16'
    and subgroup.group_code = 5123
group by
    ledger.subcode,
    acgroup.group_code,
    acgroup.undergroup,
    subgroup.name,
    acgroup.group_name
order by
    name asc