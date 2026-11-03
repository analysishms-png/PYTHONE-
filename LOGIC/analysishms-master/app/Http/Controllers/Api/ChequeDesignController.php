<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\ChequeDesign;
use Illuminate\Http\Request;

class ChequeDesignController extends Controller
{

    public function index(Request $request)
    {
        $designs = ChequeDesign::select(
            'id',
            'design_name',
            'propertyid',
            'u_name',
            'created_at'
        )
            ->where(
                'propertyid',
                $request->propertyid
            )
            ->orderByDesc('id')
            ->get();

        return response()->json([
            'success' => true,
            'data' => $designs,
        ]);
    }

    public function show($id)
    {
        $design = ChequeDesign::findOrFail($id);

        return response()->json([
            'success' => true,
            'data' => $design,
        ]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'propertyid' => ['required'],
            'design_name' => ['required', 'string'],
            'layout_json' => ['required'],
            'u_name' => ['required', 'string'],
        ]);

        $design = ChequeDesign::create([
            'propertyid' => $request->propertyid,
            'design_name' => $request->design_name,
            'layout_json' => $request->layout_json,
            'u_name' => $request->u_name,
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Design saved successfully',
            'design_id' => $design->id,
        ]);
    }

    public function update(
        Request $request,
        $id
    ) {
        
        $request->validate([
            'design_name' => ['required'],
            'layout_json' => ['required'],
            'u_name' => ['required', 'string'],
        ]);

        $design = ChequeDesign::findOrFail($id);

        $design->update([
            'design_name' => $request->design_name,
            'layout_json' => $request->layout_json,
            'u_name' => $request->u_name,
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Design updated successfully',
        ]);
    }

    public function destroy($id)
    {
        $design = ChequeDesign::findOrFail($id);
        
        $design->delete();

        return response()->json([
            'success' => true,
            'message' => 'Design deleted successfully',
        ]);
    }
}
