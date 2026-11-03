<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class HkQrLoginController extends Controller
{
    /**
     * QR code scan → login page dikhao
     * URL: GET /hk-scan/{propertyid}/{roomno}
     */
    public function showLogin(string $propertyid, string $roomno)
    {
        // Room exist karta hai is property mein?
        $roomExists = DB::table('room_mast')
            ->where('propertyid', $propertyid)
            ->where('rcode', $roomno)
            ->where('type', 'RO')
            ->exists();

        if (!$roomExists) {
            abort(404, 'Invalid QR Code — Room not found.');
        }

        return view('property.housekeeping.hk-qr-login', [
            'propertyid' => $propertyid,
            'roomno'     => $roomno,
        ]);
    }

    /**
     * Login form submit → validate → permission check → redirect to startcleaning
     * URL: POST /hk-scan/{propertyid}/{roomno}
     */
    public function doLogin(Request $request, string $propertyid, string $roomno)
    {
        $request->validate([
            'u_name'   => 'required|string',
            'password' => 'required|string',
        ], [
            'u_name.required'   => 'Username required hai.',
            'password.required' => 'Password required hai.',
        ]);

        // ── Step 1: User dhundo — same propertyid, active (status=1) ──────────
        $user = DB::table('users')
            ->where('propertyid', $propertyid)
            ->where(function ($q) use ($request) {
                $q->where('u_name', $request->u_name)
                  ->orWhere('email', $request->u_name);
            })
            ->where('status', 1)
            ->first();

        if (!$user) {
            return back()
                ->withInput($request->only('u_name'))
                ->withErrors(['u_name' => 'Account exist nahi karta ya inactive hai.']);
        }

        // ── Step 2: Password verify ────────────────────────────────────────────
        if (!Hash::check($request->password, $user->password)) {
            return back()
                ->withInput($request->only('u_name'))
                ->withErrors(['password' => 'Password galat hai.']);
        }

        // // ── Step 3: Designation check — HOUSEKEEPER ya HOUSEKEEPING SUPERVISOR ──
        // $designationName = DB::table('desig')
        //     ->where('propertyid', $propertyid)
        //     ->where('code', $user->designation)
        //     ->value('name');

        // $designUpper    = strtoupper(trim($designationName ?? ''));
        // $isHousekeeper  = ($designUpper === 'HOUSEKEEPER');
        // $isSupervisor   = ($designUpper === 'HOUSEKEEPING SUPERVISOR');

        // if (!$isHousekeeper && !$isSupervisor) {
        //     return back()
        //         ->withInput($request->only('u_name'))
        //         ->withErrors(['u_name' => 'You are not authorized. Only Housekeeper or Housekeeping Supervisor can use this QR.']);
        // }

        // // ── Step 4: Permission check — role ke hisaab se alag route check ────
        // if ($isSupervisor) {
        //     // Supervisor ke liye Inspection permission chahiye
        //     $hasPermission = DB::table('menuhelp')
        //         ->where('propertyid', $propertyid)
        //         ->where('username', $user->u_name)
        //         ->whereIn('route', ['Inspection', 'inspection'])
        //         ->where('view', 1)
        //         ->exists();

        //     if (!$hasPermission) {
        //         return back()
        //             ->withInput($request->only('u_name'))
        //             ->withErrors(['u_name' => 'Aapke paas Housekeeping - Inspection ka permission nahi hai.']);
        //     }
        // } else {
        //     // Housekeeper ke liye startcleaning permission chahiye
        //     $hasPermission = DB::table('menuhelp')
        //         ->where('propertyid', $propertyid)
        //         ->where('username', $user->u_name)
        //         ->where('route', 'startcleaning')
        //         ->where('view', 1)
        //         ->exists();

        //     if (!$hasPermission) {
        //         return back()
        //             ->withInput($request->only('u_name'))
        //             ->withErrors(['u_name' => 'Aapke paas Housekeeping - Start Cleaning ka permission nahi hai.']);
        //     }
        // }

        // ── Step 3: Role detection via menuhelp permissions ──────────────────
$hasInspectionPerm = DB::table('menuhelp')
    ->where('propertyid', $propertyid)
    ->where('username', $user->u_name)
    ->whereIn('route', ['Inspection', 'inspection'])
    ->where('view', 1)
    ->exists();

$hasStartCleaningPerm = DB::table('menuhelp')
    ->where('propertyid', $propertyid)
    ->where('username', $user->u_name)
    ->where('route', 'startcleaning')
    ->where('view', 1)
    ->exists();

$isSupervisor  = $hasInspectionPerm;
$isHousekeeper = $hasStartCleaningPerm && !$hasInspectionPerm;

// ── Step 4: Authorization check ───────────────────────────────────────
if (!$isSupervisor && !$isHousekeeper) {
    return back()
        ->withInput($request->only('u_name'))
        ->withErrors(['u_name' => 'Aapke paas Housekeeping ka permission nahi hai. Admin se contact karein.']);
}

        // ── Step 5: Laravel session mein login karo ───────────────────────────
        Auth::loginUsingId($user->id);

        // ── Step 6: Aaj ki date fetch karo ────────────────────────────────────
        $todayDate = DB::table('enviro_general')
            ->where('propertyid', $propertyid)
            ->value('ncur');

        // ── Room ka latest cleaning record ────────────────────────────────────
        $latestCleaning = DB::table('hkcleaninghdr')
            ->where('propertyid', $propertyid)
            ->where('roommo', $roomno)
            ->where('cleaningdate', $todayDate)
            ->orderByDesc('cleaningid')
            ->first();

        // ── Step 7: SUPERVISOR flow ───────────────────────────────────────────
        if ($isSupervisor) {
            // Cleaning Completed + inspection nahi hua / Failed → Inspection screen
            if ($latestCleaning && $latestCleaning->cleaningstatus === 'Completed') {
                // Check karo inspection already Passed to nahi hai
                $inspectionPassed = DB::table('hkinspectionhdr')
                    ->where('propertyid', $propertyid)
                    ->where('cleaningid', $latestCleaning->cleaningid)
                    ->where('inspectionstatus', 'Passed')
                    ->exists();

                if ($inspectionPassed) {
                    // Room already inspected and passed — kuch karne ki zarurat nahi
                    return back()
                        ->withErrors(['u_name' => 'Room ' . $roomno . ' ki cleaning inspect ho chuki hai aur Passed hai. Koi action required nahi.']);
                }

                // Inspection pending ya Failed → Inspection screen pe bhejo
                return redirect(url('Inspection') . '?cleaningid=' . $latestCleaning->cleaningid);
            }

            // Cleaning abhi In Progress hai → supervisor wait kare
            if ($latestCleaning && $latestCleaning->cleaningstatus === 'In Progress') {
                return back()
                    ->withErrors(['u_name' => 'Room ' . $roomno . ' ki cleaning abhi In Progress hai. Cleaning complete hone ke baad inspect karein.']);
            }

            // Koi cleaning nahi mili aaj ke liye
            return back()
                ->withErrors(['u_name' => 'Room ' . $roomno . ' ke liye aaj koi completed cleaning nahi mili jo inspect ki ja sake.']);
        }

        // ── Step 8: HOUSEKEEPER flow (same as before) ─────────────────────────
        if ($latestCleaning && $latestCleaning->cleaningstatus === 'In Progress') {
            // Cleaning In Progress → Room Cleaning Entry pe bhejo
            return redirect(url('roomcleaningentry') . '?cleaningid=' . $latestCleaning->cleaningid);
        }

        // Room ke liye latest dirty assignment dhundo
        $assign = DB::table('hkroomassigns')
            ->where('propertyid', $propertyid)
            ->where('roomno', $roomno)
            ->where('status', 'dirty')
            ->orderByDesc('id')
            ->first();

        if ($assign) {
            return redirect(url('startcleaning') . '?id=' . $assign->id);
        }

        // Assignment nahi mila → startcleaning pe roomno pass karo
        return redirect(url('startcleaning') . '?roomno=' . urlencode($roomno));
    }
}
