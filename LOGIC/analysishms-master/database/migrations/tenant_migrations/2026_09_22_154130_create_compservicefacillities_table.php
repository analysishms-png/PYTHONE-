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
        Schema::connection('tenant')->create('compservicefacillities', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->integer('displayorder');
            $table->string('service', 15)->default('');
            $table->string('servicehdr', 15)->default('');
            $table->string('remark', 20)->default('');
            $table->string('U_name', 15);
            $table->dateTime('created_at');
            $table->string('u_ae', 1);
            $table->boolean('isactive')->default(true);

            $table->primary(['propertyid', 'service']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `compservicefacillities` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('compservicefacillities');
    }
};
