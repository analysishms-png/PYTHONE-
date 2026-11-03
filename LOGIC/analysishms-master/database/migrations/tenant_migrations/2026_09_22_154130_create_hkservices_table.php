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
        Schema::connection('tenant')->create('hkservices', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->string('propertyid', 15)->default('');
            $table->string('code', 9)->default('');
            $table->string('name', 25)->default('');
            $table->string('dcode', 10)->nullable();
            $table->string('u_name', 15)->nullable();
            $table->dateTime('created_at')->nullable();
            $table->string('u_ae', 1)->nullable();

            $table->primary(['propertyid', 'code']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `hkservices` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('hkservices');
    }
};
