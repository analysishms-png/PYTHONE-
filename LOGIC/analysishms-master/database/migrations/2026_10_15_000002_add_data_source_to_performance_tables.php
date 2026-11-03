<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    protected array $tables = [
        'perf_import_jobs' => 'imported_access_log',
        'perf_http_hourly' => 'imported_access_log',
        'perf_client_endpoints' => 'imported_access_log',
        'perf_cpu_samples' => 'synthetic',
        'perf_query_fingerprints' => 'synthetic',
        'perf_query_hourly' => 'synthetic',
        'perf_request_queries' => 'synthetic',
    ];

    public function up(): void
    {
        foreach ($this->tables as $table => $defaultSource) {
            if (!Schema::hasTable($table)) {
                continue;
            }

            if (!Schema::hasColumn($table, 'data_source')) {
                Schema::table($table, function (Blueprint $t) use ($defaultSource, $table) {
                    $t->string('data_source', 50)->default($defaultSource)->index('idx_' . $table . '_data_source');
                });
            }

            // Existing rows created before provenance was tracked are backfilled to
            // an honest table-specific source instead of an implicit/unknown source.
            if ($table === 'perf_http_hourly' || $table === 'perf_client_endpoints' || $table === 'perf_import_jobs') {
                \Illuminate\Support\Facades\DB::table($table)->whereNull('data_source')->orWhere('data_source', '')->update(['data_source' => 'imported_access_log']);
            } else {
                \Illuminate\Support\Facades\DB::table($table)->whereNull('data_source')->orWhere('data_source', '')->update(['data_source' => 'synthetic']);
            }
        }
    }

    public function down(): void
    {
        foreach (array_keys($this->tables) as $table) {
            if (Schema::hasTable($table) && Schema::hasColumn($table, 'data_source')) {
                Schema::table($table, function (Blueprint $t) {
                    $t->dropIndex(['data_source']);
                    $t->dropColumn('data_source');
                });
            }
        }
    }
};
