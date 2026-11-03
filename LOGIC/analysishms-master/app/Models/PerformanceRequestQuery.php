<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
class PerformanceRequestQuery extends Model
{
    protected $table = 'perf_request_queries';
    protected $fillable = ['data_source','window_start','request_identifier','method','endpoint','fingerprint_id','query_count','total_exec_ms','source'];
    protected $casts = ['window_start'=>'datetime'];
}
