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
        Schema::connection('tenant')->create('cchememast', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->integer('code');
            $table->string('name', 35);
            $table->date('startdate');
            $table->date('enddate');
            $table->time('fromtime');
            $table->time('totime');
            $table->integer('restcode');
            $table->integer('itmecode');
            $table->float('qty', null, 0);
            $table->integer('freeitemcode');
            $table->float('freeqty', null, 0);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->string('u_ae', 1);
            $table->integer('days');
            $table->string('active', 1);
        });
        DB::connection('tenant')->statement('ALTER TABLE `cchememast` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('cchememast');
    }
};
