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
        Schema::connection('tenant')->create('buildingmaster', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('code', 7);
            $table->string('name', 25);
            $table->integer('activeyn');
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->string('u_ae', 1);

            $table->primary(['propertyid', 'code']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `buildingmaster` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('buildingmaster');
    }
};
