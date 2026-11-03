<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (!Schema::hasTable('perf_import_jobs')) {
            Schema::create('perf_import_jobs', function (Blueprint $table) {
                $table->bigIncrements('id');
                $table->string('source_type', 50)->default('access_log');
                $table->string('file_name', 255);
                $table->string('source_key', 128)->unique('uq_perf_import_source_key');
                $table->string('status', 20)->default('pending')->index('idx_perf_import_status');
                $table->dateTime('started_at')->nullable();
                $table->dateTime('finished_at')->nullable();
                $table->unsignedBigInteger('records_total')->default(0);
                $table->unsignedBigInteger('records_parsed')->default(0);
                $table->unsignedBigInteger('records_rejected')->default(0);
                $table->dateTime('coverage_start')->nullable()->index('idx_perf_import_coverage_start');
                $table->dateTime('coverage_end')->nullable()->index('idx_perf_import_coverage_end');
                $table->string('timezone', 64)->nullable();
                $table->json('meta')->nullable();
                $table->text('error_message')->nullable();
                $table->timestamps();
                $table->index('created_at', 'idx_perf_import_created_at');
            });
        }

        if (!Schema::hasTable('perf_http_hourly')) {
            Schema::create('perf_http_hourly', function (Blueprint $table) {
                $table->bigIncrements('id');
                $table->dateTime('bucket_start')->index('idx_perf_http_bucket');
                $table->string('method', 10)->default('GET');
                $table->string('endpoint', 255);
                $table->unsignedBigInteger('request_count')->default(0);
                $table->unsignedBigInteger('bytes_sent')->default(0);
                $table->unsignedBigInteger('duration_samples')->default(0);
                $table->double('duration_sum_ms')->default(0);
                $table->unsignedInteger('duration_min_ms')->nullable();
                $table->unsignedInteger('duration_max_ms')->nullable();
                $table->unsignedBigInteger('status_2xx')->default(0);
                $table->unsignedBigInteger('status_3xx')->default(0);
                $table->unsignedBigInteger('status_4xx')->default(0);
                $table->unsignedBigInteger('status_5xx')->default(0);
                $table->timestamps();
                $table->unique(['bucket_start', 'method', 'endpoint'], 'uq_perf_http_bucket_method_endpoint');
                $table->index(['endpoint', 'bucket_start'], 'idx_perf_http_endpoint_bucket');
            });
        }

        if (!Schema::hasTable('perf_client_endpoints')) {
            Schema::create('perf_client_endpoints', function (Blueprint $table) {
                $table->bigIncrements('id');
                $table->dateTime('bucket_start')->index('idx_perf_client_bucket');
                $table->string('client_ip', 64);
                $table->string('user_agent_hash', 64)->index('idx_perf_client_ua_hash');
                $table->text('user_agent')->nullable();
                $table->string('method', 10)->default('GET');
                $table->string('endpoint', 255);
                $table->unsignedBigInteger('request_count')->default(0);
                $table->unsignedBigInteger('bytes_sent')->default(0);
                $table->unsignedBigInteger('status_4xx')->default(0);
                $table->unsignedBigInteger('status_5xx')->default(0);
                $table->unsignedBigInteger('redirect_count')->default(0);
                $table->timestamps();
                $table->index(['client_ip', 'bucket_start'], 'idx_perf_client_ip_bucket');
                $table->index(['endpoint', 'client_ip'], 'idx_perf_client_endpoint_ip');
            });
        }

        if (!Schema::hasTable('perf_cpu_samples')) {
            Schema::create('perf_cpu_samples', function (Blueprint $table) {
                $table->bigIncrements('id');
                $table->dateTime('sampled_at')->index('idx_perf_cpu_sampled_at');
                $table->double('cpu_percent')->nullable();
                $table->double('load_1')->nullable();
                $table->double('load_5')->nullable();
                $table->double('load_15')->nullable();
                $table->unsignedBigInteger('memory_used_bytes')->nullable();
                $table->unsignedBigInteger('memory_total_bytes')->nullable();
                $table->unsignedInteger('php_workers')->nullable();
                $table->double('php_avg_request_ms')->nullable();
                $table->double('db_cpu_percent')->nullable();
                $table->unsignedInteger('queue_pending')->nullable();
                $table->unsignedInteger('queue_failed')->nullable();
                $table->string('source', 50)->default('unknown')->index('idx_perf_cpu_source');
                $table->string('collector', 100)->nullable();
                $table->json('meta')->nullable();
                $table->timestamps();
            });
        }

        if (!Schema::hasTable('perf_query_fingerprints')) {
            Schema::create('perf_query_fingerprints', function (Blueprint $table) {
                $table->bigIncrements('id');
                $table->string('fingerprint', 64)->unique('uq_perf_query_fingerprint');
                $table->longText('normalized_sql');
                $table->longText('sample_sql')->nullable();
                $table->string('category', 50)->nullable()->index('idx_perf_query_category');
                $table->string('db_name', 100)->nullable();
                $table->string('tenant_property', 50)->nullable();
                $table->unsignedBigInteger('exec_count')->default(0);
                $table->double('total_exec_ms')->default(0);
                $table->double('avg_exec_ms')->default(0);
                $table->double('max_exec_ms')->default(0);
                $table->unsignedBigInteger('rows_examined')->default(0);
                $table->unsignedBigInteger('rows_returned')->default(0);
                $table->dateTime('first_seen')->nullable()->index('idx_perf_query_first_seen');
                $table->dateTime('last_seen')->nullable()->index('idx_perf_query_last_seen');
                $table->timestamps();
            });
        }

        if (!Schema::hasTable('perf_query_hourly')) {
            Schema::create('perf_query_hourly', function (Blueprint $table) {
                $table->bigIncrements('id');
                $table->dateTime('bucket_start')->index('idx_perf_query_hourly_bucket');
                $table->unsignedBigInteger('fingerprint_id')->index('idx_perf_query_hourly_fp');
                $table->unsignedBigInteger('exec_count')->default(0);
                $table->double('total_exec_ms')->default(0);
                $table->double('max_exec_ms')->default(0);
                $table->unsignedBigInteger('rows_examined')->default(0);
                $table->unsignedBigInteger('rows_returned')->default(0);
                $table->timestamps();
                $table->index(['bucket_start', 'fingerprint_id'], 'idx_perf_query_hourly_bucket_fp');
            });
        }

        if (!Schema::hasTable('perf_request_queries')) {
            Schema::create('perf_request_queries', function (Blueprint $table) {
                $table->bigIncrements('id');
                $table->dateTime('window_start')->index('idx_perf_rq_window_start');
                $table->string('request_identifier', 128)->index('idx_perf_rq_identifier');
                $table->string('method', 10)->nullable();
                $table->string('endpoint', 255)->nullable();
                $table->unsignedBigInteger('fingerprint_id')->nullable()->index('idx_perf_rq_fp');
                $table->unsignedBigInteger('query_count')->default(0);
                $table->double('total_exec_ms')->default(0);
                $table->string('source', 50)->default('unknown');
                $table->timestamps();
            });
        }
    }

    public function down(): void
    {
        Schema::dropIfExists('perf_request_queries');
        Schema::dropIfExists('perf_query_hourly');
        Schema::dropIfExists('perf_query_fingerprints');
        Schema::dropIfExists('perf_cpu_samples');
        Schema::dropIfExists('perf_client_endpoints');
        Schema::dropIfExists('perf_http_hourly');
        Schema::dropIfExists('perf_import_jobs');
    }
};
