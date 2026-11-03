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
        Schema::connection('tenant')->create('shift_master', function (Blueprint $table) {
            $table->integer('shift_id', true);
            $table->string('shift_code', 20)->unique('shift_code');
            $table->string('shift_name', 50);
            $table->time('in_time');
            $table->time('out_time');
            $table->integer('grace_minutes')->nullable()->default(0);
            $table->decimal('min_work_hours', 4)->nullable()->default(0);
            $table->decimal('half_day_hours', 4)->nullable()->default(0);
            $table->decimal('ot_after_hours', 4)->nullable()->default(0);
            $table->boolean('is_night_shift')->nullable()->default(false);
            $table->boolean('is_cross_day')->nullable()->default(false);
            $table->boolean('is_split_shift')->nullable()->default(false);
            $table->integer('break_minutes')->nullable()->default(0);
            $table->boolean('late_allowed')->nullable()->default(true);
            $table->boolean('early_allowed')->nullable()->default(true);
            $table->boolean('status')->nullable()->default(true);
            $table->dateTime('created_at')->nullable()->useCurrent();
            $table->dateTime('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('shift_master');
    }
};
