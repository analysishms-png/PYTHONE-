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
        Schema::connection('tenant')->create('itemcatmast', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('Code', 10);
            $table->string('Name', 25);
            $table->string('RoundOff', 3);
            $table->string('AcCode', 10);
            $table->string('U_Name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('U_AE', 1)->default('a');
            $table->string('OutletYN', 1);
            $table->string('Flag', 10);
            $table->string('TaxStru', 10);
            $table->string('CatType', 15);
            $table->string('cattyper', 50)->default('');
            $table->string('RestCode', 20);
            $table->string('DrCr', 2);
            $table->string('RevCode', 10);
            $table->string('ActiveYN', 1);

            $table->primary(['propertyid', 'Code', 'RestCode']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `itemcatmast` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('itemcatmast');
    }
};
