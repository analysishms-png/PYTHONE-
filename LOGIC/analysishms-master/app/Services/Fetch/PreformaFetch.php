<?php

namespace App\Services\Fetch;

use App\Models\GrpBookinDetail;
use App\Models\Paycharge;
use App\Models\EnviroFom;
use App\Models\Remark;
use App\Models\RoomCat;
use App\Models\Revmast;
use App\Models\TaxStructure;
use Illuminate\Support\Facades\DB;

class PreformaFetch
{
    protected $propertyid;

    public function __construct($propertyid)
    {
        $this->propertyid = $propertyid;
    }

    public function fetchInvoiceData($docid, $sno)
    {
        if (empty($docid)) {
            return ['success' => false, 'message' => 'Invalid or missing Document ID.'];
        }

        if (empty($sno)) {
            $sno = GrpBookinDetail::where('Property_ID', $this->propertyid)
                ->where('BookingDocid', $docid)
                ->max('Sno');
        }

        $totals = DB::table('grpbookingdetails')
            ->select(
                'BookingDocid',
                'Property_ID',
                DB::raw('SUM(Adults) as total_adults'),
                DB::raw('SUM(Childs) as total_childs')
            )
            ->where('BookingDocid', $docid)
            ->where('Property_ID', $this->propertyid)
            ->groupBy('BookingDocid', 'Property_ID');

        $data = GrpBookinDetail::query()
            ->select(
                'grpbookingdetails.*',
                'tot.total_adults',
                'tot.total_childs',
                'paycharge.amtcr',
                'paycharge.vdate',
                'paycharge.foliono',
                'paycharge.vno',
                'guestprof.bill_to',
                DB::raw("CONCAT(COALESCE(guestprof.add1, ''), ' ', COALESCE(guestprof.add2, ''), ' ', COALESCE(guestprof.city_name)) as guestadd"),
                'guestprof.state_name',
                's.name as companyname',
                's.gstin as companygstin',
                't.name as travelname',
                't.gstin as travelgstin',
                'booking.ResStatus',
                'booking.vdate as bookvdate',
                'plan_mast.name as planname',
                'booking.BookedBy',
                'booking.Company',
                'room_cat.name as roomcatname'
            )
            ->joinSub($totals, 'tot', function ($join) {
                $join->on('tot.BookingDocid', '=', 'grpbookingdetails.BookingDocid')
                    ->on('tot.Property_ID', '=', 'grpbookingdetails.Property_ID');
            })
            ->leftJoin('paycharge', function ($query) {
                $query->on('paycharge.refdocid', '=', 'grpbookingdetails.BookingDocid')
                    ->on('paycharge.sno1', '=', 'grpbookingdetails.Sno');
            })
            ->leftJoin('guestprof', function ($query) {
                $query->on('guestprof.docid', '=', 'grpbookingdetails.BookingDocid');
            })
            ->leftJoin('booking', function ($query) {
                $query->on('booking.DocId', '=', 'grpbookingdetails.BookingDocid')
                    ->on('booking.Property_ID', '=', 'grpbookingdetails.Property_ID');
            })
            ->leftJoin('subgroup as s', function ($query) {
                $query->on('s.sub_code', '=', 'booking.Company')
                    ->on('s.propertyid', '=', 'booking.Property_ID');
            })
            ->leftJoin('subgroup as t', function ($query) {
                $query->on('t.sub_code', '=', 'booking.TravelAgency')
                    ->on('t.propertyid', '=', 'booking.Property_ID');
            })
            ->leftJoin('plan_mast', function ($query) {
                $query->on('plan_mast.pcode', '=', 'grpbookingdetails.Plan_Code')
                    ->on('plan_mast.propertyid', '=', 'grpbookingdetails.Property_ID');
            })
            ->leftJoin('room_cat', function ($query) {
                $query->on('room_cat.cat_code', '=', 'grpbookingdetails.RoomCat')
                    ->on('room_cat.propertyid', '=', 'grpbookingdetails.Property_ID');
            })
            ->where('grpbookingdetails.BookingDocid', $docid)
            ->where('grpbookingdetails.Property_ID', $this->propertyid)
            ->first();

        if (!$data) {
            return ['success' => false, 'message' => 'Record not found.'];
        }

        $taxRates = DB::table('taxstru')
            ->where('str_code', $data->RoomTaxStru)
            ->where('propertyid', $this->propertyid)
            ->get();

        $betweenOp = $taxRates->where('comp_operator', 'Between')->first();
        $cgstBetween = $taxRates->where('tax_code', "CGSS{$this->propertyid}")->where('comp_operator', 'Between')->first();
        $cgstLte = $taxRates->where('tax_code', "CGSS{$this->propertyid}")->where('comp_operator', '<=')->first();

        $sgstBetween = $taxRates->where('tax_code', "SGSS{$this->propertyid}")->where('comp_operator', 'Between')->first();
        $sgstLte = $taxRates->where('tax_code', "SGSS{$this->propertyid}")->where('comp_operator', '<=')->first();

        $limit1 = $betweenOp->limit1 ?? 0;
        $cgstBetweenRate = $cgstBetween->rate ?? 0;
        $cgstLteRate = $cgstLte->rate ?? 0;
        $sgstBetweenRate = $sgstBetween->rate ?? 0;
        $sgstLteRate = $sgstLte->rate ?? 0;

        $roomTaxCodes = $taxRates->pluck('tax_code')->filter()->unique()->implode(',');

        $rooms = GrpBookinDetail::select(
            'grpbookingdetails.Tarrif',
            'grpbookingdetails.RoomCat',
            'grpbookingdetails.NoDays',
            'grpbookingdetails.Adults',
            'grpbookingdetails.Childs',
            'grpbookingdetails.RoomDet',
            'grpbookingdetails.IncTax',
            'room_cat.name as roomcatname',
            DB::raw("CASE WHEN grpbookingdetails.Tarrif <= {$limit1} THEN {$cgstBetweenRate} ELSE {$cgstLteRate} END as cgst_rate"),
            DB::raw("CASE WHEN grpbookingdetails.Tarrif <= {$limit1} THEN {$sgstBetweenRate} ELSE {$sgstLteRate} END as sgst_rate")
        )
            ->leftJoin('room_cat', function ($join) {
                $join->on('room_cat.cat_code', '=', 'grpbookingdetails.RoomCat')
                    ->on('room_cat.propertyid', '=', 'grpbookingdetails.Property_ID');
            })
            ->where('grpbookingdetails.BookingDocid', $docid)
            ->where('grpbookingdetails.Property_ID', $this->propertyid)
            ->get();

        $advance = Paycharge::where('propertyid', $this->propertyid)
            ->where('sno', 1)
            // ->where('sno1', $sno)
            ->where('refdocid', $docid)
            ->get();

        $enviro = EnviroFom::where('propertyid', $this->propertyid)->first();
        $curdate = $data->bookvdate;

        $grpBookingSub = DB::table('grpbookingdetails')
            ->selectRaw('BookingDocid, SUM(RoomDet) as total_roomdet, COUNT(*) as total_rows, SUM(NoDays) as total_nights')
            ->groupBy('BookingDocid');

        $taxSub = DB::table('taxstru')
            ->selectRaw("str_code, propertyid, GROUP_CONCAT(DISTINCT tax_code ORDER BY tax_code SEPARATOR ',') as tax_codes")
            ->groupBy('str_code', 'propertyid');

        $roominclusive = DB::table('room_inclusive as ri')
            ->select(
                'ri.*',
                'rm.name as revmastname',
                'rm.hsn_code',
                DB::raw('COALESCE(gbd.total_roomdet, 0) as total_roomdet'),
                DB::raw('COALESCE(gbd.total_nights, 0) as total_nights'),
                'rm.tax_inc as IncTax',
                DB::raw('COALESCE(gbd.total_rows, 0) as total_rows'),
                'ts.tax_codes',
                DB::raw("CASE WHEN ri.amount <= 7500.00 THEN 2.5 ELSE 9 END as cgst_rate"),
                DB::raw("CASE WHEN ri.amount <= 7500.00 THEN 2.5 ELSE 9 END as sgst_rate")
            )
            ->leftJoin('revmast as rm', function ($join) {
                $join->on('rm.rev_code', '=', 'ri.rev_code')
                    ->on('rm.propertyid', '=', 'ri.propertyid');
            })
            ->leftJoinSub($grpBookingSub, 'gbd', function ($join) {
                $join->on('gbd.BookingDocid', '=', 'ri.docid');
            })
            ->leftJoinSub($taxSub, 'ts', function ($join) {
                $join->on('ts.str_code', '=', 'rm.tax_stru')
                    ->on('ts.propertyid', '=', 'rm.propertyid');
            })
            ->where('ri.propertyid', $this->propertyid)
            ->where('ri.docid', $docid)
            ->orderBy('ri.sno')
            ->get();

        // Optimized batch query instead of querying inside a loop
        $allroomcats = $rooms->pluck('RoomCat')->unique()->filter()->toArray();
        $roomCatNamesMap = RoomCat::where('propertyid', $this->propertyid)
            ->whereIn('cat_code', $allroomcats)
            ->pluck('name', 'cat_code');

        $roomcatsnameswithcomma = collect($allroomcats)
            ->map(fn($code) => $roomCatNamesMap[$code] ?? null)
            ->filter()
            ->implode(', ');

        $taxCodesArray = $roomTaxCodes ? explode(',', $roomTaxCodes) : [];
        $txnames = [];

        if (!empty($taxCodesArray)) {
            $taxDetails = Revmast::where('propertyid', $this->propertyid)
                ->whereIn('rev_code', $taxCodesArray)
                ->get(['rev_code', 'name']);

            $taxRatesMap = TaxStructure::where('propertyid', $this->propertyid)
                ->whereIn('tax_code', $taxCodesArray)
                ->pluck('rate', 'tax_code');

            foreach ($taxDetails as $taxDetail) {
                $txnames[] = [
                    'code' => $taxDetail->rev_code,
                    'name' => $taxDetail->name,
                    'rate' => $taxRatesMap[$taxDetail->rev_code] ?? 0,
                ];
            }
        }

        return [
            'success' => true,
            'data' => $data,
            'rooms' => $rooms,
            'advance' => $advance,
            'enviro' => $enviro,
            'curdate' => $curdate,
            'roominclusive' => $roominclusive,
            'txnames' => $txnames,
            'roomcatsnameswithcomma' => $roomcatsnameswithcomma,
        ];
    }
}
