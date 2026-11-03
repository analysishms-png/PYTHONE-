<?php

namespace App\Http\Controllers\Member;

use App\Http\Controllers\Controller;
use App\Models\MemberCategory;
use App\Models\MemberFamily;
use App\Models\SubGroup;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class MemberMasterController extends Controller
{
    protected $propertyid;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }
            $this->propertyid = Auth::user()->propertyid;
            return $next($request);
        });
    }

    public function openmembermaster(Request $request)
    {
        $groupdata = DB::table('acgroup')
            ->where('group_name', 'SUNDRY DEBTORS')
            ->where('propertyid', $this->propertyid)->get();

        return view('property.members.master', [
            'groupdata' => $groupdata
        ]);
    }

    public function store(Request $request)
    {
        $profileFilePath = '';
        $signFilePath = '';

        try {
            DB::beginTransaction();
            $request->validate([
                'fullname' => 'required',
            ]);

            $existingname = SubGroup::where('propertyid', $this->propertyid)
                ->where('subyn', '0')
                ->where('name', $request->accountname)
                ->first();

            if (!is_null($existingname)) {
                return back()->with('error', 'Name Already Exists');
            }

            $profilefilename = '';
            if ($request->hasFile('member_photo')) {
                $file = $request->file('member_photo');
                $profilefilename = Str::random(16) . '_profile_' . time() . '.' . $file->getClientOriginalExtension();
                $folder = 'property/member/profile';
                $destinationPath = storage_path('app/public/' . $folder);
                if (!file_exists($destinationPath)) mkdir($destinationPath, 0755, true);
                $file->move($destinationPath, $profilefilename);
                $profileFilePath = $destinationPath . '/' . $profilefilename;
            }

            $signfilename = '';
            if (!empty($request->input('signimage'))) {
                $imageData = $request->input('signimage');
                $encodedImage = str_replace('data:image/png;base64,', '', $imageData);
                $decodedImage = base64_decode($encodedImage);
                $signfilename = Str::random(16) . '_signature_' . time() . '.png';
                $folder = 'property/member/signature';
                $path = storage_path('app/public/' . $folder . '/' . $signfilename);
                if (!file_exists(dirname($path))) mkdir(dirname($path), 0755, true);
                file_put_contents($path, $decodedImage);
                $signFilePath = $path;
            }

            $sub_code = DB::table('subgroup')->where('propertyid', $this->propertyid)->count() + 1;

            if ($request->correspondanceaddress == 'residental') {
                $address = $request->residentaladdress;
                $city = $request->residentalcity;
                $state = $request->residentalstate;
                $country = $request->residentalcountry;
                $pincode = $request->residentalpincode;
            } else {
                $address = $request->workplaceaddress;
                $city = $request->workplacecity;
                $state = $request->workplacestate;
                $country = $request->workplacecountry;
                $pincode = $request->workplacepincode;
            }

            $subgroup = new SubGroup();
            $subgroup->propertyid = $this->propertyid;
            $subgroup->sub_code = $sub_code . $this->propertyid;
            $subgroup->gstin = $request->gstin ?? '';
            $subgroup->panno = $request->pancard ?? '';
            $subgroup->fathername = $request->fathername ?? '';
            $subgroup->mothername = $request->mothername ?? '';
            $subgroup->conprefix = $request->greetings;
            $subgroup->conperson = $request->fullname;
            $subgroup->name = $request->accountname;
            $subgroup->comp_type = 'member';
            $subgroup->appno = $request->application_no;
            $subgroup->appdate = $request->application_date;
            $subgroup->idproftype = $request->idtype ?? '';
            $subgroup->idprofnum = $request->idnumber ?? '';
            $subgroup->addtype = $request->correspondanceaddress;
            $subgroup->activeyn = $request->activeyn ?? 'Y';
            $subgroup->blacklisted = $request->blacklisted;
            $subgroup->allow_credit = $request->allowcredit ?? '';
            $subgroup->creditlimit = $request->creditlimit ?? 0;
            $subgroup->group_code = $request->undergroup ?? '';
            $subgroup->nature = acgroup($request->undergroup)->nature ?? '';
            $subgroup->membercategory = $request->membercategory ?? '';
            $subgroup->membership_date = $request->membership_date ?? null;
            $subgroup->member_id = $request->member_id;
            $subgroup->address = $address;
            $subgroup->citycode = $city;
            $subgroup->pin = $pincode;
            $subgroup->subyn = 0;
            $subgroup->created_at = now();
            $subgroup->updated_at = null;
            $subgroup->save();

            $member = new MemberFamily();
            $member->propertyid = $this->propertyid;
            $member->subcode = $sub_code . $this->propertyid;
            $member->sno = 1;
            $member->picpath = $profilefilename;
            $member->signpath = $signfilename;
            $member->relationship = 'Main';
            $member->conprefix = $request->greetings;
            $member->name = $request->fullname;
            $member->gender = $request->gender;
            $member->dob = $request->dob;
            $member->weddate = null;
            $member->nationality = $request->nationality;
            $member->religion = $request->relegion ?? '';
            $member->bloodgroup = $request->bloodgroup ?? '';
            $member->label = '1';
            $member->created_at = now();
            $member->updated_at = null;
            $member->save();

            if ($request->totalrow > 0 && !empty($request->relation1)) {
                for ($i = 1; $i <= $request->totalrow; $i++) {
                    $members = new MemberFamily();
                    $members->propertyid = $this->propertyid;
                    $members->subcode = $sub_code . $this->propertyid;
                    $members->sno = $i;
                    $members->picpath = '';
                    $members->signpath = '';
                    $members->relationship = $request->input('relation' . $i);
                    $members->conprefix = $request->input('greeting' . $i);
                    $members->name = $request->input('extname' . $i);
                    $members->gender = $request->input('extgender' . $i);
                    $members->dob = $request->input('extdob' . $i);
                    $members->weddate = $request->input('extdanniversary' . $i);
                    $members->nationality = $request->nationality;
                    $members->religion = $request->relegion ?? '';
                    $members->maritalstatus = $request->input('extdanniversary' . $i) == '' ? 'unmarried' : 'married';
                    $members->bloodgroup = $request->bloodgroup ?? '';
                    $members->label = $request->input('label' . $i);
                    $members->mobile = $request->input('extmob' . $i) ?? '';
                    $members->email = $request->input('extmail' . $i) ?? '';
                    $members->label = $request->input('extlevel' . $i) ?? '';
                    $members->cardissdate = $request->input('extcardissue' . $i) ?? null;
                    $members->cardvalidupto = $request->input('extcardvalid' . $i) ?? null;
                    $members->created_at = now();
                    $members->updated_at = null;
                    $members->save();
                }
            }

            DB::commit();
            return back()->with('success', 'Member data stored successfully');
        } catch (Exception $e) {
            DB::rollBack();

            if (file_exists($profileFilePath)) {
                @unlink($profileFilePath);
            }

            if (file_exists($signFilePath)) {
                @unlink($signFilePath);
            }

            return back()->with('error', 'Error: ' . $e->getMessage() . ' On Line: ' . $e->getLine());
        }
    }

    public function editmaster(Request $request, $sub_code)
    {
        $subgroup = SubGroup::where('propertyid', $this->propertyid)->where('sub_code', $sub_code)->first();
        $memfamily1 = MemberFamily::where('propertyid', $this->propertyid)->where('subcode', $sub_code)->where('sno', '1')->first();
        $memfamilies = MemberFamily::where('propertyid', $this->propertyid)->where('subcode', $sub_code)->whereNot('sno', '1')->orderBy('sno')->get();
        $groupdata = DB::table('acgroup')
            ->where('group_name', 'SUNDRY DEBTORS')
            ->where('propertyid', $this->propertyid)->get();

        return view('property.members.masterupdate', [
            'subgroup' => $subgroup,
            'memfamily1' => $memfamily1,
            'memfamilies' => $memfamilies,
            'groupdata' => $groupdata
        ]);
    }


    public function updatemaster(Request $request, $sub_code)
    {
        try {
            // DB::beginTransaction();

            $request->validate([
                'fullname' => 'required'
            ]);

            if ($request->correspondanceaddress == 'residental') {
                $address = $request->residentaladdress;
                $city = $request->residentalcity;
                $state = $request->residentalstate;
                $country = $request->residentalcountry;
                $pincode = $request->residentalpincode;
            } else {
                $address = $request->workplaceaddress;
                $city = $request->workplacecity;
                $state = $request->workplacestate;
                $country = $request->workplacecountry;
                $pincode = $request->workplacepincode;
            }

            // Update data as array
            $updateData = [
                'gstin' => $request->gstin ?? '',
                'panno' => $request->pancard ?? '',
                'fathername' => $request->fathername ?? '',
                'mothername' => $request->mothername ?? '',
                'conprefix' => $request->greetings,
                'conperson' => $request->fullname,
                'name' => $request->accountname,
                'appno' => $request->application_no,
                'appdate' => $request->application_date,
                'idproftype' => $request->idtype ?? '',
                'idprofnum' => $request->idnumber ?? '',
                'addtype' => $request->correspondanceaddress,
                'activeyn' => $request->activeyn ?? 'Y',
                'blacklisted' => $request->blacklisted,
                'allow_credit' => $request->allowcredit ?? '',
                'creditlimit' => $request->creditlimit ?? 0,
                'group_code' => $request->undergroup ?? '',
                'nature' => acgroup($request->undergroup)->nature ?? '',
                'membercategory' => $request->membercategory ?? '',
                'membership_date' => $request->membership_date ?? null,
                'member_id' => $request->member_id,
                'address' => $address,
                'citycode' => $city,
                'pin' => $pincode,
                'updated_at' => now()
            ];

            SubGroup::where('propertyid', $this->propertyid)
                ->where('sub_code', $sub_code)
                ->update($updateData);

            $memfamily1 = MemberFamily::where('propertyid', $this->propertyid)->where('subcode', $sub_code)->where('sno', '1')->first();
            // return $memfamily1;
            $profilefilename = $memfamily1->picpath ?? '';
            $signfilename = $memfamily1->signpath ?? '';

            if ($request->hasFile('member_photo')) {
                if (!empty($profilefilename)) {
                    $oldProfilePath = storage_path('app/public/property/member/profile/' . $profilefilename);
                    if (file_exists($oldProfilePath)) {
                        @unlink($oldProfilePath);
                    }
                }

                $file = $request->file('member_photo');
                $profilefilename = Str::random(16) . '_profile_' . time() . '.' . $file->getClientOriginalExtension();
                $folder = 'property/member/profile';
                $destinationPath = storage_path('app/public/' . $folder);
                if (!file_exists($destinationPath)) mkdir($destinationPath, 0755, true);
                $file->move($destinationPath, $profilefilename);
            }

            if (!empty($request->input('signimage'))) {
                if (!empty($signfilename)) {
                    $oldSignPath = storage_path('app/public/property/member/signature/' . $signfilename);
                    if (file_exists($oldSignPath)) {
                        @unlink($oldSignPath);
                    }
                }

                $imageData = $request->input('signimage');
                $encodedImage = str_replace('data:image/png;base64,', '', $imageData);
                $decodedImage = base64_decode($encodedImage);
                $signfilename = Str::random(16) . '_signature_' . time() . '.png';
                $folder = 'property/member/signature';
                $path = storage_path('app/public/' . $folder . '/' . $signfilename);
                if (!file_exists(dirname($path))) mkdir(dirname($path), 0755, true);
                file_put_contents($path, $decodedImage);
            }

            // return $profilefilename;

            MemberFamily::where('propertyid', $this->propertyid)
                ->where('subcode', $sub_code)
                ->delete();

            // Insert main member
            $mainMember = new MemberFamily();
            $mainMember->propertyid = $this->propertyid;
            $mainMember->subcode = $sub_code;
            $mainMember->sno = 1;
            $mainMember->picpath = $profilefilename;
            $mainMember->signpath = $signfilename;
            $mainMember->relationship = 'Main';
            $mainMember->conprefix = $request->greetings;
            $mainMember->name = $request->fullname;
            $mainMember->gender = $request->gender;
            $mainMember->dob = $request->dob;
            $mainMember->weddate = null;
            $mainMember->nationality = $request->nationality;
            $mainMember->religion = $request->relegion ?? '';
            $mainMember->bloodgroup = $request->bloodgroup ?? '';
            $mainMember->label = '1';
            $mainMember->created_at = now();
            $mainMember->updated_at = null;
            $mainMember->save();

            // Insert additional family members
            if ($request->totalrow > 0 && !empty($request->relation1)) {
                for ($i = 1; $i <= $request->totalrow; $i++) {
                    // return $request->totalrow;
                    // return $i;
                    $member = new MemberFamily();
                    $member->propertyid = $this->propertyid;
                    $member->subcode = $sub_code;
                    $member->sno = $i + 1;
                    $member->picpath = '';
                    $member->signpath = '';
                    $member->relationship = $request->input('relation' . $i);
                    $member->conprefix = $request->input('greeting' . $i);
                    $member->name = $request->input('extname' . $i);
                    $member->gender = $request->input('extgender' . $i);
                    $member->dob = $request->input('extdob' . $i);
                    $member->weddate = $request->input('extdanniversary' . $i);
                    $member->nationality = $request->nationality;
                    $member->religion = $request->relegion ?? '';
                    $member->maritalstatus = $request->input('extdanniversary' . $i) == '' ? 'unmarried' : 'married';
                    $member->bloodgroup = $request->bloodgroup ?? '';
                    $member->label = $request->input('label' . $i);
                    $member->mobile = $request->input('extmob' . $i) ?? '';
                    $member->email = $request->input('extmail' . $i) ?? '';
                    $member->label = $request->input('extlevel' . $i) ?? '';
                    $member->cardissdate = $request->input('extcardissue' . $i) ?? null;
                    $member->cardvalidupto = $request->input('extcardvalid' . $i) ?? null;
                    $member->created_at = now();
                    $member->updated_at = null;
                    $member->save();
                }
            }

            // DB::commit();

            return redirect('member/master')->with('success', 'Member data updated successfully');
        } catch (Exception $e) {
            // DB::rollBack();
            return back()->with('error', 'Error: ' . $e->getMessage() . ' On Line: ' . $e->getLine());
        }
    }

    public function deletemaster(Request $request, $code)
    {
        try {
            SubGroup::where('propertyid', $this->propertyid)->where('sub_code', $code)->delete();

            $memfamily1 = MemberFamily::where('propertyid', $this->propertyid)->where('subcode', $code)->where('sno', '1')->first();
            // return $memfamily1;
            $profilefilename = $memfamily1->picpath ?? '';
            $signfilename = $memfamily1->signpath ?? '';

            if (!empty($profilefilename)) {
                $oldprofilepath = storage_path('app/public/property/member/profile/' . $profilefilename);
                if (file_exists($oldprofilepath)) {
                    @unlink($oldprofilepath);
                }
            }
            if (!empty($signfilename)) {
                $oldSignPath = storage_path('app/public/property/member/signature/' . $signfilename);
                if (file_exists($oldSignPath)) {
                    @unlink($oldSignPath);
                }
            }
            MemberFamily::where('propertyid', $this->propertyid)->where('subcode', $code)->delete();

            return redirect()->back()->with('success', 'Member master deleted successfully!');
        } catch (Exception $e) {
            return redirect()->back()->with('error', $e->getMessage());
        }
    }
}
