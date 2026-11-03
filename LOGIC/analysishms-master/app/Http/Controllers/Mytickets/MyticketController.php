<?php

namespace App\Http\Controllers\Mytickets;

use App\Http\Controllers\Controller;
use App\Models\OrderRequest;
use App\Models\SupportTicket;
use App\Models\SupportTicketMessage;
use Illuminate\Http\Request;
use App\Services\TenantDatabase;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class MyticketController extends Controller
{
    public function myTickets(Request $request)
    {
        $status = $request->get('status', 'all');

        $query = SupportTicket::where('property_id', Auth::user()->propertyid)
            ->orderBy('created_at', 'desc');

        if ($status !== 'all') {
            $query->where('status', $status);
        }

        $tickets = $query->paginate(20);

        foreach ($tickets as $ticket) {
            $workCompleteMessage = SupportTicketMessage::where('support_ticket_id', $ticket->id)
                ->where('sender_role', 'support')
                ->where('message', 'like', '[WORK_COMPLETE]%')
                ->latest('id')
                ->first();

            $ticket->work_complete_marked_at = optional($workCompleteMessage?->created_at)->toDateTimeString();
            $ticket->is_work_complete_pending = ! empty($workCompleteMessage) && ! (bool) $ticket->is_user_satisfied;
        }

        return view('property.mytickets', compact('tickets'));
    }

    public function getMyTicketMessages(Request $request)
    {
        try {
            $request->validate([
                'ticket_id' => 'required|integer',
                'mark_read' => 'nullable|boolean',
            ]);

            $ticket = SupportTicket::where('id', $request->ticket_id)
                ->firstOrFail();

            if ((string) $ticket->property_id !== (string) Auth::user()->propertyid) {
                return response()->json([
                    'success' => false,
                    'message' => 'You do not have permission to view this ticket conversation.',
                ], 403);
            }

            $now = now();

            SupportTicketMessage::where('support_ticket_id', $ticket->id)
                ->where('sender_role', 'support')
                ->whereNull('delivered_at')
                ->update([
                    'delivered_at' => $now,
                    'updated_at' => $now,
                ]);

            if ($request->boolean('mark_read', true)) {
                SupportTicketMessage::where('support_ticket_id', $ticket->id)
                    ->where('sender_role', 'support')
                    ->whereNull('read_at')
                    ->update([
                        'read_at' => $now,
                        'updated_at' => $now,
                    ]);
            }

            $messages = SupportTicketMessage::where('support_ticket_id', $ticket->id)
                ->orderBy('id', 'asc')
                ->get()
                ->map(function ($message) {
                    $status = 'sent';
                    if (! empty($message->read_at)) {
                        $status = 'read';
                    } elseif (! empty($message->delivered_at)) {
                        $status = 'delivered';
                    }

                    $canEditUntil = optional($message->created_at)->copy()?->addMinutes(5);
                    $canEdit = (int) $message->sender_id === (int) Auth::id()
                        && $message->sender_role === 'user'
                        && $canEditUntil
                        && now()->lessThanOrEqualTo($canEditUntil);

                    $isEdited = false;
                    if (! empty($message->updated_at) && ! empty($message->created_at)) {
                        $isEdited = $message->updated_at->diffInSeconds($message->created_at) > 2;
                    }

                    return [
                        'id' => $message->id,
                        'sender_id' => $message->sender_id,
                        'sender_name' => $message->sender_name,
                        'sender_role' => $message->sender_role,
                        'message' => $message->message,
                        'is_work_complete_note' => str_starts_with((string) $message->message, '[WORK_COMPLETE]'),
                        'image_url' => ! empty($message->image_path) ? asset('storage/' . $message->image_path) : null,
                        'status' => $status,
                        'is_edited' => $isEdited,
                        'can_edit' => (bool) $canEdit,
                        'can_edit_until' => $canEditUntil ? $canEditUntil->toDateTimeString() : null,
                        'created_at' => optional($message->created_at)->toDateTimeString(),
                        'delivered_at' => optional($message->delivered_at)->toDateTimeString(),
                        'read_at' => optional($message->read_at)->toDateTimeString(),
                    ];
                });

            return response()->json([
                'success' => true,
                'messages' => $messages,
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error fetching ticket messages: ' . $e->getMessage(),
            ], 500);
        }
    }

    /**
     * Submit Support Ticket
     */
    public function submitTicket(Request $request)
    {
        try {
            $validated = $request->validate([
                'name' => 'required|string|max:255',
                'mobile_number' => 'required|string|max:15',
                'problem' => 'required|string|max:5000000',
            ]);

            $ticketNumber = SupportTicket::generateTicketNumber();

            // Find best available user for assignment
            $bestUser = SupportTicket::findBestAvailableUser();

            $ticketData = [
                'ticket_number' => $ticketNumber,
                'name' => $validated['name'],
                'mobile_number' => $validated['mobile_number'],
                'problem' => $validated['problem'],
                'status' => 'pending',
                'user_id' => Auth::id(),
                'property_id' => Auth::user()->propertyid ?? null,
            ];

            // Auto-assign if user available
            if ($bestUser) {
                $ticketData['assignment_status'] = 'assigned';
            } else {
                $ticketData['assignment_status'] = 'queued';
            }

            $ticket = SupportTicket::create($ticketData);

            if ($bestUser) {
                SupportTicket::assignTicketToUser($ticket, $bestUser, 'assigned');
            } else {
                SupportTicket::enqueueTicket($ticket->id, $ticket->property_id);
            }

            return response()->json([
                'success' => true,
                'message' => 'Ticket submitted successfully!',
                'ticket_number' => $ticketNumber,
                'ticket' => $ticket
            ]);
        } catch (ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $e->errors()
            ], 422);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error submitting ticket. Please try again.' . $e->getMessage()
            ], 500);
        }
    }

    public function getMyTicketNotifications(Request $request)
    {
        try {
            $propertyId = Auth::user()->propertyid;
            $staffDcode = Auth::user()->department ?? null;
            $today = Carbon::today();
            $yesterday = Carbon::yesterday();

            // ── Global toggle: department-wise notification routing on/off ──
            $deptNotificationEnabled = (bool) DB::table('enviro_form')
                ->where('propertyid', $propertyId)
                ->value('deptnotificationyn');

            $messages = SupportTicketMessage::from('support_ticket_messages as m')
                ->join('support_tickets as t', 't.id', '=', 'm.support_ticket_id')
                ->where('t.property_id', $propertyId)
                ->where('m.sender_role', 'support')
                ->whereNull('m.read_at')
                ->orderByDesc('m.created_at')
                ->limit(20)
                ->get([
                    't.id',
                    't.ticket_number',
                    'm.message',
                    'm.created_at',
                ])
                ->map(function ($row) {
                    $rawMessage = (string) ($row->message ?? 'New update received.');
                    $isStatusUpdate = str_starts_with($rawMessage, '[STATUS_UPDATE]')
                        || str_starts_with($rawMessage, '[WORK_COMPLETE]');

                    return [
                        'id' => $row->id,
                        'ticket_number' => $row->ticket_number,
                        'type' => $isStatusUpdate ? 'status' : 'sms',
                        'text' => preg_replace('/^\[(STATUS_UPDATE|WORK_COMPLETE)\]\s*/', '', $rawMessage),
                        'time' => Carbon::parse($row->created_at)->toDateTimeString(),
                    ];
                })
                ->values();

            $orderrequestsQuery = OrderRequest::select(
                'itemmast.Name as itemname',
                'order_requests.order_id',
                'order_requests.qty',
                'order_requests.roomno',
                'depart.name as outletname',
                'order_requests.created_at as entrytime',
                'order_requests.status as reqstatus',
                'roomocc.name as guestname',
                'guestprof.mobile_no as guestmobile',
                'depart.nature',
                'order_requests.baserestcode',
                'order_requests.rest_code',
                'maindepart.name as maindepartname'
            )
                ->leftJoin('itemmast', function ($join) {
                    $join->on('itemmast.Code', '=', 'order_requests.item')
                        ->on('itemmast.RestCode', '=', 'order_requests.rest_code');
                })
                ->leftJoin('roomocc', function ($join) use ($propertyId) {
                    $join->on('roomocc.roomno', '=', 'order_requests.roomno')
                        ->whereNull('roomocc.type')
                        ->where('roomocc.propertyid', $propertyId);
                })
                ->leftJoin('guestprof', function ($join) use ($propertyId) {
                    $join->on('guestprof.guestcode', '=', 'roomocc.guestprof')
                        ->where('guestprof.propertyid', $propertyId);
                })
                ->leftJoin('depart', function ($join) use ($propertyId) {
                    $join->on('depart.dcode', '=', 'order_requests.rest_code')
                        ->where('depart.propertyid', $propertyId);
                })
                ->leftJoin('depart as maindepart', function ($join) use ($propertyId) {
                    $join->on('maindepart.dcode', '=', 'order_requests.baserestcode')
                        ->where('maindepart.propertyid', $propertyId);
                })
                ->where('order_requests.propertyid', $propertyId)
                ->where(function ($q) use ($today) {
                    $q->where('order_requests.status', 'pending')
                        ->orWhereDate('order_requests.created_at', $today);
                });

            // ── Department-wise filter for food/KOT orders — sirf jab toggle ON ho ──
            if ($deptNotificationEnabled && !empty($staffDcode)) {
                $orderrequestsQuery->where('order_requests.rest_code', $staffDcode);
            }

            $orderrequests = $orderrequestsQuery
                ->groupBy(
                    'order_requests.order_id',
                    'order_requests.rest_code',
                    'order_requests.item',
                    'order_requests.status'
                )
                ->orderBy('order_requests.created_at', 'desc')
                ->get();

            $servicerequestsQuery = DB::table('servicerequesthdr as SH')
                ->leftJoin('servicerequesthdrdtl as SD', function ($join) use ($propertyId) {
                    $join->on(DB::raw('CONVERT(SD.requestno USING utf8mb4) COLLATE utf8mb4_general_ci'), '=', DB::raw('CONVERT(SH.requestno USING utf8mb4) COLLATE utf8mb4_general_ci'))
                        ->on(DB::raw('CONVERT(SD.roomno USING utf8mb4) COLLATE utf8mb4_general_ci'), '=', DB::raw('CONVERT(SH.roomno USING utf8mb4) COLLATE utf8mb4_general_ci'))
                        ->where('SD.propertyid', $propertyId);
                })
                ->leftJoin('roomocc as R', function ($join) use ($propertyId) {
                    $join->on(DB::raw('CONVERT(R.roomno USING utf8mb4) COLLATE utf8mb4_general_ci'), '=', DB::raw('CONVERT(SH.roomno USING utf8mb4) COLLATE utf8mb4_general_ci'))
                        ->whereNull('R.type')
                        ->where('R.propertyid', $propertyId);
                })
                ->leftJoin('guestprof as G', function ($join) use ($propertyId) {
                    $join->on(DB::raw('CONVERT(G.guestcode USING utf8mb4) COLLATE utf8mb4_general_ci'), '=', DB::raw('CONVERT(R.guestprof USING utf8mb4) COLLATE utf8mb4_general_ci'))
                        ->where('G.propertyid', $propertyId);
                })
                ->where('SH.propertyid', $propertyId)
                ->where(function ($q) use ($yesterday) {
                    $q->whereIn('SH.status', ['Pending', 'In Progress'])
                        ->orWhereDate('SH.requestdate', '>=', $yesterday);
                });

            // ── Department-wise filter for service requests — sirf jab toggle ON ho ──
            if ($deptNotificationEnabled && !empty($staffDcode)) {
                $servicerequestsQuery->where('SH.dcode', $staffDcode);
            }

            $servicerequestsRaw = $servicerequestsQuery
                ->select(
                    'SH.requestno',
                    'SH.roomno',
                    'SH.requestdate',
                    'SH.requesttime',
                    'SH.remarks',
                    'SH.requestedfrom',
                    'SH.status as reqstatus',
                    'SH.dcode',
                    'SD.sno',
                    'SD.itemname',
                    'SD.requesttype',
                    'SD.qty',
                    'R.name as guestname',
                    'G.mobile_no as guestmobile'
                )
                ->orderBy('SH.requestdate', 'desc')
                ->orderBy('SH.requesttime', 'desc')
                ->get();

            $servicerequests = $servicerequestsRaw->groupBy('requestno')->map(function ($rows) {
                $first = $rows->first();
                return [
                    'requestno'     => $first->requestno,
                    'roomno'        => $first->roomno,
                    'requestdate'   => $first->requestdate,
                    'requesttime'   => $first->requesttime,
                    'remarks'       => $first->remarks,
                    'requestedfrom' => $first->requestedfrom,
                    'reqstatus'     => $first->reqstatus,
                    'dcode'         => $first->dcode,
                    'guestname'     => $first->guestname,
                    'guestmobile'   => $first->guestmobile,
                    'requesttype'   => $first->requesttype,
                    'items'         => $rows->map(function ($r) {
                        return [
                            'itemname' => $r->itemname,
                            'sno'      => $r->sno,
                            'qty'      => $r->qty,
                        ];
                    })->values(),
                ];
            })->sortByDesc(function ($item) {
                return $item['requestdate'] . ' ' . $item['requesttime'];
            })->values();

            return response()->json([
                'success' => true,
                'count' => $messages->count(),
                'tickets' => $messages,
                'servertime' => now()->toDateTimeString(),
                'countOrderRequests' => $orderrequests->count(),
                'orderrequests' => $orderrequests,
                'countServiceRequests' => $servicerequests->count(),
                'servicerequests' => $servicerequests,
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error fetching ticket notifications ' . $e->getMessage() . ' On Line: ' . $e->getLine(),
            ], 500);
        }
    }

    public function sendMyTicketMessage(Request $request)
    {
        try {
            $request->validate([
                'ticket_id' => 'required',
                'message' => 'nullable|string|max:5000',
                'image' => 'nullable|image|max:5120',
            ]);

            if (!$request->filled('message') && !$request->hasFile('image')) {
                return response()->json([
                    'success' => false,
                    'message' => 'Message text or image is required.'
                ], 422);
            }

            $ticket = SupportTicket::findOrFail($request->ticket_id);

            if ((string) $ticket->property_id !== (string) Auth::user()->propertyid) {
                return response()->json([
                    'success' => false,
                    'message' => 'You do not have permission to comment on this ticket.',
                ], 403);
            }

            $imagePath = null;
            if ($request->hasFile('image')) {
                $imagePath = $request->file('image')->store('support-ticket-chat', 'public');
            }

            $message = SupportTicketMessage::create([
                'support_ticket_id' => $ticket->id,
                'sender_id' => Auth::id(),
                'sender_name' => Auth::user()->name ?? null,
                'sender_role' => 'user',
                'message' => $request->message,
                'image_path' => $imagePath,
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Message sent successfully.',
                'data' => [
                    'id' => $message->id,
                    'sender_id' => $message->sender_id,
                    'sender_name' => $message->sender_name,
                    'sender_role' => $message->sender_role,
                    'message' => $message->message,
                    'image_url' => ! empty($message->image_path) ? asset('storage/' . $message->image_path) : null,
                    'status' => 'sent',
                    'is_work_complete_note' => false,
                    'is_edited' => false,
                    'can_edit' => true,
                    'can_edit_until' => optional($message->created_at)->copy()?->addMinutes(5)?->toDateTimeString(),
                    'created_at' => optional($message->created_at)->toDateTimeString(),
                    'delivered_at' => null,
                    'read_at' => null,
                ]
            ]);
        } catch (ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed.',
                'errors' => $e->errors(),
            ], 422);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error sending ticket message: ' . $e->getMessage(),
            ], 500);
        }
    }
}
