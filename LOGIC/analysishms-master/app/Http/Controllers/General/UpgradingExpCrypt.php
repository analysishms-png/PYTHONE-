<?php

namespace App\Http\Controllers\General;

use App\Http\Controllers\Controller;
use App\Models\EnviroGeneral;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;

class UpgradingExpCrypt extends Controller
{
    public function encryptexp(Request $request)
    {
        $data = [
            127 => ['ncur' => '2025-07-15', 'expdate' => '2025-09-01', 'amount' => '11800.00'],
            121 => ['ncur' => '2025-09-26', 'expdate' => '2025-09-27', 'amount' => '15000.00'],
            101 => ['ncur' => '2025-10-09', 'expdate' => '2025-10-31', 'amount' => '11800.00'],
            109 => ['ncur' => '2025-10-09', 'expdate' => '2025-11-14', 'amount' => '11800.00'],
            110 => ['ncur' => '2025-10-09', 'expdate' => '2025-11-30', 'amount' => '11000.00'],
            114 => ['ncur' => '2025-10-09', 'expdate' => '2025-11-30', 'amount' => '14160.00'],
            117 => ['ncur' => '2025-10-09', 'expdate' => '2025-12-02', 'amount' => '11800.00'],
            113 => ['ncur' => '2025-10-08', 'expdate' => '2025-12-31', 'amount' => '11800.00'],
            118 => ['ncur' => '2025-10-08', 'expdate' => '2025-12-31', 'amount' => '14160.00'],
            106 => ['ncur' => '2025-10-09', 'expdate' => '2026-04-01', 'amount' => '11800.00'],
            119 => ['ncur' => '2025-10-09', 'expdate' => '2026-04-14', 'amount' => '14160.00'],
            124 => ['ncur' => '2025-10-09', 'expdate' => '2026-05-01', 'amount' => '17700.00'],
            102 => ['ncur' => '2025-10-09', 'expdate' => '2026-06-19', 'amount' => '14160.00'],
            107 => ['ncur' => '2025-10-08', 'expdate' => '2026-07-01', 'amount' => '11800.00'],
            108 => ['ncur' => '2025-10-09', 'expdate' => '2026-07-01', 'amount' => '11000.00'],
            116 => ['ncur' => '2025-10-09', 'expdate' => '2026-09-01', 'amount' => '7000.00'],
            128 => ['ncur' => '2025-10-08', 'expdate' => '2026-09-01', 'amount' => '10000.00'],
        ];

        foreach ($data as $propertyid => $values) {
            $record = EnviroGeneral::where('propertyid', $propertyid)->first();
            if ($record) {
                $record->expdate = Crypt::encryptString($values['expdate']);
                $record->amount = Crypt::encryptString($values['amount']);
                $record->save();
                echo "Updated propertyid $propertyid\n";
            } else {
                echo "No record found for propertyid $propertyid\n";
            }
        }
    }
}
