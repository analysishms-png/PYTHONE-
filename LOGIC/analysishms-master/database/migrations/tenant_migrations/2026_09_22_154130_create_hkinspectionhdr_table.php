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
        Schema::connection('tenant')->create('hkinspectionhdr', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->bigInteger('cleaningid');
            $table->bigInteger('assignmentid');
            $table->integer('propertyid');
            $table->integer('roomno');
            $table->integer('inspectionid');
            $table->dateTime('inspectiondate');
            $table->dateTime('inspectionTime')->nullable();
            $table->enum('inspectionstatus', ['Draft', 'In Progress', 'Passed', 'Failed', 'Re-Clean', 'Cancelled'])->nullable()->default('Draft');
            $table->decimal('inspectionscore', 5)->nullable()->default(0);
            $table->string('remarks', 50)->nullable();
            $table->integer('approvedby')->nullable();
            $table->dateTime('approveddate')->nullable();
            $table->string('u_name', 15);
            $table->string('u_ae', 1);
            $table->dateTime('created_at');

            $table->primary(['cleaningid', 'propertyid']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `hkinspectionhdr` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('hkinspectionhdr');
    }
};
