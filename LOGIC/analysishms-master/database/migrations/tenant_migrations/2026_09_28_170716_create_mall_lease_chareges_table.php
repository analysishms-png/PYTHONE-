<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('tablemall_lease_charges', function (Blueprint $table) {
            $table->bigInteger('id')->unique('id');

            $table->unsignedBigInteger('propertyid');
            $table->unsignedBigInteger('leaseid');

            $table->string('chargecode', 30);
            $table->string('chargename', 100)->nullable();

            $table->string('calculationmethod', 30);
            $table->string('basis', 30)->nullable();

            $table->decimal('area', 18, 2)->default(0.00);
            $table->decimal('rate', 18, 4)->default(0.0000);
            $table->decimal('amount', 18, 2)->default(0.00);

            $table->string('billingcycle', 30)->default('Monthly');

            $table->boolean('gstapplicable')->default(true);
            $table->decimal('gstpercent', 10, 4)->default(0.0000);

            $table->date('effectivefrom');
            $table->date('effectiveto')->nullable();

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
            'ALTER TABLE `tablemall_lease_charges` MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT'
        );
    }

    public function down(): void
    {
        Schema::dropIfExists('tablemall_lease_charges');
    }
};
