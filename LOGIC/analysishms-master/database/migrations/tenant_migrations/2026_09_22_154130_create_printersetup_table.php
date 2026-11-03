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
        Schema::connection('tenant')->create('printersetup', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('module', 3);
            $table->string('restcode', 10);
            $table->string('description', 100);
            $table->string('printerpath', 40)->default('');
            $table->string('mark', 1);
            $table->string('kitchen', 100);
            $table->string('u_name');
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae')->default('a');
        });

        DB::connection('tenant')->statement('ALTER TABLE `printersetup` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('printersetup');
    }
};
