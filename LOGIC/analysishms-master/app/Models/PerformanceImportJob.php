<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PerformanceImportJob extends Model
{
    protected $table = 'perf_import_jobs';

    protected $fillable = ['source_type', 'file_name', 'source_key', 'status', 'started_at', 'finished_at', 'records_total', 'records_parsed', 'records_rejected', 'coverage_start', 'coverage_end', 'timezone', 'meta', 'error_message'];

    protected $casts = ['meta' => 'array', 'started_at' => 'datetime', 'finished_at' => 'datetime', 'coverage_start' => 'datetime', 'coverage_end' => 'datetime'];
}
