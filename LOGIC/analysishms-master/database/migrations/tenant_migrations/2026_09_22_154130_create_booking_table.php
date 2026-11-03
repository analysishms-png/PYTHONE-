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
        Schema::connection('tenant')->create('booking', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('Property_ID');
            $table->string('DocId', 50)->index('idx_booking_docid');
            $table->string('Vtype', 5);
            $table->integer('BookNo');
            $table->integer('Vprefix');
            $table->date('vdate');
            $table->integer('NoofRooms');
            $table->string('Remarks', 100);
            $table->string('pickupdrop')->nullable()->default('');
            $table->string('Authorization', 15);
            $table->string('Company', 10);
            $table->string('GuestProf', 15);
            $table->string('TravelAgency', 15);
            $table->string('BussSource', 15);
            $table->string('MarketSeg', 50);
            $table->string('ArrFrom', 20);
            $table->string('Destination', 20);
            $table->string('BookedBy', 15);
            $table->string('ResMode', 10);
            $table->string('TravelMode', 10);
            $table->date('CancelDate')->nullable();
            $table->string('Cancel', 1);
            $table->string('GuestName', 35);
            $table->string('U_Name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('U_AE', 1);
            $table->string('MobNo', 10);
            $table->string('Email', 35);
            $table->string('RRTaxInc', 3);
            $table->float('RDisc', null, 0);
            $table->string('purpofvisit', 50)->nullable();
            $table->string('vehiclenum', 50)->nullable();
            $table->float('RSDisc', null, 0);
            $table->date('AdvDueDate')->nullable();
            $table->string('RRServiceChrg', 3);
            $table->string('advdeposit', 1)->nullable();
            $table->string('ResStatus', 9);
            $table->string('RefCode', 15);
            $table->string('Verified', 3);
            $table->string('CancelUName', 15);
            $table->string('RefBookNo');

            $table->index(['DocId'], 'idx_docid');
            $table->primary(['Property_ID', 'DocId']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `booking` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('booking');
    }
};
