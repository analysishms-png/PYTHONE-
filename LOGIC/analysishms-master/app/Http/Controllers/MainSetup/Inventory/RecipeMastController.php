<?php

namespace App\Http\Controllers\MainSetup\Inventory;

use App\Http\Controllers\Controller;
use App\Models\Companyreg;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class RecipeMastController extends Controller
{
    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    protected $ptlngth;
    protected $prpid;
    protected $compcode;
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
            $this->compcode = companyvalue();
            $this->ncurdate = DB::table('enviro_general')->where('propertyid', Auth::user()->propertyid)->value('ncur');
            $this->propertyid = $propertydata->propertyid;
            $this->ptlngth = strlen($this->propertyid);
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');
            return $next($request);
        });
    }

    public function recipemaster(Request $request)
    {
        $finishItems = DB::select(
            "SELECT code, name FROM itemmast
             WHERE Property_ID = ? AND RestCode != ?
             GROUP BY code ORDER BY Name",
            [$this->propertyid, 'PURC' . $this->propertyid]
        );

        $rawItems = DB::select(
            "SELECT I.code, I.name, U.name AS wtunit
             FROM itemmast I
             LEFT JOIN unitmast U ON I.Unit = U.ucode
             WHERE I.Property_ID = ? AND I.RestCode = ?
             GROUP BY I.code ORDER BY I.Name",
            [$this->propertyid, 'PURC' . $this->propertyid]
        );

        $savedData = DB::select(
            "SELECT B.id, B.FinItem, B.RawItem, B.RawQty, B.rawunit AS wtunit,
                    (SELECT name FROM itemmast WHERE Code = B.FinItem AND Property_ID = ? LIMIT 1) AS finishname,
                    (SELECT name FROM itemmast WHERE Code = B.RawItem AND Property_ID = ? LIMIT 1) AS rawname
             FROM bom B
             WHERE B.propertyid = ?
             ORDER BY finishname, rawname",
            [$this->propertyid, $this->propertyid, $this->propertyid]
        );

        $savedCount = is_array($savedData) ? count($savedData) : 0;

        return view('property.recipemaster', [
            'finishItems' => $finishItems,
            'rawItems'    => $rawItems,
            'savedData'   => $savedData,
            'savedCount'  => $savedCount,
        ]);
    }

    public function recipemastersubmit(Request $request)
    {
        $finishcode = $request->input('finishcode');
        $totalitem  = (int) $request->input('totalitem', 0);

        if (!$finishcode || $totalitem < 1) {
            return redirect()->route('recipemaster')->with('error', 'Please select a finish item and add at least one raw item.');
        }

        try {
            DB::beginTransaction();

            DB::table('bom')
                ->where('propertyid', $this->propertyid)
                ->where('FinItem', $finishcode)
                ->delete();

            $insertedItems = [];
            $inserted = 0;

            for ($i = 1; $i <= $totalitem; $i++) {
                $rawcode = $request->input('rawitem' . $i);
                $rawqty  = floatval($request->input('rawqty' . $i, 0));
                $rawunit = $request->input('rawunit' . $i, '');
                $rawcost = floatval($request->input('rawcost' . $i, 0));

                if (!$rawcode) continue;
                if ($rawcode == $finishcode) continue;
                if (in_array($rawcode, $insertedItems)) continue;

                DB::table('bom')->insert([
                    'propertyid' => $this->propertyid,
                    'FinItem'    => $finishcode,
                    'rawcost'    => $rawcost,
                    'RawItem'    => $rawcode,
                    'RawQty'     => $rawqty,
                    'rawunit'    => $rawunit,
                    'created_at'    => now(),
                    'U_Name'     => Auth::user()->name,
                ]);

                $insertedItems[] = $rawcode;
                $inserted++;
            }

            DB::commit();
            $msg = $inserted > 0 ? "Recipe saved successfully. {$inserted} item(s)." : 'No items were inserted.';
            return redirect()->route('recipemaster')->with('success', $msg);
        } catch (\Exception $e) {
            DB::rollBack();
            return back()->with('error', 'Error saving recipe: ' . $e->getMessage());
        }
    }

    public function updaterecipemaster(Request $request, $finishcode)
    {
        $finishItems = DB::select(
            "SELECT code, name FROM itemmast
             WHERE Property_ID = ? AND RestCode != ?
             GROUP BY code ORDER BY Name",
            [$this->propertyid, 'PURC' . $this->propertyid]
        );

        $rawItems = DB::select(
            "SELECT I.code, I.name, U.name AS wtunit
             FROM itemmast I
             LEFT JOIN unitmast U ON I.Unit = U.ucode
             WHERE I.Property_ID = ? AND I.RestCode = ?
             GROUP BY I.code ORDER BY I.Name",
            [$this->propertyid, 'PURC' . $this->propertyid]
        );

        $existingItems = DB::select(
            "SELECT B.id, B.RawItem AS rawcode,
                    (SELECT name FROM itemmast WHERE Code = B.RawItem AND Property_ID = ? LIMIT 1) AS rawname,
                    B.rawunit AS wtunit, B.RawQty AS rawqty, B.rawcost AS rawcost
             FROM bom B
             WHERE B.propertyid = ? AND B.FinItem = ?
             ORDER BY rawname",
            [$this->propertyid, $this->propertyid, $finishcode]
        );

        $finishname = DB::table('itemmast')
            ->where('Code', $finishcode)
            ->where('Property_ID', $this->propertyid)
            ->value('name');

        return view('property.updaterecipemaster', [
            'finishItems'   => $finishItems,
            'rawItems'      => $rawItems,
            'existingItems' => $existingItems,
            'finishcode'    => $finishcode,
            'finishname'    => $finishname,
        ]);
    }

    public function recipemasterupdate(Request $request)
    {
        $finishcode = $request->input('finishcode');
        $totalitem  = (int) $request->input('totalitem', 0);

        if (!$finishcode) {
            return back()->with('error', 'Finish item not found.');
        }

        try {
            DB::beginTransaction();

            DB::table('bom')
                ->where('propertyid', $this->propertyid)
                ->where('FinItem', $finishcode)
                ->delete();

            $insertedItems = [];
            $inserted = 0;

            for ($i = 1; $i <= $totalitem; $i++) {
                $rawcode = $request->input('rawitem' . $i);
                $rawqty  = floatval($request->input('rawqty' . $i, 0));
                $rawunit = $request->input('rawunit' . $i, '');
                $rawcost = floatval($request->input('rawcost' . $i, 0));

                if (!$rawcode) continue;
                if ($rawcode == $finishcode) continue;
                if (in_array($rawcode, $insertedItems)) continue;

                DB::table('bom')->insert([
                    'propertyid' => $this->propertyid,
                    'FinItem'    => $finishcode,
                    'RawItem'    => $rawcode,
                    'rawcost'    => $rawcost,
                    'RawQty'     => $rawqty,
                    'rawunit'    => $rawunit,
                    'created_at'    => now(),
                    'U_Name'     => Auth::user()->name,
                ]);

                $insertedItems[] = $rawcode;
                $inserted++;
            }

            DB::commit();
            $msg = $inserted > 0 ? "Recipe updated successfully. {$inserted} item(s)." : 'No items were updated.';
            return redirect()->route('recipemaster')->with('success', $msg);
        } catch (\Exception $e) {
            DB::rollBack();
            return back()->with('error', 'Error updating recipe: ' . $e->getMessage());
        }
    }

    public function deleterecipemaster(Request $request, $sn)
    {
        if (!$sn || !is_numeric($sn)) {
            return back()->with('error', 'Invalid item.');
        }

        $bomRow = DB::table('bom')
            ->where('propertyid', $this->propertyid)
            ->where('id', (int)$sn)
            ->first();

        if (!$bomRow) {
            return back()->with('error', 'Item not found.');
        }

        DB::table('bom')
            ->where('propertyid', $this->propertyid)
            ->where('id', (int)$sn)
            ->limit(1)
            ->delete();

        return redirect()->route('recipemaster')->with('success', 'Item deleted successfully.');
    }

    public function printRecipeMaster(Request $request)
    {
        $finishcode = $request->query('finishcode');
        $company    = Companyreg::where('propertyid', $this->propertyid)->first();

        $finishItem = $finishcode
            ? DB::table('itemmast')->where('Code', $finishcode)->where('Property_ID', $this->propertyid)->value('name')
            : 'All Items';

        if ($finishcode) {
            $rows = DB::select(
                "SELECT B.id, B.rawunit AS wtunit, B.RawQty AS qty,
                        (SELECT name FROM itemmast WHERE Code = B.RawItem AND Property_ID = ? LIMIT 1) AS name,
                        (SELECT name FROM itemmast WHERE Code = B.FinItem AND Property_ID = ? LIMIT 1) AS finishname
                 FROM bom B
                 WHERE B.propertyid = ? AND B.FinItem = ?
                 ORDER BY name",
                [$this->propertyid, $this->propertyid, $this->propertyid, $finishcode]
            );
        } else {
            $rows = DB::select(
                "SELECT B.id, B.rawunit AS wtunit, B.RawQty AS qty,
                        (SELECT name FROM itemmast WHERE Code = B.RawItem AND Property_ID = ? LIMIT 1) AS name,
                        (SELECT name FROM itemmast WHERE Code = B.FinItem AND Property_ID = ? LIMIT 1) AS finishname
                 FROM bom B
                 WHERE B.propertyid = ?
                 ORDER BY finishname, name",
                [$this->propertyid, $this->propertyid, $this->propertyid]
            );
        }

        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView(
            'property.print.printrecipemaster',
            [
                'company'    => $company,
                'rows'       => $rows,
                'finishItem' => $finishItem,
            ]
        )->setPaper('a4', 'portrait');

        return $pdf->stream('recipe-master.pdf');
    }
}
