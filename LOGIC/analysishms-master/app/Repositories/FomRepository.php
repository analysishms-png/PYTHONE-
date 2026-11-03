<?php

namespace App\Repositories;

use App\Models\Paycharge;
use App\Models\Revmast;
use App\Models\RoomOcc;
use Illuminate\Support\Facades\DB;

class FomRepository
{
    protected $leaderSno1;

    public function __construct(
        protected $propertyid,
        protected $docid = null
    ) {
        if ($docid !== null) {
            $this->leaderSno1 = RoomOcc::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->where('leaderyn', 'Y')
                ->value('sno1');
        }
    }

    public function getWalkinData($sno1 = null)
    {
        return DB::table('roomocc')
            ->select(
                DB::raw("CASE 
                    WHEN plandetails.rev_code IS NULL THEN 'N' 
                    ELSE 'Y' 
                    END AS planedit"),
                'plandetails.rev_code as brev_code',
                'plandetails.taxinc as btaxinc',
                'plandetails.taxstru as btaxstru',
                'plandetails.fixrate as bfixrate',
                'plandetails.planper as bplanper',
                'plandetails.amount as bamount',
                'plandetails.netplanamt as bnetplanamt',
                'plandetails.room_rate_before_tax as broom_rate_before_tax',
                'plandetails.total_rate as btotal_rate',
                'revmast.name as chargename',
                'roomocc.*',
                'roomocc.type as roomoctype',
                'roomocc.sno1 as sno1val',
                'roomocc.docid as udocid',
                'guestprof.name as clientname',
                'guestprof.bill_to',
                'guestprof.billingAccount',
                'guestprof.complimentry',
                'guestprof.guestcode',
                'guestprof.name',
                'guestprof.state_code',
                'guestprof.country_code',
                'guestprof.add1',
                'guestprof.add2',
                'guestprof.city',
                'guestprof.type',
                'guestprof.mobile_no',
                'guestprof.email_id',
                'guestprof.nationality',
                'guestprof.anniversary',
                'guestprof.guest_status',
                'guestprof.comments1',
                'guestprof.comments2',
                'guestprof.comments3',
                'guestprof.city_name',
                'guestprof.state_name',
                'guestprof.country_name',
                'guestprof.gender',
                'guestprof.marital_status',
                DB::raw("CONCAT(COALESCE(guestprof.add1, ''), ' ', COALESCE(guestprof.add2, ''), ' ', COALESCE(guestprof.city_name)) as guestadd"),
                'guestprof.zip_code',
                'guestprof.con_prefix',
                'guestprof.dob',
                'guestprof.age',
                'guestprof.pic_path',
                'guestprof.id_proof',
                'guestprof.idproof_no',
                'guestprof.issuingcitycode',
                'guestprof.issuingcityname',
                'guestprof.issuingcountrycode',
                'guestprof.issuingcountryname',
                'guestprof.expiryDate',
                'guestprof.paymentMethod',
                'guestprof.idpic_path',
                'guestprof.m_prof',
                'guestprof.father_name',
                'guestprof.fom',
                'guestprof.pos',
                'guestfolio.guestprof',
                'guestfolio.nodays',
                'guestfolio.roomcount',
                'guestfolio.nochargepost',
                'guestfolio.company',
                'guestfolio.booking_source',
                'guestprof.complimentry',
                'guestfolio.busssource',
                'guestfolio.travelagent',
                'guestprof.pic_path',
                'plan_mast.pcode',
                'plan_mast.name as planname',
                'plan_mast.room_per as room_perplan',
                'room_mast.rcode',
                'room_mast.name as roomname',
                'cities.cityname as nameofcity',
                'cities.zipcode as cityzipcode',
                'states.name as nameofstate',
                'countries.name as nameofcountry',
                'countries.nationality as nameofnationality',
                'guestfolio.arrfrom',
                'guestfolio.destination',
                'guestfolio.travelmode',
                'guestfolio.vdate',
                'guestfolio.purvisit',
                'guestfolio.rodisc',
                'guestfolio.rsdisc',
                'guestfolio.vehiclenum',
                'guestfolio.remarks',
                'guestfolio.pickupdrop'
            )
            ->leftJoin('plandetails', function ($join) {
                $join->on('plandetails.docid', '=', 'roomocc.docid')
                    ->on('plandetails.sno1', '=', 'roomocc.sno1');
            })
            ->leftJoin('revmast', 'revmast.rev_code', '=', 'plandetails.rev_code')
            ->leftJoin('guestprof', function ($join) {
                $join->on('roomocc.guestprof', '=', 'guestprof.guestcode');
            })
            ->leftJoin('guestfolio', function ($join) {
                $join->on('roomocc.docid', '=', 'guestfolio.docid')
                    ->on('roomocc.sno1', '=', 'guestfolio.sno1');
            })
            ->leftJoin('plan_mast', 'roomocc.plancode', '=', 'plan_mast.pcode')
            ->leftJoin('room_mast', 'roomocc.roomno', '=', 'room_mast.rcode')
            ->leftJoin('cities', 'guestprof.city', '=', 'cities.city_code')
            ->leftJoin('countries', 'guestprof.country_code', '=', 'countries.country_code')
            ->leftJoin('states', 'guestprof.state_code', '=', 'states.state_code')
            ->where('roomocc.propertyid', $this->propertyid)
            ->where('roomocc.docid', $this->docid)
            ->when($sno1 !== null, function ($query) use ($sno1) {
                $query->where('roomocc.sno1', $sno1);
            })
            ->groupBy('roomocc.sno1')
            ->get();
    }

    public function getPaychargeData($sno1 = null)
    {
        $query = Paycharge::where('propertyid', $this->propertyid)
            ->where('folionodocid', $this->docid);

        if (!$this->leaderSno1) {
            $query->where('sno1', $sno1);
        }

        return $query
            ->orderBy('vdate', 'ASC')
            ->orderBy('vno', 'ASC')
            ->orderBy('vtype', 'ASC')
            ->orderBy('sno', 'ASC')
            ->get();
    }

    public function getadvance($sno1 = null)
    {
        $query = DB::table('paycharge')
            ->where('propertyid', $this->propertyid)
            ->where('amtcr', '>', 0)
            ->where('folionodocid', $this->docid);

        if ($this->leaderSno1) {
            $query->where('msno1', $this->leaderSno1);
        } else {
            $query->where('sno1', $sno1);
        }

        $advanceRows = $query->get();

        return [
            'total_advance' => $advanceRows->sum('amtcr'),
            'advance_rows' => $advanceRows,
        ];
    }

    public function gettaxes($sno1 = null, $split = null)
    {
        $igncode = Revmast::where('propertyid', $this->propertyid)
            ->where('field_type', 'T')
            ->where('type', 'Cr')
            ->pluck('rev_code');

        $query = Paycharge::select(
            'revmast.name',
            'paycharge.paycode',
            'paycharge.taxper',
            DB::raw('SUM(paycharge.amtdr) as amtdr'),
            DB::raw('SUM(paycharge.onamt) as onamt')
        )
            ->leftJoin('revmast', function ($join) {
                $join->on('revmast.rev_code', '=', 'paycharge.paycode')
                    ->where('revmast.propertyid', $this->propertyid);
            })
            ->where('paycharge.propertyid', $this->propertyid)
            ->where('paycharge.folionodocid', $this->docid)
            ->when($split !== null, function ($query) use ($split) {
                $query->where('paycharge.split', $split);
            })
            ->whereIn('paycharge.paycode', $igncode);

        if ($this->leaderSno1) {
            $query->where('paycharge.msno1', $this->leaderSno1);
        } else {
            $query->where('paycharge.sno1', $sno1);
        }

        return $query
            ->groupBy(
                'revmast.name',
                'paycharge.paycode',
                'paycharge.taxper'
            )
            ->get();
    }
}
