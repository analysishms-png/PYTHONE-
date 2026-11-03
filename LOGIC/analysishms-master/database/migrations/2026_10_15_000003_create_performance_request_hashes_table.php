<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (Schema::hasTable('perf_request_hashes')) {  
            return;
        }

        Schema::create('perf_request_hashes', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->char('request_hash', 64)->unique('uq_perf_request_hashes_hash');
            $table->string('data_source', 50)->default('imported_access_log')->index('idx_perf_request_hashes_data_source');
            $table->dateTime('bucket_start')->nullable()->index('idx_perf_request_hashes_bucket');
            $table->string('endpoint', 255)->nullable()->index('idx_perf_request_hashes_endpoint');
            $table->dateTime('first_seen_at')->index('idx_perf_request_hashes_first_seen');
            $table->dateTime('last_seen_at')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('perf_request_hashes');
    }
};
