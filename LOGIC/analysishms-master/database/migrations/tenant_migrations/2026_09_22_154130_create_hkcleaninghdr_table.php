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
        Schema::connection('tenant')->create('hkcleaninghdr', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->bigInteger('cleaningid');
            $table->integer('assno');
            $table->integer('propertyid');
            $table->string('cleaningno', 20)->nullable();
            $table->date('cleaningdate')->nullable();
            $table->integer('roommo');
            $table->string('roomstatusbefore', 20)->nullable();
            $table->string('roomstatusafter', 20)->nullable();
            $table->integer('guestid')->nullable();
            $table->integer('cleaningtype')->nullable();
            $table->integer('housekeeperid')->nullable();
            $table->integer('supervisorid')->nullable();
            $table->dateTime('starttime')->nullable();
            $table->dateTime('endtime')->nullable();
            $table->integer('totalminutes')->nullable();
            $table->string('priority', 20)->nullable();
            $table->string('cleaningstatus', 20)->nullable();
            $table->char('inspectionrequired', 1)->nullable()->default('Y');
            $table->string('inspectionstatus', 20)->nullable();
            $table->string('beforephoto', 250)->nullable();
            $table->string('afterphoto', 250)->nullable();
            $table->string('remarks', 500)->nullable();
            $table->string('u_name', 15)->nullable();
            $table->dateTime('created_at')->nullable();
            $table->string('u_ae', 1)->nullable();

            $table->primary(['cleaningid', 'propertyid']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `hkcleaninghdr` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('hkcleaninghdr');
    }
};
