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
        Schema::connection('tenant')->create('enviro_banquet', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid')->primary();
            $table->string('outdoorcatering', 3);
            $table->string('cataloglimit', 3);
            $table->string('roundoffac', 8);
            $table->string('discountac', 8);
            $table->string('indoorsaleac', 8);
            $table->string('indoorpartyac', 8);
            $table->string('panrequiredyn', 1)->default('N');
            $table->string('roundofftype')->default('Standard');
            $table->string('bookingraterequired', 1)->default('Y');
            $table->integer('banquet_edit_date');
            $table->integer('booking_edit')->default(0);
            $table->boolean('adv_tax_on_bill')->default(false);
            $table->string('resinstructionfp1', 100)->nullable();
            $table->string('resinstructionfp2', 100)->nullable();
            $table->string('resinstructionfp3', 100)->nullable();
            $table->string('resinstructionfp4', 100)->nullable();
            $table->string('resinstructionfp5', 100)->nullable();
            $table->string('resinstructionbillno1', 100)->nullable();
            $table->string('resinstructionbillno2', 100)->nullable();
            $table->string('resinstructionbillno3', 100)->nullable();
            $table->string('divcode')->default('');
            $table->string('u_name', 15);
            $table->string('u_ae', 1);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('companyname', 55)->default('');
            $table->text('companyaddress')->default('');
            $table->string('gstin', 20)->default('');
            $table->string('logo', 50)->default('');
            $table->string('email')->nullable();
            $table->string('mobile', 20)->nullable();
            $table->string('advinstruction_no1')->nullable();
            $table->string('advinstruction_no2')->nullable();
            $table->string('advinstruction_no3')->nullable();
        });

        DB::connection('tenant')->statement('ALTER TABLE `enviro_banquet` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('enviro_banquet');
    }
};
