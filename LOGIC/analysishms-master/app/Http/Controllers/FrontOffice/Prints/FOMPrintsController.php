<?php

namespace App\Http\Controllers\FrontOffice\Prints;

use App\Http\Controllers\Controller;
use App\Models\RoomCat;
use App\Repositories\FomRepository;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class FOMPrintsController extends Controller
{
    protected $propertyid;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }

            $this->propertyid = Auth::user()->propertyid;
            return $next($request);
        });
    }
    public function openguestledgerprint(Request $request)
    {
        $request->validate([
            'docid' => ['required', 'string'],
            'sno1' => ['required'],
        ]);

        $docid = $request->input('docid');
        $sno1 = $request->input('sno1');
        $repository = new FomRepository($this->propertyid, $docid);
        $company = companydata();

        $guestdata = $repository->getWalkinData($sno1);
        abort_if($guestdata->isEmpty(), 404, 'Guest ledger not found.');

        $paychargedata = $repository->getPaychargeData($sno1);
        $advance = $repository->getadvance($sno1);
        $advance_rows = $advance['advance_rows'];

        $allroomcats = $guestdata->pluck('RoomCat')->unique()->toArray();
        $roomcatsnameswithcomma = '';
        foreach ($allroomcats as $key => $value) {
            $roomcatname = RoomCat::where('propertyid', $this->propertyid)->where('cat_code', $value)->value('name');
            if ($key == 0) {
                $roomcatsnameswithcomma .= $roomcatname;
            } else {
                $roomcatsnameswithcomma .= ', ' . $roomcatname;
            }
        }

        $checkinsub = DB::table('roomocc')
            ->selectRaw('docid, SUM(id) as total_roomdet, COUNT(*) as total_rows, SUM(nodays) as total_nights')
            ->groupBy('docid');

        $taxsub = DB::table('taxstru')
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
                DB::raw("
            CASE
                WHEN ri.amount <= 7500.00 THEN 2.5
                ELSE 9
            END as cgst_rate
        "),
                DB::raw("
            CASE
                WHEN ri.amount <= 7500.00 THEN 2.5
                ELSE 9
            END as sgst_rate
        ")
            )
            ->leftJoin('revmast as rm', function ($join) {
                $join->on('rm.rev_code', '=', 'ri.rev_code')
                    ->on('rm.propertyid', '=', 'ri.propertyid');
            })
            ->leftJoinSub($checkinsub, 'gbd', function ($join) {
                $join->on('gbd.docid', '=', 'ri.docid');
            })
            ->leftJoinSub($taxsub, 'ts', function ($join) {
                $join->on('ts.str_code', '=', 'rm.tax_stru')
                    ->on('ts.propertyid', '=', 'rm.propertyid');
            })
            ->where('ri.propertyid', $this->propertyid)
            ->where('ri.docid', $docid)
            ->orderBy('ri.sno')
            ->get();

        $taxes = $repository->gettaxes($sno1);

        // Keep the estimated invoice consistent with bill-print totals, but
        // calculate everything server-side so the view has no missing inputs.
        $totalDebit = (float) $paychargedata->sum(fn ($row) => (float) ($row->amtdr ?? 0));
        $totalCredit = (float) $paychargedata->sum(fn ($row) => (float) ($row->amtcr ?? 0));
        $totalTax = (float) $taxes->sum(fn ($row) => (float) ($row->amtdr ?? 0));
        $totalRoomCharge = $totalDebit - $totalTax;

        $logoPath = $company && $company->logo
            ? public_path('storage/admin/property_logo/' . $company->logo)
            : null;

        $pdf = Pdf::loadView('property.frontoffice.prints.guestledger', compact(
            'company',
            'logoPath',
            'guestdata',
            'paychargedata',
            'docid',
            'sno1',
            'roomcatsnameswithcomma',
            'advance_rows',
            'taxes',
            'roominclusive',
            'totalDebit',
            'totalCredit',
            'totalTax',
            'totalRoomCharge'
        ))->setPaper('a4', 'portrait');

        return $pdf->stream('guest-ledger-' . $guestdata[0]->folioNo . '.pdf');
    }
}
