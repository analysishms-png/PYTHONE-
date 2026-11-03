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
        Schema::connection('tenant')->create('bookingsource', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('name', 25);
            $table->integer('bcode')->index('idx_bookingsource_bcode');
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
            $table->string('activeYN', 1)->nullable();
            $table->string('sysYN', 1)->nullable();

            $table->primary(['propertyid', 'bcode']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `bookingsource` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('bookingsource');
    }
};
