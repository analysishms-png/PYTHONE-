<?php

namespace App\Http\Controllers;

use App\Services\EnviroNotificationService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class TestingControlller extends Controller
{
    public function generateQr(Request $request)
    {
        $signedqr = 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjRERTE1NDRBRTY5NUJEQzg0RUM3QkMxMkYyRjU3RjgxM0Y0NEUzMDEiLCJ4NXQiOiJUZUZVU3VhVnZjaE94N3dTOHZWX2dUOUU0d0UiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJOSUMiLCJkYXRhIjoie1wiU2VsbGVyR3N0aW5cIjpcIjA5QUFCQ0c4NjIzSzFaQlwiLFwiQnV5ZXJHc3RpblwiOlwiMDlBQUdDQjEzMjNHMVoxXCIsXCJEb2NOb1wiOlwiSURDLzI2LTI3LzFcIixcIkRvY1R5cFwiOlwiSU5WXCIsXCJEb2NEdFwiOlwiMTAvMDQvMjAyNlwiLFwiVG90SW52VmFsXCI6MTI1OTkuOSxcIkl0ZW1DbnRcIjoxLFwiTWFpbkhzbkNvZGVcIjpcIjk5OTc5OVwiLFwiSXJuXCI6XCJiZThmYmNmNGQ4MDllM2UxMDU2N2QyYmExNjAxODIyODM1YzU2YjAxZGE2NTRlMjlhYjBjZGZkNzAyZDFhM2U0XCIsXCJJcm5EdFwiOlwiMjAyNi0wNC0xMCAxODoyMDowMFwifSJ9.0J8BHMcLY0fYXpECf0fPnLLsE8pUv6CbBevTOn2LeeH9wxJ8Xp3vPq1tzUZxk2pnjSl0YBzn2c0ClIiF2pcLQQWuvvtKcJ62cQuNx3PVqwDYqmp6WfGPGH1QH2n8TZCQZnfQGsvQ7KHWGfK5oVG9sJfFl-dcB4eyJF_lQXURLD2gDC71LpNmfMdFMIiGFNN4zTVHvjoqTuJyarxR9hmLguQBJjH8gJ-ReYs1tN0--yYitzHoxPB1AHZD8w88jgVhpMOKyVNoyggzXkX-VidMI-gtd_FntKkmdv6hvk12AzkGFpxKB1qDC0MirmmJAFVWEP28h3HSOyDwYQ5vv7pFMg';
        $qrbase64 = base64_encode(
            QrCode::format('png')->size(300)->generate($signedqr)
        );

        return $qrbase64;
    }

    public function testamount()
    {
        $numamount = 302548;
        $amount = amountToWords($numamount);

        return $amount;
    }
    public function notification(Request $reqquest)
    {
        // app(EnviroNotificationService::class)->send(
        //     Auth::user()->propertyid,
        //     'submitwalkin',
        // );
        $result = app(\App\Services\EnviroNotificationService::class)->send(
            Auth::user()->propertyid,
            'submitwalkin'
        );

        dd($result);
        $result = app(\App\Services\EnviroNotificationService::class)->send(
            Auth::user()->propertyid,
            1
        );
        return 'sagar';
    }

    public function delayedResult($seconds)
    {
        sleep($seconds);

        return response()->json([
            'status' => true,
            'message' => "Done after {$seconds} seconds"
        ]);
    }
}
