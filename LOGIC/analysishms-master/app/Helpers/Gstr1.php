<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

function banquetquery1($fromdate, $todate)
{
    $propertyid = Auth::user()->propertyid;

    $query1 = DB::table('hallsale1 as hs1')
        ->selectRaw("
            COALESCE(sg.gstin,'') as gstin,
            hs1.vtype as vtype,
            hs1.docid as docid,
            hs1.vno as billno,
            COALESCE(sg.name,'') as companyname,
            hs1.vdate as bill_date,
            ROUND(hs1.netamt,2) as billtotal,
            '' as egstin,
            5 as taxper,
            ROUND(hs1.totalpercover,2) as basevalue,
            0 as cessamount
        ")
        ->join('hallbook as hb', function ($join) {
            $join->on('hb.docid', '=', 'hs1.bookdocid')
                ->on('hb.propertyid', '=', 'hs1.propertyid');
        })
        ->leftJoin('subgroup as sg', function ($join) {
            $join->on('sg.sub_code', '=', 'hb.companycode')
                ->on('sg.propertyid', '=', 'hb.propertyid');
        })
        ->where('hs1.propertyid', $propertyid)
        ->whereBetween('hs1.vdate', [$fromdate, $todate])
        ->where('hs1.totalpercover', '>', 0)
        ->orderBy('hs1.vdate')
        ->orderBy('hs1.vno')
        ->get();

    return $query1;
}

function banquetquery2($fromdate, $todate)
{
    $propertyid = Auth::user()->propertyid;

    $query2 = DB::table('hallstock as hs')
        ->selectRaw("
            COALESCE(sg.gstin,'') as gstin,

            hs1.vtype as vtype,
            hs1.docid as docid,

            hs1.vno as billno,

            COALESCE(sg.name,'') as companyname,

            hs1.vdate as bill_date,

            ROUND(SUM(hs.total),2) as billtotal,

            '' as egstin,

            ROUND(MAX(hs.taxper),2) as taxper,

            ROUND(SUM(hs.amount),2) as basevalue,

            0 as cessamount
        ")
        ->join('hallsale1 as hs1', function ($join) {
            $join->on('hs1.docid', '=', 'hs.docid')
                ->on('hs1.propertyid', '=', 'hs.propertyid');
        })
        ->join('hallbook as hb', function ($join) {
            $join->on('hb.docid', '=', 'hs1.bookdocid')
                ->on('hb.propertyid', '=', 'hs1.propertyid');
        })
        ->leftJoin('subgroup as sg', function ($join) {
            $join->on('sg.sub_code', '=', 'hb.companycode')
                ->on('sg.propertyid', '=', 'hb.propertyid');
        })
        ->where('hs.propertyid', $propertyid)
        ->whereBetween('hs1.vdate', [$fromdate, $todate])
        ->groupBy(
            'hs1.docid',
            'hs1.vtype',
            'hs1.vdate',
            'hs1.vno',
            'sg.gstin',
            'sg.name'
        )
        ->orderBy('hs1.vdate')
        ->orderBy('hs1.vno')
        ->get();

    return $query2;
}

function getbanquetdata($fromdate, $todate)
{
    $data1 = banquetquery1($fromdate, $todate);
    $data2 = banquetquery2($fromdate, $todate);

    $data2Totals = $data2
        ->groupBy('docid')
        ->map(function ($rows) {
            return $rows->sum('billtotal');
        });

    $data1 = $data1->map(function ($row) use ($data2Totals) {
        if (isset($data2Totals[$row->docid])) {
            $row->billtotal = round(
                $row->billtotal - $data2Totals[$row->docid],
                2
            );
        }

        return $row;
    });

    return $data1
        ->concat($data2)
        ->sortBy([
            ['billno', 'asc'],
            ['taxper', 'desc']
        ])
        ->values();
}

function advancequerybanquetad1($fromdate, $todate)
{
    $propertyid = Auth::user()->propertyid;

    $query1 = DB::table('paychargeh as P')
        ->selectRaw("
        P.docid,
        MAX(P.vdate) AS advdate,
        MAX(P.contradocid) AS contradocid,
        MAX(H.docid) AS billdocid,
        MAX(H.vdate) AS billdate,
        '1' AS Cond,

        SUM(
            CASE
                WHEN P.sno = 1
                THEN P.amtcr
                ELSE 0
            END
        ) AS advanceamount,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('CGSS', P.propertyid)
                THEN P.taxper
                ELSE 0
            END
        ) AS cgstper,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('SGSS', P.propertyid)
                THEN P.taxper
                ELSE 0
            END
        ) AS sgstper,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('IGSS', P.propertyid)
                THEN P.taxper
                ELSE 0
            END
        ) AS igstper,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('CGSS', P.propertyid)
                THEN P.amtcr
                ELSE 0
            END
        ) AS cgstamount,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('SGSS', P.propertyid)
                THEN P.amtcr
                ELSE 0
            END
        ) AS sgstamount,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('IGSS', P.propertyid)
                THEN P.amtcr
                ELSE 0
            END
        ) AS igstamount,

        SUM(
            CASE
                WHEN P.taxper > 0
                THEN P.taxper
                ELSE 0
            END
        ) AS totaltaxper,

        SUM(
            CASE
                WHEN P.taxper > 0
                THEN P.amtcr
                ELSE 0
            END
        ) AS totaltaxamount
    ")
        ->leftJoin('hallsale1 as H', 'H.bookdocid', '=', 'P.contradocid')
        ->where('P.propertyid', $propertyid)
        ->where('P.vtype', 'AD')
        ->whereBetween('P.vdate', [$fromdate, $todate])
        ->whereNotExists(function ($query) {
            $query->select(DB::raw(1))
                ->from('hallsale1 as HX')
                ->whereColumn('HX.bookdocid', 'P.contradocid')
                ->whereRaw('YEAR(HX.vdate) = YEAR(P.vdate)')
                ->whereRaw('MONTH(HX.vdate) = MONTH(P.vdate)');
        })
        ->groupBy('P.docid')
        ->havingRaw('COUNT(*) > 1')
        ->orderBy('advdate')
        ->orderBy('P.docid')
        ->get();

    return $query1;
}
function advancequerybanquetar1($fromdate, $todate)
{
    $propertyid = Auth::user()->propertyid;

    $query1 = DB::table('paychargeh as P')
        ->selectRaw("
        P.docid,
        MAX(P.vdate) AS advdate,
        MAX(P.contradocid) AS contradocid,
        MAX(H.docid) AS billdocid,
        MAX(H.vdate) AS billdate,
        '1' AS Cond,

        SUM(
            CASE
                WHEN P.sno = 1
                THEN P.amtdr
                ELSE 0
            END
        ) AS advanceamount,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('CGSS', P.propertyid)
                THEN P.taxper
                ELSE 0
            END
        ) AS cgstper,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('SGSS', P.propertyid)
                THEN P.taxper
                ELSE 0
            END
        ) AS sgstper,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('IGSS', P.propertyid)
                THEN P.taxper
                ELSE 0
            END
        ) AS igstper,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('CGSS', P.propertyid)
                THEN P.amtdr
                ELSE 0
            END
        ) AS cgstamount,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('SGSS', P.propertyid)
                THEN P.amtdr
                ELSE 0
            END
        ) AS sgstamount,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('IGSS', P.propertyid)
                THEN P.amtdr
                ELSE 0
            END
        ) AS igstamount,

        SUM(
            CASE
                WHEN P.taxper > 0
                THEN P.taxper
                ELSE 0
            END
        ) AS totaltaxper,

        SUM(
            CASE
                WHEN P.taxper > 0
                THEN P.amtdr
                ELSE 0
            END
        ) AS totaltaxamount
    ")
        ->leftJoin('hallsale1 as H', 'H.bookdocid', '=', 'P.contradocid')
        ->where('P.propertyid', $propertyid)
        ->where('P.vtype', 'AR')
        ->whereBetween('P.vdate', [$fromdate, $todate])
        ->whereNotExists(function ($query) {
            $query->select(DB::raw(1))
                ->from('hallsale1 as HX')
                ->whereColumn('HX.bookdocid', 'P.contradocid')
                ->whereRaw('YEAR(HX.vdate) = YEAR(P.vdate)')
                ->whereRaw('MONTH(HX.vdate) = MONTH(P.vdate)');
        })
        ->groupBy('P.docid')
        ->havingRaw('COUNT(*) > 1')
        ->orderBy('advdate')
        ->orderBy('P.docid')
        ->get();

    return $query1;
}

function advancequerybanquetad2($fromdate, $todate)
{
    $propertyid = Auth::user()->propertyid;

    $query2 = DB::table('paychargeh as P')
        ->selectRaw("
        P.docid AS docid,
        MAX(P.vdate) AS advdate,
        MAX(P.contradocid) AS contradocid,

        MAX(H.docid) AS billdocid,
        MAX(H.vdate) AS billdate,
        '0' AS Cond,
        MAX(H.vno) AS billno,

        SUM(
            CASE
                WHEN P.sno = 1
                THEN P.amtcr
                ELSE 0
            END
        ) AS advanceamount,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('CGSS', P.propertyid)
                THEN P.taxper
                ELSE 0
            END
        ) AS cgstper,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('SGSS', P.propertyid)
                THEN P.taxper
                ELSE 0
            END
        ) AS sgstper,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('IGSS', P.propertyid)
                THEN P.taxper
                ELSE 0
            END
        ) AS igstper,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('CGSS', P.propertyid)
                THEN P.amtcr
                ELSE 0
            END
        ) AS cgstamount,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('SGSS', P.propertyid)
                THEN P.amtcr
                ELSE 0
            END
        ) AS sgstamount,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('IGSS', P.propertyid)
                THEN P.amtcr
                ELSE 0
            END
        ) AS igstamount,

        SUM(
            CASE
                WHEN P.taxper > 0
                THEN P.taxper
                ELSE 0
            END
        ) AS totaltaxper,

        SUM(
            CASE
                WHEN P.taxper > 0
                THEN P.amtcr
                ELSE 0
            END
        ) AS totaltaxamount
    ")
        ->join('hallsale1 as H', 'H.bookdocid', '=', 'P.contradocid')
        ->where('P.propertyid', $propertyid)
        ->where('P.vtype', 'AD')
        ->where('P.amtcr', '<>', 0)
        ->whereBetween('H.vdate', [$fromdate, $todate])
        ->where(function ($query) {
            $query->whereRaw('YEAR(P.vdate) < YEAR(H.vdate)')
                ->orWhere(function ($query) {
                    $query->whereRaw('YEAR(P.vdate) = YEAR(H.vdate)')
                        ->whereRaw('MONTH(P.vdate) < MONTH(H.vdate)');
                });
        })
        ->groupBy('P.docid')
        ->havingRaw('COUNT(*) > 1')
        ->orderBy('advdate')
        ->orderBy('docid')
        ->get();

    return $query2;
}
function advancequerybanquetar2($fromdate, $todate)
{
    $propertyid = Auth::user()->propertyid;

    $query2 = DB::table('paychargeh as P')
        ->selectRaw("
        P.docid AS docid,
        MAX(P.vdate) AS advdate,
        MAX(P.contradocid) AS contradocid,

        MAX(H.docid) AS billdocid,
        MAX(H.vdate) AS billdate,
        '0' AS Cond,
        MAX(H.vno) AS billno,

        SUM(
            CASE
                WHEN P.sno = 1
                THEN P.amtdr
                ELSE 0
            END
        ) AS advanceamount,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('CGSS', P.propertyid)
                THEN P.taxper
                ELSE 0
            END
        ) AS cgstper,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('SGSS', P.propertyid)
                THEN P.taxper
                ELSE 0
            END
        ) AS sgstper,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('IGSS', P.propertyid)
                THEN P.taxper
                ELSE 0
            END
        ) AS igstper,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('CGSS', P.propertyid)
                THEN P.amtdr
                ELSE 0
            END
        ) AS cgstamount,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('SGSS', P.propertyid)
                THEN P.amtdr
                ELSE 0
            END
        ) AS sgstamount,

        SUM(
            CASE
                WHEN P.paycode = CONCAT('IGSS', P.propertyid)
                THEN P.amtdr
                ELSE 0
            END
        ) AS igstamount,

        SUM(
            CASE
                WHEN P.taxper > 0
                THEN P.taxper
                ELSE 0
            END
        ) AS totaltaxper,

        SUM(
            CASE
                WHEN P.taxper > 0
                THEN P.amtdr
                ELSE 0
            END
        ) AS totaltaxamount
    ")
        ->join('hallsale1 as H', 'H.bookdocid', '=', 'P.contradocid')
        ->where('P.propertyid', $propertyid)
        ->where('P.vtype', 'AR')
        ->where('P.amtdr', '<>', 0)
        ->whereBetween('H.vdate', [$fromdate, $todate])
        ->where(function ($query) {
            $query->whereRaw('YEAR(P.vdate) < YEAR(H.vdate)')
                ->orWhere(function ($query) {
                    $query->whereRaw('YEAR(P.vdate) = YEAR(H.vdate)')
                        ->whereRaw('MONTH(P.vdate) < MONTH(H.vdate)');
                });
        })
        ->groupBy('P.docid')
        ->havingRaw('COUNT(*) > 1')
        ->orderBy('advdate')
        ->orderBy('docid')
        ->get();

    return $query2;
}

function getadvancequerybanquet($fromdate, $todate)
{
    $data1 = advancequerybanquetad1($fromdate, $todate);
    $data2 = advancequerybanquetad2($fromdate, $todate);
    $data3 = advancequerybanquetar1($fromdate, $todate);
    $data4 = advancequerybanquetar2($fromdate, $todate);

    $data3Map = $data3->keyBy('contradocid');
    $data4Map = $data4->keyBy('contradocid');

    $results = collect();

    foreach ($data1 as $row) {

        if ($data3Map->has($row->contradocid)) {

            $minus = $data3Map[$row->contradocid];

            $row->advanceamount = (float)$row->advanceamount - (float)$minus->advanceamount;
            $row->cgstamount = (float)$row->cgstamount - (float)$minus->cgstamount;
            $row->sgstamount = (float)$row->sgstamount - (float)$minus->sgstamount;
            $row->igstamount = (float)$row->igstamount - (float)$minus->igstamount;
            $row->totaltaxamount = (float)$row->totaltaxamount - (float)$minus->totaltaxamount;
        }

        $results->push($row);
    }

    foreach ($data2 as $row) {

        if ($data4Map->has($row->contradocid)) {

            $minus = $data4Map[$row->contradocid];

            $row->advanceamount = (float)$row->advanceamount - (float)$minus->advanceamount;
            $row->cgstamount = (float)$row->cgstamount - (float)$minus->cgstamount;
            $row->sgstamount = (float)$row->sgstamount - (float)$minus->sgstamount;
            $row->igstamount = (float)$row->igstamount - (float)$minus->igstamount;
            $row->totaltaxamount = (float)$row->totaltaxamount - (float)$minus->totaltaxamount;
        }

        $results->push($row);
    }

    return $results
        ->sortBy([
            ['advdate', 'asc'],
            ['docid', 'asc']
        ])
        ->values();
}

function advancequeryfomadres1($fromdate, $todate)
{
    $propertyid = Auth::user()->propertyid;
    $query1 = DB::table(DB::raw("
(
    SELECT
        docid,

        MAX(vdate) AS advdate,
        MAX(refdocid) AS contradocid,

        SUM(
            CASE
                WHEN sno = 1
                THEN amtcr
                ELSE 0
            END
        ) AS advanceamount,

        SUM(
            CASE
                WHEN paycode = CONCAT('CGSS', propertyid)
                THEN taxper
                ELSE 0
            END
        ) AS cgstper,

        SUM(
            CASE
                WHEN paycode = CONCAT('SGSS', propertyid)
                THEN taxper
                ELSE 0
            END
        ) AS sgstper,

        SUM(
            CASE
                WHEN paycode = CONCAT('IGSS', propertyid)
                THEN taxper
                ELSE 0
            END
        ) AS igstper,

        SUM(
            CASE
                WHEN paycode = CONCAT('CGSS', propertyid)
                THEN amtcr
                ELSE 0
            END
        ) AS cgstamount,

        SUM(
            CASE
                WHEN paycode = CONCAT('SGSS', propertyid)
                THEN amtcr
                ELSE 0
            END
        ) AS sgstamount,

        SUM(
            CASE
                WHEN paycode = CONCAT('IGSS', propertyid)
                THEN amtcr
                ELSE 0
            END
        ) AS igstamount,

        SUM(
            CASE
                WHEN taxper > 0
                THEN taxper
                ELSE 0
            END
        ) AS totaltaxper,

        SUM(
            CASE
                WHEN taxper > 0
                THEN amtcr
                ELSE 0
            END
        ) AS totaltaxamount

    FROM paycharge

    WHERE propertyid = {$propertyid}
      AND vtype = 'ADRES'
      AND vdate BETWEEN '{$fromdate}' AND '{$todate}'

    GROUP BY docid

    HAVING COUNT(*) > 1
) P
"))
        ->leftJoin(DB::raw("
(
    SELECT
        G.BookingDocid,

        MAX(R.docid) AS billdocid,
        MAX(R.chkoutdate) AS billdate

    FROM grpbookingdetails G

    INNER JOIN roomocc R
        ON R.docid = G.ContraDocId
       AND R.sno1 = G.Sno
       AND R.type = 'O'

    WHERE G.Cancel = 'N'

    GROUP BY G.BookingDocid
) R
"), 'R.BookingDocid', '=', 'P.contradocid')
        ->selectRaw("
    P.docid,
    P.advdate,
    P.contradocid,
    R.billdocid,
    R.billdate,
    '1' AS Cond,

    P.advanceamount,
    P.cgstper,
    P.sgstper,
    P.igstper,
    P.cgstamount,
    P.sgstamount,
    P.igstamount,
    P.totaltaxper,
    P.totaltaxamount
")
        ->whereRaw("
    NOT (
        R.billdate IS NOT NULL
        AND YEAR(R.billdate) = YEAR(P.advdate)
        AND MONTH(R.billdate) = MONTH(P.advdate)
    )
")
        ->orderBy('P.advdate')
        ->orderBy('P.docid')
        ->get();

    return $query1;
}

function advancequeryfomadres2($fromdate, $todate)
{
    $propertyid = Auth::user()->propertyid;
    $query2 = DB::table(DB::raw("
(
    SELECT
        docid,
        MAX(vdate) AS advdate,
        MAX(refdocid) AS contradocid,

        SUM(
            CASE
                WHEN sno = 1 THEN amtcr
                ELSE 0
            END
        ) AS advanceamount,

        SUM(
            CASE
                WHEN paycode = CONCAT('CGSS', propertyid) THEN taxper
                ELSE 0
            END
        ) AS cgstper,

        SUM(
            CASE
                WHEN paycode = CONCAT('SGSS', propertyid) THEN taxper
                ELSE 0
            END
        ) AS sgstper,

        SUM(
            CASE
                WHEN paycode = CONCAT('IGSS', propertyid) THEN taxper
                ELSE 0
            END
        ) AS igstper,

        SUM(
            CASE
                WHEN paycode = CONCAT('CGSS', propertyid) THEN amtcr
                ELSE 0
            END
        ) AS cgstamount,

        SUM(
            CASE
                WHEN paycode = CONCAT('SGSS', propertyid) THEN amtcr
                ELSE 0
            END
        ) AS sgstamount,

        SUM(
            CASE
                WHEN paycode = CONCAT('IGSS', propertyid) THEN amtcr
                ELSE 0
            END
        ) AS igstamount,

        SUM(
            CASE
                WHEN taxper > 0 THEN taxper
                ELSE 0
            END
        ) AS totaltaxper,

        SUM(
            CASE
                WHEN taxper > 0 THEN amtcr
                ELSE 0
            END
        ) AS totaltaxamount

    FROM paycharge

    WHERE propertyid = {$propertyid}
      AND vtype = 'ADRES'

    GROUP BY docid

    HAVING COUNT(*) > 1
) P
"))
        ->join(DB::raw("
(
    SELECT
        G.BookingDocid,
        MAX(R.docid) AS billdocid,
        MAX(R.chkoutdate) AS billdate

    FROM grpbookingdetails G

    INNER JOIN roomocc R
        ON R.docid = G.ContraDocId
       AND R.sno1 = G.Sno
       AND R.type = 'O'

    WHERE G.Cancel = 'N'

    GROUP BY G.BookingDocid
) R
"), 'R.BookingDocid', '=', 'P.contradocid')
        ->selectRaw("
    P.docid,
    P.advdate,
    P.contradocid,
    R.billdocid,
    R.billdate,
    '0' AS Cond,

    P.advanceamount,
    P.cgstper,
    P.sgstper,
    P.igstper,
    P.cgstamount,
    P.sgstamount,
    P.igstamount,
    P.totaltaxper,
    P.totaltaxamount
")
        ->whereRaw("
    PERIOD_DIFF(
        DATE_FORMAT(R.billdate, '%Y%m'),
        DATE_FORMAT(P.advdate, '%Y%m')
    ) > 0
")
        ->whereBetween('R.billdate', [$fromdate, $todate])
        ->orderBy('R.billdate')
        ->orderBy('P.docid')
        ->get();
    return $query2;
}

function advancequeryfomarres1($fromdate, $todate)
{
    $propertyid = Auth::user()->propertyid;
    $query1 = DB::table(DB::raw("
(
    SELECT
        docid,

        MAX(vdate) AS advdate,
        MAX(refdocid) AS contradocid,

        SUM(
            CASE
                WHEN sno = 1
                THEN amtdr
                ELSE 0
            END
        ) AS advanceamount,

        SUM(
            CASE
                WHEN paycode = CONCAT('CGSS', propertyid)
                THEN taxper
                ELSE 0
            END
        ) AS cgstper,

        SUM(
            CASE
                WHEN paycode = CONCAT('SGSS', propertyid)
                THEN taxper
                ELSE 0
            END
        ) AS sgstper,

        SUM(
            CASE
                WHEN paycode = CONCAT('IGSS', propertyid)
                THEN taxper
                ELSE 0
            END
        ) AS igstper,

        SUM(
            CASE
                WHEN paycode = CONCAT('CGSS', propertyid)
                THEN amtdr
                ELSE 0
            END
        ) AS cgstamount,

        SUM(
            CASE
                WHEN paycode = CONCAT('SGSS', propertyid)
                THEN amtdr
                ELSE 0
            END
        ) AS sgstamount,

        SUM(
            CASE
                WHEN paycode = CONCAT('IGSS', propertyid)
                THEN amtdr
                ELSE 0
            END
        ) AS igstamount,

        SUM(
            CASE
                WHEN taxper > 0
                THEN taxper
                ELSE 0
            END
        ) AS totaltaxper,

        SUM(
            CASE
                WHEN taxper > 0
                THEN amtdr
                ELSE 0
            END
        ) AS totaltaxamount

    FROM paycharge

    WHERE propertyid = {$propertyid}
      AND vtype = 'ARRES'
      AND vdate BETWEEN '{$fromdate}' AND '{$todate}'

    GROUP BY docid

    HAVING COUNT(*) > 1
) P
"))
        ->leftJoin(DB::raw("
(
    SELECT
        G.BookingDocid,

        MAX(R.docid) AS billdocid,
        MAX(R.chkoutdate) AS billdate

    FROM grpbookingdetails G

    INNER JOIN roomocc R
        ON R.docid = G.ContraDocId
       AND R.sno1 = G.Sno
       AND R.type = 'O'

    WHERE G.Cancel = 'N'

    GROUP BY G.BookingDocid
) R
"), 'R.BookingDocid', '=', 'P.contradocid')
        ->selectRaw("
    P.docid,
    P.advdate,
    P.contradocid,
    R.billdocid,
    R.billdate,
    '1' AS Cond,

    P.advanceamount,
    P.cgstper,
    P.sgstper,
    P.igstper,
    P.cgstamount,
    P.sgstamount,
    P.igstamount,
    P.totaltaxper,
    P.totaltaxamount
")
        ->whereRaw("
    NOT (
        R.billdate IS NOT NULL
        AND YEAR(R.billdate) = YEAR(P.advdate)
        AND MONTH(R.billdate) = MONTH(P.advdate)
    )
")
        ->orderBy('P.advdate')
        ->orderBy('P.docid')
        ->get();

    return $query1;
}

function advancequeryfomarres2($fromdate, $todate)
{
    $propertyid = Auth::user()->propertyid;
    $query2 = DB::table(DB::raw("
(
    SELECT
        docid,
        MAX(vdate) AS advdate,
        MAX(refdocid) AS contradocid,

        SUM(
            CASE
                WHEN sno = 1 THEN amtdr
                ELSE 0
            END
        ) AS advanceamount,

        SUM(
            CASE
                WHEN paycode = CONCAT('CGSS', propertyid) THEN taxper
                ELSE 0
            END
        ) AS cgstper,

        SUM(
            CASE
                WHEN paycode = CONCAT('SGSS', propertyid) THEN taxper
                ELSE 0
            END
        ) AS sgstper,

        SUM(
            CASE
                WHEN paycode = CONCAT('IGSS', propertyid) THEN taxper
                ELSE 0
            END
        ) AS igstper,

        SUM(
            CASE
                WHEN paycode = CONCAT('CGSS', propertyid) THEN amtdr
                ELSE 0
            END
        ) AS cgstamount,

        SUM(
            CASE
                WHEN paycode = CONCAT('SGSS', propertyid) THEN amtdr
                ELSE 0
            END
        ) AS sgstamount,

        SUM(
            CASE
                WHEN paycode = CONCAT('IGSS', propertyid) THEN amtdr
                ELSE 0
            END
        ) AS igstamount,

        SUM(
            CASE
                WHEN taxper > 0 THEN taxper
                ELSE 0
            END
        ) AS totaltaxper,

        SUM(
            CASE
                WHEN taxper > 0 THEN amtdr
                ELSE 0
            END
        ) AS totaltaxamount

    FROM paycharge

    WHERE propertyid = {$propertyid}
      AND vtype = 'ARRES'

    GROUP BY docid

    HAVING COUNT(*) > 1
) P
"))
        ->join(DB::raw("
(
    SELECT
        G.BookingDocid,
        MAX(R.docid) AS billdocid,
        MAX(R.chkoutdate) AS billdate

    FROM grpbookingdetails G

    INNER JOIN roomocc R
        ON R.docid = G.ContraDocId
       AND R.sno1 = G.Sno
       AND R.type = 'O'

    WHERE G.Cancel = 'N'

    GROUP BY G.BookingDocid
) R
"), 'R.BookingDocid', '=', 'P.contradocid')
        ->selectRaw("
    P.docid,
    P.advdate,
    P.contradocid,
    R.billdocid,
    R.billdate,
    '0' AS Cond,

    P.advanceamount,
    P.cgstper,
    P.sgstper,
    P.igstper,
    P.cgstamount,
    P.sgstamount,
    P.igstamount,
    P.totaltaxper,
    P.totaltaxamount
")
        ->whereRaw("
    PERIOD_DIFF(
        DATE_FORMAT(R.billdate, '%Y%m'),
        DATE_FORMAT(P.advdate, '%Y%m')
    ) > 0
")
        ->whereBetween('R.billdate', [$fromdate, $todate])
        ->orderBy('R.billdate')
        ->orderBy('P.docid')
        ->get();
    return $query2;
}

function advancequeryfom($fromdate, $todate)
{
    $data1 = advancequeryfomadres1($fromdate, $todate);
    $data2 = advancequeryfomadres2($fromdate, $todate);
    $data3 = advancequeryfomarres1($fromdate, $todate);
    $data4 = advancequeryfomarres2($fromdate, $todate);

    $data3Map = $data3->keyBy('contradocid');
    $data4Map = $data4->keyBy('contradocid');

    $results = collect();

    foreach ($data1 as $row) {

        if ($data3Map->has($row->contradocid)) {

            $minus = $data3Map[$row->contradocid];

            $row->advanceamount = (float)$row->advanceamount - (float)$minus->advanceamount;
            $row->cgstamount = (float)$row->cgstamount - (float)$minus->cgstamount;
            $row->sgstamount = (float)$row->sgstamount - (float)$minus->sgstamount;
            $row->igstamount = (float)$row->igstamount - (float)$minus->igstamount;
            $row->totaltaxamount = (float)$row->totaltaxamount - (float)$minus->totaltaxamount;
        }

        $results->push($row);
    }

    foreach ($data2 as $row) {

        if ($data4Map->has($row->contradocid)) {

            $minus = $data4Map[$row->contradocid];

            $row->advanceamount = (float)$row->advanceamount - (float)$minus->advanceamount;
            $row->cgstamount = (float)$row->cgstamount - (float)$minus->cgstamount;
            $row->sgstamount = (float)$row->sgstamount - (float)$minus->sgstamount;
            $row->igstamount = (float)$row->igstamount - (float)$minus->igstamount;
            $row->totaltaxamount = (float)$row->totaltaxamount - (float)$minus->totaltaxamount;
        }

        $results->push($row);
    }

    return $results
        ->sortBy([
            ['advdate', 'asc'],
            ['docid', 'asc']
        ])
        ->values();
}

function hsnbanquet1($fromdate, $todate)
{
    $propertyid = Auth::user()->propertyid;

    $query1 = DB::table('hallstock')
        ->select(
            'hallstock.restcode',
            'itemmast.Name as name',
            'itemmast.HSNCode as hsncode',
            'hallsale2_agg.half_rate as taxper',
            DB::raw('SUM(hallstock.amount) as total'),
            DB::raw('SUM(hallstock.amount - hallstock.discamt) as netamt'),
            DB::raw('SUM(hallsale2_agg.cgst_amt) as cgst'),
            DB::raw('SUM(hallsale2_agg.sgst_amt) as sgst'),
            DB::raw('TRIM(IFNULL(subgroup.gstin, "")) as party')
        )
        ->join('hallsale1', 'hallsale1.docId', '=', 'hallstock.docid')
        ->join(DB::raw('(
                SELECT 
                    h2.docid, 
                    h2.sno, 
                    MAX(h2.taxper) as half_rate, 
                    SUM(CASE WHEN sm.nature = "CGST" THEN h2.taxamt ELSE 0 END) as cgst_amt,
                    SUM(CASE WHEN sm.nature = "SGST" THEN h2.taxamt ELSE 0 END) as sgst_amt
                FROM hallsale2 h2
                JOIN revmast rm ON rm.rev_code = h2.taxcode
                LEFT JOIN sundrymast sm ON sm.sundry_code = rm.sundry
                WHERE sm.nature IN ("CGST", "SGST")
                GROUP BY h2.docid, h2.sno
            ) as hallsale2_agg'), function ($join) {
            $join->on('hallsale2_agg.docid', '=', 'hallstock.docid')
                ->on('hallsale2_agg.sno', '=', 'hallstock.sno');
        })
        ->join('itemmast', function ($join) {
            $join->on('itemmast.Code', '=', 'hallstock.item')
                ->on('itemmast.RestCode', '=', 'hallstock.restcode');
        })
        ->join('hallbook', 'hallbook.docid', '=', 'hallsale1.bookdocid')
        ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'hallbook.companycode')
        ->where('hallstock.propertyid', $propertyid)
        ->whereBetween('hallstock.vdate', [$fromdate, $todate])
        ->groupBy(
            'hallstock.restcode',
            'itemmast.HSNCode',
            'hallsale2_agg.half_rate',
            'subgroup.gstin',
            'itemmast.Name'
        )
        ->get();

    return $query1;
}


function hsnbanquet2($fromdate, $todate)
{
    $propertyid = Auth::user()->propertyid;
    $query2 = DB::table('hallsale1 as hs1')
        ->selectRaw("
        '996331' as hsncode,
        hs1.id,
        hs1.docid,
        hs1.vno as billno,
        hs1.vdate,
        TRIM(IFNULL(sg.gstin, '')) as party,
        COALESCE(NULLIF(TRIM(sg.name), ''), hs1.party) as name,

        ROUND(
            MAX(
                CASE
                    WHEN st.nature IN ('CGST', 'SGST')
                    THEN st.svalue
                    ELSE 0
                END
            ) * 2,
            2
        ) as taxper,

        ROUND(MAX(hs1.totalpercover), 2) as total,

        ROUND(
            MAX(hs1.totalpercover) -
            COALESCE(
                MAX(
                    CASE
                        WHEN st.nature = 'Discount'
                        THEN sh.amount
                    END
                ),
                0
            ),
            2
        ) AS netamt,

        ROUND(
            SUM(
                CASE
                    WHEN st.nature = 'CGST'
                    THEN sh.amount
                    ELSE 0
                END
            ),
            2
        ) as cgst,

        ROUND(
            SUM(
                CASE
                    WHEN st.nature = 'SGST'
                    THEN sh.amount
                    ELSE 0
                END
            ),
            2
        ) as sgst,

        ROUND(
            COALESCE(
                MAX(
                    CASE
                        WHEN st.nature = 'Net Amount'
                        THEN sh.amount
                    END
                ),
                0
            )
            -
            COALESCE(
                MAX(
                    CASE
                        WHEN st.nature = 'Discount'
                        THEN sh.amount
                    END
                ),
                0
            ),
            2
        ) as netamt2
    ")
        ->join('hallbook as hb', function ($join) {
            $join->on('hb.docid', '=', 'hs1.bookdocid')
                ->on('hb.propertyid', '=', 'hs1.propertyid');
        })
        ->leftJoin('subgroup as sg', function ($join) {
            $join->on('sg.sub_code', '=', 'hb.companycode')
                ->on('sg.propertyid', '=', 'hb.propertyid');
        })
        ->leftJoin('suntranh as sh', function ($join) {
            $join->on('sh.docid', '=', 'hs1.docid')
                ->on('sh.propertyid', '=', 'hs1.propertyid');
        })
        ->leftJoin('sundrytype as st', function ($join) {
            $join->on('st.propertyid', '=', 'sh.propertyid')
                ->on('st.vtype', '=', 'sh.restcode')
                ->on('st.sundry_code', '=', 'sh.suncode')
                ->on('st.sno', '=', 'sh.sno');
        })
        ->where('hs1.propertyid', $propertyid)
        ->whereBetween('hs1.vdate', [$fromdate, $todate])
        ->where('hs1.totalpercover', '>', 0)
        ->groupBy(
            'hs1.docid',
            'sg.gstin',
            'sg.name',
        )
        ->orderBy('hs1.vdate')
        ->orderBy('hs1.vno')
        ->get();

    return $query2;
}

function hsnbanquet($fromdate, $todate)
{
    $data1 = hsnbanquet1($fromdate, $todate);
    $data2 = hsnbanquet2($fromdate, $todate);

    return $data1
        ->concat($data2)
        ->sortBy([
            ['billno', 'asc'],
            ['taxper', 'desc']
        ])
        ->values();
}
