<?php

namespace App\Http\Controllers\Frontend;

use App\Helpers\WhatsappSend;
use App\Http\Controllers\Controller;
use App\Models\Bookings;
use App\Models\BookinPlanDetail;
use App\Models\Companyreg;
use App\Models\EnviroFom;
use App\Models\EnviroGeneral;
use App\Models\EnviroWhatsapp;
use App\Models\GrpBookinDetail;
use App\Models\GuestProf;
use App\Models\PlanDetail;
use App\Models\PlanMast;
use App\Models\RateList;
use App\Models\VoucherPrefix;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HotelBookingController extends Controller
{
    public function index()
    {
        return view('frontend.hotels.booking');
    }

    public function store(Request $request)
    {
        try {
            DB::beginTransaction();
            $request->validate([
                'propertyid' => 'required|exists:company,propertyid',
                'checkin_date' => 'required|date',
                'checkout_date' => 'required|date|after:checkin_date',
                'total_rooms' => 'required|string|max:255',
                'cat_code' => 'required|max:255',
                'plan_code' => 'nullable|string|max:255',
                'firstname' => 'required|string|max:255',
                'lastname' => 'required|string|max:255',
                'email' => 'required|email|max:255',
                'mobile' => 'required|string|max:20',
                'address' => 'nullable|string|max:500',
            ]);


            $occtype = [
                'singleuser' => 1,
                'multiuser' => 2,
                'extrauser' => 3
            ];

            $total_adult = $request->total_adult;
            $total_child = $request->total_child;

            if ($total_adult <= $occtype['singleuser']) {
                $type = 'singleuser';
            } elseif ($total_adult <= $occtype['multiuser']) {
                $type = 'multiuser';
            } else {
                $type = 'extrauser';
            }


            $vtype = 'RES';
            $propertyid = $request->propertyid;

            $enviro = EnviroGeneral::where('propertyid', $propertyid)->first();
            $envirofom = EnviroFom::where('propertyid', $propertyid)->first();

            $chkvpf = VoucherPrefix::where('propertyid', $propertyid)
                ->where('v_type', $vtype)
                ->whereDate('date_from', '<=', $enviro->ncur)
                ->whereDate('date_to', '>=', $enviro->ncur)
                ->first();

            $start_srl_no = $chkvpf->start_srl_no + 1;
            $vprefixyr = $chkvpf->prefix;

            $maxguestprof = GuestProf::where('propertyid', $propertyid)->max('guestcode');
            if ($maxguestprof == null) {
                $guestprof = $propertyid . 10001;
            } else {
                $guestprof = $propertyid . substr($maxguestprof, strlen($propertyid)) + 1;
            }

            $docid = $propertyid . $vtype . '‎ ‎ ' . $vprefixyr . '‎ ‎ ‎ ‎ ' . $start_srl_no;
            $count = $request->total_rooms;

            $cid = $request->cat_code;
            $plancode = $request->plan_code;
            $checkindate = $request->checkin_date;
            $checkoutdate = $request->checkout_date;
            $firstname = $request->firstname;
            $lastname = $request->lastname;
            $email = $request->email;
            $mobile = $request->mobile;
            $address = $request->address;

            $amount = 0.00;
            $plandata = null;
            if (empty($plancode)) {
                $ratelist = RateList::where('propertyid', $propertyid)->where('room_cat', $cid)->where('occtype', $type)->first();
                $amount = $ratelist->rate2;
            } else {
                $plandata = PlanMast::where('propertyid', $propertyid)->where('pcode', $plancode)->first();
                $amount = $plandata->package_amount;
            }

            $roomcattaxstructure = DB::table('room_cat')->where('propertyid', $propertyid)->where('cat_code', $request->cat_code)->value('rev_code');
            $rtaxstru = DB::table('revmast')->where('propertyid', $propertyid)->where('rev_code', $roomcattaxstructure)->value('tax_stru');

            for ($i = 1; $i <= $count; $i++) {

                $emptrooms = '';
                if ($envirofom->autofillroomres == 'Y') {
                    $rooms = DB::table('room_mast as rm')
                        ->select('rm.rcode', 'rm.room_cat')
                        ->where('rm.propertyid', $propertyid)
                        ->where('rm.room_cat', $cid)
                        ->whereNotIn('rm.rcode', function ($query) use ($propertyid, $cid, $checkindate, $checkoutdate) {
                            $query->select('ro.roomno')
                                ->from('roomocc as ro')
                                ->where('ro.propertyid', $propertyid)
                                ->whereNull('ro.type')
                                ->where('ro.roomcat', $cid)
                                ->where('ro.chkindate', '<', $checkoutdate)
                                ->where('ro.depdate', '>=', $checkindate);
                        })
                        ->whereNotIn('rm.rcode', function ($query) use ($propertyid, $cid, $checkindate, $checkoutdate) {
                            $query->select('gb.RoomNo')
                                ->from('grpbookingdetails as gb')
                                ->where('gb.Property_ID', $propertyid)
                                ->where('gb.RoomCat', $cid)
                                ->where('gb.ArrDate', '<', $checkoutdate)
                                ->where('gb.DepDate', '>', $checkindate)
                                ->where('gb.ContraDocId', '')
                                ->where('gb.chkoutyn', 'N')
                                ->where('gb.Cancel', 'N')
                                ->where('gb.RoomNo', '!=', 0);
                        })
                        ->whereNotIn('rm.rcode', function ($query) use ($propertyid, $checkindate, $checkoutdate) {
                            $query->select('rb.roomcode')
                                ->from('roomblockout as rb')
                                ->where('rb.propertyid', $propertyid)
                                ->where('rb.fromdate', '<', $checkoutdate)
                                ->where('rb.todate', '>', $checkindate)
                                ->where('rb.type', 'O');
                        })
                        ->first();
                    $emptrooms = $rooms->rcode ?? '';

                    if ((empty($emptrooms) || $emptrooms == '') && $envirofom->emptyroomyn == 'N') {
                        DB::rollBack();
                        return response()->json([
                            'success' => false,
                            'message' => 'Empty Rooms cannot be assigned.',
                        ]);
                    }
                }

                $grpbookingdetails = new GrpBookinDetail();

                $grpbookingdetails->Property_ID = $propertyid;
                $grpbookingdetails->BookingDocid = $docid;
                $grpbookingdetails->Sno = $i;
                $grpbookingdetails->BookNo = $start_srl_no;
                $grpbookingdetails->RoomDet = '1';
                $grpbookingdetails->CancelUName = '';
                $grpbookingdetails->GuestProf = $guestprof;
                $grpbookingdetails->GuestName = $firstname . ' ' . $lastname;
                $grpbookingdetails->RoomCat = $cid;
                $grpbookingdetails->Plan_Code = $plancode ?? '';
                $grpbookingdetails->ServiceChrg = 'No';
                $grpbookingdetails->RoomNo = $emptrooms;
                $grpbookingdetails->RateCode = 2;
                $grpbookingdetails->NoDays = (strtotime($checkoutdate) - strtotime($checkindate)) / (60 * 60 * 24);
                $grpbookingdetails->DepDate = $checkoutdate;
                $grpbookingdetails->DepTime = $envirofom->checkout;
                $grpbookingdetails->RoomTaxStru = $rtaxstru ?? '';
                $grpbookingdetails->CancelDate = null;
                $grpbookingdetails->Cancel = 'N';
                $grpbookingdetails->IncTax = 'Y';
                $grpbookingdetails->Tarrif = $amount;
                $grpbookingdetails->ArrDate = $checkindate;
                $grpbookingdetails->ArrTime = $envirofom->checkintime;
                $grpbookingdetails->Adults = $total_adult;
                $grpbookingdetails->Childs = $total_child;
                $grpbookingdetails->U_Name = 'self';
                $grpbookingdetails->U_AE = 'a';
                $grpbookingdetails->ContraDocId = '';
                $grpbookingdetails->ContraSno = '';

                $grpbookingdetails->save();
            }

            if (!empty($plancode)) {
                $plandetail = new BookinPlanDetail();

                $plandetail->propertyid = $propertyid;
                $plandetail->foliono = $start_srl_no;
                $plandetail->docid = $docid;
                $plandetail->sno = 1;
                $plandetail->sno1 = $i;
                $plandetail->roomno = $emptrooms;
                $plandetail->room_rate_before_tax = $plandata->room_rate;
                $plandetail->total_rate = $plandata->total;
                $plandetail->pcode = $plancode;
                $plandetail->noofdays = (strtotime($checkoutdate) - strtotime($checkindate)) / (60 * 60 * 24);
                $plandetail->rev_code = $plandata->room_tax_stru ?? '';
                $plandetail->fixrate = $plandata->fixed_rate ?? 0.00;
                $plandetail->planper = $plandata->room_per;
                $plandetail->amount = $plandata->total;
                $plandetail->netplanamt = $amount;
                $plandetail->taxinc = $plandata->rrinc_tax;
                $plandetail->taxstru = $plandata->room_tax_stru ?? '';
                $plandetail->u_name = 'self';
                $plandetail->u_ae = 'a';

                $plandetail->save();
            }

            $booking = new Bookings();

            $booking->Property_ID = $propertyid;
            $booking->DocId = $docid;
            $booking->GuestName = $firstname . ' ' . $lastname;
            $booking->BookNo = $start_srl_no;
            $booking->Vtype = $vtype;
            $booking->advdeposit = '';
            $booking->Vprefix = $vprefixyr;
            $booking->vdate = $enviro->ncur;
            $booking->GuestProf = $guestprof;
            $booking->vehiclenum = '';
            $booking->TravelAgency = '';
            $booking->purpofvisit = '';
            $booking->BussSource = '5' . $propertyid;
            $booking->MarketSeg = '';
            $booking->RRServiceChrg = '';
            $booking->BookedBy = '';
            $booking->ResStatus = 'Booked';
            $booking->ResMode = '';
            $booking->TravelMode = '';
            $booking->CancelDate = null;
            $booking->Cancel = 'N';
            $booking->Company = '';
            $booking->ArrFrom = $address ?? '';
            $booking->Destination = '';
            $booking->U_Name = 'self';
            $booking->U_AE = 'a';
            $booking->NoofRooms = $count;
            $booking->Remarks = '';
            $booking->pickupdrop = '';
            $booking->Authorization = '';
            $booking->Verified = '';
            $booking->CancelUName = '';
            $booking->MobNo = $mobile;
            $booking->Email = $email;
            $booking->RRTaxInc = 'Y';
            $booking->RDisc = '';
            $booking->RSDisc = '';
            $booking->AdvDueDate = null;
            $booking->RefCode = '';
            $booking->RefBookNo =  '';

            $booking->save();

            $guestprofModel = new GuestProf();

            $guestprofModel->propertyid = $propertyid;
            $guestprofModel->docid = $docid;
            $guestprofModel->folio_no = $start_srl_no;
            $guestprofModel->u_name = 'self';
            $guestprofModel->u_ae = 'a';
            $guestprofModel->complimentry = '';
            $guestprofModel->guestcode = $guestprof;
            $guestprofModel->name = $firstname . ' ' . $lastname;
            $guestprofModel->state_code = '';
            $guestprofModel->country_code = '';
            $guestprofModel->add1 = $address;
            $guestprofModel->add2 = '';
            $guestprofModel->city = '';
            $guestprofModel->type = '';
            $guestprofModel->mobile_no = $mobile;
            $guestprofModel->email_id = $email;
            $guestprofModel->nationality = '';
            $guestprofModel->anniversary = '';
            $guestprofModel->guest_status = '';
            $guestprofModel->comments1 = '';
            $guestprofModel->comments2 = '';
            $guestprofModel->comments3 = '';
            $guestprofModel->city_name = '';
            $guestprofModel->state_name = '';
            $guestprofModel->country_name = '';
            $guestprofModel->gender = '';
            $guestprofModel->marital_status = '';
            $guestprofModel->zip_code = '';
            $guestprofModel->con_prefix = $request->title;
            $guestprofModel->dob = null;
            $guestprofModel->age = '';
            $guestprofModel->pic_path = '';
            $guestprofModel->id_proof = '';
            $guestprofModel->idproof_no = '';
            $guestprofModel->issuingcitycode = '';
            $guestprofModel->issuingcityname = '';
            $guestprofModel->issuingcountrycode = '';
            $guestprofModel->issuingcountryname = '';
            $guestprofModel->expiryDate = '';
            $guestprofModel->paymentMethod = '';
            $guestprofModel->idpic_path = '';
            $guestprofModel->m_prof = $guestprof;
            $guestprofModel->father_name = '';
            $guestprofModel->fom = 1;
            $guestprofModel->pos = 0;

            $guestprofModel->save();

            VoucherPrefix::where('propertyid', $propertyid)
                ->where('v_type', $vtype)
                ->where('prefix', $vprefixyr)
                ->increment('start_srl_no');

            DB::commit();

            if (!is_null(whatsappparameter()) && whatsappparameter()->checkyn == 'Y') {
                $company = Companyreg::where('propertyid', $propertyid)->first();
                $msglast = "{$company->comp_name} {$company->mobile}";
                $selfreservationsend = new WhatsappSend();
                $selfreservationsend->selfreservationsend($firstname, $company->comp_name, $request->checkin_date, $envirofom->checkintime, $start_srl_no, $mobile, $msglast, $propertyid);
            }

            $reservation = Bookings::where('Property_ID', $propertyid)
                ->where('DocId', $docid)
                ->with('bookingdetails')
                ->first();

            return response()->json([ 
                'success' => true,
                'message' => 'Booking  Submitted Successfully',
                'reservation' => $reservation,
                'booking_id' => $docid
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => $e->getMessage() . 'On Line: ' . $e->getLine(),
            ], 500);
        }
    }

    public function downloadVoucher($propertyid, $docid)
    {
        try {
            $booking = Bookings::where('docid', $docid)
                ->with(['bookingdetails', 'guestProfile'])
                ->first();

            if (!$booking) {
                return response()->json([
                    'success' => false,
                    'message' => 'Booking not found'
                ], 404);
            }

            $company = DB::table('company')
                ->where('propertyid', $booking->Property_ID)
                ->first();

            $bookingDetails = GrpBookinDetail::where('BookingDocid', $docid)->get();

            $guestProfile = GuestProf::where('docid', $docid)->first();

            $planDetails = null;
            if ($bookingDetails->isNotEmpty() && !empty($bookingDetails->first()->Plan_Code)) {
                $planDetails = PlanMast::where('propertyid', $booking->Property_ID)
                    ->where('pcode', $bookingDetails->first()->Plan_Code)
                    ->first();
            }

            $data = [
                'booking' => $booking,
                'bookingDetails' => $bookingDetails,
                'guestProfile' => $guestProfile,
                'company' => $company,
                'planDetails' => $planDetails
            ];

            $pdf = Pdf::loadView('frontend.hotels.booking-voucher', $data);
            $pdf->setPaper('A4', 'portrait');

            $fileName = 'booking-voucher-' . $booking->BookNo . '.pdf';

            return $pdf->download($fileName);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error generating voucher: ' . $e->getMessage()
            ], 500);
        }
    }

    public function thankyou()
    {
        return view('frontend.hotels.thankyou');
    }
}
