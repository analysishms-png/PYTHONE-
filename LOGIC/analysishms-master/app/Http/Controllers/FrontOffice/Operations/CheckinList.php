<?php

namespace App\Http\Controllers\FrontOffice\Operations;

use App\Http\Controllers\Controller;
use App\Models\Guestfolio;
use App\Models\Roomkey;
use App\Models\RoomOcc;
use App\Services\RoomKeyService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class CheckinList extends Controller
{
    protected $username;
    protected $propertyid;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }

            $this->username = Auth::user()->name;
            $this->propertyid = Auth::user()->propertyid;
            return $next($request);
        });
    }

    public function opencheckinlist()
    {
        $permission = revokeopen(141113);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        return view('property.checkinlist');
    }

    public function checkinlistData(Request $request)
    {
        $permission = revokeopen(141113);

        if (is_null($permission) || $permission->view == 0) {
            return response()->json([
                'draw' => (int) $request->input('draw', 0),
                'recordsTotal' => 0,
                'recordsFiltered' => 0,
                'data' => [],
                'message' => 'You have no permission to execute this functionality!'
            ], 403);
        }

        $draw = (int) $request->input('draw', 0);
        $start = max((int) $request->input('start', 0), 0);
        $length = (int) $request->input('length', 15);
        $length = $length > 0 ? min($length, 100) : 15;
        $searchValue = trim((string) $request->input('search.value', ''));

        $columnMap = [
            1 => 'guest_name',
            2 => 'city',
            3 => 'mobile_no',
            4 => 'room_no',
            5 => 'folio_no',
            6 => 'bill_no',
            7 => 'chkindate',
            8 => 'checkin_time',
            9 => 'exp_dep_date',
            10 => 'dep_date',
            11 => 'deptime',
            12 => 'rate',
            13 => 'tax_inc',
            14 => 'compname',
            15 => 'travelagent',
        ];

        $orderColumnIndex = (int) $request->input('order.0.column', 5);
        $orderDirection = strtolower((string) $request->input('order.0.dir', 'desc')) === 'asc'
            ? 'asc'
            : 'desc';

        $orderColumn = $columnMap[$orderColumnIndex] ?? 'folio_no';

        $baseQuery = RoomOcc::query()
            ->where(function ($query) {
                $query->where('roomocc.type', '!=', 'C')
                    ->orWhereNull('roomocc.type');
            });

        $recordsTotal = (clone $baseQuery)->count();

        $baseQuery->when($searchValue !== '', function ($query) use ($searchValue) {
            $query->where(function ($query) use ($searchValue) {
                $query->where('roomocc.name', 'like', "%{$searchValue}%")
                    ->orWhere('roomocc.roomno', 'like', "%{$searchValue}%")
                    ->orWhere('roomocc.folioNo', 'like', "%{$searchValue}%")
                    ->orWhereExists(function ($subquery) use ($searchValue) {
                        $subquery->selectRaw('1')
                            ->from('guestfolio as gf')
                            ->leftJoin('guestprof as gp', function ($join) {
                                $join->on('gp.guestcode', '=', 'gf.guestprof')
                                    ->on('gp.sno1', '=', 'gf.sno1');
                            })
                            ->whereColumn('gf.docid', 'roomocc.docid')
                            ->whereColumn('gf.sno1', 'roomocc.sno1')
                            ->where(function ($subquery) use ($searchValue) {
                                $subquery->where('gp.city_name', 'like', "%{$searchValue}%")
                                    ->orWhere('gp.mobile_no', 'like', "%{$searchValue}%");
                            });
                    });
            });
        });

        $recordsFiltered = $searchValue === ''
            ? $recordsTotal
            : (clone $baseQuery)->count();

        $rows = $baseQuery
            ->select([
                'roomocc.docid',
                'roomocc.sno1',
                'roomocc.folioNo as folio_no',
                'roomocc.roomno as room_no',
                'roomocc.chkindate',
                'roomocc.chkintime as checkin_time',
                'roomocc.chkoutdate as dep_date',
                'roomocc.depdate as exp_dep_date',
                'roomocc.chkouttime as deptime',
                'roomocc.name as guest_name',
                'roomocc.type',
                'roomocc.rackrate as rate',
                'roomocc.rrtaxinc as tax_inc',
                'roomocc.vprefix as sort_vprefix',
                'roomocc.created_at as sort_created_at',
            ])
            ->orderBy('roomocc.folioNo', $orderColumn === 'folio_no' ? $orderDirection : 'desc')
            ->orderByDesc('roomocc.vprefix')
            ->orderByDesc('roomocc.created_at')
            ->orderByDesc('roomocc.docid')
            ->offset($start)
            ->limit($length)
            ->get();

        if ($rows->isEmpty()) {
            return response()->json([
                'draw' => $draw,
                'recordsTotal' => $recordsTotal,
                'recordsFiltered' => $recordsFiltered,
                'data' => [],
            ]);
        }

        $docids = $rows->pluck('docid')->unique()->values();

        $folios = DB::table('guestfolio as gf')
            ->leftJoin('guestprof as gp', function ($join) {
                $join->on('gp.guestcode', '=', 'gf.guestprof')
                    ->on('gp.sno1', '=', 'gf.sno1');
            })
            ->leftJoin('cities as c', 'c.city_code', '=', 'gf.city')
            ->leftJoin('subgroup as company', 'company.sub_code', '=', 'gf.company')
            ->leftJoin('subgroup as agent', 'agent.sub_code', '=', 'gf.travelagent')
            ->whereIn('gf.docid', $docids)
            ->select([
                'gf.docid',
                'gf.sno1',
                'gf.folio_no',
                'gf.Remark as remark',
                'gp.mobile_no',
                'gp.city_name',
                'c.cityname as city',
                'company.name as compname',
                'agent.name as travelagent',
            ])
            ->get()
            ->keyBy(fn($folio) => $folio->docid . '|' . $folio->sno1);

        $billNumbers = DB::table('paycharge')
            ->whereIn('folionodocid', $docids)
            ->whereIn('sno1', $rows->pluck('sno1')->unique())
            ->selectRaw('folionodocid, sno1, MAX(billno) as bill_no')
            ->groupBy('folionodocid', 'sno1')
            ->get()
            ->keyBy(fn($bill) => $bill->folionodocid . '|' . $bill->sno1);

        $data = $rows->values()->map(function ($row, $index) use ($start, $folios, $billNumbers) {
            $key = $row->docid . '|' . $row->sno1;
            $folio = $folios->get($key);

            $bill = $billNumbers->get($key);

            return [
                'id' => $start + $index + 1,
                'docid' => $row->docid,
                'sno1' => $row->sno1,
                'type' => $row->type,
                'guest_name' => $row->guest_name ?? '',
                'city' => $folio->city ?? $folio->city_name ?? '',
                'mobile_no' => $folio->mobile_no ?? '',
                'room_no' => $row->room_no ?? '',
                'folio_no' => $folio->folio_no ?? $row->folio_no ?? '',
                'bill_no' => $bill->bill_no ?? '',
                'chkindate' => $this->formatDate($row->chkindate),
                'checkin_time' => $this->formatTime($row->checkin_time),
                'exp_dep_date' => $this->formatDate($row->exp_dep_date),
                'dep_date' => $this->formatDate($row->dep_date),
                'deptime' => $this->formatTime($row->deptime),
                'deptime_raw' => $this->formatTime($row->deptime),
                'rate' => $row->rate ?? '',
                'tax_inc' => $row->tax_inc === 'Y'
                    ? 'Yes'
                    : ($row->tax_inc === 'N' ? 'No' : ''),
                'compname' => $folio->compname ?? '',
                'travelagent' => $folio->travelagent ?? '',
                'action' => $this->buildActionButtons(
                    $row->docid,
                    $row->sno1,
                    $row->guest_name,
                    $folio->folio_no ?? $row->folio_no
                ),
            ];
        });

        return response()->json([
            'draw' => $draw,
            'recordsTotal' => $recordsTotal,
            'recordsFiltered' => $recordsFiltered,
            'data' => $data,
        ]);
    }

    protected function checkinListBaseQuery($dateFrom = null, $dateTo = null)
    {
        return RoomOcc::query()
            ->select([
                'roomocc.docid',
                'roomocc.sno1',
                DB::raw('COALESCE(gf_exact.folio_no, gf_primary.folio_no) as folio_no'),
                DB::raw('(
                SELECT MAX(pc.billno)
                FROM paycharge pc
                WHERE pc.folionodocid = roomocc.docid
                  AND pc.sno1 = roomocc.sno1
            ) as bill_no'),
                'roomocc.roomno as room_no',
                'roomocc.chkindate as chkindate',
                'roomocc.chkintime as checkin_time',
                'roomocc.chkoutdate as dep_date',
                'roomocc.depdate as exp_dep_date',
                'roomocc.chkouttime as deptime',
                'roomocc.name as guest_name',
                'roomocc.type',
                DB::raw('COALESCE(guestprof.mobile_no, guestprof_main.mobile_no) as mobile_no'),
                DB::raw('COALESCE(cities.cityname, cities_main.cityname) as city'),
                DB::raw('COALESCE(gf_exact.Remark, gf_primary.Remark) as remark'),
                'roomocc.rackrate as rate',
                'roomocc.rrtaxinc as tax_inc',
                DB::raw('COALESCE(subcom.name, subcom_main.name) as compname'),
                DB::raw('COALESCE(travelcom.name, travelcom_main.name) as travelagent'),
                'roomocc.vprefix as sort_vprefix',
                'roomocc.folioNo as sort_folio_no',
                'roomocc.created_at as sort_created_at',
            ])
            ->leftJoin('guestfolio as gf_exact', function ($join) {
                $join->on('gf_exact.docid', '=', 'roomocc.docid')
                    ->on('gf_exact.sno1', '=', 'roomocc.sno1');
            })
            ->leftJoin('guestfolio as gf_primary', function ($join) {
                $join->on('gf_primary.docid', '=', 'roomocc.docid')
                    ->where('gf_primary.sno1', '=', 1);
            })
            ->leftJoin('guestprof', function ($join) {
                $join->on('guestprof.guestcode', '=', 'gf_exact.guestprof')
                    ->on('guestprof.sno1', '=', 'gf_exact.sno1');
            })
            ->leftJoin('guestprof as guestprof_main', function ($join) {
                $join->on('guestprof_main.guestcode', '=', 'gf_primary.guestprof')
                    ->where('guestprof_main.sno1', 1);
            })
            ->leftJoin('cities', 'cities.city_code', '=', 'gf_exact.city')
            ->leftJoin('cities as cities_main', 'cities_main.city_code', '=', 'gf_primary.city')
            ->leftJoin('subgroup as subcom', 'subcom.sub_code', '=', 'gf_exact.company')
            ->leftJoin('subgroup as subcom_main', 'subcom_main.sub_code', '=', 'gf_primary.company')
            ->leftJoin('subgroup as travelcom', 'travelcom.sub_code', '=', 'gf_exact.travelagent')
            ->leftJoin('subgroup as travelcom_main', 'travelcom_main.sub_code', '=', 'gf_primary.travelagent')
            ->where(function ($query) {
                $query->where('roomocc.type', '!=', 'C')
                    ->orWhereNull('roomocc.type');
            })
            ->when($dateFrom !== null && $dateFrom !== '', function ($query) use ($dateFrom) {
                $query->where('roomocc.chkindate', '>=', $dateFrom);
            })
            ->when($dateTo !== null && $dateTo !== '', function ($query) use ($dateTo) {
                $query->where('roomocc.chkindate', '<', date('Y-m-d', strtotime($dateTo . ' +1 day')));
            });
    }

    // protected function checkinListBaseQuery($dateFrom = null, $dateTo = null)
    // {
    //     $query = RoomOcc::query()
    //         ->select([
    //             'roomocc.docid',
    //             'roomocc.sno1',
    //             DB::raw('COALESCE(gf_exact.folio_no, gf_primary.folio_no) as folio_no'),
    //             DB::raw('MAX(paycharge.billno) as bill_no'),
    //             'roomocc.roomno as room_no',
    //             'roomocc.chkindate as chkindate',
    //             'roomocc.chkintime as checkin_time',
    //             'roomocc.chkoutdate as dep_date',
    //             'roomocc.depdate as exp_dep_date',
    //             'roomocc.chkouttime as deptime',
    //             'roomocc.name as guest_name',
    //             'roomocc.type',
    //             DB::raw('COALESCE(guestprof.mobile_no, guestprof_main.mobile_no) as mobile_no'),
    //             DB::raw('COALESCE(cities.cityname, cities_main.cityname) as city'),
    //             DB::raw('COALESCE(gf_exact.Remark, gf_primary.Remark) as remark'),
    //             'roomocc.rackrate as rate',
    //             'roomocc.rrtaxinc as tax_inc',
    //             DB::raw('COALESCE(subcom.name, subcom_main.name) as compname'),
    //             DB::raw('COALESCE(travelcom.name, travelcom_main.name) as travelagent'),
    //             'roomocc.vprefix as sort_vprefix',
    //             'roomocc.folioNo as sort_folio_no',
    //             'roomocc.created_at as sort_created_at',
    //         ])
    //         ->leftJoin('guestfolio as gf_exact', function ($join) {
    //             $join->on('gf_exact.docid', '=', 'roomocc.docid')
    //                 ->on('gf_exact.sno1', '=', 'roomocc.sno1')
    //                 ->where('gf_exact.propertyid', '=', $this->propertyid);
    //         })
    //         ->leftJoin('guestfolio as gf_primary', function ($join) {
    //             $join->on('gf_primary.docid', '=', 'roomocc.docid')
    //                 ->where('gf_primary.sno1', '=', 1)
    //                 ->where('gf_primary.propertyid', '=', $this->propertyid);
    //         })
    //         ->leftJoin('guestprof', function ($join) {
    //             $join->on('guestprof.guestcode', '=', 'gf_exact.guestprof')
    //                 ->on('guestprof.sno1', '=', 'gf_exact.sno1');
    //         })
    //         ->leftJoin('guestprof as guestprof_main', function ($join) {
    //             $join->on('guestprof_main.guestcode', '=', 'gf_primary.guestprof')
    //                 ->where('guestprof_main.sno1', 1);
    //         })
    //         ->leftJoin('cities', function ($join) {
    //             $join->on('cities.city_code', '=', 'gf_exact.city')
    //                 ->where('cities.propertyid', $this->propertyid);
    //         })
    //         ->leftJoin('cities as cities_main', function ($join) {
    //             $join->on('cities_main.city_code', '=', 'gf_primary.city')
    //                 ->where('cities_main.propertyid', $this->propertyid);
    //         })
    //         ->leftJoin('subgroup as subcom', function ($join) {
    //             $join->on('subcom.sub_code', '=', 'gf_exact.company')
    //                 ->where('subcom.propertyid', $this->propertyid);
    //         })
    //         ->leftJoin('subgroup as subcom_main', function ($join) {
    //             $join->on('subcom_main.sub_code', '=', 'gf_primary.company')
    //                 ->where('subcom_main.propertyid', $this->propertyid);
    //         })
    //         ->leftJoin('subgroup as travelcom', function ($join) {
    //             $join->on('travelcom.sub_code', '=', 'gf_exact.travelagent')
    //                 ->where('travelcom.propertyid', $this->propertyid);
    //         })
    //         ->leftJoin('subgroup as travelcom_main', function ($join) {
    //             $join->on('travelcom_main.sub_code', '=', 'gf_primary.travelagent')
    //                 ->where('travelcom_main.propertyid', $this->propertyid);
    //         })
    //         ->leftJoin('paycharge', function ($join) {
    //             $join->on('paycharge.folionodocid', '=', 'roomocc.docid')
    //                 ->on('paycharge.sno1', '=', 'roomocc.sno1')
    //                 ->where('paycharge.propertyid', '=', $this->propertyid);
    //         })
    //         ->where('roomocc.propertyid', $this->propertyid)
    //         ->where(function ($query) {
    //             $query->where('roomocc.type', '!=', 'C')
    //                 ->orWhereNull('roomocc.type');
    //         })
    //         ->when($dateFrom !== null && $dateFrom !== '', function ($query) use ($dateFrom) {
    //             $query->whereDate('roomocc.chkindate', '>=', $dateFrom);
    //         })
    //         ->when($dateTo !== null && $dateTo !== '', function ($query) use ($dateTo) {
    //             $query->whereDate('roomocc.chkindate', '<=', $dateTo);
    //         })
    //         ->groupBy([
    //             'roomocc.docid',
    //             'roomocc.sno1'
    //         ]);

    //     return $query;
    // }

    protected function formatDate($value)
    {
        if (empty($value)) {
            return '';
        }

        try {
            return date('d-m-Y', strtotime($value));
        } catch (\Throwable $th) {
            return '';
        }
    }

    protected function formatTime($value)
    {
        if (empty($value)) {
            return '';
        }

        try {
            return date('H:i', strtotime($value));
        } catch (\Throwable $th) {
            return substr((string) $value, 0, 5);
        }
    }

    protected function buildActionButtons($docid, $sno1, $guestName = '', $folioNo = '')
    {
        $editUrl = url('updatewalkin?docid=' . $docid);
        $printUrl = url('printwalkin/' . $docid . '/' . $sno1);
        $deleteUrl = url('deletewalkin?docid=' . base64_encode($docid) . '&sno1=' . base64_encode($sno1));

        return '
        <div class="action-buttons">
            <a href="' . e($editUrl) . '" class="btn btn-success btn-sm"><i class="far fa-edit mr-1"></i>Edit</a>
            <a href="' . e($printUrl) . '" target="_blank" class="btn btn-primary btn-sm"><i class="fas fa-print mr-1"></i>Print</a>
            <a href="' . e($deleteUrl) . '" class="btn btn-danger btn-sm js-delete-checkin" data-guest-name="' . e($guestName) . '" data-folio-no="' . e($folioNo) . '"><i class="fas fa-trash mr-1"></i>Delete</a>
        </div>
    ';
    }

    public function updatecheckouttime(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'docid' => ['required'],
            'sno1' => ['required'],
            'new_checkout_time' => ['required', 'date_format:H:i'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => $validator->errors()->first()
            ], 422);
        }

        $docid = $request->input('docid');
        $sno1 = $request->input('sno1');
        $checkouttime = $request->input('new_checkout_time');

        $updated = RoomOcc::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->where('sno1', $sno1)
            ->update(['chkouttime' => $checkouttime]);

        if (!$updated) {
            return response()->json([
                'success' => false,
                'message' => 'Checkout time could not be updated'
            ], 404);
        }

        return response()->json([
            'success' => true,
            'message' => 'Checkout time updated successfully',
            'formatted_time' => $this->formatTime($checkouttime)
        ]);
    }

    public function pushroomkey($docid, $sno1, RoomKeyService $roomkeyservice)
    {
        $permission = revokeopen(141113);
        if (is_null($permission) || $permission->view == 0) {
            return response()->json([
                'success' => false,
                'message' => 'You have no permission to execute this functionality!'
            ], 403);
        }

        if (!fomparameter()->pushroomkey == 1) {
            return response()->json([
                'success' => false,
                'message' => 'Push Room Key functionality is disabled.'
            ], 403);
        }

        $roomocc = RoomOcc::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->where('sno1', $sno1)
            ->whereNull('type')
            ->first();

        if ($roomocc->ammendstay == 1) {

            RoomOcc::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->where('sno1', $sno1)
                ->whereNull('type')
                ->update(['ammendstay' => 0]);

            Roomkey::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->where('sno1', $sno1)
                ->delete();
        }

        $chkalreadypush = Roomkey::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->where('sno1', $sno1)
            ->where('status', 1)
            ->first();

        if ($chkalreadypush) {
            return response()->json([
                'success' => false,
                'message' => 'Room key has already been pushed for this check-in.'
            ], 400);
        }

        $result = $roomkeyservice->push($docid, $sno1);

        return response()->json([
            'success' => $result['success'],
            'message' => $result['message'],
            'status' => $result['status'] ?? 0,
            'reason' => $result['reason'] ?? null,
        ], $result['success'] ? 200 : 400);
    }

    public function pushroomkeydr($docid, $sno1, RoomKeyService $roomkeyservice)
    {
        $permission = revokeopen(141113);
        if (is_null($permission) || $permission->view == 0) {
            return response()->json([
                'success' => false,
                'message' => 'You have no permission to execute this functionality!'
            ], 403);
        }

        if (!fomparameter()->pushroomkey == 1) {
            return response()->json([
                'success' => false,
                'message' => 'Push Room Key functionality is disabled.'
            ], 403);
        }

        $roomocc = RoomOcc::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->where('sno1', $sno1)
            ->whereNull('type')
            ->first();

        if (!$roomocc) {
            return response()->json([
                'success' => false,
                'message' => 'Room occupancy not found'
            ], 404);
        }

        if ($roomocc->ammendstay == 1) {
            RoomOcc::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->where('sno1', $sno1)
                ->whereNull('type')
                ->update(['ammendstay' => 0]);

            Roomkey::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->where('sno1', $sno1)
                ->delete();
        }

        $chkalreadypush = Roomkey::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->where('sno1', $sno1)
            ->where('status', 1)
            ->first();

        if ($chkalreadypush) {
            return response()->json([
                'success' => false,
                'message' => 'Room key has already been pushed for this check-in.'
            ], 400);
        }

        $result = $roomkeyservice->push($docid, $sno1, null, 'DR');

        return response()->json([
            'success' => $result['success'],
            'message' => $result['message'],
            'status' => $result['status'] ?? 0,
            'reason' => $result['reason'] ?? null,
        ], $result['success'] ? 200 : 400);
    }

    public function pushroomtime(Request $request, $docid, $sno1, RoomKeyService $roomkeyservice)
    {
        if ($request->filled('departure_time')) {
            $request->merge([
                'departure_time' => substr($request->departure_time, 0, 5),
            ]);
        }

        $validator = Validator::make($request->all(), [
            'departure_time' => ['required', 'date_format:H:i'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => $validator->errors()->first(),
            ], 422);
        }


        if (!fomparameter()->pushroomkey == 1) {
            // return response()->json([
            //     'success' => false,
            //     'message' => 'Push Room Key functionality is disabled.',
            // ], 403);

            RoomOcc::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->where('sno1', $sno1)
                ->update(['deptime' => $request->input('departure_time') ?: now()->format('H:i')]);

            return response()->json([
                'success' => true,
                'message' => 'Departure time updated successfully.',
            ], 200);
        }

        $roomocc = RoomOcc::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->where('sno1', $sno1)
            ->whereNull('type')
            ->first();

        if (!$roomocc) {
            return response()->json([
                'success' => false,
                'message' => 'Room occupancy not found',
            ], 404);
        }

        if ($roomocc->ammendstay == 1) {
            RoomOcc::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->where('sno1', $sno1)
                ->whereNull('type')
                ->update(['ammendstay' => 0]);

            Roomkey::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->where('sno1', $sno1)
                ->delete();
        }

        $result = $roomkeyservice->push($docid, $sno1, $request->input('departure_time'));

        return response()->json([
            'success' => $result['success'],
            'message' => $result['message'],
            'status' => $result['status'] ?? 0,
            'reason' => $result['reason'] ?? null,
        ], $result['success'] ? 200 : 400);
    }
}
