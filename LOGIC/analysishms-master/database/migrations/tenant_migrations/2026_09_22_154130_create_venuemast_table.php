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
        Schema::connection('tenant')->create('venuemast', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('code', 10);
            $table->string('name');
            $table->string('shortname', 5);
            $table->string('dimension', 15);
            $table->string('activeYN', 1);
            $table->string('departcode', 9);
            $table->string('picpath', 150);
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at');
            $table->string('u_ae', 1);

            $table->primary(['propertyid', 'code']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `venuemast` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('venuemast');
    }
};
