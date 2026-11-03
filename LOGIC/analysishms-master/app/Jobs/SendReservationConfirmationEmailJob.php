<?php

namespace App\Jobs;

use App\Mail\ReservationConfirmation;
use App\Models\EnviroFom;
use App\Models\GrpBookinDetail;
use App\Models\Paycharge;
use App\Services\PropertyMailConfigurator;
use App\Services\TenantDatabase;
use Exception;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;

class SendReservationConfirmationEmailJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $propertyid;

    public $bookno;

    public $sno;

    public $recipientEmail;

    public $userId;

    public $tries = 3;

    public $timeout = 60;

    public $backoff = [10, 30];

    public function __construct($propertyid, $bookno, $sno, $recipientEmail, $userId = null)
    {
        $this->propertyid = $propertyid;
        $this->bookno = $bookno;
        $this->sno = $sno;
        $this->recipientEmail = $recipientEmail;
        $this->userId = $userId;
    }

    public function handle(): void
    {
        try {
            // 1. Dynamic Tenant Database connection for this property
            TenantDatabase::connect($this->propertyid);

            // 2. Dynamic Property Owner SMTP configuration
            $from = PropertyMailConfigurator::apply($this->propertyid);
            if (! $from) {
                Log::error("Queue Reservation Mail: No active SMTP settings for property: {$this->propertyid}");

                return;
            }

            // 3. Fetch Reservation Data along with Guest Profile
            $data = GrpBookinDetail::select(
                'grpbookingdetails.*',
                'paycharge.amtcr',
                'paycharge.vdate',
                'paycharge.foliono',
                DB::raw("CONCAT(COALESCE(guestprof.add1, ''), ' ', COALESCE(guestprof.add2, ''), ' ', COALESCE(guestprof.city_name)) as guestadd"),
                'guestprof.state_name',
                's.name as companyname',
                's.gstin as companygstin',
                't.name as travelname',
                't.gstin as travelgstin',
                'booking.ResStatus',
                'booking.Email as booking_email',
                'plan_mast.name as planname'
            )
                ->leftJoin('paycharge', function ($query) {
                    $query->on('paycharge.refdocid', '=', 'grpbookingdetails.BookingDocid')
                        ->on('paycharge.sno1', '=', 'grpbookingdetails.Sno');
                })
                ->leftJoin('guestprof', function ($query) {
                    $query->on('guestprof.guestcode', '=', 'grpbookingdetails.GuestProf')
                        ->where('guestprof.propertyid', '=', $this->propertyid);
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
                ->where('grpbookingdetails.Property_ID', $this->propertyid)
                ->where('grpbookingdetails.BookNo', $this->bookno)
                ->where('grpbookingdetails.Sno', $this->sno)
                ->first();

            if (! $data) {
                Log::warning("Queue Reservation Mail: Booking data not found for BookNo: {$this->bookno}, Sno: {$this->sno}");

                return;
            }

            $companydata = DB::table('company')->where('propertyid', $this->propertyid)->first();
            $rooms = GrpBookinDetail::select('grpbookingdetails.*', 'room_cat.name as roomcatname')
                ->leftJoin('room_cat', 'room_cat.cat_code', '=', 'grpbookingdetails.RoomCat')
                ->where('grpbookingdetails.Property_ID', $this->propertyid)
                ->where('grpbookingdetails.BookNo', $this->bookno)
                ->get();

            $advance = Paycharge::where('propertyid', $this->propertyid)
                ->where('sno', 1)
                ->where('sno1', $data->Sno)
                ->where('refdocid', $data->BookingDocid)
                ->get();

            $enviro = EnviroFom::where('propertyid', $this->propertyid)->first();
            $curdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur') ?? date('Y-m-d');

            // 4. Send email via Property Owner's isolated dynamic SMTP
            $mailable = (new ReservationConfirmation($companydata, $data, $rooms, $advance, $curdate, $enviro));
            if (! empty($from['from_address'])) {
                $mailable->from($from['from_address'], $from['from_name'] ?? '');
            }

            Mail::mailer('propertymail')
                ->to($this->recipientEmail)
                ->send($mailable);

            Log::info("Queue Reservation Mail: Sent successfully to {$this->recipientEmail} (Property: {$this->propertyid}, BookNo: {$this->bookno})");
        } catch (Exception $e) {
            Log::error('Queue Reservation Mail Failed: '.$e->getMessage(), [
                'propertyid' => $this->propertyid,
                'bookno' => $this->bookno,
                'sno' => $this->sno,
                'recipientEmail' => $this->recipientEmail,
            ]);
            throw $e;
        }
    }
}
