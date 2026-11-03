<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Kot;
use App\Http\Controllers\Controller;
use App\Models\Depart;
use App\Models\Depart1;
use App\Models\EnviroPos;
use App\Models\ItemMast;
use App\Models\ItemRate;
use App\Models\OrderRequest;
use App\Models\RoomMast;
use App\Models\ServerMast;
use App\Models\VoucherPrefix;
use App\Models\VoucherType;
use App\Services\TenantDatabase;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class OrderController extends Controller
{
    public function placeorder(Request $request)
    {
        $request->validate([
            'propertyid' => 'required',
            'rest_code' => 'required',
            'items' => 'required|array|min:1',
            'items.*.item' => 'required|string',
            'items.*.itemcode' => 'required|int',
            'items.*.qty' => 'required|min:1',
            'items.*.rest_code' => 'required|string',
        ]);

        DB::purge('tenant');
        TenantDatabase::connect((int) $request->propertyid);
        DB::setDefaultConnection('tenant');
        try {
            DB::beginTransaction();
            if ($request->rest_code == "RS$request->propertyid") {
                $restcode = 'ROOM';
            } else {
                $restcode = $request->rest_code;
            }

            $roommast = RoomMast::where('propertyid', $request->propertyid)
                ->where('rcode', $request->roomno)
                ->where('rest_code', $restcode)
                ->first();

            $roomno = $request->roomno ?? '';
            $roomtype = $roommast->type ?? '';
            $waiter = $roommast->waiter ?? '';

            $propertyid = $request->propertyid;
            $prefix = "ORDER{$propertyid}_";

            do {
                $maxOrder = OrderRequest::where('propertyid', $propertyid)
                    ->where('order_id', 'like', $prefix . '%')
                    ->selectRaw("MAX(CAST(SUBSTRING(order_id, ?) AS UNSIGNED)) as max_seq", [strlen($prefix) + 1])
                    ->value('max_seq');

                $nextSeq = ($maxOrder ?? 0) + 1;
                $orderId = $prefix . $nextSeq;

                $exists = OrderRequest::where('order_id', $orderId)->exists();
            } while ($exists);

            foreach ($request->items as $item) {
                OrderRequest::create([
                    'order_id' => $orderId,
                    'propertyid' => $propertyid,
                    'rest_code' => $item['rest_code'],
                    'baserestcode' => $request->rest_code,
                    'roomno' => $roomno,
                    'roomtype' => $roomtype,
                    'item' => $item['itemcode'],
                    'qty' => $item['qty'],
                    'waiter' => $waiter,
                ]);
            }

            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Order placed successfully',
            ]);
        } catch (\Exception $e) {
            DB::rollBack();

            return response()->json([
                'success' => false,
                'message' => 'Failed to place order',
            ], 500);
        }
    }

    public function acceptOrder(Request $request)
    {
        $request->validate(['order_id' => 'required|string']);

        try {
            DB::beginTransaction();

            $propertyid = Auth::user()->propertyid;
            $orderId = $request->order_id;

            $orderItems = OrderRequest::where('order_id', $orderId)
                ->where('propertyid', $propertyid)
                ->where('status', 'pending')
                ->get();

            if ($orderItems->isEmpty()) {
                return response()->json(['status' => 'error', 'message' => 'No pending items found for this order.']);
            }

            $roomno = $orderItems->first()->roomno;
            $roomtype = $orderItems->first()->roomtype;
            $ncurdate = DB::table('enviro_general')->where('propertyid', $propertyid)->value('ncur');
            $roomoccdata = RoomMast::where('propertyid', $propertyid)->where('rcode', $roomno)->first();
            $waiter = ServerMast::where('propertyid', $propertyid)->where('name', 'Self')->first();

            if (!$waiter) {
                return response()->json(['status' => 'error', 'message' => 'Self waiter not configured.']);
            }

            $baseRestCode = $orderItems->first()->baserestcode;
            $baseDepart = Depart::where('propertyid', $propertyid)->where('dcode', $baseRestCode)->first();

            if (!$baseDepart) {
                return response()->json(['status' => 'error', 'message' => 'Outlet not found.']);
            }

            $associatedrestcode = Depart1::where('propertyid', $propertyid)
                ->where('departcode', $baseDepart->dcode)
                ->pluck('associatedrestcode');

            $groupedItems = [];
            $generatedDocIDs = [];

            foreach ($orderItems as $orderItem) {
                $itemmast = ItemMast::where('Code', $orderItem->item)
                    ->where('Property_ID', $propertyid)
                    ->where('RestCode', $orderItem->rest_code)
                    ->first();

                if (!$itemmast) {
                    return response()->json([
                        'status' => 'error',
                        'message' => 'Item master not found for item ' . $orderItem->item . ' and outlet ' . $orderItem->rest_code . '.'
                    ]);
                }

                $effectiveRestCode = $associatedrestcode->isNotEmpty() ? $orderItem->rest_code : $baseRestCode;
                $groupedItems[$effectiveRestCode][] = $orderItem;
            }

            foreach ($groupedItems as $restCode => $items) {
                $depart = Depart::where('propertyid', $propertyid)->where('dcode', $restCode)->first();

                if (!$depart) {
                    return response()->json([
                        'status' => 'error',
                        'message' => 'Outlet not found for rest code ' . $restCode . '.'
                    ]);
                }

                $desc = $depart->short_name . ' KOT Entry';
                $vtype = VoucherType::where('propertyid', $propertyid)
                    ->where('restcode', $restCode)
                    ->where('description', $desc)
                    ->value('v_type');

                if (!$vtype) {
                    return response()->json([
                        'status' => 'error',
                        'message' => 'Voucher type not configured for outlet ' . $restCode . '.'
                    ]);
                }

                $chkvpf = VoucherPrefix::where('propertyid', $propertyid)
                    ->where('v_type', $vtype)
                    ->whereDate('date_from', '<=', $ncurdate)
                    ->whereDate('date_to', '>=', $ncurdate)
                    ->first();

                if (!$chkvpf) {
                    return response()->json([
                        'status' => 'error',
                        'message' => 'Voucher prefix not configured for outlet ' . $restCode . ' on current date.'
                    ]);
                }

                $vprefix = $chkvpf->prefix;
                $vno = $chkvpf->start_srl_no + 1;
                $docid = $propertyid . $vtype . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $vno;
                $generatedDocIDs[] = $docid;
                $sno = 1;

                foreach ($items as $orderItem) {
                    $itemrate = ItemRate::where('ItemCode', $orderItem->item)
                        ->where('Property_ID', $propertyid)
                        ->where('RestCode', $restCode)
                        ->where('AppDate', '<=', $ncurdate)
                        ->orderBy('AppDate', 'desc')
                        ->first();

                    $rate = $itemrate->Rate ?? 0;
                    $qty = $orderItem->qty;

                    $kotdata = [
                        'propertyid' => $propertyid,
                        'docid' => $docid,
                        'sno' => $sno++,
                        'pax' => 1,
                        'vno' => $vno,
                        'itemrestcode' => $restCode,
                        'item' => $orderItem->item,
                        'description' => '',
                        'qty' => $qty,
                        'rate' => $rate,
                        'amount' => $qty * $rate,
                        'voidyn' => 'N',
                        'vtype' => $vtype,
                        'vdate' => $ncurdate,
                        'vtime' => date('H:i:s'),
                        'vprefix' => $vprefix,
                        'roomcat' => $roomoccdata->room_cat ?? '',
                        'restcode' => $restCode,
                        'waiter' => $waiter->scode,
                        'pending' => 'Y',
                        'delflag' => '',
                        'contradocid' => '',
                        'contrsno' => '',
                        'reasons' => '',
                        'ncreason' => '',
                        'remarks' => 'Order Request: ' . $orderId,
                        'roomtype' => $roomtype,
                        'roomno' => $roomno,
                        'created_at' => now(),
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'a',
                        'nckot' => 'N',
                        'nctype' => '',
                        'freesno' => '',
                        'printed' => '',
                        'schemecode' => '',
                        'tokenno' => '',
                        'printflag' => '',
                    ];

                    DB::table('kot')->insert($kotdata);
                }

                VoucherPrefix::where('propertyid', $propertyid)
                    ->where('v_type', $vtype)
                    ->where('prefix', $vprefix)
                    ->increment('start_srl_no');
            }

            $uniqueDocIDs = array_values(array_unique($generatedDocIDs));

            if (count($uniqueDocIDs) > 1) {
                $merged = implode(',', $uniqueDocIDs);

                DB::table('kot')
                    ->where('propertyid', $propertyid)
                    ->whereIn('docid', $uniqueDocIDs)
                    ->update(['mergedwith' => $merged]);
            }

            OrderRequest::where('order_id', $orderId)
                ->where('propertyid', $propertyid)
                ->update(['status' => 'accepted']);

            DB::commit();

            $enviropos = EnviroPos::where('propertyid', $propertyid)->first();
            if ($enviropos && $enviropos->printkotautoqr == 'Y') {
                app(Kot::class)->sendprintdata(new Request([
                    'docid' => $uniqueDocIDs,
                    'printedit' => 'N',
                ]));
            }

            return response()->json([
                'status' => 'success',
                'message' => 'Order accepted and KOT created.',
                'docid' => $uniqueDocIDs
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json([
                'status' => 'error',
                'message' => 'Failed to accept order: ' . $e->getMessage()
            ], 500);
        }
    }

    public function rejectOrder(Request $request)
    {
        $request->validate(['order_id' => 'required|string']);

        try {
            $propertyid = Auth::user()->propertyid;

            $updated = OrderRequest::where('order_id', $request->order_id)
                ->where('propertyid', $propertyid)
                ->where('status', 'pending')
                ->update(['status' => 'rejected']);

            if ($updated === 0) {
                return response()->json(['status' => 'error', 'message' => 'No pending items found for this order.']);
            }

            return response()->json(['status' => 'success', 'message' => 'Order rejected successfully.']);
        } catch (\Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'Failed to reject order: ' . $e->getMessage()
            ], 500);
        }
    }
}
