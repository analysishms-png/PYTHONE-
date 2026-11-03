<?php

namespace App\Helpers;

use App\Models\Depart;
use App\Models\EnviroWhatsapp;
use App\Models\GuestProf;
use App\Models\MuzztechSession;
use App\Models\Paycharge;
use App\Models\Sale1;
use App\Models\WhatsappLog;
use Exception;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class WhatsappSend
{
    protected $propertyid;
    protected $isAllowedToSend = true;

    public function __construct()
    {
        $this->propertyid = Auth::user()?->propertyid;
        $wpenv = EnviroWhatsapp::where('propertyid', $this->propertyid)->first();

        if ($wpenv && $wpenv->whatsappbal <= 10) {
            $this->isAllowedToSend = false;
            WhatsappLog::create([
                'propertyid' => $this->propertyid,
                'type' => 'Balance Error',
                'recipient_phone_number' => '',
                'template_id' => '',
                'parameters' => '',
                'response' => "Only $wpenv->whatsappbal Left. Please Recharge First.",
                'http_code' => 500,
                'status' => 'failed',
                'u_name' => Auth::user()?->name,
            ]);
        }
    }

    public function MuzzTech($msgdata, $phone, $type, $templatecolumn)
    {
        if (!$this->isAllowedToSend) {
            return false;
        }
        // Format date/time values
        foreach ($msgdata as &$value) {
            $time = strtotime($value);
            if ($time) {
                if (date('Y-m-d', $time) === $value) {
                    $value = date('d-M-Y', $time);
                } elseif (date('H:i:s', $time) === $value || date('H:i', $time) === $value) {
                    $value = date('H:i', $time);
                }
            }
        }
        unset($value);

        // Split phone numbers by comma and trim spaces
        $phoneNumbers = array_map('trim', explode(',', $phone));

        $wpenv = EnviroWhatsapp::where('propertyid', $this->propertyid)->first();
        $bearercode = $wpenv->bearercode;
        $templateid = $wpenv->{$templatecolumn};
        $url = rtrim($wpenv->whatsappurl, '/');
        $variablecount = count($msgdata);

        $values = $msgdata;
        $parameters = [];

        for ($i = 0; $i < $variablecount; $i++) {
            $parameters[] = ['text' => $values[$i] ?? ''];
        }


        foreach ($phoneNumbers as $recipientPhone) {

            $payload = json_encode([
                "template_id" => $templateid,
                "media_url" => "",
                "parameters" => $parameters,
                "country_code" => $wpenv->pphonenoprefix,
                "recipient_phone_number" => $recipientPhone,
            ]);

            $ch = curl_init($url);

            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
            curl_setopt($ch, CURLOPT_HTTPHEADER, [
                'Authorization: Bearer ' . $bearercode,
                'Content-Type: application/json',
                'Accept: application/json'
            ]);

            $response = curl_exec($ch);
            $httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            curl_close($ch);

            WhatsappLog::create([
                'propertyid' => $this->propertyid,
                'type' => $type,
                'recipient_phone_number' => $recipientPhone,
                'template_id' => $templateid,
                'parameters' => json_encode($parameters),
                'response' => $response,
                'http_code' => $httpcode,
                'status' => $httpcode == 200 ? 'success' : 'failed',
                'u_name' => Auth::user()->name,
            ]);

            if ($httpcode == 200) {
                ResHelper::updataincdnc('enviro_whatsapp', 'increment', 'whatsappsend');
                ResHelper::updataincdnc('enviro_whatsapp', 'decrement', 'whatsappbal');
            }
        }

        return true;
    }

    public function selfreservationsend($name, $companyname, $arrivaldate, $arrivaltime, $bookno, $phone, $company, $propertyid)
    {
        $templateid = '2177971299367044';

        $parameters = [
            ["text" => $name],
            ["text" => $companyname],
            ["text" => date('d-M-Y', strtotime($arrivaldate))],
            ["text" => $arrivaltime],
            ["text" => $bookno],
            ["text" => $company],
        ];

        $payload = json_encode([
            "template_id" => $templateid,
            "media_url" => "",
            "parameters" => $parameters,
            "country_code" => "91",
            "recipient_phone_number" => $phone,
        ]);

        $ch = curl_init('https://meta.muzztech.com/api/v1/send/template/messages/');

        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
        curl_setopt($ch, CURLOPT_HTTPHEADER, [
            'Authorization: Bearer ' . 'BPXWnlxHIhEWcm3dLSnkLo34IqUMD0b0Fps8leECUeSSzj03EJPBT25aWG3Lo1945MCmLp3GghwTe6MogN9UD2WnzojTxyD7C8pddXSuc1URqr8b6wX7C1Dswkdk3kS6j4wAQMPPWsWbUWnFrcwfUOJjv5Z2T3kH',
            'Content-Type: application/json',
            'Accept: application/json'
        ]);

        $response = curl_exec($ch);
        $httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);

        WhatsappLog::create([
            'propertyid' => $propertyid,
            'type' => 'Self Reservation',
            'recipient_phone_number' => $phone,
            'template_id' => $templateid,
            'parameters' => json_encode($parameters),
            'response' => $response,
            'http_code' => $httpcode,
            'status' => 'success',
            'u_name' => 'Self Booking',
        ]);
    }

    public function sendPdfToApi($filename, $pdfContent, $docid)
    {
        $apiUrl = 'https://meta.muzztech.com/api/v1/create/session/media';
        $bearerToken = config('services.muzztech.bearer_token', env('MUZZTECH_BEARER_TOKEN'));

        if (!$bearerToken) {
            Log::warning('MUZZTECH_BEARER_TOKEN not configured');
            return [
                'success' => false,
                'message' => 'API token not configured'
            ];
        }

        $tempFile = tempnam(sys_get_temp_dir(), 'pdf_');
        file_put_contents($tempFile, $pdfContent);

        try {
            $ch = curl_init();

            curl_setopt($ch, CURLOPT_URL, $apiUrl);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_TIMEOUT, 30);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);

            $headers = [
                'Authorization: Bearer ' . $bearerToken,
                'Accept: application/json'
            ];
            curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

            $cfile = curl_file_create($tempFile, 'application/pdf', $filename);
            $postFields = ['filename' => $cfile];

            curl_setopt($ch, CURLOPT_POSTFIELDS, $postFields);

            $response = curl_exec($ch);
            $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            $curlError = curl_error($ch);

            curl_close($ch);

            if ($curlError) {
                Log::error('Curl error sending PDF to API', ['error' => $curlError]);
                return [
                    'success' => false,
                    'message' => 'Network error: ' . $curlError
                ];
            }

            $decodedResponse = json_decode($response, true);

            if ($httpCode == 200) {
                MuzztechSession::create([
                    'propertyid' => $this->propertyid,
                    'docid' => $docid,
                    'header_handle' => $decodedResponse['data']['header_handle'] ?? null,
                    'media_id' => $decodedResponse['data']['media_id'] ?? null,
                    'expire_at' => $decodedResponse['data']['expire_at'] ?? null,
                    'created_at' => now(),
                ]);
                $muztechdata = MuzztechSession::where('propertyid', $this->propertyid)->where('docid', $docid)->first();
                sleep(2);
                $this->sendpdftoguestpos($muztechdata->docid);
            }

            WhatsappLog::create([
                'propertyid' => $this->propertyid,
                'type' => 'Session Media Create POS',
                'recipient_phone_number' => '',
                'template_id' => '',
                'parameters' => '',
                'response' => $response,
                'http_code' => $httpCode,
                'status' => $httpCode == 200 ? 'success' : 'failed',
                'u_name' => Auth::user()?->name,
            ]);
        } catch (Exception $e) {
            logData('POS PDF SEND Print Helper File', $e->getMessage(), $this->propertyid, Auth::user()->name, $e->getLine(), 'WhatsappSend');
            return [
                'success' => false,
                'message' => 'Exception: ' . $e->getMessage()
            ];
        } finally {
            if (file_exists($tempFile)) {
                unlink($tempFile);
            }
        }
    }

    public function sendPdfToApiDynamic($filename, $pdfContent, $docid, $invoiceno, $netamount, $paidss, $fombilldetail, $guest)
    {
        $apiUrl = 'https://meta.muzztech.com/api/v1/create/session/media';
        $bearerToken = config('services.muzztech.bearer_token', env('MUZZTECH_BEARER_TOKEN'));

        if (!$bearerToken) {
            // Log::warning('MUZZTECH_BEARER_TOKEN not configured');
            return [
                'success' => false,
                'message' => 'API token not configured'
            ];
        }

        $tempFile = tempnam(sys_get_temp_dir(), 'pdf_');
        file_put_contents($tempFile, $pdfContent);

        try {
            $ch = curl_init();

            curl_setopt($ch, CURLOPT_URL, $apiUrl);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_TIMEOUT, 30);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);

            $headers = [
                'Authorization: Bearer ' . $bearerToken,
                'Accept: application/json'
            ];
            curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

            $cfile = curl_file_create($tempFile, 'application/pdf', $filename);
            $postFields = ['filename' => $cfile];

            curl_setopt($ch, CURLOPT_POSTFIELDS, $postFields);

            $response = curl_exec($ch);
            $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            $curlError = curl_error($ch);

            curl_close($ch);

            if ($curlError) {
                Log::error('Curl error sending PDF to API', ['error' => $curlError]);
                return [
                    'success' => false,
                    'message' => 'Network error: ' . $curlError
                ];
            }

            $decodedResponse = json_decode($response, true);

            if ($httpCode == 200) {
                MuzztechSession::create([
                    'propertyid' => $this->propertyid,
                    'docid' => $docid,
                    'header_handle' => $decodedResponse['data']['header_handle'] ?? null,
                    'media_id' => $decodedResponse['data']['media_id'] ?? null,
                    'expire_at' => $decodedResponse['data']['expire_at'] ?? null,
                    'created_at' => now(),
                ]);
                $muztechdata = MuzztechSession::where('propertyid', $this->propertyid)->where('docid', $docid)->first();
                sleep(2);
                $this->sendpdftoguestfom($muztechdata->docid, $invoiceno, $netamount, $paidss, $fombilldetail, $guest);
            }

            WhatsappLog::create([
                'propertyid' => $this->propertyid,
                'type' => 'Session Media Create FOM',
                'recipient_phone_number' => '',
                'template_id' => '',
                'parameters' => '',
                'response' => $response,
                'http_code' => $httpCode,
                'status' => $httpCode == 200 ? 'success' : 'failed',
                'u_name' => Auth::user()?->name,
            ]);
        } catch (Exception $e) {
            logData('FOM PDF SEND Whatsapp Send File', $e->getMessage(), $this->propertyid, Auth::user()->name, $e->getLine(), $e->getFile());
            return [
                'success' => false,
                'message' => 'Exception: ' . $e->getMessage()
            ];
        } finally {
            if (file_exists($tempFile)) {
                unlink($tempFile);
            }
        }
    }

    private function sendpdftoguestpos($docid)
    {
        $templateid = '903440405974788';
        try {
            $sale1 = Sale1::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->first();
            if (!$sale1) {
                logData('POS PDF SEND', 'Guest Sale1 profile not found for docid: ' . $docid, $this->propertyid, Auth::user()->name, null, "WhatsappSend");
            }

            if (empty($sale1->guestcode)) {
                logData('POS PDF SEND', 'Guest Sale1 guestcode not found for docid: ' . $docid, $this->propertyid, Auth::user()->name, null, "WhatsappSend");
            }

            $guestprofchk = GuestProf::where('propertyid', $this->propertyid)
                ->where(function ($query) use ($sale1) {
                    $query->where('guestcode', $sale1->guestcode)
                        ->orWhere('docid', $sale1->folionodocid);
                })
                ->first();

            if (!$guestprofchk) {
                logData('POS PDF SEND', 'Guest profile not found for docid: ' . $docid, $this->propertyid, Auth::user()->name, null, "WhatsappSend");
            } else {
                logData('POS PDF SEND', 'Guest profile found for docid: ' . $guestprofchk->docid . 'Guest Code: ' . $guestprofchk->guestcode, $this->propertyid, Auth::user()->name, null, "WhatsappSend");
            }

            $yearmanage = DateHelper::calculateDateRanges(ncurdate());

            $prefix = $sale1->vtype;
            $depart = Depart::where('propertyid', $this->propertyid)
                ->where('dcode', $sale1->restcode)
                ->first();

            $divcode = $depart->divcode;

            if ($divcode != '') {
                $prefix = $divcode;
            }
            if (strtolower($depart->nature) == 'outlet') {
                $str = $prefix . '/' . $yearmanage['hf']['start'] . '-' . $yearmanage['hf']['end'] . '/' . $sale1->vno;
                $billdisplaytext = 'Table';
            } else if (strtolower($depart->nature) == 'room service') {
                $str = $prefix . '/' . $yearmanage['hf']['start'] . '-' . $yearmanage['hf']['end'] . '/' . $sale1->vno;
                $billdisplaytext = 'Room';
            }

            $paidrows = Paycharge::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->where('amtcr', '!=', 0)
                ->get();

            $billamt = (float) $paidrows->sum('amtcr');

            $payModes = $paidrows->pluck('paytype')
                ->filter()
                ->unique()
                ->values()
                ->implode(', ');

            $parameters = [
                ["type" => "text", "text" => (string) ($guestprofchk->name ?? '')],
                ["type" => "text", "text" => (string) ($depart->name ?? '')],
                ["type" => "text", "text" => (string) $str],
                ["type" => "text", "text" => $sale1?->vdate ? date('d-M-Y', strtotime($sale1->vdate)) : ''],
                ["type" => "text", "text" => number_format($billamt, 2, '.', '')],
                ["type" => "text", "text" => $payModes],
                ["type" => "text", "text" => (string) (companydata()->comp_name ?? '')],
            ];
            $muztechdata = MuzztechSession::where('propertyid', $this->propertyid)->where('docid', $docid)->orderByDesc('id')->first();

            $payload = json_encode([
                "template_id" => $templateid,
                "media_id" => $muztechdata->media_id,
                "parameters" => $parameters,
                "country_code" => "91",
                "recipient_phone_number" => $guestprofchk->mobile_no,
            ]);

            // Log::info('Sending PDF to guest: ' . $guestprofchk->mobile_no . ' with payload: ' . $payload);

            $ch = curl_init('https://meta.muzztech.com/api/v1/send/template/messages/');

            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
            curl_setopt($ch, CURLOPT_HTTPHEADER, [
                'Authorization: Bearer ' . 'BPXWnlxHIhEWcm3dLSnkLo34IqUMD0b0Fps8leECUeSSzj03EJPBT25aWG3Lo1945MCmLp3GghwTe6MogN9UD2WnzojTxyD7C8pddXSuc1URqr8b6wX7C1Dswkdk3kS6j4wAQMPPWsWbUWnFrcwfUOJjv5Z2T3kH',
                'Content-Type: application/json',
                'Accept: application/json'
            ]);

            $response = curl_exec($ch);
            $httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            curl_close($ch);

            WhatsappLog::create([
                'propertyid' => $this->propertyid,
                'type' => 'POS Bill Pdf Send',
                'recipient_phone_number' => $guestprofchk->mobile_no,
                'template_id' => $templateid,
                'parameters' => json_encode($parameters),
                'response' => $response,
                'http_code' => $httpcode,
                'status' => 'success',
                'u_name' => Auth::user()?->name,
            ]);
        } catch (Exception $e) {
            Log::error('Error in sendpdftoguest: ' . $e->getMessage());
        }
    }

    private function sendpdftoguestfom($docid, $invoiceno, $netamount, $paidss, $fombilldetail, $guest)
    {
        $templateid = '1225865139034756';
        try {
            $guestprof = GuestProf::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->first();
            if (!$guestprof) {
                Log::warning('Guest profile not found for docid: ' . $docid);
                return;
            }


            $parameters = [
                ["type" => "text", "text" => (string) ($guestprof->name ?? '')],
                ["type" => "text", "text" => (string) (companydata()->comp_name ?? '')],
                ["type" => "text", "text" => (string) $invoiceno],
                ["type" => "text", "text" => $fombilldetail->billdate ? date('d-M-Y', strtotime($fombilldetail->billdate)) : ''],
                ["type" => "text", "text" => $guest->roomno],
                ["type" => "text", "text" => number_format($netamount, 2, '.', '')],
                ["type" => "text", "text" => $paidss],
                ["type" => "text", "text" => companydata()->mobile ?? ''],
            ];
            $muztechdata = MuzztechSession::where('propertyid', $this->propertyid)->where('docid', $docid)->orderByDesc('id')->first();

            $payload = json_encode([
                "template_id" => $templateid,
                "media_id" => $muztechdata->media_id,
                "parameters" => $parameters,
                "country_code" => "91",
                "recipient_phone_number" => $guestprof->mobile_no,
            ]);

            // Log::info('Sending PDF to guest: ' . $guestprof->mobile_no . ' with payload: ' . $payload);

            $ch = curl_init('https://meta.muzztech.com/api/v1/send/template/messages/');

            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
            curl_setopt($ch, CURLOPT_HTTPHEADER, [
                'Authorization: Bearer ' . 'BPXWnlxHIhEWcm3dLSnkLo34IqUMD0b0Fps8leECUeSSzj03EJPBT25aWG3Lo1945MCmLp3GghwTe6MogN9UD2WnzojTxyD7C8pddXSuc1URqr8b6wX7C1Dswkdk3kS6j4wAQMPPWsWbUWnFrcwfUOJjv5Z2T3kH',
                'Content-Type: application/json',
                'Accept: application/json'
            ]);

            $response = curl_exec($ch);
            $httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            curl_close($ch);

            WhatsappLog::create([
                'propertyid' => $this->propertyid,
                'type' => 'FOM Bill Pdf Send',
                'recipient_phone_number' => $guestprof->mobile_no,
                'template_id' => $templateid,
                'parameters' => json_encode($parameters),
                'response' => $response,
                'http_code' => $httpcode,
                'status' => 'success',
                'u_name' => Auth::user()?->name,
            ]);
        } catch (Exception $e) {
            logData('FOM PDF SEND', $e->getMessage(), $this->propertyid, Auth::user()->name, $e->getLine(), 'WhatsappSend');
        }
    }
    public function sendLocation($guestName, $companyName, $maplink, $phone)
    {
        $templateid = '1055679643833564';

        $parameters = [
            ["text" => $guestName],
            ["text" => $companyName],
            ["text" => $maplink],
        ];

        $payload = json_encode([
            "template_id" => $templateid,
            "media_url" => "",
            "parameters" => $parameters,
            "country_code" => "91",
            "recipient_phone_number" => $phone,
        ]);

        $ch = curl_init('https://meta.muzztech.com/api/v1/send/template/messages/');

        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
        curl_setopt($ch, CURLOPT_HTTPHEADER, [
            'Authorization: Bearer ' . 'BPXWnlxHIhEWcm3dLSnkLo34IqUMD0b0Fps8leECUeSSzj03EJPBT25aWG3Lo1945MCmLp3GghwTe6MogN9UD2WnzojTxyD7C8pddXSuc1URqr8b6wX7C1Dswkdk3kS6j4wAQMPPWsWbUWnFrcwfUOJjv5Z2T3kH',
            'Content-Type: application/json',
            'Accept: application/json'
        ]);

        $response = curl_exec($ch);
        $httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);

        WhatsappLog::create([
            'propertyid' => $this->propertyid,
            'type' => 'Send Location',
            'recipient_phone_number' => $phone,
            'template_id' => $templateid,
            'parameters' => json_encode($parameters),
            'response' => $response,
            'http_code' => $httpcode,
            'status' => $httpcode == 200 ? 'success' : 'failed',
            'u_name' => Auth::user()?->name,
        ]);

        return $httpcode == 200;
    }
}
