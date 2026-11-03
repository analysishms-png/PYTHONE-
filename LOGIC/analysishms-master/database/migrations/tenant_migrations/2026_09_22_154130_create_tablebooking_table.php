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
        Schema::connection('tenant')->create('tablebooking', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->integer('vno');
            $table->string('tabaleno', 9);
            $table->string('vtype', 7);
            $table->string('vprefix', 5);
            $table->date('vdate');
            $table->time('vtime');
            $table->string('guestname', 35);
            $table->string('mobileno', 10);
            $table->float('pax', null, 0);
            $table->date('bookindate');
            $table->time('fromtime');
            $table->time('totime');
            $table->string('remark', 50);
            $table->string('cancelyn', 1);
            $table->string('canceluser', 15);
            $table->dateTime('canceldate');
            $table->string('contradocid', 17);
            $table->string('restcode', 10);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->string('u_ae', 1);

            $table->primary(['propertyid', 'vno', 'vtype']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `tablebooking` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('tablebooking');
    }
};
