<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
class PerformanceQueryHourly extends Model
{
    protected $table = 'perf_query_hourly';
    protected $fillable = ['data_source','bucket_start','fingerprint_id','exec_count','total_exec_ms','max_exec_ms','rows_examined','rows_returned'];
    protected $casts = ['bucket_start'=>'datetime'];
}
