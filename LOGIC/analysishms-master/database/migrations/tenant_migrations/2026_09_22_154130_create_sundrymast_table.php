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
        Schema::connection('tenant')->create('sundrymast', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->integer('sundry_code')->index('idx_sundrymast_sundry_code');
            $table->string('name', 100);
            $table->string('nature', 100)->index('idx_sundrymast_nature');
            $table->string('calcsign', 1);
            $table->string('sysYN', 1);
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');

            $table->index(['propertyid', 'sundry_code'], 'idx_sundrymast_prop_sundry');
            $table->primary(['propertyid', 'sundry_code']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `sundrymast` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('sundrymast');
    }
};
