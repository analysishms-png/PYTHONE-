<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::connection('tenant')->create('cities', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->integer('city_code')->index('idx_city_code');
            $table->string('zipcode', 10)->nullable();
            $table->string('country', 30);
            $table->string('cityname', 30);
            $table->string('state', 30);
            $table->integer('activeyn')->default(1);
            $table->string('u_name', 20);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');

            $table->primary(['propertyid', 'city_code']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `cities` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('cities');
    }
};
