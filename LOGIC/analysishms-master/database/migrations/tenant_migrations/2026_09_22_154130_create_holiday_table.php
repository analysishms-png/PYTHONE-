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
        Schema::connection('tenant')->create('holiday', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->date('vdate');
            $table->string('name', 25);
            $table->string('type', 12);
            $table->string('activeyn', 1);
            $table->string('repeatflag', 1);
            $table->string('U_Name', 15);
            $table->dateTime('created_at');
            $table->string('u_ae', 1);

            $table->primary(['propertyid', 'name']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `holiday` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('holiday');
    }
};
