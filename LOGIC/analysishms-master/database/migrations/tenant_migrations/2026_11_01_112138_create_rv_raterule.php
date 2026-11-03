<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (Schema::connection('tenant')->hasTable('rv_raterule')) {
            // Rule Name dropdown ke full labels ke liye 50 characters chahiye.
            DB::connection('tenant')->statement(
                'ALTER TABLE `rv_raterule` MODIFY `rule_name` VARCHAR(50) NOT NULL'
            );

            return;
        }

        Schema::connection('tenant')->create('rv_raterule', function (Blueprint $table) {
            $table->bigInteger('id')->unique('rv_raterule_id_unique');

            $table->integer('property_id');
            $table->string('rule_name', 50);
            $table->date('from_date');
            $table->date('to_date');

            $table->integer('sno')->default(1);
            $table->integer('vno')->default(1);

            $table->decimal('occupancy_from', 5, 2);
            $table->decimal('occupancy_to', 5, 2);

            $table->decimal('rate_adjustment', 10, 2);
            $table->string('adjustment_type', 10);

            $table->string('activeYN', 1)->default('Y');

            $table->string('u_name', 25)->nullable();
            $table->string('u_updatedby', 50)->nullable();

            $table->dateTime('created_at')->nullable();
            $table->dateTime('updated_at')->nullable();

            $table->primary(['property_id', 'rule_name', 'from_date']);
        });

        // 'id' primary key nahi hai (composite PK), isliye AUTO_INCREMENT alag se lagta hai.
        DB::connection('tenant')->statement(
            'ALTER TABLE `rv_raterule` MODIFY `id` INT UNSIGNED NOT NULL AUTO_INCREMENT'
        );
    }

    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('rv_raterule');
    }
};
