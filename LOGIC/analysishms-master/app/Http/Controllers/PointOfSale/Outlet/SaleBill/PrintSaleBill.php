<?php

namespace App\Http\Controllers\PointOfSale\Outlet\SaleBill;

use App\Http\Controllers\Controller;
use App\Helpers\DateHelper;
use App\Helpers\WhatsappSend;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Companyreg;
use App\Models\Guestfolio;
use App\Models\Suntran;
use App\Models\RoomMast;
use App\Models\Sale1;
use App\Models\Sale2;
use App\Models\Stock;
use App\Models\Paycharge;
use App\Models\MenuHelp;
use App\Models\Depart;
use App\Models\Revmast;
use App\Models\ServerMast;
use App\Models\EnviroPos;
use App\Models\GuestProf;
use App\Models\PrintingSetup;
use App\Models\UserPermission;
use App\Models\RoomOcc;
use App\Models\GuestReward;
use App\Models\Cities;
use App\Models\Depart1;
use App\Models\EnviroWhatsapp;
use App\Models\EInvoiceBill;
use App\Models\EnviroFom;
use App\Models\SubGroup;
use Illuminate\Support\Facades\Auth;
use Exception;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use Illuminate\Filesystem\AwsS3V3Adapter;
use Illuminate\Support\Facades\Log;
use PhpParser\Node\Stmt\TryCatch;
use Symfony\Component\Finder\Iterator\VcsIgnoredFilterIterator;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Models\Kot as KotModal;
use App\Models\Sale1log;
use App\Models\Sale2log;
use App\Models\Stocklog;
use App\Models\Suntranlog;
use App\Models\VoucherPrefix;

use Endroid\QrCode\Builder\Builder;
use Endroid\QrCode\Writer\PngWriter;
use Endroid\QrCode\Encoding\Encoding;
use Endroid\QrCode\ErrorCorrectionLevel;
use Endroid\QrCode\RoundBlockSizeMode;

use function App\Helpers\endsWith;
use function App\Helpers\removeSuffixIfExists;
use function App\Helpers\splitByJoin;

class PrintSaleBill extends Controller
{

    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    protected $ptlngth;
    protected $prpid;
    protected $ncurdate;

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
            return $next($request);
        });
    }

    public function salebillprintthermal(Request $request)
    {
        $docid = $request->docid;
        $company = companydata();
        $sale1 = Sale1::where('propertyid', $this->propertyid)->where('docid', $docid)->first();
        $mergedwith = !empty($sale1->mergedwith) ? explode(',', $sale1->mergedwith) : [$sale1->docid];

        $departmain = Depart::where('propertyid', $this->propertyid)->where('dcode', $sale1->restcode)->first();

        $payload = [
            'billdata' => [],
        ];

        if ($departmain->token_print == 'Y') {

            $tokenitemss = $items = Stock::selectRaw('
                SUM(stock.qtyiss) AS qty,
                MAX(i.name) AS itemname
            ')
                ->leftJoin('itemmast as i', function ($join) {
                    $join->on('i.Code', '=', 'stock.item')
                        ->whereColumn('stock.itemrestcode', '=', 'i.restcode');
                })
                ->whereIn('stock.docid', $mergedwith)
                ->groupBy('stock.item', 'stock.rate', 'stock.remarks')
                ->orderByRaw('MAX(i.name)')
                ->get();

            Depart::where('propertyid', $this->propertyid)
                ->where('dcode', $sale1->restcode)
                ->update(['cur_token_no' => $departmain->cur_token_no + 1]);

            $tokenItems = [];
            foreach ($tokenitemss as $item) {
                $tokenItems[] = [
                    'itemname' => $item->itemname,
                    'qty'      => $item->qty,
                ];
            }

            $tokenBillData = [
                'main' => [
                    'billno' => $departmain->cur_token_no,
                    'billdisplaytext' => 'Token',
                    'vdate' => date('d-m-Y', strtotime($sale1->vdate)),
                    'curtime' => date('H:i:s'),
                ],
                'outlet' => [
                    'company_title' => $departmain->company_title ?? '',
                    'outlet_title' => $departmain->outlet_title ?? '',
                    'outletname' => $departmain->name ?? '',
                ],
                'items' => $tokenItems,
            ];

            $payload['billdata'][] = [
                'propertyid' => $this->propertyid,
                'docid' => $sale1->docid,
                'billdata' => $tokenBillData,
                'printerpath' => 'POS_TOKEN_PRINTER',
                'psno' => 1,
                'type' => 'tokenprint',
                'u_name' => Auth::user()->name ?? '',
            ];
        }

        $psno = 1;
        foreach ($mergedwith as $docid) {
            $mersale1 = Sale1::where('propertyid', $this->propertyid)->where('docid', $docid)->first();

            $items = Stock::selectRaw('
                MAX(stock.sno) AS srno,
                MAX(stock.taxper) AS taxper,
                SUM(stock.taxamt) AS taxamt,
                stock.rate,
                stock.itemrate,
                stock.remarks,
                MAX(stock.itemrate) AS itemrate,
                SUM(stock.qtyiss) AS qty,
                SUM(stock.amount) AS amt,
                MAX(i.name) AS itemname,
                MAX(i.hsncode) AS hsncode,
                MAX(i.dispcode) As dispcode,
                CASE
                    WHEN SUM(stock.taxamt) = 0 THEN SUM(stock.amount)
                    ELSE 0
                END AS nontaxable,
                CASE
                    WHEN SUM(stock.taxamt) <> 0 THEN SUM(stock.amount)
                    ELSE 0
                END AS taxable,
                unitmast.name AS unitname
            ')
                ->leftJoin('itemmast as i', function ($join) {
                    $join->on('i.Code', '=', 'stock.item')
                        ->whereColumn('stock.itemrestcode', '=', 'i.restcode');
                })
                ->leftJoin('unitmast', 'unitmast.ucode', '=', 'stock.unit')
                ->where('stock.docid', $mersale1->docid)
                ->groupBy('stock.item', 'stock.rate', 'stock.remarks')
                ->orderByRaw('MAX(i.name)')
                ->get();

            if (posparameter()->taxsummaryonsalebill ==  'Y') {
                $taxes = Sale2::select(
                    'revmast.name as taxname',
                    'revmast.rev_code',
                    'sale2.taxper',
                    DB::raw('SUM(taxamt) as taxamt'),
                    DB::raw('SUM(basevalue) as taxableamt')
                )
                    ->leftJoin('revmast', 'revmast.rev_code', '=', 'sale2.taxcode')
                    ->where('sale2.docid', $mersale1->docid)
                    ->groupBy('revmast.rev_code', 'sale2.taxper', 'revmast.name')
                    ->orderBy('sale2.taxper')
                    ->get()
                    ->toArray();
            } else {
                $taxes = [];
            }

            $suntran = Suntran::select('suntran.*', 'sundrytype.nature', 'depart.dis_print', 'depart.outlet_title', 'depart.company_title')
                ->leftJoin('depart', 'depart.dcode', '=', 'suntran.restcode')
                ->leftJoin('sundrytype', function ($join) {
                    $join->on('sundrytype.sundry_code', '=', 'suntran.suncode')
                        ->on('sundrytype.vtype', '=', 'suntran.restcode')
                        ->on('sundrytype.sno', '=', 'suntran.sno');
                })
                ->where('suntran.propertyid', $this->propertyid)
                ->where('suntran.docid', $mersale1->docid)
                ->get()
                ->toArray();

            $waiter = ServerMast::where('propertyid', $this->propertyid)
                ->where('scode', $mersale1->waiter)
                ->first();

            $waitername = $waiter ? $waiter->toArray() : [];

            $depart = Depart::where('propertyid', $this->propertyid)->where('dcode', $mersale1->restcode)->first();

            $itemdt = [];

            foreach ($items as $item) {
                $itemdt[] = [
                    'itemname' => $item->itemname,
                    'qty'      => $item->qty,
                    'rate'     => $item->rate,
                    'amt'      => $item->amt
                ];
            }

            $yearmanage = DateHelper::calculateDateRanges($this->ncurdate);

            $prefix = $mersale1->vtype;
            $divcode = $depart->divcode;

            if ($divcode != '') {
                $prefix = $divcode;
            }
            if (strtolower($depart->nature) == 'outlet') {
                $str = $prefix . '/' . $yearmanage['hf']['start'] . '-' . $yearmanage['hf']['end'] . '/' . $mersale1->vno;
                $billdisplaytext = 'Table';
            } else if (strtolower($depart->nature) == 'room service') {
                $str = $prefix . '/' . $yearmanage['hf']['start'] . '-' . $yearmanage['hf']['end'] . '/' . $mersale1->vno;
                $billdisplaytext = 'Room';
            }

            $data = [];
            $data = [
                'main' => [
                    'billno' => $str,
                    'billdisplaytext' => $billdisplaytext,
                    'vdate' => date('d-m-Y', strtotime($mersale1->vdate)),
                    'curtime' => $mersale1->vtime,
                    'roomno' => $mersale1->roomno,
                    'kotno' => $mersale1->kotno,
                    'netamountinwords' => amountToWords($mersale1->netamt),
                    'waiter' => $waitername,
                    'cashier' => Auth::user()->name
                ],
                'posparameter' => posparameter()?->toArray() ?? [],
                'outlet' => [
                    'company_title' => $depart->company_title,
                    'outlet_title' => $depart->outlet_title,
                    'outletname' => $depart->name,
                    'companyaddress' => $depart->companyaddress,
                    'token_print' => $depart->token_print,
                    'token_print_afteritem' => $depart->token_print_after,
                    'token_print_before' => $depart->token_print_before,
                    'cur_token_no' => $depart->cur_token_no,
                ],
                'company' => [
                    'name' => $company->comp_name ?? '',
                    'mobile' => $company->mobile ?? '',
                    'email' => $company->email ?? '',
                    'website' => $company->website ?? '',
                    'gstin' => $company->gstin ?? '',
                    'saccode' => '996332',
                    'address1' => $company->address1 ?? '',
                    'address2' => $company->address2 ?? '',
                ],
                'items' => $itemdt,
                'suntrans' => $suntran,
                'taxes' => $taxes
            ];

            // Log::info("items:\n" . json_encode($items, JSON_PRETTY_PRINT));

            $printsetup = PrintingSetup::where('propertyid', $this->propertyid)->where('module', 'POS')->where('restcode', $mersale1->restcode)->get();

            foreach ($printsetup as $print) {
                if ($print->restcode == $mersale1->restcode) {
                    $payload['billdata'][] = [
                        'propertyid' => $this->propertyid,
                        'docid' => $mersale1->docid,
                        'billdata' => $data,
                        'printerpath' => $print->printerpath,
                        'psno' => $psno,
                        'type' => 'salebill',
                        'u_name' => Auth::user()->name,
                    ];
                }
                $psno++;
            }
        }

        // Broadcast sale bill print event via WebSocket

        $targetUsername = Auth::user()->u_name ?? Auth::user()->name ?? '';

        $payload['propertyid'] = $this->propertyid;
        $payload['docid'] = $mergedwith;
        $payload['company'] = $company ? $company->toArray() : [];
        $payload['target_username'] = $targetUsername;

        event(new \App\Events\SaleBillPrintEvent(
            $payload,
            $this->propertyid,
            $targetUsername
        ));

        return true;
    }
}
