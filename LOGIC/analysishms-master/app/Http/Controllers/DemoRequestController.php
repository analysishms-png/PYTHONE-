<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DemoRequest;
use Illuminate\Support\Facades\DB;

class DemoRequestController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'orderno' => 'nullable|string|max:255',
            'email' => 'required|email|max:255',
            'phone_number' => 'nullable|string|max:20',
            'hotel_name' => 'nullable|string|max:255',
            'message' => 'nullable|string',
        ]);

        DemoRequest::create([
            'name' => $request->name,
            'orderno' => $request->orderno,
            'email' => $request->email,
            'phone_number' => $request->phone_number,
            'hotel_name' => $request->hotel_name,
            'message' => $request->message,
        ]);

        return redirect()->back()->with('success', 'Request Submitted Successfully!');
    }
    
}
