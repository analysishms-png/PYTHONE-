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
        Schema::connection('tenant')->create('bookinginquiry', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->integer('inqno');
            $table->string('contradocid')->default('');
            $table->string('cattype', 7)->default('');
            $table->string('partyname', 40);
            $table->string('add1', 45)->default('');
            $table->string('add2', 45)->default('');
            $table->string('citycode', 9);
            $table->string('mobileno', 12);
            $table->string('mobileno1', 12);
            $table->string('conperson', 35);
            $table->string('bookedby', 35);
            $table->string('functype', 9);
            $table->string('handledby', 35);
            $table->string('status', 9);
            $table->integer('pax')->default(0);
            $table->integer('gurrpax')->default(0);
            $table->decimal('ratepax', 10, 0)->default(0);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);
            $table->string('remark', 50);
            $table->dateTime('follupdate');

            $table->primary(['propertyid', 'inqno']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `bookinginquiry` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('bookinginquiry');
    }
};
