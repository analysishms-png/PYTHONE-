<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Companyreg;
use Illuminate\Http\Request;

class CompanyInfo extends Controller
{
    public function companyinfoget(Request $request)
    {
        $client = $request->attributes->get('api_client');

        $company = Companyreg::where('propertyid', $client->propertyid)->first();

        if (!$company) {
            return response()->json([
                'status' => false,
                'message' => 'Company not found'
            ], 404);
        }

        $data = [
            'propertyid' => $company->propertyid,
            'companyname' => $company->companyname ?? '',
            'address1' => $company->address1 ?? '',
            'address2' => $company->address2 ?? '',
            'email' => $company->email ?? '',
            'phone' => $company->phone ?? '',
            'gstin' => $company->gstin ?? '',
            'start_dt' => $company->start_dt ?? '',
            'end_dt' => $company->end_dt ?? '',
            'country' => $company->country ?? '',
            'state' => $company->state ?? '',
            'city' => $company->city ?? '',
            'state_code' => $company->state_code ?? '',
            'mobile' => $company->mobile ?? '',
            'acname' => $company->acname ?? '',
            'acnum' => $company->acnum ?? '',
            'ifsccode' => $company->ifsccode ?? '',
            'bankname' => $company->bankname ?? '',
            'branchname' => $company->branchname ?? '',
            'cfyear' => $company->cfyear ?? '',
            'pfyear' => $company->pfyear ?? '',
            'pin' => $company->pin ?? '',
            'cover_image' => $company->cover_image ? asset('storage/admin/coverimage/' . $company->cover_image) : '',
            'payment_qr_code' => $company->payment_qr_code ? asset('storage/admin/qrcode/' . $company->payment_qr_code) : '',
            'pan_no' => $company->pan_no ?? '',
            'nationality' => $company->nationality ?? '',
            'division_code' => $company->division_code ?? '',
            'legal_name' => $company->legal_name ?? '',
            'trade_name' => $company->trade_name ?? '',
            'logo' => $company->logo ? asset('storage/admin/property_logo/' . $company->logo) : '',
            'images' => $company->images ? asset('storage/admin/images/' . $company->images) : '',
            'dealer_logo' => $company->dealer_logo ? asset('storage/admin/dealer_logo/' . $company->dealer_logo) : ''
        ];

        return response()->json([
            'status' => true,
            'data' => $data
        ]);
    }
}
