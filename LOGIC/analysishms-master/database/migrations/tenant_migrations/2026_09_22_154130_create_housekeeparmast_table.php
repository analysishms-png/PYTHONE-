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
        Schema::connection('tenant')->create('housekeeparmast', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('scode', 10);
            $table->string('name', 35);
            $table->string('empid', 10);
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);
            $table->string('activeYN', 1);

            $table->primary(['propertyid', 'scode']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `housekeeparmast` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('housekeeparmast');
    }
};
