<?php

namespace App\Helpers;

use App\Http\Controllers\CompanyController;
use App\Models\EnviroGeneral;
use App\Models\VoucherPrefix;
use Carbon\Carbon;
use DateTime;
use Illuminate\Support\Facades\Auth;

if (!function_exists('getNcurDate')) {
    function getNcurDate()
    {
        return EnviroGeneral::where('propertyid', auth()->user()->propertyid ?? null)->value('ncur');
    }
}

class DateHelper
{
    public static function calculateDateRanges($date)
    {
        // Convert the input date to Carbon instance
        $currentDate = Carbon::parse($date);

        // Calculate MTD (Month-To-Date)
        $mtdStart = $currentDate->copy()->startOfMonth();
        $mtdEnd = $currentDate;

        // Calculate Financial Year (FY) Start
        // Assuming Financial Year starts on April 1st
        $financialYearStart = $currentDate->month >= 4
            ? Carbon::create($currentDate->year, 4, 1)
            : Carbon::create($currentDate->year - 1, 4, 1);

        $financialYearEnd = $financialYearStart->copy()->addYear()->subDay();

        // Calculate FTD (Financial Year-To-Date)
        $ftdStart = $financialYearStart;
        $ftdEnd = $currentDate;

        // Calculate YTD (Year-To-Date)
        $ytdStart = $currentDate->copy()->startOfYear();
        $ytdEnd = $currentDate;

        $fndate1 = new DateTime($ftdStart->format('Y-m-d'));
        $fndate2 = new DateTime($currentDate);

        $mndate1 = new DateTime($mtdStart->format('Y-m-d'));
        $mndate2 = new DateTime($currentDate);

        return [
            'mtd' => ['start' => $mtdStart->format('Y-m-d'), 'end' => $mtdEnd->format('Y-m-d')],
            'ftd' => ['start' => $ftdStart->format('Y-m-d'), 'end' => $ftdEnd->format('Y-m-d')],
            'ytd' => ['start' => $ytdStart->format('Y-m-d'), 'end' => $ytdEnd->format('Y-m-d')],
            'finyear' => ['previous' => (string)($ftdStart->format('Y') - 1), 'current' => $ftdStart->format('Y'), 'nextyear' => (string)($ftdStart->format('Y') + 1)],
            'hf' => ['start' => substr($ftdStart->format('Y'), 2), 'end' => substr($ftdStart->format('Y') + 1, 2)],
            'diffcount' => ['fromfin' => ($fndate1->diff($fndate2)), 'frommon' => ($mndate1->diff($mndate2))],
            'finyearreal' => ['start' => $ftdStart->format('Y') . '-04-01', 'end' => (string)($ftdStart->format('Y') + 1) . '-03-31']
        ];
    }

    public static function removeLeadingPrefix($phoneNumber)
    {
        $phoneNumber = preg_replace('/^\+?(91|0)?/', '', $phoneNumber);
        return substr($phoneNumber, -10);
    }

    public static function generateBillNoRange(array $vnos)
    {
        $vnos = array_unique($vnos);
        sort($vnos);
        $ranges = [];
        $start = $vnos[0];
        $end = $start;

        for ($i = 1, $count = count($vnos); $i < $count; $i++) {
            if ($vnos[$i] == $end + 1) {
                $end = $vnos[$i];
            } else {
                $ranges[] = $start == $end ? $start : "$start-$end";
                $start = $vnos[$i];
                $end = $start;
            }
        }

        $ranges[] = $start == $end ? $start : "$start-$end";

        return implode(', ', $ranges);
    }

    public static function Uniqueyears($propertyid)
    {
        $ncur = EnviroGeneral::where('propertyid', $propertyid)
            ->pluck('ncur')
            ->first();
        if (Auth::user()->backdate == 1) {
            $years = VoucherPrefix::where('propertyid', $propertyid)->groupBy('prefix')->orderByDesc('prefix')->get();
        } else {
            $years = VoucherPrefix::where('propertyid', $propertyid)->where('prefix', date('Y', strtotime($ncur)))
                ->groupBy('prefix')->orderByDesc('prefix')->get();
        }
        return $years;
    }
}



