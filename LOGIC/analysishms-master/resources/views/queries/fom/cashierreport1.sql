(
    select
        PC.DOCID,
        PC.SNO,
        PC.SNO1,
        MAX(PC.FOLIONO) AS FOLIONO,
        PC.FOLIONODOCID,
        RO.roomno,
        RO.name as GUESTNAME,
        MAX(PC.VDATE) AS VDATE,
        MAX(PC.VTYPE) AS VTYPE,
        MAX(PC.VNO) AS VNO,
        PC.AmtCr - PC.AmtDr AS NetSale,
        SUM(PC.TipAmt) AS TipAmt1,
        MAX(PC.PAYCODE) AS PAYCODE,
        MAX(PC.PayType) AS PType,
        MAX(PC.U_NAME) AS UNAME,
        MAX(PC.Comments) AS COMMENT,
        'PAYMENT RECD.' AS DEPARTNAME,
        1 AS AA
    from
        paycharge as PC
        left join revmast as PY on PC.PayCode = PY.rev_code
        left join roomocc as RO on PC.FOLIONODOCID = RO.DOCID
    where
        (
            (
                PC.VTYPE in ('ARRES', 'ADRES')
                and PC.DbtChkIn <> 'Yes'
            )
            or (
                PC.VTYPE not in ('ARRES', 'ADRES')
                and (
                    PC.refdocid is null
                    or PC.refdocid = ''
                )
            )
        )
        and PC.RESTCODE = FOM108
        and PY.field_type in ('P')
        and PC.VTYPE not in ('CHK')
        and PC.VDate between '2025-09-21'
        and '2025-09-21'
        and PC.propertyid = 108
        and PC.PAYTYPE in (?, 'Cash', 'Company', 'Hold', 'Room', 'UPI', 'Credit Card')
    group by
        PC.DOCID,
        PC.SNO,
        PC.SNO1
    having
        SUM(PC.AmtCr) - SUM(PC.AmtDr) > 0
)
union
all (
    select
        PC.DOCID,
        PC.SNO,
        PC.SNO1,
        MAX(PC.FOLIONO) AS FOLIONO,
        PC.FOLIONODOCID,
        RO.roomno,
        RO.name as GUESTNAME,
        MAX(PC.VDATE) AS VDATE,
        MAX(PC.VTYPE) AS VTYPE,
        MAX(PC.VNO) AS VNO,
        PC.AmtCr - PC.AmtDr AS NetSale,
        SUM(PC.TipAmt) AS TipAmt1,
        MAX(PC.PAYCODE) AS PAYCODE,
        MAX(PC.PayType) AS PType,
        MAX(PC.U_NAME) AS UNAME,
        MAX(PC.Comments) AS COMMENT,
        'PAYMENT MADE' AS DEPARTNAME,
        2 AS AA
    from
        paycharge as PC
        left join revmast as PY on PC.PayCode = PY.rev_code
        left join roomocc as RO on PC.FOLIONODOCID = RO.DOCID
    where
        (
            (
                PC.VTYPE in ('ARRES', 'ADRES')
                and PC.DbtChkIn <> 'Yes'
            )
            or (
                PC.VTYPE not in ('ARRES', 'ADRES')
                and (
                    PC.refdocid is null
                    or PC.refdocid = ''
                )
            )
        )
        and PC.RESTCODE = FOM108
        and PY.field_type in ('P')
        and PC.VTYPE not in ('CHK')
        and PC.VDate between '2025-09-21'
        and '2025-09-21'
        and PC.propertyid = 108
        and PC.PAYTYPE in (?, 'Cash', 'Company', 'Hold', 'Room', 'UPI', 'Credit Card')
    group by
        PC.DOCID,
        PC.SNO,
        PC.SNO1
    having
        SUM(PC.AmtCr) - SUM(PC.AmtDr) < 0
)
union
all (
    select
        E.docid,
        1 AS SNO,
        2 AS SNO1,
        "" AS FOLIONO,
        "" AS FOLIONODOCID,
        "" AS roomno,
        "" AS GUESTNAME,
        E.vdate,
        E.vtype,
        E.vno,
        E.cramt AS NetSale,
        0 AS TipAmt1,
        "" AS PAYCODE,
        'Cash' AS PType,
        E.u_name as UNAME,
        E.remark as COMMENT,
        'MISC.PAYMENT' AS DEPARTNAME,
        3 AS AA
    from
        expsheet as E
    where
        E.vdate between '2025-09-21'
        and '2025-09-21'
        and E.vtype = 'HTEXP'
        and E.propertyid = 108
        and E.cramt > 0
)
union
all (
    select
        E.docid,
        1 AS SNO,
        2 AS SNO1,
        "" AS FOLIONO,
        "" AS FOLIONODOCID,
        "" AS roomno,
        "" AS GUESTNAME,
        E.vdate,
        E.vtype,
        E.vno,
        E.cramt as NetSale,
        0 AS TipAmt1,
        "" AS PAYCODE,
        'Cash' AS PType,
        E.u_name as UNAME,
        E.remark as COMMENT,
        'MISC.RECEIPT' AS DEPARTNAME,
        4 AS AA
    from
        expsheet as E
    where
        E.VDate between '2025-09-21'
        and '2025-09-21'
        and E.vtype = 'HTSAL'
        and E.propertyid = 108
        and E.cramt > 0
)
order by
    AA asc,
    foliono asc,
    VDATE asc,
    DOCID asc,
    SNO asc