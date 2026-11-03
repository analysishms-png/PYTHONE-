<?php

namespace App\Http\Controllers;

use App\Helpers\DateHelper;
use App\Models\Companyreg;
use App\Models\Depart;
use App\Models\EInvoiceBill;
use App\Models\EInvoicePushLog;
use App\Models\EnviroEinvoice;
use App\Models\Guestfolio;
use App\Models\GuestProf;
use App\Models\HallSale1;
use App\Models\HallSale2;
use App\Models\HallStock;
use App\Models\Paycharge;
use App\Models\Revmast;
use App\Models\RoomOcc;
use App\Models\Sale1;
use App\Models\Stock;
use App\Models\SubGroup;
use App\Models\VoucherPrefix;
use DateTime;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Log;
use PhpOffice\PhpSpreadsheet\IOFactory;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class EInvoiceParameter extends Controller
{
    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    protected $ptlngth;
    protected $prpid;
    protected $ncurdate;
    protected $datemanage;
    protected $company;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }

            $this->username = Auth::user()->name;
            $this->email = Auth::user()->email;
            $this->prpid = Auth::user()->propertyid;
            $propertydata = DB::table('users')->where('propertyid', $this->prpid)->first();
            $this->ncurdate = DB::table('enviro_general')->where('propertyid', Auth::user()->propertyid)->value('ncur');
            $this->propertyid = $propertydata->propertyid;
            $this->ptlngth = strlen($this->propertyid);
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');
            $this->datemanage = DateHelper::calculateDateRanges($this->ncurdate);
            $this->company = Companyreg::where('propertyid', $this->propertyid)->first();
            return $next($request);
        });
    }

    public function einvoiceparameter()
    {
        try {
            $einvoicedata = EnviroEinvoice::where('propertyid', $this->propertyid)->first();

            if (!$einvoicedata) {
                $einvoicedata = EnviroEinvoice::create([
                    'propertyid' => $this->propertyid,
                    'apiid' => '',
                    'apisecret' => '',
                    'einvusername' => '',
                    'customerid' => '',
                    'einvpwd' => '',
                    'activeyn' => 'N'
                ]);
            }

            return view('property.extras.einvoiceparameter', ['einvoicedata' => $einvoicedata]);
        } catch (Exception $e) {
            Log::error('Error in einvoiceparameter: ' . $e->getMessage());
            return redirect()->back()->with('error', 'An error occurred while loading E-Invoice parameters');
        }
    }

    public function einvoiceparametersubmit(Request $request)
    {
        try {
            $validated = $request->validate([
                'apiid' => 'nullable|string|max:255',
                'apisecret' => 'nullable|string|max:500',
                'einvusername' => 'nullable|string|max:255',
                'customerid' => 'nullable|string|max:255',
                'einvpwd' => 'nullable|string|max:255',
                'activeyn' => 'nullable|in:Y,N'
            ]);

            $einvoicedata = EnviroEinvoice::where('propertyid', $this->propertyid)->first();

            if ($einvoicedata) {

                $einvoicedata->update([
                    'apiid' => $validated['apiid'] ?? $einvoicedata->apiid,
                    'apisecret' => $validated['apisecret'] ?? $einvoicedata->apisecret,
                    'einvusername' => $validated['einvusername'] ?? $einvoicedata->einvusername,
                    'customerid' => $validated['customerid'] ?? $einvoicedata->customerid,
                    'einvpwd' => $validated['einvpwd'] ?? $einvoicedata->einvpwd,
                    'activeyn' => $validated['activeyn'] ?? $einvoicedata->activeyn
                ]);

                Log::info('E-Invoice parameters updated for propertyid: ' . $this->propertyid);
                return redirect()->back()->with('success', 'E-Invoice parameters updated successfully');
            } else {

                EnviroEinvoice::create([
                    'propertyid' => $this->propertyid,
                    'apiid' => $validated['apiid'] ?? '',
                    'apisecret' => $validated['apisecret'] ?? '',
                    'einvusername' => $validated['einvusername'] ?? '',
                    'customerid' => $validated['customerid'] ?? '',
                    'einvpwd' => $validated['einvpwd'] ?? '',
                    'activeyn' => $validated['activeyn'] ?? 'N'
                ]);

                Log::info('E-Invoice parameters created for propertyid: ' . $this->propertyid);
                return redirect()->back()->with('success', 'E-Invoice parameters saved successfully');
            }
        } catch (\Illuminate\Validation\ValidationException $e) {
            Log::warning('Validation error in einvoiceparametersubmit: ' . json_encode($e->errors()));
            return redirect()->back()->withErrors($e->errors())->withInput();
        } catch (Exception $e) {
            Log::error('Error in einvoiceparametersubmit: ' . $e->getMessage());
            return redirect()->back()->with('error', 'An error occurred while saving E-Invoice parameters: ' . $e->getMessage());
        }
    }

    public function generateinvoice()
    {
        try {
            $docid = request('docid');
            $sno1 = request('sno1');
            $billno = request('billno');

            $chkalready = EInvoiceBill::where('propertyid', $this->propertyid)
                ->where('billno', $billno)
                ->where('cancelled', 'N')
                ->first();

            if ($chkalready) {
                return response()->json([
                    'success' => false,
                    'message' => 'E-Invoice already generated for this bill number'
                ]);
            }

            $guestdata = Guestfolio::where('docid', $docid)->first();
            $company = SubGroup::where('propertyid', $this->propertyid)
                ->where('sub_code', $guestdata->company)
                ->where('gstin', '!=', '')
                ->whereNotNull('gstin')
                ->first();
            $statename = subgroup($company->sub_code)->statename;
            $state_code = subgroup($company->sub_code)->state_code;

            $rocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('leaderyn', 'Y')->first();
            if ($rocc) {
                $cond = ['paycharge.msno1' => $rocc->sno1];
            } else {
                $cond = ['paycharge.sno1' => $sno1];
            }

            $totaldiscount = Paycharge::where('propertyid', $this->propertyid)
                ->where($cond)
                ->where('paycharge.paycode', "DISC$this->propertyid")
                ->sum('paycharge.amtcr') ?? 0.00;

            $totalcgst = Paycharge::where('propertyid', $this->propertyid)
                ->where($cond)
                ->where('paycharge.paycode', "CGSS$this->propertyid")
                ->sum('paycharge.amtdr') ?? 0.00;

            $totalsgst = Paycharge::where('propertyid', $this->propertyid)
                ->where($cond)
                ->where('paycharge.paycode', "SGSS$this->propertyid")
                ->sum('paycharge.amtdr') ?? 0.00;

            $totalroundoff = Paycharge::where('propertyid', $this->propertyid)
                ->where($cond)
                ->where('paycharge.paycode', "ROFF$this->propertyid")
                ->sum('paycharge.amtdr') ?? 0.00;

            $qry1s = Paycharge::where('propertyid', $this->propertyid)->where('folionodocid', $docid);
            $qry2s = Paycharge::where('propertyid', $this->propertyid)->where('folionodocid', $docid)
                ->whereNull('modeset');
            if ($rocc) {
                $qry1s->where('msno1', $rocc->sno1);
                $qry2s->where('msno1', $rocc->sno1);
            } else {
                $qry1s->where('sno1', $sno1);
                $qry2s->where('sno1', $sno1);
            }
            $qry1 = $qry1s->sum('amtdr');
            $qry2 = $qry2s->sum('amtcr');
            $totalamt = str_replace(',', '', number_format($qry1 - $qry2, 2));


            if (!is_null($company) && !is_null($statename) && !is_null($company->pin)) {

                $year = date('Y', strtotime(ncurdate()));
                $nextyear = $year + 1;
                $divcode = Companyreg::where('propertyid', $this->propertyid)
                    ->value('division_code');

                $invoiceno = $divcode
                    ? $divcode . '/' . $year . '-' . substr($nextyear, -2) . '/' . $billno
                    : 'BCNT/' . $year . '-' . substr($nextyear, -2) . '/' . $billno;

                $propertyId = $this->propertyid;

                $comphotelgstin = companydata()->gstin;
                $comphotellegalname = companydata()->legal_name;
                $comphoteltradename = companydata()->trade_name;
                $comphotellegaladdress = companydata()->address1;
                $comphotelpin = companydata()->pin;
                $comphotelstate = companydata()->state;
                $comphotelstatecode = companydata()->state_code;
                $comphotelmobile = companydata()->mobile;
                $comphotelemail = companydata()->email;

                if (empty($comphotelgstin) || empty($comphotellegalname) || empty($comphotelstate)) {
                    return response()->json([
                        'success' => false,
                        'message' => 'Company GSTIN, Legal Name, and State are required to generate E-Invoice'
                    ]);
                }

                $propertyId = $this->propertyid;

                $baseQuery = DB::table('paycharge as PC')
                    ->selectRaw("
                        PC.folionodocid AS docid,
                        MAX(PC.roomno) AS roomno,
                        PC.VDate,
                        PC.VTime,
                        PC.paycode,
                        RM.name AS RevenueName,
                        RM.hsn_code,
                        SUM(PC.amtdr - PC.amtcr) AS ChargeAmt
                    ")
                    ->join('revmast as RM', function ($join) {
                        $join->on('RM.rev_code', '=', 'PC.paycode')
                            ->on('RM.propertyid', '=', 'PC.propertyid');
                    })
                    ->where('PC.propertyid', $propertyId)
                    ->where('PC.folionodocid', $docid)
                    ->where('PC.sno1', $sno1)
                    ->where('PC.FolioNo', '<>', 0)
                    ->where(function ($q) {
                        $q->where('PC.MODESET', '<>', 'S')
                            ->orWhereNull('PC.MODESET');
                    })
                    ->whereRaw('(PC.amtdr - PC.amtcr) <> 0')
                    ->whereIn('RM.field_type', ['C', 'T'])
                    ->whereNotIn('PC.paycode', [
                        "DISC{$propertyId}",
                        "ROFF{$propertyId}",
                        "TOUT{$propertyId}",
                        "CGSS{$propertyId}",
                        "SGSS{$propertyId}",
                    ])
                    ->groupBy(
                        'PC.folionodocid',
                        'PC.VDate',
                        'PC.paycode',
                        'RM.name',
                        'RM.hsn_code'
                    );

                $result = DB::query()
                    ->fromSub($baseQuery, 'B')
                    ->selectRaw("
                    B.docid,
                    B.roomno,
                    B.VDate,
                    B.VTime,
                    B.paycode,
                    B.RevenueName,
                    B.hsn_code,
                    B.ChargeAmt,

                    IFNULL((
                        SELECT SUM(PC.amtdr - PC.amtcr)
                        FROM paycharge PC
                        WHERE PC.folionodocid = B.docid
                        AND PC.VDate = B.VDate
                        AND PC.paycode = 'CGSS{$propertyId}'
                        AND PC.propertyid = {$propertyId}
                            ), 0) AS CGSTAmt,

                            IFNULL((
                                SELECT SUM(PC.amtdr - PC.amtcr)
                                FROM paycharge PC
                                WHERE PC.folionodocid = B.docid
                                AND PC.VDate = B.VDate
                                AND PC.paycode = 'SGSS{$propertyId}'
                                AND PC.propertyid = {$propertyId}
                            ), 0) AS SGSTAmt,

                            (
                                B.ChargeAmt 
                                + IFNULL((
                            SELECT SUM(PC.amtdr - PC.amtcr)
                            FROM paycharge PC
                            WHERE PC.folionodocid = B.docid
                            AND PC.VDate = B.VDate
                            AND PC.paycode = 'CGSS{$propertyId}'
                            AND PC.propertyid = {$propertyId}
                                    ), 0)
                        + IFNULL((
                            SELECT SUM(PC.amtdr - PC.amtcr)
                            FROM paycharge PC
                            WHERE PC.folionodocid = B.docid
                            AND PC.VDate = B.VDate
                            AND PC.paycode = 'SGSS{$propertyId}'
                            AND PC.propertyid = {$propertyId}
                        ), 0)
                    ) AS GrossAmt
                ")
                    ->orderBy('B.docid')
                    ->orderBy('B.VDate')
                    ->orderBy('B.VTime')
                    ->orderBy('B.RevenueName')
                    ->get();

                $itemList = [];
                $assVal = 0;
                $cgstVal = 0;
                $sgstVal = 0;
                $totInvVal = 0;
                foreach ($result as $row) {

                    if (empty($row->hsn_code)) {
                        return response()->json([
                            'success' => false,
                            'message' => "HSN code missing: {$row->RevenueName}"
                        ]);
                    }

                    $assAmt = (float)$row->ChargeAmt;
                    $cgst = (float)$row->CGSTAmt;
                    $sgst = (float)$row->SGSTAmt;
                    $gross = $assAmt + $cgst + $sgst;

                    $revm = Revmast::where('propertyid', $this->propertyid)->where('rev_code', $row->paycode)->first();
                    $gstRate = getGstRate($revm->tax_stru, $row->ChargeAmt);

                    // Log::info('revm: ' . $revm->rev_code . ', taxstru: ' . $revm->tax_stru . ', ChargeAmt: ' . $row->ChargeAmt);
                    // Log::info('gstrate: ' . $gstRate);
                    // return;
                    $itemList[] = [
                        'SlNo' => count($itemList) + 1,
                        'PrdDesc' => $row->RevenueName,
                        'HsnCd' => $row->hsn_code,
                        'GstRt' => number_format($gstRate, 2, '.', ''),
                        'IsServc' => 'Y',
                        'TotAmt' => number_format($assAmt, 2, '.', ''),
                        'Discount' => '0.00',
                        'AssAmt' => number_format($assAmt, 2, '.', ''),
                        'CgstAmt' => number_format($cgst, 2, '.', ''),
                        'SgstAmt' => number_format($sgst, 2, '.', ''),
                        'TotItemVal' => number_format($gross, 2, '.', '')
                    ];

                    $assVal += $assAmt;
                    $cgstVal += $cgst;
                    $sgstVal += $sgst;
                    $totInvVal += $gross;
                }

                $postdata = [
                    "Version" => "1.1",
                    "TranDtls" => [
                        "EcmGstin" => null,
                        "IgstOnIntra" => "N",
                        "RegRev" => "N",
                        "SupTyp" => "B2B",
                        "TaxSch" => "GST"
                    ],
                    "DocDtls" => [
                        "Typ" => "INV",
                        "No" => $invoiceno,
                        "Dt" => date('d/m/Y', strtotime(ncurdate()))
                    ],
                    "BuyerDtls" => [
                        "Gstin" => $company->gstin,
                        "LglNm" => $company->legalname,
                        "TrdNm" => $company->tradename,
                        "Pos" => $comphotelstatecode,
                        "Addr1" => limitText($company->address),
                        "Addr2" => null,
                        "Loc" => limitText($company->address),
                        "Pin" => $company->pin,
                        "Stcd" => $state_code,
                        "Ph" => normalizeMobile($company->mobile),
                        "Em" => $company->email
                    ],
                    "SellerDtls" => [
                        "Gstin" => $comphotelgstin,
                        "LglNm" => $comphotellegalname,
                        "TrdNm" => $comphoteltradename,
                        "Pos" => $comphotelstate,
                        "Addr1" => limitText($comphotellegaladdress),
                        "Addr2" => null,
                        "Loc" => limitText($comphotellegaladdress),
                        "Pin" => $comphotelpin,
                        "Stcd" => $comphotelstatecode,
                        "Ph" => normalizeMobile($comphotelmobile),
                        "Em" => $comphotelemail
                    ],
                    "DispDtls" => [
                        "Addr1" => limitText($comphotellegaladdress),
                        "Addr2" => null,
                        "Loc" => limitText($comphotellegaladdress),
                        "Nm" => $comphotellegalname,
                        "Pin" => $comphotelpin,
                        "Stcd" => $comphotelstatecode,
                    ],
                    "ShipDtls" => [
                        "Addr1" => limitText($comphotellegaladdress),
                        "Addr2" => null,
                        "Gstin" => $comphotelgstin,
                        "LglNm" => $comphotellegalname,
                        "Loc" => limitText($comphotellegaladdress),
                        "Pin" => $comphotelpin,
                        "Stcd" => $comphotelstatecode,
                        "TrdNm" => $comphoteltradename
                    ],
                    "ItemList" => $itemList,
                    "ValDtls" => [
                        "AssVal" => number_format($assVal, 2, '.', ''),
                        "CgstVal" => number_format($cgstVal, 2, '.', ''),
                        "SgstVal" => number_format($sgstVal, 2, '.', ''),
                        "IgstVal" => "0.00",
                        "CesVal" => "0.00",
                        "StCesVal" => "0.00",
                        "Discount" => number_format($totaldiscount, 2, '.', ''),
                        "OthChrg" => "0.00",
                        "RndOffAmt" => number_format($totalroundoff, 2, '.', ''),
                        "TotInvVal" => number_format($totInvVal, 2, '.', '')
                    ]
                ];

                $apiurl = invoiceparameter()->generateirnurl;
                $username = invoiceparameter()->einvusername;
                $password = invoiceparameter()->einvpwd;
                $customerid = invoiceparameter()->customerid;
                $apiid = invoiceparameter()->apiid;
                $apisecret = invoiceparameter()->apisecret;
                $source = invoiceparameter()->source;
                $gstcurl = curl_init($apiurl);

                curl_setopt($gstcurl, CURLOPT_RETURNTRANSFER, true);
                curl_setopt($gstcurl, CURLOPT_POST, true);
                curl_setopt($gstcurl, CURLOPT_HTTPHEADER, [
                    "Content-Type: application/json",
                    "GSTIN: $comphotelgstin",
                    "CustomerName: $comphotellegalname",
                    "Branch: $comphotelstate",
                    "Username: $username",
                    "Password: $password",
                    "CustomerId: $customerid",
                    "APIId: $apiid",
                    "APISecret: $apisecret",
                    "Source: $source"
                ]);

                $postDataJson = json_encode($postdata);
                curl_setopt($gstcurl, CURLOPT_POSTFIELDS, $postDataJson);
                curl_setopt($gstcurl, CURLOPT_SSL_VERIFYPEER, false);
                curl_setopt($gstcurl, CURLOPT_SSL_VERIFYHOST, false);

                $response = curl_exec($gstcurl);
                $httpcode = curl_getinfo($gstcurl, CURLINFO_HTTP_CODE);
                $curlerror = curl_error($gstcurl);

                $decodedResponse = json_decode($response, true);
                // $decodedResponse = json_decode(file_get_contents(storage_path('app/public/gstcafe.json')), true);
                $statusCd = $decodedResponse['status_cd'] ?? 0;
                // return $decodedResponse;
                if ($statusCd === 1) {

                    $qrbase64 = base64_encode(
                        QrCode::format('png')->size(300)->generate($decodedResponse['response_data']['SignedQrCode'])
                    );
                    // return $decodedResponse['response_data']['SignedQrCode'];
                    EInvoiceBill::create([
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'docdtls_no' => $invoiceno,
                        'billno' => $billno,
                        'comp_code' => $company->sub_code,
                        'docdtls_dt' => date('Y-m-d', strtotime(ncurdate())),
                        'buyerdtls_gstin' => $company->gstin,
                        'buyerdtls_lglnm' => $company->legalname,
                        'buyerdtls_trdnm' => $company->tradename,
                        'buyerdtls_pos' => $state_code,
                        'valdtls_assval' => $postdata['ValDtls']['AssVal'],
                        'valdtls_cgstval' => $postdata['ValDtls']['CgstVal'],
                        'valdtls_sgstval' => $postdata['ValDtls']['SgstVal'],
                        'valdtls_igstval' => $postdata['ValDtls']['IgstVal'],
                        'valdtls_totInvval' => $postdata['ValDtls']['TotInvVal'],
                        'jsonresponse' => $response,
                        'ackno' => $decodedResponse['response_data']['AckNo'],
                        'ackdt' => isset($decodedResponse['response_data']['AckDt']),
                        'irn' => $decodedResponse['response_data']['Irn'],
                        'signedinvoice' => $decodedResponse['response_data']['SignedInvoice'],
                        'signedqrcode' => $decodedResponse['response_data']['SignedQrCode'],
                        'qrcodeimage' => $qrbase64,
                        'status' => $decodedResponse['response_data']['Status'],
                        'u_name' => $this->username,
                        'created_at' => $this->currenttime
                    ]);
                }

                EInvoicePushLog::create([
                    'propertyid' => $this->propertyid,
                    'docid' => $docid,
                    'company' => $company->sub_code,
                    'post_data' => $postDataJson,
                    'http_code' => $httpcode,
                    'success_yn' => $statusCd == 1 ? 'Y' : 'N',
                    'status_cd' => $statusCd,
                    'curl_error' => $curlerror,
                    'response_json' => $response
                ]);

                if ($response === false) {
                    Log::error("CURL Error for DocID $docid: " . $curlerror);
                }


                if ($statusCd === 1) {
                    return response()->json([
                        'success' => $response !== false,
                        'http_code' => $httpcode
                    ]);
                } else {
                    return response()->json([
                        'success' => false,
                        'message' => $decodedResponse['error_message'] ?? 'E-Invoice generation failed'
                    ]);
                }
            } else {
                return response()->json([
                    'success' => false,
                    'message' => 'Company not found'
                ]);
            }
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage()
            ]);
        }
    }

    public function generateinvoicesale()
    {
        try {
            $docid = request('sale1docid');
            $chkalready = EInvoiceBill::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->where('cancelled', 'N')
                ->first();

            if ($chkalready) {
                return response()->json([
                    'success' => false,
                    'message' => 'E-Invoice already generated for this bill number'
                ]);
            }

            $sale1 = Sale1::where('propertyid', $this->propertyid)->where('docid', $docid)->first();

            $company = SubGroup::where('propertyid', $this->propertyid)
                ->where('sub_code', $sale1->party)
                ->where('gstin', '!=', '')
                ->whereNotNull('gstin')
                ->first();
            $statename = subgroup($company->sub_code)->statename;
            $state_code = subgroup($company->sub_code)->state_code;

            $sale1sums = DB::table('sale1')
                ->select(
                    DB::raw('SUM(total) as totalamt'),
                    DB::raw('SUM(discamt) as discountamt'),
                    DB::raw('SUM(cgst) as cgstamount'),
                    DB::raw('SUM(sgst) as sgstamt'),
                    DB::raw('SUM(igst) as igstamt')
                )
                ->where('docid', $docid)
                ->first();

            $totalamt = $sale1sums->totalamt ?? 0.00;

            $totalroundoff = DB::table('suntran')
                ->join('sundrytype', function ($join) {
                    $join->on('sundrytype.propertyid', '=', 'suntran.propertyid')
                        ->on('sundrytype.sundry_code', '=', 'suntran.suncode')
                        ->on('sundrytype.vtype', '=', 'suntran.restcode')
                        ->where('sundrytype.nature', 'Round Off');
                })
                ->where('suntran.docid', $docid)
                ->where('suntran.delflag', 'N')
                ->sum('suntran.amount');

            // $totaldiscount = $sale1sums->discountamt ?? 0.00;

            $totalcgst = $sale1sums->cgstamount ?? 0.00;

            $totalsgst = $sale1sums->sgstamt ?? 0.00;

            if (!is_null($company) && !is_null($statename) && !is_null($company->pin)) {

                $year = date('Y', strtotime(ncurdate()));
                $nextyear = $year + 1;

                $depart = Depart::where('propertyid', $this->propertyid)
                    ->where('dcode', $sale1->restcode)
                    ->first();
                $yearmanage = DateHelper::calculateDateRanges($this->ncurdate);

                $prefix = $sale1->vtype;
                $divcode = $depart->divcode;

                if ($divcode != '') {
                    $prefix = $divcode;
                }
                if (strtolower($depart->nature) == 'outlet') {
                    $invoiceno = $prefix . '/' . $yearmanage['hf']['start'] . '-' . $yearmanage['hf']['end'] . '/' . $sale1->vno;
                } else if (strtolower($depart->nature) == 'room service') {
                    $invoiceno = $prefix . '/' . $yearmanage['hf']['start'] . '-' . $yearmanage['hf']['end'] . '/' . $sale1->vno;
                }

                $propertyId = $this->propertyid;

                $comphotelgstin = companydata()->gstin;
                $comphotellegalname = companydata()->legal_name;
                $comphoteltradename = companydata()->trade_name;
                $comphotellegaladdress = companydata()->address1;
                $comphotelpin = companydata()->pin;
                $comphotelstate = companydata()->state;
                $comphotelstatecode = companydata()->state_code;
                $comphotelmobile = companydata()->mobile;
                $comphotelemail = companydata()->email;

                $itemList = [];
                $assVal = 0;
                $cgstVal = 0;
                $sgstVal = 0;
                $totInvVal = 0;
                $totaldiscount = 0;
                $resultitemsale = DB::table('stock')
                    ->leftJoin('itemmast', function ($join) {
                        $join->on('itemmast.Code', '=', 'stock.item')
                            ->on('itemmast.RestCode', '=', 'stock.restcode');
                    })
                    ->select([
                        'stock.docid',
                        'stock.sno',
                        'itemmast.Name as PrdDesc',
                        'itemmast.HSNCode as HsnCd',
                        'stock.amount as TotAmt',
                        'stock.qtyiss as Qty',
                        'stock.rate as UnitPrice',
                        DB::raw('ROUND(stock.amount * stock.discper / 100, 2) as Discount'),
                        DB::raw('ROUND(stock.amount - (stock.amount * stock.discper / 100), 2) as AssAmt'),
                        'stock.taxper as GstRt'
                    ])
                    ->where('stock.docid', $docid)
                    ->where('stock.propertyid', $this->propertyid)
                    ->get();

                if (count($resultitemsale) > 0) {

                    foreach ($resultitemsale as $row) {
                        if (empty($row->HsnCd)) {
                            return response()->json([
                                'success' => false,
                                'message' => "HSN code missing: {$row->PrdDesc}"
                            ]);
                        }

                        if (strlen($row->HsnCd) > 8 || strlen($row->HsnCd) < 4) {
                            return response()->json([
                                'success' => false,
                                'message' => "Error from IRP The field HSN Code must be a string with a minimum length of 4 and a maximum length of 8."
                            ]);
                        }

                        $taxdatasale2 = DB::table('sale2')
                            ->select(
                                'docid',
                                'sno',
                                DB::raw("MAX(CASE WHEN taxcode LIKE 'CG%' THEN taxamt ELSE 0 END) as cgsttaxamt"),
                                DB::raw("MAX(CASE WHEN taxcode LIKE 'SG%' THEN taxamt ELSE 0 END) as sgsttaxamt")
                            )
                            ->where('propertyid', $propertyId)
                            ->where('docid', $row->docid)
                            ->where('sno', $row->sno)
                            ->groupBy('docid', 'sno')
                            ->first();

                        $itemList[] = [
                            'SlNo' => count($itemList) + 1,
                            'PrdDesc' => $row->PrdDesc,
                            'HsnCd' => $row->HsnCd,
                            'IsServc' => 'Y',
                            'CgstAmt' => $taxdatasale2 ? $taxdatasale2->cgsttaxamt : 0,
                            'SgstAmt' => $taxdatasale2 ? $taxdatasale2->sgsttaxamt : 0,
                            'TotItemVal' => number_format(
                                $taxdatasale2
                                    ? ($taxdatasale2->cgsttaxamt + $taxdatasale2->sgsttaxamt + $row->AssAmt)
                                    : $row->AssAmt,
                                2,
                                '.',
                                ''
                            ),
                            'TotAmt' => $row->TotAmt,
                            'GstRt' => number_format($row->GstRt, 2, '.', ''),
                            'Discount' => number_format($row->Discount, 2, '.', ''),
                            'AssAmt' => number_format($row->AssAmt, 2, '.', ''),
                            'Qty' => number_format($row->Qty, 2, '.', ''),
                            'UnitPrice' => number_format($row->UnitPrice, 2, '.', '')
                        ];

                        $assVal += $row->AssAmt;
                        $cgstVal += $taxdatasale2 ? $taxdatasale2->cgsttaxamt : 0;
                        $sgstVal += $taxdatasale2 ? $taxdatasale2->sgsttaxamt : 0;
                        $totInvVal += $taxdatasale2
                            ? ($taxdatasale2->cgsttaxamt + $taxdatasale2->sgsttaxamt + $row->AssAmt)
                            : $row->AssAmt;
                        $totaldiscount += $row->Discount;
                    }
                } else {
                    return response()->json([
                        'success' => false,
                        'message' => 'No items found for this sale'
                    ]);
                }

                $postdata = [
                    "Version" => "1.1",
                    "TranDtls" => [
                        "EcmGstin" => null,
                        "IgstOnIntra" => "N",
                        "RegRev" => "N",
                        "SupTyp" => "B2B",
                        "TaxSch" => "GST"
                    ],
                    "DocDtls" => [
                        "Typ" => "INV",
                        "No" => $invoiceno,
                        "Dt" => date('d/m/Y', strtotime(ncurdate()))
                    ],
                    "BuyerDtls" => [
                        "Gstin" => $company->gstin,
                        "LglNm" => $company->legalname,
                        "TrdNm" => $company->tradename,
                        "Pos" => $comphotelstatecode,
                        "Addr1" => limitText($company->address),
                        "Addr2" => null,
                        "Loc" => limitText($company->address),
                        "Pin" => $company->pin,
                        "Stcd" => $state_code,
                        "Ph" => normalizeMobile($company->mobile),
                        "Em" => $company->email
                    ],
                    "SellerDtls" => [
                        "Gstin" => $comphotelgstin,
                        "LglNm" => $comphotellegalname,
                        "TrdNm" => $comphoteltradename,
                        "Pos" => $comphotelstate,
                        "Addr1" => limitText($comphotellegaladdress),
                        "Addr2" => null,
                        "Loc" => limitText($comphotellegaladdress),
                        "Pin" => $comphotelpin,
                        "Stcd" => $comphotelstatecode,
                        "Ph" => normalizeMobile($comphotelmobile),
                        "Em" => $comphotelemail
                    ],
                    "DispDtls" => [
                        "Addr1" => limitText($comphotellegaladdress),
                        "Addr2" => null,
                        "Loc" => limitText($comphotellegaladdress),
                        "Nm" => $comphotellegalname,
                        "Pin" => $comphotelpin,
                        "Stcd" => $comphotelstatecode,
                    ],
                    "ShipDtls" => [
                        "Addr1" => limitText($comphotellegaladdress),
                        "Addr2" => null,
                        "Gstin" => $comphotelgstin,
                        "LglNm" => $comphotellegalname,
                        "Loc" => limitText($comphotellegaladdress),
                        "Pin" => $comphotelpin,
                        "Stcd" => $comphotelstatecode,
                        "TrdNm" => $comphoteltradename
                    ],
                    "ItemList" => $itemList,
                    "ValDtls" => [
                        "AssVal" => number_format($assVal, 2, '.', ''),
                        "CgstVal" => number_format($cgstVal, 2, '.', ''),
                        "SgstVal" => number_format($sgstVal, 2, '.', ''),
                        "IgstVal" => "0.00",
                        "CesVal" => "0.00",
                        "StCesVal" => 0,
                        "RndOffAmt" =>  number_format($totalroundoff, 2, '.', ''),
                        "TotInvVal" => number_format($totInvVal, 2, '.', ''),
                        "TotInvValFc" => "0.00",
                        "Discount" => number_format($totaldiscount, 2, '.', ''),
                        "OthChrg" => 0.00
                    ]
                ];


                $apiurl = invoiceparameter()->generateirnurl;
                $username = invoiceparameter()->einvusername;
                $password = invoiceparameter()->einvpwd;
                $customerid = invoiceparameter()->customerid;
                $apiid = invoiceparameter()->apiid;
                $apisecret = invoiceparameter()->apisecret;
                $source = invoiceparameter()->source;
                $gstcurl = curl_init($apiurl);
                curl_setopt($gstcurl, CURLOPT_RETURNTRANSFER, true);
                curl_setopt($gstcurl, CURLOPT_POST, true);
                curl_setopt($gstcurl, CURLOPT_HTTPHEADER, [
                    "Content-Type: application/json",
                    "GSTIN: $comphotelgstin",
                    "CustomerName: $comphotellegalname",
                    "Branch: $comphotelstate",
                    "Username: $username",
                    "Password: $password",
                    "CustomerId: $customerid",
                    "APIId: $apiid",
                    "APISecret: $apisecret",
                    "Source: $source"
                ]);

                $postDataJson = json_encode($postdata);
                curl_setopt($gstcurl, CURLOPT_POSTFIELDS, $postDataJson);
                curl_setopt($gstcurl, CURLOPT_SSL_VERIFYPEER, false);
                curl_setopt($gstcurl, CURLOPT_SSL_VERIFYHOST, false);

                $response = curl_exec($gstcurl);
                $httpcode = curl_getinfo($gstcurl, CURLINFO_HTTP_CODE);
                $curlerror = curl_error($gstcurl);

                $decodedResponse = json_decode($response, true);
                // $decodedResponse = json_decode(file_get_contents(storage_path('app/public/gstcafe.json')), true);
                $statusCd = $decodedResponse['status_cd'] ?? 0;
                // return $decodedResponse;
                if ($statusCd === 1) {

                    $qrbase64 = base64_encode(
                        QrCode::format('png')->size(300)->generate($decodedResponse['response_data']['SignedQrCode'])
                    );
                    // return $decodedResponse['response_data']['SignedQrCode'];
                    EInvoiceBill::create([
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'docdtls_no' => $invoiceno,
                        'billno' => $sale1->vno,
                        'comp_code' => $company->sub_code,
                        'docdtls_dt' => date('Y-m-d', strtotime(ncurdate())),
                        'buyerdtls_gstin' => $company->gstin,
                        'buyerdtls_lglnm' => $company->legalname,
                        'buyerdtls_trdnm' => $company->tradename,
                        'buyerdtls_pos' => $state_code,
                        'valdtls_assval' => $postdata['ValDtls']['AssVal'],
                        'valdtls_cgstval' => $postdata['ValDtls']['CgstVal'],
                        'valdtls_sgstval' => $postdata['ValDtls']['SgstVal'],
                        'valdtls_igstval' => $postdata['ValDtls']['IgstVal'],
                        'valdtls_totInvval' => $postdata['ValDtls']['TotInvVal'],
                        'jsonresponse' => $response,
                        'ackno' => $decodedResponse['response_data']['AckNo'],
                        'ackdt' => isset($decodedResponse['response_data']['AckDt']),
                        'irn' => $decodedResponse['response_data']['Irn'],
                        'signedinvoice' => $decodedResponse['response_data']['SignedInvoice'],
                        'signedqrcode' => $decodedResponse['response_data']['SignedQrCode'],
                        'qrcodeimage' => $qrbase64,
                        'status' => $decodedResponse['response_data']['Status'],
                        'u_name' => $this->username,
                        'created_at' => $this->currenttime
                    ]);
                }

                EInvoicePushLog::create([
                    'propertyid' => $this->propertyid,
                    'docid' => $docid,
                    'company' => $company->sub_code,
                    'post_data' => $postDataJson,
                    'http_code' => $httpcode,
                    'success_yn' => $statusCd == 1 ? 'Y' : 'N',
                    'status_cd' => $statusCd,
                    'curl_error' => $curlerror,
                    'response_json' => $response
                ]);

                if ($response === false) {
                    Log::error("CURL Error for DocID $docid: " . $curlerror);
                }

                if ($statusCd === 1) {
                    return response()->json([
                        'success' => $response !== false,
                        'http_code' => $httpcode
                    ]);
                } else {
                    return response()->json([
                        'success' => false,
                        'message' => $decodedResponse['Error'][0]['ErrorMessage']
                            ?? 'E-Invoice generation failed'
                    ]);
                }
            } else {
                return response()->json([
                    'success' => false,
                    'message' => 'Company not found'
                ]);
            }
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage() . '' . $e->getLine()
            ]);
        }
    }

    public function generateinvoicebanquet()
    {
        try {
            $docid = request('docid');
            $chkalready = EInvoiceBill::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->where('cancelled', 'N')
                ->first();

            if ($chkalready) {
                return response()->json([
                    'success' => false,
                    'message' => 'E-Invoice already generated for this bill number'
                ]);
            }

            $hallsale1 = HallSale1::where('propertyid', $this->propertyid)->where('docid', $docid)->first();

            $company = SubGroup::where('propertyid', $this->propertyid)
                ->where('sub_code', $hallsale1->comp_code)
                ->where('gstin', '!=', '')
                ->whereNotNull('gstin')
                ->first();
            $statename = subgroup($company->sub_code)->statename;
            $state_code = subgroup($company->sub_code)->state_code;

            $hallsale1sums = DB::table('hallsale1')
                ->select(
                    DB::raw('SUM(total) as totalamt'),
                    DB::raw('SUM(discamt) as discountamt'),
                    DB::raw('SUM(cgst) as cgstamount'),
                    DB::raw('SUM(sgst) as sgstamt'),
                )
                ->where('docid', $docid)
                ->first();

            $totalamt = $hallsale1sums->totalamt ?? 0.00;

            $totalroundoff = DB::table('suntran')
                ->join('sundrytype', function ($join) {
                    $join->on('sundrytype.propertyid', '=', 'suntran.propertyid')
                        ->on('sundrytype.sundry_code', '=', 'suntran.suncode')
                        ->on('sundrytype.vtype', '=', 'suntran.restcode')
                        ->where('sundrytype.nature', 'Round Off');
                })
                ->where('suntran.docid', $docid)
                ->where('suntran.delflag', 'N')
                ->sum('suntran.amount');

            // $totaldiscount = $hallsale1sums->discountamt ?? 0.00;

            $totalcgst = $hallsale1sums->cgstamount ?? 0.00;

            $totalsgst = $hallsale1sums->sgstamt ?? 0.00;
            if (!is_null($company) && !is_null($statename) && !is_null($company->pin)) {

                $yearmanage = DateHelper::calculateDateRanges($this->ncurdate);

                $prefix = $hallsale1->vtype;
                $divcode = banquetparameter()->divcode;

                if ($divcode != '') {
                    $prefix = $divcode;
                }
                $invoiceno = $prefix . '/' . $yearmanage['hf']['start'] . '-' . $yearmanage['hf']['end'] . '/' . $hallsale1->vno;

                $propertyId = $this->propertyid;

                $comphotelgstin = companydata()->gstin;
                $comphotellegalname = companydata()->legal_name;
                $comphoteltradename = companydata()->trade_name;
                $comphotellegaladdress = companydata()->address1;
                $comphotelpin = companydata()->pin;
                $comphotelstate = companydata()->state;
                $comphotelstatecode = companydata()->state_code;
                $comphotelmobile = companydata()->mobile;
                $comphotelemail = companydata()->email;

                $itemList = [];
                $assVal = 0;
                $cgstVal = 0;
                $sgstVal = 0;
                $totInvVal = 0;
                $totaldiscount = 0;
                $resultitemstock = DB::table('hallstock')
                    ->leftJoin('itemmast', function ($join) {
                        $join->on('itemmast.Code', '=', 'hallstock.item')
                            ->on('itemmast.RestCode', '=', 'hallstock.restcode');
                    })
                    ->select(
                        'hallstock.docid',
                        'hallstock.sno',
                        'itemmast.Name as PrdDesc',
                        'itemmast.HSNCode as HsnCd',
                        'hallstock.rate as UnitPrice',
                        'hallstock.qtyiss as Qty',
                        'hallstock.amount as TotAmt',
                        DB::raw('ROUND(hallstock.amount * hallstock.discper / 100, 2) as Discount'),
                        DB::raw('ROUND(hallstock.amount - (hallstock.amount * hallstock.discper / 100), 2) as AssAmt'),
                        'hallstock.taxper as GstRt'
                    )
                    ->where('hallstock.docid', '170IDC‎ ‎ 2026‎ ‎ ‎ ‎ 1')
                    ->where('hallstock.propertyid', 170)
                    ->get();

                // return $resultitemstock;

                if (count($resultitemstock) > 0) {
                    foreach ($resultitemstock as $row) {
                        if (empty($row->HsnCd)) {
                            return response()->json([
                                'success' => false,
                                'message' => "HSN code missing: {$row->PrdDesc}"
                            ]);
                        }

                        $taxdatahallsale2 = DB::table('hallsale2')
                            ->select(
                                'docid',
                                'sno',
                                DB::raw("MAX(CASE WHEN taxcode LIKE 'CG%' THEN taxamt ELSE 0 END) as cgsttaxamt"),
                                DB::raw("MAX(CASE WHEN taxcode LIKE 'SG%' THEN taxamt ELSE 0 END) as sgsttaxamt")
                            )
                            ->where('propertyid', $propertyId)
                            ->where('docid', $row->docid)
                            ->where('sno', $row->sno)
                            ->groupBy('docid', 'sno')
                            ->first();

                        $itemList[] = [
                            'SlNo' => count($itemList) + 1,
                            'PrdDesc' => $row->PrdDesc,
                            'HsnCd' => $row->HsnCd,
                            'IsServc' => 'Y',
                            'CgstAmt' => $taxdatahallsale2 ? $taxdatahallsale2->cgsttaxamt : 0,
                            'SgstAmt' => $taxdatahallsale2 ? $taxdatahallsale2->sgsttaxamt : 0,
                            'TotItemVal' => number_format(
                                $taxdatahallsale2
                                    ? ($taxdatahallsale2->cgsttaxamt + $taxdatahallsale2->sgsttaxamt + $row->AssAmt)
                                    : $row->AssAmt,
                                2,
                                '.',
                                ''
                            ),
                            'TotAmt' => $row->TotAmt,
                            'GstRt' => number_format($row->GstRt, 2, '.', ''),
                            'Discount' => number_format($row->Discount, 2, '.', ''),
                            'AssAmt' => number_format($row->AssAmt, 2, '.', ''),
                            'Qty' => number_format($row->Qty, 2, '.', ''),
                            'UnitPrice' => number_format($row->UnitPrice, 2, '.', '')
                        ];

                        $assVal += $row->AssAmt;
                        $cgstVal += $taxdatahallsale2 ? $taxdatahallsale2->cgsttaxamt : 0;
                        $sgstVal += $taxdatahallsale2 ? $taxdatahallsale2->sgsttaxamt : 0;
                        $totInvVal += $taxdatahallsale2
                            ? ($taxdatahallsale2->cgsttaxamt + $taxdatahallsale2->sgsttaxamt + $row->AssAmt)
                            : $row->AssAmt;
                        $totaldiscount += $row->Discount;
                    }
                }

                $resultitemhallsale = DB::table('suntranh')
                    ->join('sundrytype', function ($join) {
                        $join->on('suntranh.suncode', '=', 'sundrytype.sundry_code')
                            ->on('suntranh.sno', '=', 'sundrytype.sno')
                            ->where('sundrytype.vtype', "BANQ$this->propertyid")
                            ->whereIn('sundrytype.nature', ['CGST', 'SGST', 'DISCOUNT']);
                    })
                    ->select(
                        'suntranh.docid',
                        DB::raw("MAX(CASE WHEN sundrytype.nature = 'DISCOUNT' THEN suntranh.amount ELSE 0 END) as discountamt"),
                        DB::raw("
            MAX(CASE WHEN sundrytype.nature = 'CGST' THEN sundrytype.svalue ELSE 0 END) +
            MAX(CASE WHEN sundrytype.nature = 'SGST' THEN sundrytype.svalue ELSE 0 END)
            as totaltaxper
        "),
                        DB::raw("MAX(CASE WHEN sundrytype.nature = 'CGST' THEN suntranh.amount ELSE 0 END) as cgstamt"),
                        DB::raw("MAX(CASE WHEN sundrytype.nature = 'SGST' THEN suntranh.amount ELSE 0 END) as sgstamt"),
                        DB::raw("MAX(suntranh.baseamount) as baseamount")
                    )
                    ->where('suntranh.propertyid', $propertyId)
                    ->where('suntranh.docid', $docid)
                    ->groupBy('suntranh.docid')
                    ->first();

                if ($resultitemhallsale) {

                    $base = (float) $resultitemhallsale->baseamount;
                    $cgst = (float) $resultitemhallsale->cgstamt;
                    $sgst = (float) $resultitemhallsale->sgstamt;
                    $discount = (float) $resultitemhallsale->discountamt;
                    $gstRate = (float) $resultitemhallsale->totaltaxper;

                    $qty = (float) $hallsale1->noofpax;
                    $rate = (float) $hallsale1->rateperpax;

                    $totAmt = $rate * $qty;
                    $totalItemVal = $base + $cgst + $sgst;

                    $itemList[] = [
                        'SlNo' => count($itemList) + 1,
                        'PrdDesc' => $hallsale1->narration,
                        'HsnCd' => '999799',
                        'IsServc' => 'Y',
                        'CgstAmt' => number_format($cgst, 2, '.', ''),
                        'SgstAmt' => number_format($sgst, 2, '.', ''),
                        'TotItemVal' => number_format($totalItemVal, 2, '.', ''),
                        'TotAmt' => number_format($totAmt, 2, '.', ''),
                        'GstRt' => number_format($gstRate, 2, '.', ''),
                        'Discount' => number_format($discount, 2, '.', ''),
                        'AssAmt' => number_format($base, 2, '.', ''),
                        'Qty' => number_format($qty, 2, '.', ''),
                        'UnitPrice' => number_format($rate, 2, '.', '')
                    ];

                    $assVal += $base;
                    $cgstVal += $cgst;
                    $sgstVal += $sgst;
                    $totInvVal += $totalItemVal;
                    $totaldiscount += $discount;
                } else {
                    return response()->json([
                        'success' => false,
                        'message' => "Tax details missing for: {$hallsale1->narration}"
                    ]);
                }

                // return $itemList;

                $postdata = [
                    "Version" => "1.1",
                    "TranDtls" => [
                        "EcmGstin" => null,
                        "IgstOnIntra" => "N",
                        "RegRev" => "N",
                        "SupTyp" => "B2B",
                        "TaxSch" => "GST"
                    ],
                    "DocDtls" => [
                        "Typ" => "INV",
                        "No" => $invoiceno,
                        "Dt" => date('d/m/Y', strtotime(ncurdate()))
                    ],
                    "BuyerDtls" => [
                        "Gstin" => $company->gstin,
                        "LglNm" => $company->legalname,
                        "TrdNm" => $company->tradename,
                        "Pos" => $comphotelstatecode,
                        "Addr1" => limitText($company->address),
                        "Addr2" => null,
                        "Loc" => limitText($company->address),
                        "Pin" => $company->pin,
                        "Stcd" => $state_code,
                        "Ph" => normalizeMobile($company->mobile),
                        "Em" => $company->email
                    ],
                    "SellerDtls" => [
                        "Gstin" => $comphotelgstin,
                        "LglNm" => $comphotellegalname,
                        "TrdNm" => $comphoteltradename,
                        "Pos" => $comphotelstate,
                        "Addr1" => limitText($comphotellegaladdress),
                        "Addr2" => null,
                        "Loc" => limitText($comphotellegaladdress),
                        "Pin" => $comphotelpin,
                        "Stcd" => $comphotelstatecode,
                        "Ph" => normalizeMobile($comphotelmobile),
                        "Em" => $comphotelemail
                    ],
                    "DispDtls" => [
                        "Addr1" => limitText($comphotellegaladdress),
                        "Addr2" => null,
                        "Loc" => limitText($comphotellegaladdress),
                        "Nm" => $comphotellegalname,
                        "Pin" => $comphotelpin,
                        "Stcd" => $comphotelstatecode,
                    ],
                    "ShipDtls" => [
                        "Addr1" => limitText($comphotellegaladdress),
                        "Addr2" => null,
                        "Gstin" => $comphotelgstin,
                        "LglNm" => $comphotellegalname,
                        "Loc" => limitText($comphotellegaladdress),
                        "Pin" => $comphotelpin,
                        "Stcd" => $comphotelstatecode,
                        "TrdNm" => $comphoteltradename
                    ],
                    "ItemList" => $itemList,
                    "ValDtls" => [
                        "AssVal" => number_format($assVal, 2, '.', ''),
                        "CgstVal" => number_format($cgstVal, 2, '.', ''),
                        "SgstVal" => number_format($sgstVal, 2, '.', ''),
                        "IgstVal" => "0.00",
                        "CesVal" => "0.00",
                        "StCesVal" => 0,
                        "RndOffAmt" =>  number_format($totalroundoff, 2, '.', ''),
                        "TotInvVal" => number_format($totInvVal, 2, '.', ''),
                        "TotInvValFc" => "0.00",
                        "Discount" => number_format($totaldiscount, 2, '.', ''),
                        "OthChrg" => 0.00
                    ]
                ];

                $apiurl = invoiceparameter()->generateirnurl;
                $username = invoiceparameter()->einvusername;
                $password = invoiceparameter()->einvpwd;
                $customerid = invoiceparameter()->customerid;
                $apiid = invoiceparameter()->apiid;
                $apisecret = invoiceparameter()->apisecret;
                $source = invoiceparameter()->source;
                $gstcurl = curl_init($apiurl);
                curl_setopt($gstcurl, CURLOPT_RETURNTRANSFER, true);
                curl_setopt($gstcurl, CURLOPT_POST, true);
                curl_setopt($gstcurl, CURLOPT_HTTPHEADER, [
                    "Content-Type: application/json",
                    "GSTIN: $comphotelgstin",
                    "CustomerName: $comphotellegalname",
                    "Branch: $comphotelstate",
                    "Username: $username",
                    "Password: $password",
                    "CustomerId: $customerid",
                    "APIId: $apiid",
                    "APISecret: $apisecret",
                    "Source: $source"
                ]);

                $postDataJson = json_encode($postdata);
                curl_setopt($gstcurl, CURLOPT_POSTFIELDS, $postDataJson);
                curl_setopt($gstcurl, CURLOPT_SSL_VERIFYPEER, false);
                curl_setopt($gstcurl, CURLOPT_SSL_VERIFYHOST, false);

                $response = curl_exec($gstcurl);
                $httpcode = curl_getinfo($gstcurl, CURLINFO_HTTP_CODE);
                $curlerror = curl_error($gstcurl);

                $decodedResponse = json_decode($response, true);
                // $decodedResponse = json_decode(file_get_contents(storage_path('app/public/gstcafe.json')), true);
                $statusCd = $decodedResponse['status_cd'] ?? 0;
                // return $decodedResponse;
                if ($statusCd === 1) {

                    $qrbase64 = base64_encode(
                        QrCode::format('png')->size(300)->generate($decodedResponse['response_data']['SignedQrCode'])
                    );
                    // return $decodedResponse['response_data']['SignedQrCode'];
                    EInvoiceBill::create([
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'docdtls_no' => $invoiceno,
                        'billno' => $hallsale1->vno,
                        'comp_code' => $company->sub_code,
                        'docdtls_dt' => date('Y-m-d', strtotime(ncurdate())),
                        'buyerdtls_gstin' => $company->gstin,
                        'buyerdtls_lglnm' => $company->legalname,
                        'buyerdtls_trdnm' => $company->tradename,
                        'buyerdtls_pos' => $state_code,
                        'valdtls_assval' => $postdata['ValDtls']['AssVal'],
                        'valdtls_cgstval' => $postdata['ValDtls']['CgstVal'],
                        'valdtls_sgstval' => $postdata['ValDtls']['SgstVal'],
                        'valdtls_igstval' => $postdata['ValDtls']['IgstVal'],
                        'valdtls_totInvval' => $postdata['ValDtls']['TotInvVal'],
                        'jsonresponse' => $response,
                        'ackno' => $decodedResponse['response_data']['AckNo'],
                        'ackdt' => isset($decodedResponse['response_data']['AckDt']),
                        'irn' => $decodedResponse['response_data']['Irn'],
                        'signedinvoice' => $decodedResponse['response_data']['SignedInvoice'],
                        'signedqrcode' => $decodedResponse['response_data']['SignedQrCode'],
                        'qrcodeimage' => $qrbase64,
                        'status' => $decodedResponse['response_data']['Status'],
                        'u_name' => $this->username,
                        'created_at' => $this->currenttime
                    ]);
                }

                EInvoicePushLog::create([
                    'propertyid' => $this->propertyid,
                    'docid' => $docid,
                    'company' => $company->sub_code,
                    'post_data' => $postDataJson,
                    'http_code' => $httpcode,
                    'success_yn' => $statusCd == 1 ? 'Y' : 'N',
                    'status_cd' => $statusCd,
                    'curl_error' => $curlerror,
                    'response_json' => $response
                ]);

                if ($response === false) {
                    Log::error("CURL Error for DocID $docid: " . $curlerror);
                }

                if ($statusCd === 1) {
                    return response()->json([
                        'success' => $response !== false,
                        'http_code' => $httpcode
                    ]);
                } else {
                    return response()->json([
                        'success' => false,
                        'message' => $decodedResponse['Error'][0]['ErrorMessage']
                            ?? 'E-Invoice generation failed'
                    ]);
                }
            } else {
                return response()->json([
                    'success' => false,
                    'message' => 'Company not found'
                ]);
            }
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage() . '' . $e->getLine()
            ]);
        }
    }

    public function canceleinvoice(Request $request)
    {
        $docid = $request->input('docid');
        $sno1 = $request->input('sno1');
        $type = $request->input('type');
        $billno = $request->input('billno');

        $einvoicebill = EInvoiceBill::where('propertyid', $this->propertyid)
            ->where('billno', $billno)
            ->where('cancelled', 'N')
            ->first();

        if ($einvoicebill) {
            $entdt = Carbon::parse($einvoicebill->created_at);
            $now = Carbon::now();
            $diffInHours = $entdt->diffInHours($now);

            if ($diffInHours > 24) {
                return response()->json([
                    'success' => false,
                    'message' => 'E-Invoice can only be cancelled within 24 hours of generation'
                ]);
            }

            $company = SubGroup::where('propertyid', $this->propertyid)
                ->where('sub_code', $einvoicebill->comp_code)
                ->where('gstin', '!=', '')
                ->whereNotNull('gstin')
                ->first();

            $postdata = [
                "Irn" => $einvoicebill->irn,
                "CnlRsn" => "1",
                "CnlRem" => "Wrong entry"
            ];

            $statename = subgroup($company->sub_code)->statename;
            $state_code = subgroup($company->sub_code)->state_code;
            $apiurl = invoiceparameter()->generateirnurl;
            $username = invoiceparameter()->einvusername;
            $password = invoiceparameter()->einvpwd;
            $customerid = invoiceparameter()->customerid;
            $apiid = invoiceparameter()->apiid;
            $apisecret = invoiceparameter()->apisecret;
            $source = invoiceparameter()->source;
            $gstcurl = curl_init($apiurl);
            curl_setopt($gstcurl, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($gstcurl, CURLOPT_POST, true);
            curl_setopt($gstcurl, CURLOPT_HTTPHEADER, [
                "Content-Type: application/json",
                "GSTIN: $company->gstin",
                "CustomerName: $company->name",
                "Branch: $statename",
                "Username: $username",
                "Password: $password",
                "CustomerId: $customerid",
                "APIId: $apiid",
                "APISecret: $apisecret",
                "Source: $source"
            ]);

            $postDataJson = json_encode($postdata);
            curl_setopt($gstcurl, CURLOPT_POSTFIELDS, $postDataJson);
            curl_setopt($gstcurl, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($gstcurl, CURLOPT_SSL_VERIFYHOST, false);

            $response = curl_exec($gstcurl);
            $httpcode = curl_getinfo($gstcurl, CURLINFO_HTTP_CODE);
            $curlerror = curl_error($gstcurl);

            $decodedResponse = json_decode($response, true);
            // $decodedResponse = json_decode(file_get_contents(storage_path('app/public/gstcafe.json')), true);
            $statusCd = $decodedResponse['status_cd'] ?? 0;
            // return $decodedResponse;
            if ($statusCd === 1) {
                $upenvoice = [
                    'cancelled' => 'Y',
                    'canceldate' => $decodedResponse['response_data']['CancelDate'],
                ];
                EInvoiceBill::where('propertyid', $this->propertyid)
                    ->where('billno', $billno)
                    ->where('cancelled', 'N')
                    ->where('irn', $decodedResponse['response_data']['Irn'])
                    ->update($upenvoice);
                return response()->json([
                    'success' => true,
                    'message' => 'E-Invoice cancelled successfully'
                ]);
            } else {
                EInvoicePushLog::create([
                    'propertyid' => $this->propertyid,
                    'docid' => $docid,
                    'company' => $company->sub_code,
                    'post_data' => $postDataJson,
                    'http_code' => $httpcode,
                    'success_yn' => $statusCd == 1 ? 'Y' : 'N',
                    'status_cd' => $statusCd,
                    'curl_error' => $curlerror,
                    'response_json' => $response
                ]);

                if ($response === false) {
                    Log::error("CURL Error for DocID $docid: " . $curlerror);
                }

                return response()->json([
                    'success' => false,
                    'message' => 'Failed to cancel E-Invoice'
                ]);
            }
        }
    }

   public function einvoicereport()
    {
        try {
            return view('property.finance.einvoicereport');
        } catch (Exception $e) {
            Log::error('Error in einvoicereport: ' . $e->getMessage());
            return redirect()->back()->with('error', 'An error occurred while loading E-Invoice Report');
        }
    }

    public function einvoicereportdata(Request $request)
{
    try {
        $fromDate = $request->input('from_date');
        $toDate = $request->input('to_date');
        $uploadStatus = $request->input('upload_status'); // 'uploaded' or 'not_uploaded'
        $propertyId = $request->input('propertyid') ?: $this->propertyid;
        
        if (empty($propertyId)) {
            $propertyId = $this->propertyid;
        }
        
       
        
        // Common WHERE condition for upload status
        $uploadCondition = '';
        if ($uploadStatus === 'not_uploaded') {
            $uploadCondition = 'AND E.docid IS NULL';
        } elseif ($uploadStatus === 'uploaded') {
            $uploadCondition = 'AND E.docid IS NOT NULL';
        }
        // If empty or null, show all (no additional condition)
        
        $results = [];
        
        // Query 1: Front Office (paycharge table)
        $frontOfficeQuery = "
            SELECT 
                P.billno,
                P.settledate,
                E.docdtls_dt AS Uploaddate,
                E.docdtls_no AS DocDetail,
                S.Name AS CompanyName,
                S.gstin AS GSTNo,
                P.folionodocid AS docid,
                E.irn AS IRNNo,
                'Front Office' AS Module
            FROM paycharge P
            INNER JOIN subgroup S 
                ON P.comp_code = S.sub_code 
                AND S.propertyid = P.propertyid
            LEFT JOIN einvoicebill E 
                ON P.folionodocid = E.docid 
                AND E.propertyid = P.propertyid
            WHERE 
                P.propertyid = ?
                AND P.billno > 0
                AND S.gstin IS NOT NULL
                AND P.settledate BETWEEN ? AND ?
                $uploadCondition
            GROUP BY P.comp_code, P.billno, P.folionodocid
            ORDER BY P.billno
        ";
        
        $frontOfficeData = DB::select($frontOfficeQuery, [$propertyId, $fromDate, $toDate]);
        
        // Query 2: Banquet (hallsale1 table)
        $banquetQuery = "
            SELECT 
                H.vno AS billno,
                H.vdate AS settledate,
                E.docdtls_dt AS Uploaddate,
                E.docdtls_no AS DocDetail,
                S.Name AS CompanyName,
                S.gstin AS GSTNo,
                H.docId AS docid,
                E.irn AS IRNNo,
                'Banquet' AS Module
            FROM hallsale1 H
            INNER JOIN subgroup S 
                ON H.comp_code = S.sub_code 
                AND S.propertyid = H.propertyid
            LEFT JOIN einvoicebill E 
                ON H.docId = E.docid 
                AND E.propertyid = H.propertyid
            WHERE 
                H.propertyid = ?
                AND H.vdate BETWEEN ? AND ?
                AND S.gstin IS NOT NULL
                $uploadCondition
            GROUP BY H.comp_code, H.vno, H.docid
            ORDER BY H.vno
        ";
        
        $banquetData = DB::select($banquetQuery, [$propertyId, $fromDate, $toDate]);
        
        // Query 3: POS (sale1 table)
        $posQuery = "
            SELECT 
                P.vno AS billno,
                P.vdate AS settledate,
                E.docdtls_dt AS Uploaddate,
                E.docdtls_no AS DocDetail,
                S.Name AS CompanyName,
                S.gstin AS GSTNo,
                P.docId AS docid,
                E.irn AS IRNNo,
                D.name AS outlet_name,
                'POS' AS Module
            FROM sale1 P
            INNER JOIN subgroup S 
                ON P.party = S.sub_code 
                AND S.propertyid = P.propertyid
            LEFT JOIN einvoicebill E 
                ON P.docId = E.docid 
                AND E.propertyid = P.propertyid
            INNER JOIN depart D 
                ON P.restcode = D.dcode 
                AND D.propertyid = P.propertyid
            WHERE 
                P.propertyid = ?
                AND P.party > 1
                AND P.vdate BETWEEN ? AND ?
                AND S.gstin IS NOT NULL
                $uploadCondition
            ORDER BY P.vno
        ";
        
        $posData = DB::select($posQuery, [$propertyId, $fromDate, $toDate]);
        
        // Return separate arrays for each module
        return response()->json([
            'frontOffice' => $frontOfficeData,
            'banquet' => $banquetData,
            'pos' => $posData,
            'total' => count($frontOfficeData) + count($banquetData) + count($posData)
        ]);
        
    } catch (Exception $e) {
        Log::error('Error in einvoicereportdata: ' . $e->getMessage());
        Log::error('Stack trace: ' . $e->getTraceAsString());
        return response()->json([
            'error' => 'An error occurred while fetching data: ' . $e->getMessage()
        ], 500);
    }
}

}
