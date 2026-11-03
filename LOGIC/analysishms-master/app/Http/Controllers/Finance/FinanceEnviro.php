<?php

namespace App\Http\Controllers\Finance;

use App\Http\Controllers\Controller;
use App\Models\EnviroFinance;
use App\Models\VoucherPrefix;
use App\Models\VoucherType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class FinanceEnviro extends Controller
{
    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }

            $this->username = Auth::user()->name;
            $this->email = Auth::user()->email;
            $this->propertyid = Auth::user()->propertyid;
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');
            return $next($request);
        });
    }

    public function financeparameter()
    {
        return view('property.finance.financeparameter');
    }

    public function financeparametersubmit(Request $request)
    {
        $data = $request->only([
            'openingstock',
            'closingstock',
            'negtivecashbalance'
        ]);

        $data['u_name'] = $this->username;
        $data['u_ae'] = $this->email;
        $data['updated_at'] = $this->currenttime;

        $existingRecord = EnviroFinance::where('propertyid', $this->propertyid)->first();

        if ($existingRecord) {
            EnviroFinance::where('propertyid', $this->propertyid)->update($data);
        } else {
            $data['propertyid'] = $this->propertyid;
            EnviroFinance::insert($data);
        }

        return redirect()->back()->with('success', 'Finance parameters saved successfully.');
    }
    public function getvoucherentrydata(Request $request)
    {
        $vouchertype = $request->input('vouchertype');

        $vouchertype = VoucherType::where('propertyid', $this->propertyid)
            ->where('v_type', $vouchertype)
            ->first();

        $voucherprefix = VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', $vouchertype->v_type)
            ->orderBy('prefix')
            ->get();
        $data = [
            'vouchertype' => $vouchertype,
            'voucherprefix' => $voucherprefix
        ];

        return response()->json($data);
    }

    public function voucherentryupdate(Request $request)
    {
        $vouchertype = $request->input('vouchertype');
        $data = VoucherType::where('propertyid', $this->propertyid)
            ->where('v_type', $vouchertype)
            ->first();

        $totalrows = $request->input('totalrows');

        for ($i = 1; $i <= $totalrows; $i++) {
            $prefix = $request->input('prefix_' . $i);
            $start_srlno = $request->input('start_srl_no_' . $i);

            VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vouchertype)
                ->where('prefix', $prefix)
                ->update([
                    'start_srl_no' => $start_srlno,
                    'u_name' => $this->username,
                    'u_ae' => 'e',
                    'updated_at' => $this->currenttime,
                ]);
        }

        if (!$data) {
            return response()->json(['success' => false, 'message' => 'Voucher Type not found.']);
        }

        $data = [
            'description' => $request->input('description'),
            'number_method' => $request->input('number_method'),
            'separate_narr' => $request->input('separate_narr'),
            'common_narr' => $request->input('common_narr'),
            'narration' => $request->input('narration'),
            'defaultcrac' => $request->input('defaultcrac'),
            'defaultdrac' => $request->input('defaultdrac'),
            'chqno' => $request->input('chqno'),
            'chqdt' => $request->input('chqdt'),
            'clgdt' => $request->input('clgdt'),
            'firstdrcr' => $request->input('firstdrcr'),
            'u_name' => $this->username,
            'u_ae' => $this->username,
            'updated_at' => $this->currenttime,
        ];

        VoucherType::where('propertyid', $this->propertyid)
            ->where('v_type', $vouchertype)
            ->update($data);

        return back()->with('success', 'Voucher Type updated successfully.');
    }
}
