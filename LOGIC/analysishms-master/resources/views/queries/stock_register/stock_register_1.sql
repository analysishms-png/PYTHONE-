select
    distinct S.item,
    I.Name as ItemName,
    u.name as unitname,
    ui.name as issueunitname
from
    stock as S
    inner join itemmast as I on S.item = I.Code
    and I.ItemType = 'Store'
    inner join voucher_type as VT on S.vtype = VT.v_type
    and S.propertyid = VT.propertyid
    left join unitmast as u on u.ucode = I.Unit
    and u.propertyid = 123
    left join unitmast as ui on ui.ucode = I.IssueUnit
    and ui.propertyid = 123
where
    S.propertyid = 123
    and S.godowncode in ('PURC123')
    and I.Code in (
        199123,
        220123,
        258123,
        233123,
        185123,
        217123,
        190123,
        205123,
        207123,
        214123,
        232123,
        256123,
        194123,
        195123,
        201123,
        260123,
        227123,
        216123,
        231123,
        219123,
        204123,
        188123,
        200123,
        230123,
        198123,
        264123,
        225123,
        224123,
        183123,
        221123,
        249123,
        212123,
        247123,
        261123,
        257123,
        210123,
        251123,
        246123,
        255123,
        28123,
        184123,
        259123,
        3123,
        222123,
        248123,
        250123,
        253123,
        213123,
        187123,
        254123,
        263123,
        226123,
        252123,
        197123,
        191123,
        192123,
        189123,
        215123,
        186123,
        196123,
        223123
    )
    and VT.ncat in (
        'PBC',
        'PBR',
        'PRR',
        'PRC',
        'STOP',
        'MRE',
        'RQI',
        'RQR',
        'BKREC',
        'BKISS',
        'KSREC',
        'KSISS',
        'KMREC',
        'KMISS'
    )
order by
    I.Name asc