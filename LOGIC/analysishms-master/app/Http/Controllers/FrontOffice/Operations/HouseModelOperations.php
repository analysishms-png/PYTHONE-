<?php

namespace App\Http\Controllers\FrontOffice\Operations;

use App\Http\Controllers\Controller;
use App\Models\EnviroFom;
use App\Models\Guestfolio;
use App\Models\GuestFolioProfDetail;
use App\Models\GuestProf;
use App\Models\RoomOcc;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class HouseModelOperations extends Controller
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

    public function openchangeprofile(Request $request)
    {
        $docid = $request->query('docid');
        $sno1 = $request->query('sno1');
        // return $docid;

        $roomocc = RoomOcc::where('docid', $docid)->where('sno1', $sno1)->first();

        $guestprofdata = DB::table('guestprof')
            ->select('guestprof.*', 'guestprof.city as citycode', 'guestfolio.*')
            ->join('guestfolio', 'guestfolio.guestprof', '=', 'guestprof.guestcode')
            ->where('guestprof.guestcode', $roomocc->guestprof)
            ->where('guestfolio.guestprof', $roomocc->guestprof)
            ->where('guestprof.sno1', 1)
            ->where('guestfolio.sno1', 1)
            ->where('guestprof.propertyid', $this->propertyid)
            ->first();

        // return $guestprofdata;

        $citydata = DB::table('cities')->where('propertyid', $this->propertyid)
            ->orderBy('cityname', 'ASC')->get();
        $nationalitydata = DB::table('countries')->where('propertyid', $this->propertyid)
            ->orderBy('nationality', 'ASC')->get();
        $company = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('comp_type', 'Corporate')
            ->orderBy('name', 'ASC')->get();

        $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $gueststatus = DB::table('gueststats')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $billingAccount = (object) [];

        if (!empty($guestprofdata->billingAccount)) {
            $billingAccount = DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->where('sub_code', $guestprofdata->billingAccount)
                ->first() ?? (object) [];
        }
        return view('property.changeprofile', [
            'data' => $guestprofdata,
            'citydata' => $citydata,
            'nationalitydata' => $nationalitydata,
            'countrydata' => $countrydata,
            'gueststatus' => $gueststatus,
            'company' => $company,
            'billingAccount' => $billingAccount
        ]);
    }

    public function openguestaddprofile(Request $request)
    {
        $docid = $request->query('docid');
        $sno1 = $request->query('sno1');

        $roomocc = RoomOcc::where('docid', $docid)->first();

        // return $roomocc;

        $guestprofdata = DB::table('guestprof')
            ->select('guestprof.*', 'guestprof.city as citycode', 'guestfolio.*')
            ->join('guestfolio', 'guestfolio.guestprof', '=', 'guestprof.guestcode')
            // ->join('guestfolioprofdetail', function ($join) {
            //     $join->on('guestfolioprofdetail.mprof', '=', 'guestprof.m_prof')
            //     ->where('guestfolioprofdetail.doc_id', '=', 'guestprof.docid');
            // })
            ->where('guestprof.guestcode', $roomocc->guestprof)
            ->where('guestfolio.guestprof', $roomocc->guestprof)
            ->where('guestprof.propertyid', $this->propertyid)
            ->first();

        // return $guestprofdata;

        $citydata = DB::table('cities')->where('propertyid', $this->propertyid)
            ->orderBy('cityname', 'ASC')->get();
        $nationalitydata = DB::table('countries')->where('propertyid', $this->propertyid)
            ->orderBy('nationality', 'ASC')->get();
        $company = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('comp_type', 'Corporate')
            ->orderBy('name', 'ASC')->get();

        $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $gueststatus = DB::table('gueststats')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $billingAccount = DB::table('subgroup')->where('propertyid', $this->propertyid)->where('sub_code', $guestprofdata->billingAccount)->first();
        return view('property.frontoffice.operations.guestaddprofile', [
            'data' => $guestprofdata,
            'citydata' => $citydata,
            'nationalitydata' => $nationalitydata,
            'countrydata' => $countrydata,
            'gueststatus' => $gueststatus,
            'company' => $company,
            'billingAccount' => $billingAccount,
            'sno1' => $sno1
        ]);
    }

    public function loadtotalmprof(Request $request)
    {
        try {
            $docid = $request->docid;

            $chkgprofmain = GuestFolioProfDetail::where('doc_id', $docid)->exists();
            if (!$chkgprofmain) {
                return response()->json([
                    'success' => false,
                    'message' => 'Guest Prof Details Not Found!'
                ]);
            }

            $totalgprofmain = GuestFolioProfDetail::select(
                'guestprof.name as guestname',
                'guestfolioprofdetail.guest_prof',
                'guestfolioprofdetail.mprof',
                'guestprof.docid',
                'guestprof.sno1',
            )
                ->leftJoin('guestprof', function ($join) use ($docid) {
                    $join->on('guestprof.guestcode', '=', 'guestfolioprofdetail.guest_prof')
                        ->where('guestprof.docid', $docid);
                })
                ->where('guestfolioprofdetail.doc_id', $docid)
                ->where('guestfolioprofdetail.propertyid', $this->propertyid)
                ->get();

            return response()->json([
                'success' => true,
                'data' => $totalgprofmain,
                'message' => 'Guest Prof Details Found!'
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Unknown Error Occured : ' . $e->getMessage()
            ]);
        }
    }

    public function updatemprof(Request $request)
    {
        DB::beginTransaction();
        try {
            $docid = $request->docid;
            $mprof = $request->mprof;
            $guestcode = $request->guestcode;
            $sno1 = $request->sno1;

            $chkgprofmain = GuestFolioProfDetail::where('doc_id', $docid)->exists();
            if (!$chkgprofmain) {
                DB::rollBack();
                return response()->json([
                    'success' => false,
                    'message' => 'Guest Prof Details Not Found!'
                ]);
            }

            $guestprof = GuestProf::where('docid', $docid,)
                ->where('propertyid', $this->propertyid)
                ->where('guestcode', $guestcode)
                ->where('sno1', $sno1)
                ->first();

            $gfolioupdate = [
                'guestprof' => $guestcode,
                'name' => $guestprof->name,
                'city' => $guestprof->city
            ];

            Guestfolio::where('docid', $docid,)
                ->where('propertyid', $this->propertyid)
                ->update($gfolioupdate);

            GuestFolioProfDetail::where('doc_id', $docid)
                ->where('propertyid', $this->propertyid)
                ->update(['mprof' => $guestcode]);

            RoomOcc::where('docid', $docid,)
                ->where('propertyid', $this->propertyid)
                ->update(['guestprof' => $guestcode]);

            DB::commit();
            return response()->json([
                'success' => true,
                'message' => 'Guest Profile Updated'
            ]);
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => 'Unknown Error Occured : ' . $e->getMessage()
            ]);
        }
    }

    public function newguestprofileadd(Request $request)
    {
        $chkenviro = EnviroFom::where('propertyid', $this->propertyid)->first();
        $compuname = companydata();
        $allowflag = 1;
        if ($chkenviro && $chkenviro->allowcheckinsubmit == 'Y') {
            $allowflag = 1;
        } else {
            if (Auth::user()->u_name != $compuname->u_name) {
                return response()->json([
                    'redirecturl' => '',
                    'status' => 'error',
                    'message' => 'You have no permission to execute this functionality!'
                ]);
            }

            $permission = $this->revokeopen(141112);

            if (is_null($permission) || $permission->ins == 0) {
                return response()->json([
                    'redirecturl' => '',
                    'status' => 'error',
                    'message' => 'You have no permission to execute this functionality!'
                ]);
            }
        }

        DB::beginTransaction();

        try {
            $validate = $request->validate([
                'guestname' => 'required|string',
                'cityguest' => 'required|string',
                'activemprof' => 'required|string',
                'docid' => 'required|string',
                'sno1' => 'required',
            ]);

            $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->where('country_code', $request->input('countryguest'))->first();
            $citydata = DB::table('cities')->where('propertyid', $this->propertyid)->where('city_code', $request->input('cityguest'))->first();
            if (!empty($request->input('issuingcity'))) {
                $issuingcityname = DB::table('cities')->where('propertyid', $this->propertyid)->where('city_code', $request->input('issuingcity'))->first();
                $issuingcountryname = DB::table('countries')->where('propertyid', $this->propertyid)->where('country_code', $request->input('issuingcountry'))->first();
            }
            $statedata = DB::table('states')->where('propertyid', $this->propertyid)->where('state_code', $request->input('stateguest'))->first();

            $dob = $request->input('birthDate');
            $age = Carbon::parse($dob)->age;

            $profilepicture = null;
            $identitypicture = null;

            if (!empty($request->file('profileimage'))) {
                $profilepic = $request->file('profileimage');
                $profilepicture = $request->input('guestmobile') . $request->input('guestname') . 'PR' . $this->propertyid . time() . '.' . $profilepic->getClientOriginalExtension();
                $folderPathp = 'public/walkin/profileimage';
                Storage::makeDirectory($folderPathp);
                Storage::putFileAs($folderPathp, $profilepic, $profilepicture);
            } else {
                $existingProfileImage = $request->input('existing_profileimage');
                if ($existingProfileImage != '') {
                    $folderPathp = 'public/walkin/profileimage';
                    $existingFilePath = $folderPathp . '/' . $existingProfileImage;

                    $newProfilepicture = $request->input('guestmobile') . $request->input('guestname') . 'PR' . $this->propertyid . time() . '.' . pathinfo($existingProfileImage, PATHINFO_EXTENSION);
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

            if (!empty($request->file('identityimage'))) {
                $identitypic = $request->file('identityimage');
                $identitypicture = $request->input('guestmobile') . $request->input('guestname') . 'ID' . $this->propertyid . time() . '.' . $identitypic->getClientOriginalExtension();
                $folderpathi = 'public/walkin/identityimage';
                Storage::makeDirectory($folderpathi);
                Storage::putFileAs($folderpathi, $identitypic, $identitypicture);
            } else {
                $existingIdentityImage = $request->input('existing_identityimage');
                if ($existingIdentityImage != '') {
                    $folderpathi = 'public/walkin/identityimage';
                    $existingFilePath = $folderpathi . '/' . $existingIdentityImage;
                    $newIdentitypicture = $request->input('guestmobile') . $request->input('guestname') . 'ID' . $this->propertyid . time() . '.' . pathinfo($existingIdentityImage, PATHINFO_EXTENSION);
                    $newFilePath = $folderpathi . '/' . $newIdentitypicture;

                    if (Storage::exists($existingFilePath)) {
                        Storage::copy($existingFilePath, $newFilePath);
                        $identitypicture = $newIdentitypicture;
                    } else {
                        $identitypicture = null;
                    }
                } else {
                    $identitypicture = null;
                }
            }

            $signfilename = '';
            if (!empty($request->input('signimage'))) {
                $imageData = $request->input('signimage');

                $encodedImage = str_replace('data:image/png;base64,', '', $imageData);
                $decodedImage = base64_decode($encodedImage);

                $signfilename = $request->input('guestmobile') . $request->input('guestname') . 'signature_' . time() . '.png';

                $folder = 'walkin/signature';
                $path = storage_path('app/public/' . $folder . '/' . $signfilename);

                if (!file_exists(dirname($path))) {
                    mkdir(dirname($path), 0755, true);
                }

                file_put_contents($path, $decodedImage);
            }

            if ($request->input('complimentry') == 'on') {
                $complimentry = 'Y';
                $roomrate = 0;
            } else {
                $complimentry = 'N';
            }

            $maxguestprof = GuestProf::where('propertyid', $this->propertyid)->max('guestcode');
            $guestprof = ($maxguestprof === null) ? $this->propertyid . '10001' : ($guestprof = $this->propertyid . substr($maxguestprof, strlen($this->propertyid)) + 1);

            $docid = $request->docid;
            $roomocc = RoomOcc::where('docid', $docid)->first();

            $guestproft = [
                'propertyid' => $this->propertyid,
                'docid' => $docid,
                'sno1' => $request->sno1,
                'folio_no' => $roomocc->folioNo,
                'created_at' => now(),
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
                'complimentry' => 'N',
                'guestcode' => $guestprof,
                'name' => $request->input('guestname'),
                'bill_to' => $request->input('bill_to') ?? '',
                'state_code' => $request->input('stateguest'),
                'country_code' => $request->input('countryguest'),
                'add1' => $request->input('address1'),
                'add2' => $request->input('address2'),
                'city' => $request->input('cityguest'),
                'type' => $countrydata->Type,
                'mobile_no' => $request->input('mobile'),
                'email_id' => $request->input('email'),
                'nationality' => $countrydata->nationality ?? null,
                'anniversary' => $request->input('weddingAnniversary'),
                'guest_status' => $request->input('vipStatus'),
                'comments1' => null,
                'comments2' => null,
                'comments3' => null,
                'city_name' => $citydata->cityname,
                'state_name' => $statedata->name,
                'country_name' => $countrydata->name,
                'gender' => $request->input('genderguest'),
                'marital_status' => $request->input('marital_status'),
                'zip_code' => $citydata->zipcode,
                'con_prefix' => $request->input('greetings'),
                'dob' => $dob,
                'age' => $age,
                'pic_path' => $profilepicture ?? '',
                'guestsign' => $signfilename ?? '',
                'id_proof' => $request->input('idType'),
                'idproof_no' => $request->input('idNumber'),
                'issuingcitycode' => $request->input('issuingcity') ?? null,
                'issuingcityname' => $issuingcityname->cityname ?? null,
                'issuingcountrycode' => $request->input('issuingcountry') ?? null,
                'issuingcountryname' => $issuingcountryname->name ?? null,
                'expiryDate' => $request->input('expiryDate'),
                'vipStatus' => $request->input('vipStatus'),
                'paymentMethod' => $request->input('paymentMethod'),
                'billingAccount' => $request->input('billingAccount'),
                'idpic_path' => $identitypicture,
                'm_prof' => $request->activemprof,
                'father_name' => null,
                'fom' => 1,
                'pos' => 0,
            ];
            DB::table('guestprof')->insert($guestproft);

            $guestfolioprofdetail = [
                'propertyid' => $this->propertyid,
                'created_at' => now(),
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
                'doc_id' => $docid,
                'folio_no' => $roomocc->folioNo,
                'guest_prof' => $guestprof,
                'mprof' => $request->activemprof,
            ];

            DB::table('guestfolioprofdetail')->insert($guestfolioprofdetail);


            $guestfolio = [
                'city' => $request->input('cityguest'),
                'purvisit' => $request->input('purpofvisit'),
                'vehiclenum' => $request->input('vehiclenum'),
                'destination' => $request->input('destination'),
                'travelmode' => $request->input('travelmode'),
                'rodisc' => $request->input('rodisc'),
                'rsdisc' => $request->input('rsdisc'),
            ];

            Guestfolio::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->update($guestfolio);

            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'New Guest Profile Added',
            ]);
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => 'Unknown Error Occured : ' . $e->getMessage()
            ]);
        }
    }

    public function fetchguestparticulardata(Request $request)
    {
        try {
            $request->validate([
                'docid' => 'required|string',
                'guestcode' => 'required|string'
            ]);

            $docid = $request->docid;
            $guestcode = $request->guestcode;

            $chkgprofmain = GuestFolioProfDetail::where('doc_id', $docid)->where('guest_prof', $guestcode)->exists();
            if (!$chkgprofmain) {
                return response()->json([
                    'success' => false,
                    'message' => 'Guest Prof Details Not Found!'
                ]);
            }

            $gprof = GuestProf::where('docid', $docid)
                ->where('guestcode', $guestcode)
                ->first();

            return response()->json([
                'success' => true,
                'gprof' => $gprof,
            ]);
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => 'Unknown Error Occured : ' . $e->getMessage()
            ]);
        }
    }

    public function profilechangeguestonly(Request $request)
    {
        DB::beginTransaction();

        try {
            $request->validate([
                'docid' => 'required|string',
                'guestcodep' => 'required|string'
            ]);

            $docid = $request->docid;
            $guestcode = $request->guestcodep;

            $chkgprofmain = GuestFolioProfDetail::where('doc_id', $docid)->where('guest_prof', $guestcode)->exists();
            if (!$chkgprofmain) {
                return response()->json([
                    'success' => false,
                    'message' => 'Guest Prof Details Not Found!'
                ]);
            }

            $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->where('country_code', $request->input('countryguest'))->first();
            $citydata = DB::table('cities')->where('propertyid', $this->propertyid)->where('city_code', $request->input('cityguest'))->first();
            if (!empty($request->input('issuingcity'))) {
                $issuingcityname = DB::table('cities')->where('propertyid', $this->propertyid)->where('city_code', $request->input('issuingcity'))->first();
                $issuingcountryname = DB::table('countries')->where('propertyid', $this->propertyid)->where('country_code', $request->input('issuingcountry'))->first();
            }
            $statedata = DB::table('states')->where('propertyid', $this->propertyid)->where('state_code', $request->input('stateguest'))->first();

            $dob = $request->input('birthDate');
            $age = Carbon::parse($dob)->age;

            $profilepicture = $request->input('profileimagehidden');
            $identitypicture = $request->input('identityimagehidden');

            if ($request->hasFile('profileimage')) {

                $profilepic = $request->file('profileimage');

                $oldProfileImage = $request->input('profileimagehidden');

                $profilepicture = $request->input('guestmobile')
                    . $request->input('guestname')
                    . 'PR'
                    . $this->propertyid
                    . time()
                    . '.'
                    . $profilepic->getClientOriginalExtension();

                $folderPathp = 'public/walkin/profileimage';

                Storage::makeDirectory($folderPathp);

                if (!empty($oldProfileImage) && Storage::exists($folderPathp . '/' . $oldProfileImage)) {
                    Storage::delete($folderPathp . '/' . $oldProfileImage);
                }

                Storage::putFileAs($folderPathp, $profilepic, $profilepicture);
            }

            if ($request->hasFile('identityimage')) {

                $identitypic = $request->file('identityimage');

                $oldIdentityImage = $request->input('identityimagehidden');

                $identitypicture = $request->input('guestmobile')
                    . $request->input('guestname')
                    . 'PR'
                    . $this->propertyid
                    . time()
                    . '.'
                    . $identitypic->getClientOriginalExtension();

                $folderpathi = 'public/walkin/identityimage';

                Storage::makeDirectory($folderpathi);

                if (!empty($oldIdentityImage) && Storage::exists($folderpathi . '/' . $oldIdentityImage)) {
                    Storage::delete($folderpathi . '/' . $oldIdentityImage);
                }

                Storage::putFileAs($folderpathi, $identitypic, $identitypicture);
            }

            $signfilename = $request->input('oldsignimage');

            if (!empty($request->input('signimage')) && $signfilename != $request->input('signimage')) {

                $imageData = $request->input('signimage');

                $encodedImage = str_replace('data:image/png;base64,', '', $imageData);

                $decodedImage = base64_decode($encodedImage);

                $signfilename = $request->input('guestmobile')
                    . $request->input('guestname')
                    . 'signature_'
                    . time()
                    . '.png';

                $folder = 'public/walkin/signature';

                Storage::makeDirectory($folder);

                $oldSignImage = $request->input('oldsignimage');

                if (!empty($oldSignImage) && Storage::exists($folder . '/' . $oldSignImage)) {
                    Storage::delete($folder . '/' . $oldSignImage);
                }

                Storage::put($folder . '/' . $signfilename, $decodedImage);
            }

            $guestproft = [
                'updated_at' => now(),
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
                'name' => $request->input('guestname'),
                'state_code' => $request->input('stateguest'),
                'country_code' => $request->input('countryguest'),
                'city' => $request->input('cityguest'),
                'type' => $countrydata->Type,
                'mobile_no' => $request->input('guestmobile'),
                'email_id' => $request->input('guestemail'),
                'nationality' => $countrydata->nationality,
                'anniversary' => $request->input('weddingAnniversary'),
                'guest_status' => $request->input('vipStatus'),
                'city_name' => $citydata->cityname,
                'state_name' => $statedata->name,
                'country_name' => $countrydata->name,
                'gender' => $request->input('genderguest'),
                'marital_status' => $request->input('marital_status'),
                'zip_code' => $citydata->zipcode,
                'con_prefix' => $request->input('greetingsguest'),
                'dob' => $dob,
                'age' => $age,
                'pic_path' => $profilepicture,
                'guestsign' => $signfilename,
                'id_proof' => $request->input('idType'),
                'idproof_no' => $request->input('idNumber'),
                'issuingcitycode' => $request->input('issuingcity') ?? null,
                'issuingcityname' => $issuingcityname->cityname ?? null,
                'issuingcountrycode' => $request->input('issuingcountry') ?? null,
                'issuingcountryname' => $issuingcountryname->name ?? null,
                'expiryDate' => $request->input('expiryDate'),
                'paymentMethod' => $request->input('paymentMethod'),
                'idpic_path' => $identitypicture,
            ];

            DB::table('guestprof')->where('docid', $docid)
                ->where('guestcode', $guestcode)
                ->update($guestproft);

            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Guest Profile Added',
            ]);
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => 'Unknown Error Occured : ' . $e->getMessage()
            ]);
        }
    }
}
