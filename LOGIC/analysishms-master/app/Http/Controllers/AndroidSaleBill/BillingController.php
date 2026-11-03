<?php

namespace App\Http\Controllers\AndroidSaleBill;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\MenuHelp;
use App\Models\EnviroGeneral;
use App\Models\Stock;
use App\Models\Companyreg;
use App\Services\TenantDatabase;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;



class BillingController extends Controller
{
    protected $propertyid;
    protected $ncurdate;
    protected $currenttime;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (Auth::check()) {
                $this->propertyid = Auth::user()->propertyid;
                TenantDatabase::connect((int) $this->propertyid);
                $this->ncurdate = EnviroGeneral::where('propertyid', $this->propertyid)->value('ncur');
                date_default_timezone_set('Asia/Kolkata');
                $this->currenttime = date('Y-m-d H:i:s');
            }
            return $next($request);
        });
    }

    public function login(Request $request)
    {
        $request->validate([
            'username'    => 'required|string',
            'password'    => 'required|string',
            'property_id' => 'required|string',
        ]);

        // 1) users table me dhundho (u_name + propertyid)
        $user = User::where('u_name', $request->username)
            ->where('propertyid', $request->property_id)
            ->first();

        if (!$user) {
            return response()->json([
                'success' => false,
                'message' => 'Invalid username or property ID',
            ], 401);
        }

        // 2) active check
        if ($user->status != 1) {
            return response()->json([
                'success' => false,
                'message' => 'User account is inactive',
            ], 403);
        }

        // 3) password check
        if (!Hash::check($request->password, $user->password)) {
            return response()->json([
                'success' => false,
                'message' => 'Invalid password',
            ], 401);
        }

        // 4) Sanctum token — login ke liye bas user + active + password kaafi hai
        // outlet permission check outlets API me hoga
        $token = $user->createToken('mobile')->plainTextToken;

        // 5) Company table se details fetch karo (propertyid se)
        TenantDatabase::connect((int) $user->propertyid);
        $company = Companyreg::where('propertyid', $user->propertyid)->first();

        $companyData = [
            'company_name'    => $company->comp_name      ?? '',
            'address_1'       => $company->address1       ?? '',
            'address_2'       => $company->address2       ?? '',
            'city'            => $company->city           ?? '',
            'state'           => $company->state          ?? '',
            'mobile_no'       => $company->mobile         ?? '',
            'email'           => $company->email          ?? '',
            'pin'             => $company->pin            ?? '',
            'gstin'           => $company->gstin          ?? '',
            'website'         => $company->website        ?? '',
            'logo'            => $company->logo
                                    ? asset('storage/admin/property_logo/' . $company->logo)
                                    : '',
            'payment_qr_code' => $company->payment_qr_code
                                    ? asset('storage/admin/qrcode/' . $company->payment_qr_code)
                                    : '',
        ];

        return response()->json([
            'success' => true,
            'message' => 'Login successful',
            'data' => [
                'user' => [
                    'id'       => $user->id,
                    'name'     => $user->name,
                    'username' => $user->u_name,
                    'role'     => $user->role,
                ],
                'token'      => $token,
                'token_type' => 'Bearer',
                'company'    => $companyData,
            ],
        ]);
    }
//GET OUTLETS API
      public function outlets(Request $request)
    {
        $user = Auth::user();

        // permitted outlet codes (menuhelp se) — salebillentry + flag='E' + ins=1
        $permittedRoutes = MenuHelp::where('propertyid', $user->propertyid)
            ->where('username', $user->u_name)
            ->where('flag', 'E')
            ->where('opt3', 11)
            ->where('ins', 1)
            ->pluck('route')
            ->filter(function ($route) {
                return str_contains($route, 'salebillentry') && str_contains($route, 'dcode=');
            })
            ->map(function ($route) {
                preg_match('/dcode=([A-Za-z0-9]+)/', $route, $matches);
                return $matches[1] ?? null;
            })
            ->filter()
            ->unique()
            ->values();

        // depart se outlet details
        $outlets = \App\Models\Depart::where('propertyid', $user->propertyid)
            ->whereIn('dcode', $permittedRoutes)
            ->select('dcode', 'name', 'rest_type', 'kot_yn')
            ->orderBy('name')
            ->get();

        if ($outlets->isEmpty()) {
            return response()->json([
                'success' => false,
                'message' => 'No outlets assigned to this user',
            ], 403);
        }

        return response()->json([
            'success' => true,
            'data'    => $outlets,
        ]);
    }
//CONCEPT 3: GET CATEGORIES API

 public function categories(Request $request)
    {
        $request->validate([
            'outlet_id' => 'required|string',
        ]);

        $user = Auth::user();

        // Sale Bill Entry insert permission check
        $billPermission = MenuHelp::where('propertyid', $user->propertyid)
            ->where('username', $user->u_name)
            ->where('outletcode', $request->outlet_id)
            ->where('module', 'Sale Bill Entry')
            ->where('ins', 1)
            ->exists();

        if (!$billPermission) {
            return response()->json([
                'success' => false,
                'message' => 'You are not authorized to access Sale Bill Entry for this outlet.',
            ], 403);
        }

        $categories = \App\Models\ItemGrp::where('property_id', $user->propertyid)
            ->where('restcode', $request->outlet_id)
            ->where('activeyn', 'Y')
            ->select('code', 'name')
            ->orderBy('name', 'ASC')
            ->get();

        if ($categories->isEmpty()) {
            return response()->json([
                'success' => false,
                'message' => 'No categories found for this outlet',
            ], 404);
        }

        return response()->json([
            'success' => true,
            'data'    => $categories,
        ]);
    }


    //CONCEPT 4: GET PRODUCTS API
    public function products(Request $request)
    {
        $request->validate([
            'outlet_id'   => 'required|string',
            'category_id' => 'nullable',
        ]);

        $user       = Auth::user();
        $propertyid = $user->propertyid;
        $ncurdate   = $this->ncurdate;
        $outletId   = $request->outlet_id;

        
        // Step 1: latest rate subquery (MAX AppDate <= ncurdate)
        $latestRateSub = DB::table('itemrate')
            ->selectRaw('ItemCode, RestCode, MAX(AppDate) as max_app_date')
            ->where('Property_ID', $propertyid)
            ->where('AppDate', '<=', $ncurdate)
            ->where('RestCode', $outletId)
            ->groupBy('ItemCode', 'RestCode');

        $query = DB::table('itemmast')
            ->leftJoinSub($latestRateSub, 'latest_rates', function ($join) {
                $join->on('latest_rates.ItemCode', '=', 'itemmast.Code')
                    ->on('latest_rates.RestCode', '=', 'itemmast.RestCode');
            })
            ->leftJoin('itemrate', function ($join) {
                $join->on('itemrate.ItemCode', '=', 'latest_rates.ItemCode')
                    ->on('itemrate.RestCode', '=', 'latest_rates.RestCode')
                    ->on('itemrate.AppDate', '=', 'latest_rates.max_app_date');
            })
            ->leftJoin('unitmast', function ($join) use ($propertyid) {
                $join->on('unitmast.ucode', '=', 'itemmast.Unit')
                    ->where('unitmast.propertyid', '=', $propertyid);
            })
            ->leftJoin('itemcatmast', function ($join) {
                $join->on('itemcatmast.Code', '=', 'itemmast.ItemCatCode')
                    ->on('itemcatmast.RestCode', '=', 'itemmast.RestCode');
            })
            // Website ka exact tax subquery — SUM(rate) + GROUP_CONCAT
            ->leftJoin(
                DB::raw('(SELECT str_code, GROUP_CONCAT(tax_code) AS tax_code, SUM(rate) AS tax_rate FROM taxstru GROUP BY str_code) AS taxstru'),
                'taxstru.str_code',
                '=',
                'itemcatmast.TaxStru'
            )
            ->where('itemmast.Property_ID', $propertyid)
            ->where('itemmast.RestCode', $outletId)
            ->where('itemmast.ActiveYN', 'Y')
            ->select(
                'itemmast.Code as code',
                'itemmast.Name as name',
                'itemmast.Unit as unit_code',
                'unitmast.name as unit_name',
                'itemmast.ItemCatCode as item_cat_code',
                'itemmast.RateIncTax as rate_inc_tax',
                'itemcatmast.TaxStru as tax_stru',
                DB::raw('COALESCE(itemrate.Rate, 0) as rate'),
                DB::raw('COALESCE(taxstru.tax_code, "") as tax_code'),
                DB::raw('COALESCE(taxstru.tax_rate, 0) as tax_rate')
            )
            ->orderBy('itemmast.Name', 'ASC');

        // category filter
        if ($request->category_id && $request->category_id != 'favourite') {
            $query->where('itemmast.ItemGroup', $request->category_id);
        } elseif ($request->category_id == 'favourite') {
            $query->where('itemmast.favourite', '1');
        }

        $products = $query->get()->map(function ($product) use ($propertyid) {
            $cgst = 0; $sgst = 0; $igst = 0;
            $cgst_code = ''; $sgst_code = ''; $igst_code = '';
            if ($product->tax_stru) {
                $taxRows = DB::table('taxstru')
                    ->where('propertyid', $propertyid)
                    ->where('str_code', $product->tax_stru)
                    ->get();
                foreach ($taxRows as $t) {
                    if (floatval($t->rate) <= 0) continue;
                    if (stripos($t->tax_code, 'CGS') !== false) {
                        $cgst += floatval($t->rate);
                        $cgst_code = $t->tax_code;
                    } elseif (stripos($t->tax_code, 'SGS') !== false) {
                        $sgst += floatval($t->rate);
                        $sgst_code = $t->tax_code;
                    } elseif (stripos($t->tax_code, 'IGS') !== false) {
                        $igst += floatval($t->rate);
                        $igst_code = $t->tax_code;
                    }
                }
            }
            return [
                'code'          => $product->code,
                'name'          => $product->name,
                'unit_code'     => $product->unit_code,
                'unit_name'     => $product->unit_name,
                'item_cat_code' => $product->item_cat_code,
                'rate_inc_tax'  => $product->rate_inc_tax,
                'tax_stru'      => $product->tax_stru,
                'rate'          => $product->rate,
                'cgst_code'     => $cgst_code,
                'sgst_code'     => $sgst_code,
                'igst_code'     => $igst_code,
                'cgst_per'      => $cgst,
                'sgst_per'      => $sgst,
                'igst_per'      => $igst,
                'tax_rate'      => $cgst + $sgst + $igst,
            ];
        });

        if ($products->isEmpty()) {
            return response()->json([
                'success' => false,
                'message' => 'No products found',
            ], 404);
        }

        return response()->json([
            'success' => true,
            'data'    => $products,
        ]);
    }
    
    // CONCEPT 6: GET BILL API
    public function getBill(Request $request, $billId)
    {
        $request->validate([
            'outlet_id' => 'required|string',
        ]);

        $user       = Auth::user();
        $propertyid = $user->propertyid;

        // bill header — sale1 + depart (website jaisa)
        $bill = DB::table('sale1')
            ->leftJoin('depart', 'depart.dcode', '=', 'sale1.restcode')
            ->where('sale1.propertyid', $propertyid)
            ->where('sale1.vno', $billId)
            ->where('sale1.restcode', $request->outlet_id)
            ->select(
                'sale1.docid',
                'sale1.vno as voucher_no',
                'sale1.vprefix as voucher_prefix',
                'sale1.vdate as date',
                'sale1.restcode',
                'sale1.total as subtotal',
                'sale1.discamt as discount',
                'sale1.cgst',
                'sale1.sgst',
                'sale1.igst',
                'sale1.roundoff as round_off',
                'sale1.netamt as net_amount',
                'depart.name as outlet_name'
            )
            ->first();

        if (!$bill) {
            return response()->json([
                'success' => false,
                'message' => 'Bill not found',
            ], 404);
        }

        // items — website jaisa: stock + itemmast + unitmast, groupBy item+rate
        $items = DB::table('stock')
            ->selectRaw('
                MAX(stock.sno) AS srno,
                stock.item,
                stock.rate,
                MAX(stock.taxper) AS taxper,
                SUM(stock.taxamt) AS taxamt,
                SUM(stock.qtyiss) AS quantity,
                SUM(stock.amount) AS amount,
                SUM(stock.discamt) AS discamt,
                SUM(stock.total) AS total,
                MAX(i.Name) AS name,
                unitmast.name AS unit_name
            ')
            ->leftJoin('itemmast as i', function ($join) {
                $join->on('i.Code', '=', 'stock.item')
                    ->whereColumn('stock.itemrestcode', '=', 'i.RestCode');
            })
            ->leftJoin('unitmast', 'unitmast.ucode', '=', 'stock.unit')
            ->where('stock.propertyid', $propertyid)
            ->where('stock.docid', $bill->docid)
            ->groupBy('stock.item', 'stock.rate', 'unitmast.name')
            ->orderByRaw('MAX(i.Name)')
            ->get();

        // tax details — website jaisa: sale2 + revmast (tax name ke liye)
        $taxDetails = DB::table('sale2')
            ->leftJoin('revmast', 'revmast.rev_code', '=', 'sale2.taxcode')
            ->where('sale2.propertyid', $propertyid)
            ->where('sale2.docid', $bill->docid)
            ->select(
                'sale2.taxcode',
                'revmast.name as tax_name',
                'sale2.taxper',
                DB::raw('SUM(sale2.taxamt) as taxamt'),
                DB::raw('SUM(sale2.basevalue) as taxableamt')
            )
            ->groupBy('revmast.rev_code', 'sale2.taxper', 'revmast.name', 'sale2.taxcode')
            ->orderBy('sale2.taxper')
            ->get();

        return response()->json([
            'success' => true,
            'data'    => [
                'voucher_prefix' => $bill->voucher_prefix,
                'voucher_no'     => $bill->voucher_no,
                'outlet'         => [
                    'id'   => $bill->restcode,
                    'name' => $bill->outlet_name,
                ],
                'date'        => $bill->date,
                'items'       => $items,
                'tax_details' => $taxDetails,
                'summary'     => [
                    'subtotal'   => $bill->subtotal,
                    'discount'   => $bill->discount,
                    'cgst'       => $bill->cgst,
                    'sgst'       => $bill->sgst,
                    'igst'       => $bill->igst,
                    'round_off'  => $bill->round_off,
                    'net_amount' => $bill->net_amount,
                ],
                'status' => 'generated',
            ],
        ]);
    }

//CONCEPT 5: CREATE BILL API
    public function createBill(Request $request)
    {
        $request->validate([
            'outlet_id' => 'required|string',
            'items'     => 'required|array|min:1',
            'items.*.product_id' => 'required|integer',
            'items.*.quantity'   => 'required|numeric|min:0.01',
        ]);

        $user       = Auth::user();
        $propertyid = $user->propertyid;
        $outletId   = $request->outlet_id;
        $ncurdate   = $this->ncurdate;

        // Sale Bill Entry insert permission check
        $billPermission = MenuHelp::where('propertyid', $propertyid)
            ->where('username', $user->u_name)
            ->where('outletcode', $outletId)
            ->where('module', 'Sale Bill Entry')
            ->where('ins', 1)
            ->exists();

        if (!$billPermission) {
            return response()->json([
                'success' => false,
                'message' => 'You are not authorized to create bills for this outlet.',
            ], 403);
        }

        // 1) outlet + voucher type
        $dept = DB::table('depart')
            ->where('propertyid', $propertyid)
            ->where('dcode', $outletId)
            ->first();

        if (!$dept) {
            return response()->json(['success' => false, 'message' => 'Invalid outlet'], 422);
        }

        $vtype = DB::table('voucher_type')
            ->where('propertyid', $propertyid)
            ->where('restcode', $outletId)
            ->where('description', $dept->short_name . ' Memo Entry')
            ->value('v_type');

        if (!$vtype) {
            return response()->json(['success' => false, 'message' => 'Voucher type not configured for outlet'], 422);
        }

        // 2) voucher prefix + serial number
        $pref = DB::table('voucher_prefix')
            ->where('propertyid', $propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', $ncurdate)
            ->whereDate('date_to', '>=', $ncurdate)
            ->first();

        if (!$pref) {
            return response()->json(['success' => false, 'message' => 'Voucher prefix not found for current date'], 422);
        }

        $vno       = $pref->start_srl_no + 1;
        // SaleBill.php line 197 ka exact format (special unicode spaces)
        $billDocid = $propertyid . $vtype . '‎ ‎ ' . $pref->prefix . '‎ ‎ ‎ ‎ ' . $vno;

        DB::beginTransaction();
        try {
            $subtotal      = 0;
            $totalCgst     = 0;
            $totalSgst     = 0;
            $totalIgst     = 0;
            $sno           = 0;
            $sale2Records  = [];
            $stockRecords  = [];
            $billItems     = [];

            foreach ($request->items as $item) {
                $sno++;

                // product fetch
                $product = DB::table('itemmast')
                    ->where('Property_ID', $propertyid)
                    ->where('Code', $item['product_id'])
                    ->where('RestCode', $outletId)
                    ->first();

                if (!$product) {
                    DB::rollBack();
                    return response()->json([
                        'success' => false,
                        'message' => 'Product not found: ' . $item['product_id'],
                    ], 422);
                }

                // latest rate
                $rate = DB::table('itemrate')
                    ->where('Property_ID', $propertyid)
                    ->where('ItemCode', $item['product_id'])
                    ->where('RestCode', $outletId)
                    ->where('AppDate', '<=', $ncurdate)
                    ->orderByDesc('AppDate')
                    ->value('Rate') ?? 0;

                if ($rate <= 0) {
                    DB::rollBack();
                    return response()->json([
                        'success' => false,
                        'message' => 'No rate found for: ' . $product->Name,
                    ], 422);
                }

                $qty        = $item['quantity'];
                // SaleBill.php jaisa — floor
                $itemcamt   = floor($rate * $qty * 100) / 100;
                $subtotal  += $itemcamt;

                // tax structure — SaleBill.php jaisa
                $taxStructCode = DB::table('itemcatmast')
                    ->where('propertyid', $propertyid)
                    ->where('Code', $product->ItemCatCode)
                    ->where('RestCode', $outletId)
                    ->value('TaxStru');

                $cgst = 0; $sgst = 0; $igst = 0;
                $taxRateSum = 0;

                if ($taxStructCode) {
                    $taxRows = DB::table('taxstru')
                        ->where('propertyid', $propertyid)
                        ->where('str_code', $taxStructCode)
                        ->get();

                    foreach ($taxRows as $taxRow) {
                        if (floatval($taxRow->rate) <= 0) continue;
                        $taxRateSum += floatval($taxRow->rate);

                        // SaleBill.php exact formula
                        $baseVal    = $qty * ($itemcamt / $qty); // = itemcamt
                        $taxAmttmp  = $baseVal * $taxRow->rate / 100;
                        $roundedtmp = floor($taxAmttmp * 100) / 100;
                        $taxAmt     = number_format($roundedtmp, 2);

                        if (stripos($taxRow->tax_code, 'CGS') !== false) $cgst += floatval($taxAmt);
                        elseif (stripos($taxRow->tax_code, 'SGS') !== false) $sgst += floatval($taxAmt);
                        elseif (stripos($taxRow->tax_code, 'IGS') !== false) $igst += floatval($taxAmt);

                        $sale2Records[] = [
                            'propertyid' => $propertyid,
                            'docid'      => $billDocid,
                            'sno'        => $sno,
                            'sno1'       => $taxRow->sno,
                            'vno'        => $vno,
                            'vtype'      => $vtype,
                            'vdate'      => $ncurdate,
                            'vtime'      => date('H:i:s'),
                            'vprefix'    => $pref->prefix,
                            'restcode'   => $outletId,
                            'taxcode'    => $taxRow->tax_code,
                            'basevalue'  => $baseVal,
                            'taxper'     => $taxRow->rate,
                            'taxamt'     => $taxAmt,
                            'delflag'    => 'N',
                            'created_at'    => $this->currenttime,
                            'u_name'     => $user->u_name,
                            'u_ae'       => 'a',
                        ];
                    }
                }

                $totalCgst   += $cgst;
                $totalSgst   += $sgst;
                $totalIgst   += $igst;
                $taxAmtTotal  = $cgst + $sgst + $igst;
                $netamount    = $itemcamt + $taxAmtTotal;

                // stock sno — SaleBill.php jaisa DB se fetch
                $lastSno = DB::table('stock')
                    ->where('propertyid', $propertyid)
                    ->where('docid', $billDocid)
                    ->max('sno');
                $stockSno = $lastSno ? $lastSno + 1 : 1;

                $stockRecords[] = [
                    'propertyid'   => $propertyid,
                    'docid'        => $billDocid,
                    'sno'          => $stockSno,
                    'vno'          => $vno,
                    'vtype'        => $vtype,
                    'vdate'        => $ncurdate,
                    'vtime'        => date('H:i:s'),
                    'vprefix'      => $pref->prefix,
                    'restcode'     => $outletId,
                    'roomno'       => '0',
                    'roomcat'      => '',
                    'roomtype'     => '',
                    'item'         => $product->Code,
                    'qtyiss'       => $qty,
                    'qtyrec'       => 0,
                    'unit'         => $product->Unit ?? '',
                    'rate'         => $rate,
                    'amount'       => $itemcamt,
                    'taxper'       => $taxRateSum,
                    'taxamt'       => $taxAmtTotal,
                    'discper'      => 0,
                    'discamt'      => 0,
                    'description'  => mb_substr($product->Name, 0, 50),
                    'kotdocid'     => '',
                    'kotsno'       => 0,
                    'total'        => $netamount,
                    'discapp'      => '',
                    'roundoff'     => 'N',
                    'departcode'   => $product->Kitchen ?? '',
                    'godowncode'   => $product->Kitchen ?? '',
                    'itemrate'     => $rate,
                    'itemrestcode' => $outletId,
                    'delflag'      => 'N',
                    'created_at'      => $this->currenttime,
                    'u_name'       => $user->u_name,
                    'u_ae'         => 'a',
                ];

                Stock::insert(end($stockRecords));
                array_pop($stockRecords);

                $billItems[] = [
                    'product_id' => $product->Code,
                    'name'       => $product->Name,
                    'unit'       => $product->Unit,
                    'quantity'   => $qty,
                    'rate'       => $rate,
                    'amount'     => $itemcamt,
                    'cgst'       => $cgst,
                    'sgst'       => $sgst,
                    'igst'       => $igst,
                    'tax'        => $taxAmtTotal,
                ];
            }

            // round off — roundofftype DB se (website jaisa: GeneralController.php)
            $envPos         = \App\Models\EnviroPos::where('propertyid', $propertyid)->first();
            $roundoffType   = $envPos->roundofftype ?? 'Standard';
            $netBeforeRound = $subtotal + $totalCgst + $totalSgst + $totalIgst;
            $roundResult    = calculateRoundOff($netBeforeRound, $roundoffType);
            $roundOff       = $roundResult['roundoff'];
            $netAmount      = $roundResult['billamt'];

            // sale1 (header)
            DB::table('sale1')->insert([
                'propertyid'    => $propertyid,
                'docid'         => $billDocid,
                'vno'           => $vno,
                'vtype'         => $vtype,
                'vdate'         => $ncurdate,
                'vtime'         => date('H:i:s'),
                'vprefix'       => $pref->prefix,
                'restcode'      => $outletId,
                'waiter'        => '',
                'party'         => '',
                'roomno'        => '0',
                'roomcat'       => '',
                'roomtype'      => '',
                'total'         => $subtotal,
                'dedamt'        => 0,
                'addamt'        => 0,
                'nontaxable'    => 0,
                'taxable'       => $subtotal,
                'discper'       => 0,
                'discamt'       => 0,
                'servicecharge' => 0,
                'roundoff'      => $roundOff,
                'netamt'        => $netAmount,
                'sgst'          => round($totalSgst, 2),
                'cgst'          => round($totalCgst, 2),
                'vat'           => 0,
                'igst'          => round($totalIgst, 2),
                'folionodocid'  => '',
                'kotno'         => '',
                'guaratt'       => 1,
                'created_at'       => $this->currenttime,
                'u_name'        => $user->u_name,
                'u_ae'          => 'a',
            ]);

            // sale2 (tax lines)
            if (!empty($sale2Records)) {
                DB::table('sale2')->insert($sale2Records);
            }

            // suntran (sundry)
            $sundryRows = DB::table('sundrytype')
                ->where('propertyid', $propertyid)
                ->where('vtype', $outletId)
                ->orderBy('sno')
                ->get();

            if ($sundryRows->isEmpty()) {
                DB::rollBack();
                return response()->json([
                    'success' => false,
                    'message' => 'Sundry configuration not found for this outlet. Please configure sundrytype before creating bills.',
                ], 422);
            }

            $s = 0;
            foreach ($sundryRows as $st) {
                $s++;
                $amt  = 0;
                $base = 0;
                switch ($st->nature) {
                    case 'Amount':         $amt = $subtotal; break;
                    case 'CGST':           $amt = round($totalCgst, 2); break;
                    case 'SGST':           $amt = round($totalSgst, 2); break;
                    case 'IGST':           $amt = round($totalIgst, 2); break;
                    case 'Round Off':      $amt = $roundOff; $base = $netAmount + $roundOff; break;
                    case 'Net Amount':     $amt = $netAmount; break;
                    case 'Discount':       $amt = 0; break;
                    case 'Service Charge': $amt = 0; break;
                }
                DB::table('suntran')->insert([
                    'propertyid'  => $propertyid,
                    'docid'       => $billDocid,
                    'sno'         => $s,
                    'vno'         => $vno,
                    'vtype'       => $vtype,
                    'vdate'       => $ncurdate,
                    'dispname'    => $st->disp_name,
                    'suncode'     => $st->sundry_code,
                    'calcformula' => $st->calcformula,
                    'svalue'      => $st->svalue,
                    'amount'      => number_format((float)$amt, 2, '.', ''),
                    'baseamount'  => number_format((float)$base, 2, '.', ''),
                    'revcode'     => $st->revcode,
                    'restcode'    => $outletId,
                    'sunappdate'  => $ncurdate,
                    'delflag'     => 'N',
                    'created_at'     => $this->currenttime,
                    'u_name'      => $user->u_name,
                    'u_ae'        => 'a',
                ]);
            }

            // voucher prefix increment
            DB::table('voucher_prefix')
                ->where('propertyid', $propertyid)
                ->where('v_type', $vtype)
                ->where('prefix', $pref->prefix)
                ->increment('start_srl_no');

            DB::commit();
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => 'Bill creation failed: ' . $e->getMessage(),
            ], 500);
        }

        return response()->json([
            'success' => true,
            'message' => 'Bill created successfully',
            'data'    => [
                'voucher_prefix' => $pref->prefix,
                'voucher_no'     => $vno,
                'outlet_id'      => $outletId,
                'outlet_name'    => $dept->name,
                'items'       => $billItems,
                'summary'     => [
                    'subtotal'   => round($subtotal, 2),
                    'discount'   => 0,
                    'cgst'       => round($totalCgst, 2),
                    'sgst'       => round($totalSgst, 2),
                    'igst'       => round($totalIgst, 2),
                    'round_off'  => $roundOff,
                    'net_amount' => $netAmount,
                ],
                'date'   => $ncurdate,
                'status' => 'generated',
            ],
        ]);
    }

}