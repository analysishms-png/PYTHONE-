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
        Schema::connection('tenant')->create('hkinspectionhdtl', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->bigInteger('inspectionid');
            $table->integer('sno');
            $table->integer('checklistid');
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->string('u_ae', 1);
            $table->enum('result', ['PASS', 'FAIL', 'NA'])->nullable()->default('PASS');
            $table->decimal('score', 5)->nullable()->default(0);
            $table->string('remarks', 50)->nullable();

            $table->primary(['propertyid', 'inspectionid', 'sno']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `hkinspectionhdtl` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('hkinspectionhdtl');
    }
};
