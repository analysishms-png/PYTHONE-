<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
class PerformanceQueryFingerprint extends Model
{
    protected $table = 'perf_query_fingerprints';
    protected $fillable = ['data_source','fingerprint','normalized_sql','sample_sql','category','db_name','tenant_property','exec_count','total_exec_ms','avg_exec_ms','max_exec_ms','rows_examined','rows_returned','first_seen','last_seen'];
    protected $casts = ['first_seen'=>'datetime','last_seen'=>'datetime'];
}
