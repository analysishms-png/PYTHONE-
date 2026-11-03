<?php

namespace App\Http\Controllers\Essl;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EsslWebhookController extends Controller
{
    public function attendance(Request $request)
    {
        $payload = $request->all();

        if (empty($payload)) {
            return response('Invalid Payload', 400);
        }

        $logs = [];

        if (isset($payload[0]) && is_array($payload[0])) {
            $logs = $payload;
        } elseif (isset($payload['data']) && is_array($payload['data'])) {
            $logs = $payload['data'];
        } else {
            $logs = [$payload];
        }

        $now = now();
        $insertData = [];

        foreach ($logs as $log) {
            $employeeCode = isset($log['EmployeeCode']) ? trim((string) $log['EmployeeCode']) : null;
            $logDate = isset($log['LogDate']) ? trim((string) $log['LogDate']) : null;

            if (!$employeeCode || !$logDate) {
                continue;
            }

            $emp = DB::table('employee')
                ->where('map_code', $employeeCode)
                ->select('code', 'propertyid')
                ->first();

            $insertData[] = [
                'employee_code' => $employeeCode,
                'propertyid' => $emp->propertyid ?? null,
                'emp_code' => $emp->code ?? null,
                'log_datetime' => date('Y-m-d H:i:s', strtotime($logDate)),
                'download_datetime' => !empty($log['DownloadDate']) ? date('Y-m-d H:i:s', strtotime($log['DownloadDate'])) : null,
                'device_name' => isset($log['DeviceName']) ? trim((string) $log['DeviceName']) : null,
                'serial_number' => isset($log['SerialNumber']) ? trim((string) $log['SerialNumber']) : null,
                'direction' => isset($log['Direction']) ? trim((string) $log['Direction']) : null,
                'device_direction' => isset($log['DeviceDirection']) ? trim((string) $log['DeviceDirection']) : null,
                'work_code' => isset($log['WorkCode']) ? trim((string) $log['WorkCode']) : null,
                'verification_type' => isset($log['VerificationType']) ? trim((string) $log['VerificationType']) : null,
                'gps' => isset($log['GPS']) ? trim((string) $log['GPS']) : null,
                'raw_json' => json_encode($log, JSON_UNESCAPED_UNICODE),
                'created_at' => $now,
                'updated_at' => $now,
            ];
        }

        if (empty($insertData)) {
            return response('No Valid Logs', 400);
        }

        DB::table('essl_attendance_logs')->insert($insertData);

        return response('Success', 200)->header('Content-Type', 'text/plain');
    }
}
