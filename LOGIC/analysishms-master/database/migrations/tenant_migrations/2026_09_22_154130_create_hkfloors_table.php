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
        Schema::connection('tenant')->create('hkfloors', function (Blueprint $table) {
            $table->bigInteger('id')->unique('id');
            $table->integer('propertyid');
            $table->string('code', 10);
            $table->string('name', 50);
            $table->string('superviser', 50)->nullable();
            $table->boolean('isactive')->default(true);
            $table->string('u_name', 50);
            $table->timestamps();

            $table->primary(['propertyid', 'code']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `hkfloors` MODIFY `id` BIGINT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('hkfloors');
    }
};
