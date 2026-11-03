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
        Schema::connection('tenant')->create('hklfhdr', function (Blueprint $table) {
            $table->bigInteger('id')->unique('id');
            $table->integer('propertyID');
            $table->string('vno', 30);
            $table->dateTime('foundDate');
            $table->integer('foundBy');
            $table->integer('department');
            $table->integer('room')->nullable();
            $table->string('floor', 10);
            $table->bigInteger('cleaningid')->nullable();
            $table->bigInteger('assignmentdetailid')->nullable();
            $table->string('foundlocation', 100)->nullable();
            $table->string('exactLocation')->nullable();
            $table->string('guestname', 35)->default('');
            $table->string('mobileno', 10)->default('');
            $table->string('handoverto', 15)->default('');
            $table->dateTime('dandoverdate');
            $table->string('status', 20)->nullable()->default('OPEN');
            $table->string('remarks', 500)->nullable();
            $table->string('u_name', 15)->nullable();
            $table->dateTime('created_at')->nullable()->useCurrent();
            $table->string('u_ae', 1)->nullable();

            $table->primary(['propertyID', 'vno']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `hklfhdr` MODIFY `id` BIGINT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('hklfhdr');
    }
};
