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
        Schema::connection('tenant')->create('essl_attendance_logs', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('propertyid')->nullable();
            $table->string('employee_code', 50)->index('idx_employee_code');
            $table->string('emp_code', 50)->nullable()->index('idx_emp_code');
            $table->dateTime('log_datetime')->index('idx_log_datetime');
            $table->dateTime('download_datetime')->nullable();
            $table->string('device_name', 100)->nullable();
            $table->string('serial_number', 100)->nullable()->index('idx_serial_number');
            $table->string('direction', 10)->nullable();
            $table->string('device_direction', 20)->nullable();
            $table->string('work_code', 50)->nullable();
            $table->string('verification_type', 50)->nullable();
            $table->string('gps', 100)->nullable();
            $table->json('raw_json')->nullable();
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->useCurrent();

            $table->unique(['employee_code', 'log_datetime', 'serial_number'], 'uniq_essl_log');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('essl_attendance_logs');
    }
};
