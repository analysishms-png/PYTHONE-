<?php

namespace App\Http\Controllers\Reservation;

use App\Http\Controllers\Controller;
use App\Helpers\DateHelper;
use App\Helpers\ResHelper;
use App\Helpers\UpdateRepeat;
use App\Helpers\WhatsappSend;
use App\Models\ACGroup;
use App\Models\Bookings;
use App\Services\RoomInclusivePosting;
use App\Models\BookinPlanDetail;
use App\Models\ChannelEnviro;
use App\Models\ChannelPushes;
use App\Models\Cities;
use App\Models\CompanyDiscount;
use App\Models\FomBillDetail;
use App\Models\Happyhour;
use App\Models\PlanMast;
use App\Models\RoomInclusive;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\CompanyLog;
use App\Models\Companyreg;
use App\Models\Countries;
use App\Models\UserModule;
use App\Models\MenuHelp;
use App\Models\Paycharge;
use App\Models\UserPermission;
use App\Models\Items;
use App\Models\ItemMast;
use App\Models\ItemRate;
use App\Models\ItemCatMast;
use App\Models\ItemGrp;
use App\Models\Guestfolio;
use App\Models\Kot;
use App\Models\Revmast;
use App\Models\RoomMast;
use App\Models\GuestProf;
use App\Models\Sale1;
use App\Models\SubGroup;
use App\Models\Depart;
use App\Models\Depart1;
use App\Models\EnviroFom;
use App\Models\EnviroGeneral;
use App\Models\EnviroPos;
use App\Models\EnviroWhatsapp;
use App\Models\GrpBookinDetail;
use App\Models\GuestFolioProfDetail;
use App\Models\Ledger;
use App\Models\NightAuditLog;
use App\Models\PlanDetail;
use App\Models\PrintingSetup;
use App\Models\RoomBlockout;
use App\Models\RoomCat;
use App\Models\Sagar;
use App\Models\Stock;
use App\Models\RoomOcc;
use App\Models\States;
use App\Models\SundryMast;
use App\Models\SundryTypeFix;
use App\Models\Suntran;
use App\Models\TaxStructure;
use App\Models\User;
use App\Models\VoucherPrefix;
use Illuminate\Support\Facades\Auth;
use Exception;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use DateTime;
use Illuminate\Contracts\Pipeline\Pipeline;
use Illuminate\Support\Facades\Hash;
use Psr\Http\Client\NetworkExceptionInterface;
use Symfony\Component\Routing\Matcher\Dumper\MatcherDumper;
use Illuminate\Support\Str;
use Illuminate\Validation\ValidationException;
use App\Models\Kot as KotModal;
use App\Models\RoomInclusiveLog;
use App\Models\Sundrytype;
use App\Services\AccountPosting;
use Illuminate\Support\Facades\Log;

use function App\Helpers\endsWith;
use function App\Helpers\removeSuffixIfExists;

class Advance extends Controller
{
    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    protected $ptlngth;
    protected $prpid;
    protected $compcode;
    protected $ncurdate;
    protected $datemanage;

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
            $this->compcode = companyvalue();
            $this->ncurdate = DB::table('enviro_general')->where('propertyid', Auth::user()->propertyid)->value('ncur');
            $this->propertyid = $propertydata->propertyid;
            $this->ptlngth = strlen($this->propertyid);
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');
            $this->datemanage = DateHelper::calculateDateRanges($this->ncurdate);
            return $next($request);
        });
    }

    public function submitadvdeposit(Request $request)
    {
        try {
            $validatedData = $request->validate([
                'advancetype' => 'required',
                'rectno' => 'required',
                'guestname' => 'required',
                'paytype' => 'required',
                'narration' => 'required',
                'amount' => 'required|numeric',
            ]);

            DB::beginTransaction();

            $tablename = 'paycharge';
            $bookingDetails = DB::table('grpbookingdetails')
                ->where('BookingDocid', $request->input('docid'))
                ->where('BookNo', $request->input('bookno'))
                ->where('Property_ID', $this->propertyid)
                ->where('Sno', $request->input('Sno'))
                ->first();

            if (!$bookingDetails) {
                DB::rollBack();
                return redirect('reservationlist')->with('error', 'Booking details not found');
            }

            $vtype = $request->input('prevtype');
            $voucherPrefix = VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vtype)
                ->whereDate('date_from', '<=', $this->ncurdate)
                ->whereDate('date_to', '>=', $this->ncurdate)
                ->first();

            if (!$voucherPrefix) {
                DB::rollBack();
                return redirect('reservationlist')->with('error', 'Voucher prefix not found');
            }

            $vno = $voucherPrefix->start_srl_no + 1;
            $vprefix = $voucherPrefix->prefix;
            $docid = $this->propertyid . $vtype . ' ‎ ‎' . $vprefix . ' ‎ ‎ ‎ ' . $vno;

            $advtype = $request->input('advancetype');
            $amount = $request->input('amount');
            $amtdr = ($advtype == 'Refund') ? $amount : 0.00;
            $amtcr = ($advtype == 'Refund') ? 0.00 : $amount;

            $paytype = Revmast::where('propertyid', $this->propertyid)
                ->where('rev_code', $request->input('paytype'))
                ->first();

            if (!$paytype) {
                DB::rollBack();
                return redirect('reservationlist')->with('error', 'Payment type not found');
            }

            $maxsno = GrpBookinDetail::where('BookingDocid', $request->input('docid'))
                ->where('Property_ID', $this->propertyid)
                ->max('Sno');

            $mainEntryData = [
                'propertyid' => $this->propertyid,
                'docid' => $docid,
                'vno' => $vno,
                'vtype' => $vtype,
                'sno' => 1,
                'sno1' => $maxsno,
                'vdate' => $this->ncurdate,
                'vtime' => date('H:i:s'),
                'vprefix' => $vprefix,
                'paycode' => $request->input('paytype'),
                'paytype' => $paytype->pay_type,
                'comments' => $request->input('narration'),
                'guestprof' => $request->input('guestprof'),
                'comp_code' => '',
                'travel_agent' => '',
                'roomno' => $bookingDetails->RoomNo,
                'amtdr' => $amtdr,
                'amtcr' => $amtcr,
                'roomcat' => $bookingDetails->RoomCat,
                'restcode' => 'FOM' . $this->propertyid,
                'billamount' => $amount,
                'taxper' => 0,
                'onamt' => 0,
                'taxstru' => $request->input('tax_stru') ?? '',
                'refdocid' => $request->input('docid'),
                'foliono' => $bookingDetails->BookNo,
                'taxcondamt' => 0,
                'created_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
            ];

            DB::table($tablename)->insert($mainEntryData);

            $taxStru = $request->input('tax_stru');
            if (!empty($taxStru)) {
                $taxStructures = DB::table('taxstru')
                    ->where('propertyid', $this->propertyid)
                    ->where('str_code', $taxStru)
                    ->get();

                if (!$taxStructures->isEmpty()) {
                    foreach ($taxStructures as $tax) {
                        $rate = $tax->rate;
                        if ($rate != null) {
                            $taxAmount = $amount * $rate / 100;
                            $amtdrTaxed = ($advtype == 'Refund') ? $taxAmount : 0.00;
                            $amtcrTaxed = ($advtype == 'Refund') ? 0.00 : $taxAmount;

                            $taxName = DB::table('revmast')
                                ->where('propertyid', $this->propertyid)
                                ->where('rev_code', $tax->tax_code)
                                ->value('name');

                            if (!$taxName) {
                                DB::rollBack();
                                return redirect('reservationlist')->with('error', 'Tax name not found');
                            }

                            $comments = $taxName . ', ' . 'Room No: ' . $bookingDetails->RoomNo;

                            $taxEntryData = [
                                'propertyid' => $this->propertyid,
                                'docid' => $docid,
                                'vno' => $vno,
                                'vtype' => $vtype,
                                'sno' => $tax->sno + 1,
                                'sno1' => $bookingDetails->Sno,
                                'vdate' => $this->ncurdate,
                                'vtime' => date('H:i:s'),
                                'vprefix' => $vprefix,
                                'paycode' => $tax->tax_code,
                                'comments' => $comments,
                                'guestprof' => $request->input('guestprof'),
                                'roomno' => $bookingDetails->RoomNo,
                                'amtcr' => $amtcrTaxed,
                                'amtdr' => $amtdrTaxed,
                                'roomcat' => $bookingDetails->RoomCat,
                                'restcode' => 'FOM' . $this->propertyid,
                                'billamount' => 0.00,
                                'taxper' => $rate,
                                'taxstru' => $taxStru,
                                'onamt' => $amount,
                                'refdocid' => $request->input('docid'),
                                'foliono' => $bookingDetails->BookNo,
                                'taxcondamt' => 0.00,
                                'created_at' => $this->currenttime,
                                'u_name' => Auth::user()->u_name,
                                'u_ae' => 'a',
                            ];

                            DB::table($tablename)->insert($taxEntryData);
                        }
                    }
                }
            }

            $updatedRows = VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vtype)
                ->where('prefix', $vprefix)
                ->increment('start_srl_no');

            if (!$updatedRows) {
                DB::rollBack();
                return redirect('reservationlist')->with('error', 'Failed to update voucher prefix');
            }

            DB::commit();

            if (channelparameter()->checkyn == 'Y') {
                $paychargeadsum = Paycharge::where('propertyid', $this->propertyid)
                    ->where('refdocid', $request->input('docid'))
                    ->where('sno', '1')
                    ->sum('amtcr');

                if ($paychargeadsum > 0) {
                    $guestprof = GuestProf::where('docid', $request->input('docid'))->first();
                    ResHelper::updateadvance($request->input('docid'), $guestprof->guestcode, $paychargeadsum);
                    // ChannelPushes::updateBookingAdvDeposit($request->input('docid'), $this->propertyid);
                }
            }

            if ($request->page_source) {
                return redirect($request->page_source)->with('success', 'Advance Deposit Successfully');
            } else {
                return redirect('reservationlist')->with('success', 'Advance Deposit Successfully');
            }
        } catch (ValidationException $e) {
            DB::rollBack();
            return redirect($request->page_source ? $request->page_source : 'reservationlist')->back()->withErrors($e->errors())->withInput();
        } catch (Exception $e) {
            DB::rollBack();
            return redirect($request->page_source ? $request->page_source : 'reservationlist')->with('error', 'Failed to process advance deposit: ' . $e->getMessage());
        }
    }
}
