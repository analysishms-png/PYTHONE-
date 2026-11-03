<?php

namespace App\Services\Performance;

use Carbon\Carbon;

class AccessLogParser
{
    protected EndpointNormalizer $normalizer;

    protected array $patterns = [
        // Standard OpenLiteSpeed/NCSA combined format without timing.
        '/^\s*"?(\S+)\s+-\s+-\s+\[([^\]]+)\]\s+"([^"]*)"\s+(\d{3})\s+(\S+)\s+"([^"]*)"\s+"([^"]*)"\s*"?$/',
        // Timing-present format: an integer number of microseconds after the user agent.
        '/^\s*"?(\S+)\s+-\s+-\s+\[([^\]]+)\]\s+"([^"]*)"\s+(\d{3})\s+(\S+)\s+"([^"]*)"\s+"([^"]*)"\s+(\d+)\s*"?$/',
        // Timing-present format: an explicit duration in milliseconds or seconds.
        '/^\s*"?(\S+)\s+-\s+-\s+\[([^\]]+)\]\s+"([^"]*)"\s+(\d{3})\s+(\S+)\s+"([^"]*)"\s+"([^"]*)"\s+(?:ms|duration_ms)=(\d+(?:\.\d+)?)\s*"?$/i',
        '/^\s*"?(\S+)\s+-\s+-\s+\[([^\]]+)\]\s+"([^"]*)"\s+(\d{3})\s+(\S+)\s+"([^"]*)"\s+"([^"]*)"\s+(?:s|seconds?)=(\d+(?:\.\d+)?)\s*"?$/i',
    ];

    public function __construct(?EndpointNormalizer $normalizer = null)
    {
        $this->normalizer = $normalizer ?: new EndpointNormalizer();
    }

    public function parseLine(string $line): ?array
    {
        $line = rtrim($line, "\r\n");
        if (trim($line) === '') {
            return null;
        }

        $matched = null;
        $timingMode = null;
        foreach ($this->patterns as $index => $pattern) {
            if (preg_match($pattern, $line, $m)) {
                $matched = $m;
                $timingMode = $index;
                break;
            }
        }

        if ($matched === null) {
            return null;
        }

        [$full, $ip, $timestamp, $request, $status, $bytes, $referer, $ua, $durationToken] = array_pad($matched, 9, null);

        try {
            $dateTime = Carbon::createFromFormat('d/M/Y:H:i:s O', $timestamp);
        } catch (\Throwable $e) {
            return null;
        }

        if (!$dateTime) {
            try {
                $dateTime = Carbon::parse($timestamp);
            } catch (\Throwable $e) {
                return null;
            }
        }

        try {
            $tz = config('performance.timezone', config('app.timezone', 'UTC'));
            $dateTime = $dateTime->setTimezone($tz);
        } catch (\Throwable $e) {
            // Keep original timezone if conversion fails.
        }

        $status = (int) $status;
        $bytesValue = $bytes === '-' ? 0 : (is_numeric($bytes) ? (int) $bytes : 0);

        $durationMs = null;
        if ($timingMode === 1 && $durationToken !== null) {
            // microseconds -> milliseconds.
            $durationMs = (int) round((float) $durationToken / 1000);
        } elseif ($timingMode === 2 && $durationToken !== null) {
            $durationMs = (int) round((float) $durationToken);
        } elseif ($timingMode === 3 && $durationToken !== null) {
            $durationMs = (int) round((float) $durationToken * 1000);
        }

        $requestParts = $this->normalizer->normalizeRequestLine($request);

        return [
            'ip' => $ip,
            'timestamp' => $dateTime,
            'request_line' => $request,
            'method' => $requestParts['method'],
            'raw_path' => $requestParts['path'],
            'endpoint' => $requestParts['endpoint'],
            'status' => $status,
            'bytes' => $bytesValue,
            'referer' => $referer,
            'user_agent' => $ua !== '' ? $ua : '-',
            'duration_ms' => $durationMs,
        ];
    }
}
