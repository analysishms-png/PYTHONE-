<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class HomeController extends Controller
{
    public function index()
    {
        return view('frontend.index');
    }

    public function application()
    {
        return view('frontend.application');
    }

    public function apiusages()
    {
        return view('frontend.apiusages');
    }

    public function about()
    {
        return view('frontend.aboutus');
    }

    public function frontofficeservices()
    {
        return view('frontend.services.front-office');
    }

    public function pointofsaleservices()
    {
        return view('frontend.services.pointofsale');
    }

    public function banquetservices()
    {
        return view('frontend.services.banquet');
    }

    public function inventoryservices()
    {
        return view('frontend.services.inventory');

    }

    public function reservationservices()
    {
        return view('frontend.services.reservation');
    }

    public function contact()
    {
        return view('frontend.contactus');
    }
    /**
     * Display a custom page by slug stored in the pages table.
     */
    public function dynamicPage($slug)
    {
        $page = \App\Models\Page::where('slug', $slug)->where('status', 'active')->first();
        if (!$page) {
            abort(404);
        }

        // assuming a simple view that just echoes content, you can create a dedicated blade if needed
        return view('frontend.page', compact('page'));
    }
    public function reservationdeveloper()
    {
        return view('frontend.developer.reservation');
    }

    public function tools()
    {
        return view('frontend.logintools');
    }

    public function login()
    {
        return view('frontend.login');
    }
    
    public function toolslogin(Request $request)
    {
        $request->validate([
            'u_name' => 'required',
            'password' => 'required',
        ]);

        $credentials = $request->only('u_name', 'password');
        $credentials['propertyid'] = 20;
        if (Auth::attempt($credentials)) {
            \App\Models\SupportTicket::updateUserApStatus((int) Auth::id(), 'P');
            \App\Models\SupportTicket::assignQueuedTicketsForAvailableUsers();
            return redirect()->intended('tools/dashboard');
        }

        return back()->withErrors([
            'u_name' => 'The provided credentials do not match our records.',
        ])->withInput();

    }
}
