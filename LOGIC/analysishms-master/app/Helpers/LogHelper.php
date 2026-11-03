<?php

use App\Models\Log;
use Illuminate\Support\Facades\Auth;

function logData($type, $message, $propertyid = null, $username = null, $line = null, $file = null, $connection = null)
{
    $user = Auth::user();

    $pid = $propertyid ?? ($user ? $user->propertyid : null);

    $uname = $username ?? ($user ? $user->name : 'system');

    $conn = $connection ?? 'tenant';

    DB::connection($conn)->table('logs')->insert([
        'propertyid' => $pid,
        'username' => $uname,
        'log_type' => $type,
        'message' => $message,
        'line' => $line,
        'file' => $file,
        'ip_address' => request()->ip(),
        'created_at' => now()
    ]);
}
