<?php

return [
    'log_directory' => env('PERF_LOG_DIR', storage_path('app/performance/logs')),
    'timezone' => env('PERF_TIMEZONE', config('app.timezone', 'UTC')),
    'default_window_hours' => (int) env('PERF_DEFAULT_WINDOW_HOURS', 24),
    'retention_days' => (int) env('PERF_RETENTION_DAYS', 90),
    'import_chunk_size' => (int) env('PERF_IMPORT_CHUNK_SIZE', 5000),
    'queue_name' => env('PERF_QUEUE', 'performance'),
    'import_queue_chunk_size' => (int) env('PERF_IMPORT_QUEUE_CHUNK_SIZE', 1000),
    'import_stage_directory' => env('PERF_IMPORT_STAGE_DIRECTORY', storage_path('app/performance/staging')),
    'import_lock_seconds' => (int) env('PERF_IMPORT_LOCK_SECONDS', 1800),
    'request_timing_available' => (bool) env('PERF_REQUEST_TIMING_AVAILABLE', false),
    'php_timing_available' => (bool) env('PERF_PHP_TIMING_AVAILABLE', false),
    'mariadb_timing_available' => (bool) env('PERF_MARIADB_TIMING_AVAILABLE', false),
    'queue_timing_available' => (bool) env('PERF_QUEUE_TIMING_AVAILABLE', false),
    'cpu_collection_available' => (bool) env('PERF_CPU_COLLECTION_AVAILABLE', false),
    'allowed_extensions' => ['log', 'gz', 'txt', 'access_log'],
    'include_synthetic' => false,
];
