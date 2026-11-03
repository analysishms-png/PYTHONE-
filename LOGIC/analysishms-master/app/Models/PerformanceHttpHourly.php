<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
class PerformanceHttpHourly extends Model
{
    protected $table = 'perf_http_hourly';
    protected $fillable = ['data_source','bucket_start','method','endpoint','request_count','bytes_sent','duration_samples','duration_sum_ms','duration_min_ms','duration_max_ms','status_2xx','status_3xx','status_4xx','status_5xx'];
    protected $casts = ['bucket_start'=>'datetime'];
}
