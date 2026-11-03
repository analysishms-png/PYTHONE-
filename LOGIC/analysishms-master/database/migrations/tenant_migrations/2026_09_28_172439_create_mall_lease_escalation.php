<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('mall_lease_escalation', function (Blueprint $table) {
           $table->bigInteger('id')->unique('id');

            $table->unsignedBigInteger('propertyid');
            $table->unsignedBigInteger('leaseid');

            $table->string('chargecode', 15)->default('RENT');

            $table->date('effectivefrom');

            $table->integer('sno');

            $table->date('effectiveto')->nullable();

            $table->integer('aftermonths')->default(0);

            $table->string('increasetype', 20)->default('Percentage');

            $table->decimal('increasepercent', 10, 4)->default(0.0000);

            $table->decimal('increaseamount', 18, 2)->default(0.00);

            $table->decimal('oldrate', 18, 4)->default(0.0000);

            $table->decimal('newrate', 18, 4)->default(0.0000);

            $table->decimal('oldamount', 18, 2)->default(0.00);

            $table->decimal('newamount', 18, 2)->default(0.00);

            $table->decimal('area', 18, 2)->default(0.00);

            $table->string('u_name', 50)->nullable();
            $table->string('u_updatedby', 50)->nullable();
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();

            // Composite Primary Key
            $table->primary([
                'propertyid',
                'leaseid',
                'chargecode',
                'effectivefrom'
            ]);
        });
        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_lease_escalation` MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT'
        );
    }

    public function down(): void
    {
        Schema::dropIfExists('mall_lease_escalation');
    }
};