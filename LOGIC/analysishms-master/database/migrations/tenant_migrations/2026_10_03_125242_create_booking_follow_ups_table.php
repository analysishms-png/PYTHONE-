<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->create('booking_follow_ups', function (Blueprint $table) {

            $table->bigInteger('id')->unique('id');

            $table->unsignedInteger('propertyid');
            $table->unsignedInteger('inqno');
            $table->unsignedInteger('sno');
            $table->date('date');
            $table->time('time');
            $table->dateTime('nextfollowupdate');
            $table->string('remark');
            $table->string('status');
            $table->string('u_name');
            $table->string('u_ae');
            $table->dateTime('updated_at');
            $table->dateTime('created_at');
        });

        DB::connection('tenant')->statement(
            'ALTER TABLE `booking_follow_ups` MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT'
        );
    }

    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('booking_follow_ups');
    }
};
