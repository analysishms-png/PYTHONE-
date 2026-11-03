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
        Schema::connection('tenant')->create('focc', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->string('propertyid', 100)->default('');
            $table->date('vdate')->nullable();
            $table->decimal('interestamount', 10);
            $table->dateTime('created_at')->nullable()->useCurrent();
            $table->dateTime('updated_at')->nullable();
        });

        DB::connection('tenant')->statement('ALTER TABLE `focc` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('focc');
    }
};
