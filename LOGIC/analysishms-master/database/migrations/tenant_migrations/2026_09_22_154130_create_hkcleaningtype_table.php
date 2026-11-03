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
        Schema::connection('tenant')->create('hkcleaningtype', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('code', 9);
            $table->string('name', 25);
            $table->time('esttime');
            $table->string('dcode', 10);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->string('u_ae', 1);

            $table->primary(['propertyid', 'code']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `hkcleaningtype` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('hkcleaningtype');
    }
};
