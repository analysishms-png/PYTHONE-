<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Printing extends Controller
{
    public function printkot(Request $request)
    {
        $data = [
            'Name' => 'Sagar',
            'User Name' => 'Astrogeeksagar',
            'Mobile' => '8574921683',
            'Project' => 'Analysis Hotel Management System'
        ];

        return response()->json($data);
    }
    
}
