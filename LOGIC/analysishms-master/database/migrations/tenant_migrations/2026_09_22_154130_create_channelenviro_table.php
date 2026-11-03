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
        Schema::connection('tenant')->create('channelenviro', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->integer('eglobepropertyid');
            $table->string('name');
            $table->string('url', 200)->default('');
            $table->string('username', 50)->default('');
            $table->string('password', 50)->default('');
            $table->string('apikey', 50)->default('');
            $table->string('authorization')->default('');
            $table->string('providercode')->default('');
            $table->string('checkyn', 1)->default('N');
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
        });

        DB::connection('tenant')->statement('ALTER TABLE `channelenviro` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('channelenviro');
    }
};
