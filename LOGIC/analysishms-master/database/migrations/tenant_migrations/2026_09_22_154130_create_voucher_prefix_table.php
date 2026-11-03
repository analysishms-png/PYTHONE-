<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::connection('tenant')->create('voucher_prefix', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->string('short_name', 100)->nullable();
            $table->integer('propertyid');
            $table->string('v_type');
            $table->date('date_from');
            $table->date('date_to');
            $table->integer('prefix');
            $table->integer('start_srl_no')->nullable();
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
            $table->string('sysYN', 1)->nullable();

            $table->primary(['propertyid', 'v_type', 'date_from']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `voucher_prefix` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('voucher_prefix');
    }
};
