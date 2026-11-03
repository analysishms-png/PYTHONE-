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
        Schema::connection('tenant')->create('depart1', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('departcode', 8);
            $table->string('associatedrestcode', 8);
        });

        DB::connection('tenant')->statement('ALTER TABLE `depart1` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('depart1');
    }
};
