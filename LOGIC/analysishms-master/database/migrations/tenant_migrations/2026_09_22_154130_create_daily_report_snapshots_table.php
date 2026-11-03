<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::connection('tenant')->create('daily_report_snapshots', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('snapshot_key', 100)->unique('uq_snapshot_key');
            $table->string('propertyid', 50);
            $table->date('report_date');
            $table->string('generated_by', 100)->nullable();
            $table->longText('payload_json');
            $table->enum('status', ['active', 'printed', 'expired'])->nullable()->default('active');
            $table->timestamp('created_at')->nullable()->useCurrent()->index('idx_created_at');
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();
            $table->dateTime('expires_at')->nullable()->index('idx_expires_at');

            $table->index(['propertyid', 'report_date'], 'idx_propertyid_report_date');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('daily_report_snapshots');
    }
};
