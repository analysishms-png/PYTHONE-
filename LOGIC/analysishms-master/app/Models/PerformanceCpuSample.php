<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
class PerformanceCpuSample extends Model
{
    protected $table = 'perf_cpu_samples';
    protected $fillable = ['data_source','sampled_at','cpu_percent','load_1','load_5','load_15','memory_used_bytes','memory_total_bytes','php_workers','php_avg_request_ms','db_cpu_percent','queue_pending','queue_failed','source','collector','meta'];
    protected $casts = ['sampled_at'=>'datetime','meta'=>'array'];
}
