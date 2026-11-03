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
        Schema::connection('tenant')->create('sundrytypefix', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('sundry_code', 100);
            $table->string('disp_name', 100);
            $table->string('nature', 100);
            $table->string('calcsign', 100);
            $table->string('calcformula', 100);
            $table->string('peroramt', 100);
            $table->string('roundoff', 100);
            $table->decimal('vals', 10, 3)->nullable();
            $table->string('limits', 100)->nullable();
            $table->string('postac', 100)->nullable();
            $table->string('grp', 100)->nullable();
            $table->string('sysYN', 100);
            $table->string('u_name', 100);
            $table->string('created_at', 100);
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');

            $table->primary(['propertyid', 'sundry_code']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `sundrytypefix` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('sundrytypefix');
    }
};
