<?php

namespace App\Services\Channel;

use App\Models\ChannelRate;
use App\Services\TenantDatabase;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class UpdateInventory
{
    public function updateInventory(
        array $inventoryUpdates,
        string $dateFrom,
        string $dateTill,
        int $propertyId,
        string $u_name
    ): array {
        TenantDatabase::connect($propertyId);

        $channelEnviro = channelparameter($propertyId);

        if (!$channelEnviro || empty($channelEnviro->apikey)) {
            return [
                'success' => false,
                'message' => 'Channel manager API key is not configured.',
                'httpcode' => 422,
            ];
        }

        if (empty($inventoryUpdates)) {
            return [
                'success' => false,
                'message' => 'No inventory updates provided.',
                'httpcode' => 422,
            ];
        }

        // Build one request containing all room categories.
        $roomWiseInventory = [];

        foreach ($inventoryUpdates as $item) {
            if (
                empty($item['category']) ||
                !isset($item['availability']) ||
                (int) $item['availability'] < 0
            ) {
                return [
                    'success' => false,
                    'message' => 'Invalid inventory update data.',
                    'httpcode' => 422,
                ];
            }

            $roomWiseInventory[] = [
                'DateFrom' => Carbon::parse($dateFrom)->format('d-M-Y'),
                'DateTill' => Carbon::parse($dateTill)->format('d-M-Y'),
                'RoomCode' => (string) $item['category'],
                'Availability' => (int) $item['availability'],
            ];
        }

        $requestBody = [
            'RoomWiseInventory' => $roomWiseInventory,
        ];

        $jsonBody = json_encode($requestBody);

        if ($jsonBody === false) {
            return [
                'success' => false,
                'message' => 'Failed to encode inventory request.',
                'httpcode' => 500,
            ];
        }

        $apiUrl = 'https://www.eglobe-solutions.com/webapichannelmanager/inventory/'
            . $channelEnviro->apikey
            . '/bulkupdate/v2';

        // Send one API request for all categories.
        $ch = curl_init($apiUrl);

        curl_setopt_array($ch, [
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_POST => true,
            CURLOPT_POSTFIELDS => $jsonBody,
            CURLOPT_HTTPHEADER => [
                'Content-Type: application/json',
                'Accept: application/json',
                'User-Agent: AnalysisHMS-PMS/1.0',
            ],
            CURLOPT_CONNECTTIMEOUT => 10,
            CURLOPT_TIMEOUT => 30,
        ]);

        // Log::info('eGlobe inventory outgoing payload', [
        //     'property_id' => $propertyId,
        //     'payload' => $requestBody,
        // ]);
        
        $response = curl_exec($ch);
        $curlError = curl_error($ch);
        $httpCode = (int) curl_getinfo($ch, CURLINFO_HTTP_CODE);

        curl_close($ch);

        $decodedResponse = is_string($response)
            ? json_decode($response, true)
            : null;

        // Record the API request only once.
        try {
            ChannelRate::insert([
                'vdate' => ncurdate($propertyId),
                'retcode' => $response === false
                    ? $curlError
                    : (string) $httpCode,
                'response' => $response === false
                    ? $curlError
                    : $response,
                'httpcode' => $httpCode,
                'rcode' => '',
                'name' => 'Room Wise Inventory Counting Update',
                'created_at' => now(),
                'u_name' => $u_name,
                'u_ae' => 'a',
            ]);
        } catch (\Throwable $e) {
            Log::error('Failed to log eGlobe inventory update', [
                'error' => $e->getMessage(),
            ]);
        }

        if ($response === false) {
            Log::error('eGlobe inventory API connection failed', [
                'error' => $curlError,
            ]);

            return [
                'success' => false,
                'message' => 'Channel manager connection failed.',
                'error' => $curlError,
                'httpcode' => 502,
            ];
        }

        if ($httpCode < 200 || $httpCode >= 300) {
            return [
                'success' => false,
                'message' => 'Failed to update inventory.',
                'httpcode' => 502,
                'upstream_httpcode' => $httpCode,
                'response' => $decodedResponse ?? $response,
            ];
        }

        return [
            'success' => true,
            'message' => 'Inventory update request submitted successfully.',
            'workids' => is_array($decodedResponse)
                ? (
                    $decodedResponse['WorkId']
                    ?? $decodedResponse['WorkIds']
                    ?? $decodedResponse['UpdateIds']
                    ?? null
                )
                : null,
            'httpcode' => $httpCode,
            'response' => $decodedResponse ?? $response,
        ];
    }
}
