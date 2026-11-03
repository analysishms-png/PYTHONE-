<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\MallDailyPowerEntry;

class MallDailyPowerEntryController extends Controller
{
    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    protected $ptlngth;
    protected $prpid;
    protected $ncurdate;

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
            $this->ncurdate = DB::table('enviro_general')->where('propertyid', Auth::user()->propertyid)->value('ncur');
            if ($propertydata) {
                $this->propertyid = $propertydata->propertyid;
            } else {
                $this->propertyid = $this->prpid;
            }
            $this->ptlngth = strlen($this->propertyid);
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');
            return $next($request);
        });
    }

    public function dailypowerentry(Request $request)
    {
        $user = auth()->user();
        $ncurdate = $this->ncurdate;
        $data = array();
        $month = $request->month ? $request->month : date('Y-m');
        $daysInMonth = cal_days_in_month(CAL_GREGORIAN, date('m', strtotime($month . '-01')), date('Y', strtotime($month . '-01')));
        $year = date('Y', strtotime($month . '-01'));
        $monthNum = date('m', strtotime($month . '-01'));
        for ($i = 1; $i <= $daysInMonth; $i++) {
            $date = sprintf('%04d-%02d-%02d', $year, $monthNum, $i);
            $data[$date] = array(
                'date' => $date,
                'kesco' => '',
                'solar' => '',
                'dg' => '',
                'total' => '0.00',
                'kesco_per' => '0.00',
                'solar_per' => '0.00',
                'dg_per' => '0.00',
                'hsd' => '',
                'kesco_h' => '00:00',
                'dg_h' => '00:00',
            );
        }
        try {
            $existing = MallDailyPowerEntry::where('propertyid', $this->propertyid)
                ->whereBetween('entry_date', array($month . '-01', date('Y-m-t', strtotime($month . '-01'))))
                ->get()->keyBy('entry_date');
            foreach ($existing as $edate => $row) {
                $data[$edate] = array(
                    'date' => $edate,
                    'kesco' => $row->kesco != 0 ? $row->kesco : '',
                    'solar' => $row->solar != 0 ? $row->solar : '',
                    'dg' => $row->dg != 0 ? $row->dg : '',
                    'total' => $row->total,
                    'kesco_per' => $row->kesco_per,
                    'solar_per' => $row->solar_per,
                    'dg_per' => $row->dg_per,
                    'hsd' => $row->hsd != 0 ? $row->hsd : '',
                    'kesco_h' => $row->kesco_h,
                    'dg_h' => $row->dg_h,
                    'sn' => $row->sn,
                );
            }
        } catch (\Exception $e) {
        }
        return view('property.dailypowerentry', compact('data', 'month', 'ncurdate', 'user'));
    }

    public function fetchdailypowerentry(Request $request)
    {
        $month = $request->month;
        $daysInMonth = cal_days_in_month(CAL_GREGORIAN, date('m', strtotime($month . '-01')), date('Y', strtotime($month . '-01')));
        $year = date('Y', strtotime($month . '-01'));
        $monthNum = date('m', strtotime($month . '-01'));
        $data = array();
        for ($i = 1; $i <= $daysInMonth; $i++) {
            $date = sprintf('%04d-%02d-%02d', $year, $monthNum, $i);
            $data[$date] = array(
                'date' => $date,
                'kesco' => '',
                'solar' => '',
                'dg' => '',
                'total' => '0.00',
                'kesco_per' => '0.00',
                'solar_per' => '0.00',
                'dg_per' => '0.00',
                'hsd' => '',
                'kesco_h' => '00:00',
                'dg_h' => '00:00',
            );
        }
        try {
            $existing = MallDailyPowerEntry::where('propertyid', $this->propertyid)
                ->whereBetween('entry_date', array($month . '-01', date('Y-m-t', strtotime($month . '-01'))))
                ->get()->keyBy('entry_date');
            foreach ($existing as $edate => $row) {
                $data[$edate] = array(
                    'date' => $edate,
                    'kesco' => $row->kesco != 0 ? $row->kesco : '',
                    'solar' => $row->solar != 0 ? $row->solar : '',
                    'dg' => $row->dg != 0 ? $row->dg : '',
                    'total' => $row->total,
                    'kesco_per' => $row->kesco_per,
                    'solar_per' => $row->solar_per,
                    'dg_per' => $row->dg_per,
                    'hsd' => $row->hsd != 0 ? $row->hsd : '',
                    'kesco_h' => $row->kesco_h,
                    'dg_h' => $row->dg_h,
                    'sn' => $row->sn,
                );
            }
        } catch (\Exception $e) {
        }
        return response()->json(array('data' => array_values($data)));
    }

    public function savedailypowerentry(Request $request)
    {
        $user = auth()->user();
        $propertyid = $this->propertyid;
        $entries = $request->entries;
        if (!is_array($entries)) {
            return response()->json(array('status' => false, 'message' => 'Invalid data'), 422);
        }
        try {
            DB::beginTransaction();
            foreach ($entries as $entry) {
                if (empty($entry['date'])) {
                    continue;
                }
                $data = array(
                    'propertyid' => $propertyid,
                    'entry_date' => $entry['date'],
                    'kesco' => isset($entry['kesco']) ? $entry['kesco'] : 0,
                    'solar' => isset($entry['solar']) ? $entry['solar'] : 0,
                    'dg' => isset($entry['dg']) ? $entry['dg'] : 0,
                    'total' => isset($entry['total']) ? $entry['total'] : 0,
                    'kesco_per' => isset($entry['kesco_per']) ? $entry['kesco_per'] : 0,
                    'solar_per' => isset($entry['solar_per']) ? $entry['solar_per'] : 0,
                    'dg_per' => isset($entry['dg_per']) ? $entry['dg_per'] : 0,
                    'hsd' => isset($entry['hsd']) ? $entry['hsd'] : 0,
                    'kesco_h' => isset($entry['kesco_h']) ? $entry['kesco_h'] : 0,
                    'dg_h' => isset($entry['dg_h']) ? $entry['dg_h'] : 0,
                    'u_name' => $user->name ? $user->name : null,
                    'u_ae' => $user->id ? $user->id : null,
                );
                MallDailyPowerEntry::updateOrCreate(
                    array('propertyid' => $propertyid, 'entry_date' => $entry['date']),
                    $data
                );
            }
            DB::commit();
            return response()->json(array('status' => true, 'message' => 'Saved successfully'));
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json(array('status' => false, 'message' => $e->getMessage()), 500);
        }
    }
}
