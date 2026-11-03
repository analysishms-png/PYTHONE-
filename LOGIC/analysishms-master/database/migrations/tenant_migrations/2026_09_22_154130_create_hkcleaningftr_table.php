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
        Schema::connection('tenant')->create('hkcleaningftr', function (Blueprint $table) {
            $table->bigInteger('id')->unique('uk_hkcleaningftr_sn');
            $table->integer('propertyid');
            $table->unsignedBigInteger('assid');
            $table->smallInteger('sno')->default(0);
            $table->date('date')->nullable();
            $table->string('item', 50)->nullable();
            $table->string('ctype', 20)->nullable();
            $table->boolean('complete')->default(false);
            $table->decimal('qty', 10)->nullable();
            $table->time('time')->nullable();
            $table->string('u_name', 15)->nullable();
            $table->dateTime('created_at')->nullable();
            $table->char('u_ae', 1)->nullable();
        });

        DB::connection('tenant')->statement('ALTER TABLE `hkcleaningftr` MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('hkcleaningftr');
    }
};
