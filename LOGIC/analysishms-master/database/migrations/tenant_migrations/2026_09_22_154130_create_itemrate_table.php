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
        Schema::connection('tenant')->create('itemrate', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('Property_ID');
            $table->string('ItemCode', 9);
            $table->string('itemcodeold', 10)->default('');
            $table->string('RestCode', 20);
            $table->decimal('Rate', 10);
            $table->date('AppDate');
            $table->string('Party', 9);
            $table->string('U_Name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('U_AE', 1);

            $table->primary(['Property_ID', 'ItemCode', 'RestCode', 'AppDate']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `itemrate` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('itemrate');
    }
};
