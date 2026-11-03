<?php

namespace App\Logging;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request;
use Monolog\Handler\AbstractProcessingHandler;
use Monolog\LogRecord;

class DatabaseLogger extends AbstractProcessingHandler
{
    protected function write(LogRecord $record): void
    {
        try {
            $user = Auth::user();

            $userproperty = $user?->propertyid;
            $userid = $user?->id;
            $username = $user?->u_name;
            $ipaddress = Request::ip();

            // Find the original application file that generated the log.
            $file = null;
            $line = null;

            foreach (array_reverse($record->extra['trace'] ?? []) as $frame) {
                if (!empty($frame['file'])) {
                    $frameFile = str_replace('\\', '/', $frame['file']);

                    if (
                        !str_contains($frameFile, '/vendor/monolog/') &&
                        !str_contains($frameFile, '/app/Logging/')
                    ) {
                        $file = $frame['file'];
                        $line = $frame['line'] ?? null;
                        break;
                    }
                }
            }

            // Fall back to a PHP backtrace if Monolog has no trace.
            if ($file === null) {
                $trace = debug_backtrace(DEBUG_BACKTRACE_IGNORE_ARGS);

                foreach ($trace as $frame) {
                    if (empty($frame['file'])) {
                        continue;
                    }

                    $frameFile = str_replace('\\', '/', $frame['file']);

                    if (
                        !str_contains($frameFile, '/vendor/monolog/') &&
                        !str_contains($frameFile, '/app/Logging/') &&
                        !str_contains($frameFile, '/vendor/laravel/framework/')
                    ) {
                        $file = $frame['file'];
                        $line = $frame['line'] ?? null;
                        break;
                    }
                }
            }

            DB::connection('main')
                ->table('application_logs')
                ->insert([
                    'propertyid' => $userproperty,
                    'userid' => $userid,
                    'username' => $username,
                    'ipaddress' => $ipaddress,
                    'level' => strtoupper($record->level->getName()),
                    'message' => $record->message,
                    'file' => $file,
                    'line' => $line,
                    'context' => json_encode([
                        'context' => $record->context,
                        'extra' => $record->extra,
                    ], JSON_PARTIAL_OUTPUT_ON_ERROR),
                    'created_at' => now(),
                ]);
        } catch (\Throwable $e) {
            error_log(
                'Database logging failed: ' . $e->getMessage()
            );
        }
    }
}
