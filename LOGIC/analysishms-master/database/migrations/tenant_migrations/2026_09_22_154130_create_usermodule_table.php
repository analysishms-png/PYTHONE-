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
        Schema::connection('tenant')->create('usermodule', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid')->default(0);
            $table->integer('opt1')->default(0);
            $table->integer('opt2')->default(0);
            $table->integer('opt3')->default(0);
            $table->integer('code')->default(0);
            $table->string('route', 50);
            $table->string('module', 50);
            $table->string('module_name', 50);
            $table->string('flag', 1);
            $table->string('outletcode', 10);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();

            $table->primary(['propertyid', 'opt1', 'opt2', 'opt3', 'code']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `usermodule` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('usermodule');
    }
};
