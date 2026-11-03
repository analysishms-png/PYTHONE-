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
        Schema::connection('tenant')->create('enviro_finance', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid')->primary();
            $table->decimal('openingstock', 15);
            $table->decimal('closingstock', 15);
            $table->enum('negtivecashbalance', ['allow', 'block', 'warn']);
            $table->string('u_name', 15);
            $table->string('u_ae', 1);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
        });

        DB::connection('tenant')->statement('ALTER TABLE `enviro_finance` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('enviro_finance');
    }
};
