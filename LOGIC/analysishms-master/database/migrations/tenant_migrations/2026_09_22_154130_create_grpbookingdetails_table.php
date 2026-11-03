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
        Schema::connection('tenant')->create('grpbookingdetails', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('Property_ID');
            $table->string('BookingDocid', 35)->index('idx_bookingdocid');
            $table->string('BookNo', 10);
            $table->string('GuestName', 50)->nullable();
            $table->string('GuestProf', 10)->nullable()->index('idx_guestprof');
            $table->integer('Sno')->index('idx_sno');
            $table->float('RoomDet', null, 0);
            $table->float('Adults', null, 0);
            $table->float('Childs', null, 0);
            $table->decimal('Tarrif', 10);
            $table->string('IncTax', 3);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('U_AE', 1);
            $table->string('RoomCat', 9)->index('idx_roomcat');
            $table->string('ccode');
            $table->string('pcode')->default('');
            $table->string('Plan_Code', 20);
            $table->string('ServiceChrg', 3);
            $table->string('RoomNo', 9);
            $table->string('RateCode', 1);
            $table->date('ArrDate');
            $table->time('ArrTime');
            $table->smallInteger('NoDays');
            $table->date('DepDate');
            $table->string('Cancel', 1);
            $table->date('CancelDate')->nullable();
            $table->string('U_Name', 15);
            $table->time('DepTime');
            $table->integer('status')->default(1);
            $table->string('RoomTaxStru', 9);
            $table->string('CancelUName', 15);
            $table->string('ContraDocId', 30)->nullable();
            $table->integer('ContraSno')->nullable();
            $table->string('chkoutyn', 1)->default('N');

            $table->index(['BookingDocid', 'Property_ID'], 'idx_grpbookingdetails_booking_property');
            $table->index(['ContraDocId', 'Property_ID'], 'idx_grpbookingdetails_contra_property');
            $table->index(['Property_ID', 'BookingDocid'], 'idx_property_booking');
            $table->index(['Property_ID', 'Cancel'], 'idx_property_cancel');
            $table->index(['RoomNo', 'Property_ID'], 'idx_roomno_property');
            $table->primary(['Property_ID', 'BookingDocid', 'Sno']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `grpbookingdetails` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('grpbookingdetails');
    }
};
