select
    S.vdate,
    S.vtype,
    S.vno,
    S.amount,
    S.item,
    I.Name,
    CASE
        WHEN VT.ncat IN (
            'PBC',
            'PBR',
            'MRE',
            'RQI',
            'STOP',
            'BKREC',
            'KSREC',
            'KMREC'
        ) THEN S.recdqty
        ELSE 0
    END as QtyRec,
    CASE
        WHEN VT.ncat IN ('PRR', 'PRC', 'RQR', 'BKISS', 'KSISS', 'KMISS') THEN S.issqty
        ELSE 0
    END as QtyIss,
    CASE
        WHEN VT.ncat IN ('PBC', 'PBR', 'PRR', 'PRC', 'MRE') THEN SG.name
        ELSE D.name
    END as Particulars,
    CASE
        WHEN VT.ncat IN (
            'PBC',
            'PBR',
            'MRE',
            'RQI',
            'STOP',
            'BKREC',
            'KSREC',
            'KMREC'
        ) THEN 'A'
        WHEN VT.ncat IN ('PRR', 'PRC', 'RQR', 'BKISS', 'KSISS', 'KMISS') THEN 'B'
        ELSE 'C'
    END as SeqNo
from
    stock as S
    left join itemmast as I on S.item = I.Code
    and I.ItemType = 'Store'
    left join voucher_type as VT on S.vtype = VT.v_type
    and S.propertyid = VT.propertyid
    left join subgroup as SG on S.partycode = SG.sub_code
    left join stock as S1 on S.contradocid = S1.docid
    and S.contrasno = S1.sno
    left join godown_mast as D on S1.godowncode = D.scode
where
    S.propertyid = 123
    and S.vdate between '2025-09-25'
    and '2025-09-25'
    and S.godowncode in ('PURC123')
    and I.ItemType = 'Store'
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
order by
    S.item asc,
    S.vdate asc,
    SeqNo asc,
    S.vtype asc,
    S.vno asc