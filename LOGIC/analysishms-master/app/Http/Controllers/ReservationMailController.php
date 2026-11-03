<?php

namespace App\Http\Controllers;

use App\Jobs\SendReservationConfirmationEmailJob;
use App\Models\MailSetting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ReservationMailController extends Controller
{
    protected $propertyid;

    protected $username;

    protected $ncurdate;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (! isset(Auth::user()->name)) {
                return redirect('/');
            }
            $this->username = Auth::user()->name;
            $prpid = Auth::user()->propertyid;
            $propertydata = DB::table('users')->where('propertyid', $prpid)->first();
            $this->propertyid = $propertydata ? $propertydata->propertyid : $prpid;
            $this->ncurdate = DB::table('enviro_general')
                ->where('propertyid', $this->propertyid)
                ->value('ncur');

            return $next($request);
        });
    }

    /**
     * Handle Reservation Confirmation Email Posting
     */
    public function resmailposting(Request $request)
    {
        $bookno = $request->input('bookno');
        $sno = $request->input('sno');

        if (empty($bookno) || empty($sno)) {
            return response()->json([
                'status' => false,
                'message' => 'Invalid booking details.',
            ], 422);
        }

        // 1. Fetch Guest Profile Email using GuestProf (guestcode) or BookingDocid or booking Email
        $bookingRow = DB::table('grpbookingdetails as gbd')
            ->leftJoin('guestprof as gp', function ($j) {
                $j->on('gp.guestcode', '=', 'gbd.GuestProf')
                    ->where('gp.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('guestprof as gpd', function ($j) {
                $j->on('gpd.docid', '=', 'gbd.BookingDocid')
                    ->where('gpd.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('booking as b', 'b.DocId', '=', 'gbd.BookingDocid')
            ->where('gbd.Property_ID', $this->propertyid)
            ->where('gbd.BookNo', $bookno)
            ->where('gbd.Sno', $sno)
            ->select([
                'gp.email_id as guest_email',
                'gpd.email_id as doc_guest_email',
                'b.Email as booking_email',
            ])
            ->first();

        if (! $bookingRow) {
            return response()->json([
                'status' => false,
                'message' => 'Reservation record not found.',
            ], 404);
        }

        $recipientEmail = trim((string) ($bookingRow->guest_email ?: ($bookingRow->doc_guest_email ?: $bookingRow->booking_email)));

        if (! filter_var($recipientEmail, FILTER_VALIDATE_EMAIL)) {
            return response()->json([
                'status' => false,
                'message' => 'Guest email address not found or invalid in Guest Profile.',
            ], 422);
        }

        // 2. Verify Property Owner SMTP settings
        $hasSmtp = MailSetting::where('propertyid', $this->propertyid)->where('activeyn', 1)->first();
        if (! $hasSmtp || empty($hasSmtp->host) || empty($hasSmtp->username) || empty($hasSmtp->password)) {
            return response()->json([
                'status' => false,
                'message' => 'Mail settings (SMTP / App Password) are not configured for Property ID '.$this->propertyid.'. Please configure SMTP in Mail Settings first.',
            ], 422);
        }

        // 3. Dispatch Background Queue Job for Instant and Isolated Delivery
        try {
            SendReservationConfirmationEmailJob::dispatch(
                $this->propertyid,
                $bookno,
                $sno,
                $recipientEmail,
                Auth::id()
            );

            return response()->json([
                'status' => true,
                'message' => 'Reservation Confirmation Letter sent successfully to '.$recipientEmail,
            ]);
        } catch (\Throwable $e) {
            return response()->json([
                'status' => false,
                'message' => 'Mail Sending Failed: '.$e->getMessage(),
            ], 500);
        }
    }
}
