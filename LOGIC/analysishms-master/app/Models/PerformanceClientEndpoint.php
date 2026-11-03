<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
class PerformanceClientEndpoint extends Model
{
    protected $table = 'perf_client_endpoints';
    protected $fillable = ['data_source','bucket_start','client_ip','user_agent_hash','user_agent','method','endpoint','request_count','bytes_sent','status_4xx','status_5xx','redirect_count'];
    protected $casts = ['bucket_start'=>'datetime'];
}
