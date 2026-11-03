<?php

namespace App\Http\Controllers;

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Validation\ValidationException;

class RevenueRateRuleMasterController extends Controller
{
    /** Rule Name dropdown ke fixed options. */
    public const RULE_NAMES = [
        'Standard Season Rule',
        'Peak Season Rule',
        'Off Season Rule',
        'Festival Special Rule',
        'Weekend Rule',
    ];

    protected $propertyid;

    protected $ncurdate;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (! isset(Auth::user()->name)) {
                return redirect('/');
            }

            $prpid = Auth::user()->propertyid;
            $propertydata = DB::table('users')->where('propertyid', $prpid)->first();
            $this->propertyid = $propertydata ? $propertydata->propertyid : $prpid;
            $this->ncurdate = DB::table('enviro_general')
                ->where('propertyid', $this->propertyid)
                ->value('ncur');

            $this->ensureTable();

            return $next($request);
        });
    }

  
    public function index(Request $request)
    {
        $rows = DB::table('rv_raterule')
            ->where('property_id', $this->propertyid)
            ->orderBy('rule_name')
            ->orderByDesc('from_date')
            ->orderBy('sno')
            ->get();

        $masters = [];

        foreach ($rows as $row) {
            $key = $row->rule_name.'|'.$row->from_date;

            if (! isset($masters[$key])) {
                $masters[$key] = (object) [
                    'rule_name' => $row->rule_name,
                    'from_date' => $row->from_date,
                    'to_date' => $row->to_date,
                    'activeYN' => $row->activeYN,
                    'u_name' => $row->u_name,
                    'created_at' => $row->created_at,
                    'rules' => [],
                ];
            }

            $masters[$key]->rules[] = $row;
        }

        return view('property.revenueraterulemaster', [
            'ncurdate' => $this->ncurdate,
            'masters' => collect(array_values($masters)),
        ]);
    }


    public function store(Request $request)
    {
        $request->validate([
            'rule_name' => 'required|in:'.implode(',', self::RULE_NAMES),
            'fromdate' => 'required|date',
            'todate' => 'required|date|after_or_equal:fromdate',
            'rules' => 'required|array|min:1',
            'rules.*.occ_from' => 'required|numeric|min:0|max:100',
            'rules.*.occ_to' => 'required|numeric|min:0|max:100',
            'rules.*.rate_adjustment' => 'required|numeric',
            'rules.*.adjustment_type' => 'required|in:PERCENT,FIXED',
        ], [
            'rule_name.in' => 'Rule Name dropdown se select karo.',
            'todate.after_or_equal' => 'To Date, From Date se chhoti nahi ho sakti.',
            'rules.required' => 'Kam se kam ek occupancy rule range add karo.',
        ]);

        $ruleName = trim((string) $request->input('rule_name'));
        $fromDate = $request->input('fromdate');
        $toDate = $request->input('todate');
        $activeYN = $request->input('active') === 'Y' ? 'Y' : 'N';
        $username = mb_substr((string) (Auth::user()->u_name ?? Auth::user()->name), 0, 25);

        $insert = [];

        foreach ($request->input('rules') as $i => $rule) {
            if ((float) $rule['occ_to'] <= (float) $rule['occ_from']) {
                throw ValidationException::withMessages([
                    'rules.'.$i.'.occ_to' => 'Occupancy To, Occupancy From se bada hona chahiye.',
                ]);
            }

            $insert[] = [
                'property_id' => $this->propertyid,
                'rule_name' => $ruleName,
                'from_date' => $fromDate,
                'to_date' => $toDate,
                'sno' => count($insert) + 1,
                'vno' => 1,
                'occupancy_from' => round((float) $rule['occ_from'], 2),
                'occupancy_to' => round((float) $rule['occ_to'], 2),
                'rate_adjustment' => round((float) $rule['rate_adjustment'], 2),
                'adjustment_type' => $rule['adjustment_type'],
                'activeYN' => $activeYN,
                'u_name' => $username,
                'u_updatedby' => $username,
                'created_at' => now(),
                'updated_at' => now(),
            ];
        }

        $exists = DB::table('rv_raterule')
            ->where('property_id', $this->propertyid)
            ->where('rule_name', $ruleName)
            ->where('from_date', $fromDate)
            ->exists();

        DB::transaction(function () use ($ruleName, $fromDate, $insert) {
           
            DB::table('rv_raterule')
                ->where('property_id', $this->propertyid)
                ->where('rule_name', $ruleName)
                ->where('from_date', $fromDate)
                ->delete();

            DB::table('rv_raterule')->insert($insert);
        });

        return redirect()->route('revenueraterulemaster')
            ->with('success', $exists
                ? 'Rate rule master updated successfully.'
                : 'Rate rule master saved successfully.');
    }

    
    public function toggle($rule_name, $fromdate)
    {
        $query = DB::table('rv_raterule')
            ->where('property_id', $this->propertyid)
            ->where('rule_name', $rule_name)
            ->where('from_date', $fromdate);

        $current = $query->value('activeYN');

        if ($current !== null) {
            $query->update([
                'activeYN' => $current === 'Y' ? 'N' : 'Y',
                'u_updatedby' => mb_substr((string) (Auth::user()->u_name ?? Auth::user()->name), 0, 50),
                'updated_at' => now(),
            ]);
        }

        return redirect()->route('revenueraterulemaster')
            ->with('success', 'Rate rule status updated.');
    }

  
    public function destroy($rule_name, $fromdate)
    {
        DB::table('rv_raterule')
            ->where('property_id', $this->propertyid)
            ->where('rule_name', $rule_name)
            ->where('from_date', $fromdate)
            ->delete();

        return redirect()->route('revenueraterulemaster')
            ->with('success', 'Rate rule master deleted.');
    }

    
    private function ensureTable(): void
    {
        if (Schema::hasTable('rv_raterule')) {
            return;
        }

        Schema::create('rv_raterule', function (Blueprint $table) {
            $table->bigInteger('id')->unique('rv_raterule_id_unique');
            $table->integer('property_id');
            $table->string('rule_name', 50);
            $table->date('from_date');
            $table->date('to_date');
            $table->integer('sno')->default(1);
            $table->integer('vno')->default(1);
            $table->decimal('occupancy_from', 5, 2);
            $table->decimal('occupancy_to', 5, 2);
            $table->decimal('rate_adjustment', 10, 2);
            $table->string('adjustment_type', 10);
            $table->string('activeYN', 1)->default('Y');
            $table->string('u_name', 25)->nullable();
            $table->string('u_updatedby', 50)->nullable();
            $table->dateTime('created_at')->nullable();
            $table->dateTime('updated_at')->nullable();

            $table->primary(['property_id', 'rule_name', 'from_date']);
        });

        DB::statement('ALTER TABLE `rv_raterule` MODIFY `id` INT UNSIGNED NOT NULL AUTO_INCREMENT');
    }
}
