<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Location extends Controller
{
    public function LoadCountry()
    {
        $data['country'] = DB::table('country')->orderBy('country', 'asc')->get();
        return view('admin.companyreg', $data);
    }
}
