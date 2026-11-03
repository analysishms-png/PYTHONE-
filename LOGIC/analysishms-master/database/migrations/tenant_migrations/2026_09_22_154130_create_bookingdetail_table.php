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
        Schema::connection('tenant')->create('bookingdetail', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->integer('inqno');
            $table->integer('sno')->default(0);
            $table->string('venuecode', 9);
            $table->date('fromdate');
            $table->date('todate');
            $table->time('fromtime');
            $table->time('totime');
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->string('u_ae', 1);

            $table->primary(['propertyid', 'inqno', 'venuecode']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `bookingdetail` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('bookingdetail');
    }
};
