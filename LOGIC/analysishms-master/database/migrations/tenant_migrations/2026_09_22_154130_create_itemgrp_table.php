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
        Schema::connection('tenant')->create('itemgrp', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('property_id');
            $table->integer('code')->index('idx_itemgrp_code');
            $table->string('name', 30);
            $table->string('type', 15)->nullable();
            $table->string('activeyn', 10)->nullable();
            $table->string('u_name', 25)->nullable();
            $table->dateTime('created_at')->nullable();
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
            $table->string('restcode', 25);
            $table->string('cattype');

            $table->primary(['property_id', 'code', 'restcode']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `itemgrp` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('itemgrp');
    }
};
