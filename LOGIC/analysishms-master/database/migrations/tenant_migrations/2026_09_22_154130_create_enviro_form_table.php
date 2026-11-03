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
        Schema::connection('tenant')->create('enviro_form', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid')->primary();
            $table->string('arrdatetimeedit', 3)->nullable();
            $table->string('cancellationac', 10)->nullable();
            $table->string('pageopenwalkin')->default('roomstatus');
            $table->string('advanceroomrentac', 10)->nullable();
            $table->string('addroomreservation', 1)->default('N');
            $table->string('grcmandatory', 3)->nullable();
            $table->string('printfoodsaccode', 1)->default('Y');
            $table->string('roomrateeditable', 3)->nullable();
            $table->string('roominctaxeditable', 3)->nullable();
            $table->string('roominclusive', 1)->default('N');
            $table->string('rrinctaxdefault', 10)->nullable();
            $table->string('blockinvalidtarrifinctaxyn', 3)->nullable();
            $table->integer('fombillcopies')->nullable();
            $table->time('checkout')->nullable();
            $table->string('allowcheckinsubmit', 1)->default('Y');
            $table->time('checkintime')->default('12:00:00');
            $table->string('plancalc', 3)->nullable();
            $table->boolean('autoroomassign')->default(false);
            $table->string('autofillroomres', 1)->default('N');
            $table->string('emptyroomyn', 1)->nullable()->default('N');
            $table->string('noshowatnightaudit', 3)->nullable();
            $table->string('billprintingsummerised', 3)->nullable();
            $table->string('taxsummary', 3)->nullable();
            $table->time('variationbefore')->nullable();
            $table->time('variationafter')->nullable();
            $table->string('roomrentcharge', 1)->nullable();
            $table->string('roomrentbefchkout', 3)->nullable();
            $table->string('roomrentchkoutpost', 10)->nullable()->default('Semi');
            $table->string('autosplityn', 3)->nullable();
            $table->string('roomcheckoutclearanceyn', 3)->nullable();
            $table->string('roomchrgdueac', 10)->nullable();
            $table->string('postroomdiscseparately', 3)->nullable();
            $table->string('plantariffnarration', 20)->nullable();
            $table->string('guestchargesdeletelog', 3)->nullable();
            $table->string('rate1', 15)->nullable()->default('High Rate');
            $table->string('rate2', 15)->nullable()->default('Rack Rate');
            $table->string('rate3', 15)->nullable()->default('Disk 1 Rate');
            $table->string('rate4', 15)->nullable()->default('Disk 2 Rate');
            $table->string('rate5', 15)->nullable()->default('Disk 3 Rate');
            $table->text('resinstruction1')->nullable();
            $table->string('resinstruction2', 100)->nullable();
            $table->string('resinstruction3', 100)->nullable();
            $table->string('resinstruction4', 100)->nullable();
            $table->string('resinstruction5', 100)->nullable();
            $table->string('resinstruction6', 100)->nullable();
            $table->string('resinstruction7', 100)->nullable();
            $table->string('displayplanonprint', 1)->default('Y');
            $table->string('resinstruction8', 100)->nullable();
            $table->string('resinstruction9', 100)->nullable();
            $table->string('resinstruction10', 100)->nullable();
            $table->string('resinstruction11', 100)->nullable();
            $table->string('resinstruction12', 100)->nullable();
            $table->string('roomcheckinclearanceyn', 3)->nullable();
            $table->string('logoyn', 1)->default('Y');
            $table->string('emailyn', 1)->default('Y');
            $table->string('websiteyn', 1)->default('Y');
            $table->string('fssaicode', 100)->default('');
            $table->string('seperatereservationletterasperstatusyn', 3)->nullable();
            $table->string('newtarrifforoldguest', 3)->nullable();
            $table->string('reservationexpondonsaveyn', 3)->nullable();
            $table->string('increservationinblankgrc', 3)->nullable();
            $table->integer('tentativedays')->default(0);
            $table->string('tarrifcountwise', 1)->default('N');
            $table->string('displayrackrow', 10)->nullable();
            $table->string('displayrackcol', 10)->nullable();
            $table->string('displayrackfontsize', 10)->nullable();
            $table->string('grcdatetime', 10)->default('Y');
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
            $table->string('sysYN', 1)->nullable();
            $table->string('roundofftype', 10)->nullable();
            $table->enum('dualprintexpsheet', ['Y', 'N'])->default('Y');
            $table->boolean('allowbelow18')->default(false);
            $table->boolean('pushroomkey')->default(false);
            $table->string('googlereviewurl', 50);
            $table->boolean('deptnotificationyn')->default(true);
            $table->boolean('housekeepingroomstatus')->default(false);
            $table->tinyInteger('blockwisedisp')->default(0);
            $table->string('grcinstruction1', 100);
            $table->string('grcinstruction2', 100);
            $table->string('grcinstruction3', 100);
            $table->string('grcinstruction4', 100);
            $table->string('grcinstruction5', 100);
            $table->string('grcinstruction6', 100);
            $table->string('grcinstruction7', 100);
        });

        DB::connection('tenant')->statement('ALTER TABLE `enviro_form` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('enviro_form');
    }
};
