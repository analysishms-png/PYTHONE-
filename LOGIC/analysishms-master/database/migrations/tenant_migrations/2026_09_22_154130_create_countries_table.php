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
        Schema::connection('tenant')->create('countries', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('name', 30);
            $table->string('Type', 10)->default('Foreign');
            $table->string('country_code', 15)->index('idx_countries_country_code');
            $table->string('nationality', 20);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');

            $table->index(['country_code'], 'idx_country_code');
            $table->primary(['propertyid', 'country_code']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `countries` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('countries');
    }
};
