<?php

namespace App\Http\Controllers\FrontOffice;

use App\Http\Controllers\Controller;
use App\Helpers\DateHelper;
use App\Helpers\ResHelper;
use App\Helpers\UpdateRepeat;
use App\Helpers\WhatsappSend;
use App\Models\ACGroup;
use App\Models\Bookings;
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
use App\Models\Sundrytype;
use App\Services\AccountPosting;
use Illuminate\Support\Facades\Log;

class AddNewProfile extends Controller
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

    public function openaddnewprofile()
    {
        return view('property.frontoffice.addnewprofile');
    }

    public function updatenewprofile(Request $request)
    {
        $request->validate([
            'docid' => 'required',
            'sno1' => 'required',
            'newname' => 'required',
        ]);

        $docid = $request->input('docid');
        $sno1 = $request->input('sno1');
        $newname = $request->input('newname');

        $chkprofile = GuestProf::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->where('sno1', $sno1)
            ->first();

        $roomoccglobal = RoomOcc::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->first();
        // return $roomoccglobal;

        if (!empty($request->file('photo'))) {
            $profilepic = $request->file('photo');
            $profilepicture = $request->input('newmobile') . $request->input('newname') . 'PR' . $this->propertyid . time() . '.' . $profilepic->getClientOriginalExtension();
            $folderPathp = 'public/walkin/profileimage';
            Storage::makeDirectory($folderPathp);
            Storage::putFileAs($folderPathp, $profilepic, $profilepicture);
        } else {
            $existingProfileImage = $request->input('existing_profileimage');
            if ($existingProfileImage != '') {
                $folderPathp = 'public/walkin/profileimage';
                $existingFilePath = $folderPathp . '/' . $existingProfileImage;

                $newProfilepicture = $request->input('newmobile') . $request->input('newname') . 'PR' . $this->propertyid . time() . '.' . pathinfo($existingProfileImage, PATHINFO_EXTENSION);
                $newFilePath = $folderPathp . '/' . $newProfilepicture;

                if (Storage::exists($existingFilePath)) {
                    Storage::copy($existingFilePath, $newFilePath);
                    $profilepicture = $newProfilepicture;
                } else {
                    $profilepicture = null;
                }
            } else {
                $profilepicture = null;
            }
        }

        if (!$chkprofile) {

            $citycode = $request->input('citycode');
            $city = Cities::where('propertyid', $this->propertyid)
                ->where('city_code', $citycode)
                ->first();

            $statename = $city ? States::where('state_code', $city->state)->value('name') : '';
            $countryname = $city ? Countries::where('country_code', $city->country)->value('name') : '';

            $prepareguestprof = new GuestProf();
            $prepareguestprof->propertyid = $this->propertyid;
            $prepareguestprof->docid = $docid;
            $prepareguestprof->folio_no = $roomoccglobal->folioNo;
            $prepareguestprof->sno1 = $sno1;
            $prepareguestprof->guestcode = $roomoccglobal->guestprof;
            $prepareguestprof->name = $newname;
            $prepareguestprof->city = $citycode;
            $prepareguestprof->state_code = $city ? $city->state : '';
            $prepareguestprof->country_code = $city ? $city->country : '';
            $prepareguestprof->city_name = $city ? $city->name : '';
            $prepareguestprof->state_name = $statename;
            $prepareguestprof->country_name = $countryname;
            $prepareguestprof->add1 = $request->input('newadd1');
            $prepareguestprof->mobile_no = $request->input('newmobile');
            $prepareguestprof->email_id = $request->input('newemail');
            $prepareguestprof->id_proof = $request->input('idtype');
            $prepareguestprof->idproof_no = $request->input('idnumber');
            $prepareguestprof->pic_path = $profilepicture;
            $prepareguestprof->u_name = $this->username;
            $prepareguestprof->u_ae = 'a';
            $prepareguestprof->save();

            $prepareguestfolio = new Guestfolio();
            $prepareguestfolio->propertyid = $this->propertyid;
            $prepareguestfolio->docid = $docid;
            $prepareguestfolio->folio_no = $roomoccglobal->folioNo;
            $prepareguestfolio->vtype = $roomoccglobal->vtype;
            $prepareguestfolio->vdate = ncurdate();
            $prepareguestfolio->vprefix = $roomoccglobal->vprefix;
            $prepareguestfolio->sno1 = $sno1;
            $prepareguestfolio->guestprof = $roomoccglobal->guestprof;
            $prepareguestfolio->name = $newname;
            $prepareguestfolio->add1 = $request->input('newadd1');
            $prepareguestfolio->city = $citycode;
            $prepareguestfolio->u_name = $this->username;
            $prepareguestfolio->u_ae = 'a';
            $prepareguestfolio->save();

            $roomoccdata = [
                'name' => $newname,
                'updated_at' => $this->currenttime,
                'u_name' => $this->username,
                'u_ae' => 'e',
            ];

            RoomOcc::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->where('sno1', $sno1)
                ->update($roomoccdata);
        } else {
            $citycode = $request->input('citycode');
            $city = Cities::where('propertyid', $this->propertyid)
                ->where('city_code', $citycode)
                ->first();

            $statename = $city ? States::where('state_code', $city->state)->value('name') : '';
            $countryname = $city ? Countries::where('country_code', $city->country)->value('name') : '';

            $updatefieldsgprof = [
                'name' => $newname,
                'city' => $request->input('citycode'),
                'state_name' => $statename,
                'country_name' => $countryname,
                'add1' => $request->input('newadd1'),
                'mobile_no' => $request->input('newmobile'),
                'email_id' => $request->input('newemail'),
                'id_proof' => $request->input('idtype'),
                'idproof_no' => $request->input('idnumber'),
                'pic_path' => $profilepicture,
                'u_name' => $this->username,
                'updated_at' => $this->currenttime,
                'u_ae' => 'e',
            ];

            GuestProf::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->where('sno1', $sno1)
                ->update($updatefieldsgprof);

            $updatefieldsgfolio = [
                'name' => $newname,
                'add1' => $request->input('newadd1'),
                'city' => $request->input('citycode'),
                'u_name' => $this->username,
                'updated_at' => $this->currenttime,
                'u_ae' => 'e',
            ];
            Guestfolio::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->where('sno1', $sno1)
                ->update($updatefieldsgfolio);

            $roomoccdata = [
                'name' => $newname,
                'updated_at' => $this->currenttime,
                'u_name' => $this->username,
                'u_ae' => 'e',
            ];

            RoomOcc::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->where('sno1', $sno1)
                ->update($roomoccdata);
        }

        return response()->json([
            'success' => true,
            'message' => 'Profile updated successfully'
        ]);
    }
}
