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
        Schema::connection('tenant')->create('nightauditlog', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->string('propertyid', 50);
            $table->date('ncurdate');
            $table->string('narration', 50)->default('');
            $table->string('u_name', 50)->nullable();
            $table->dateTime('created_at')->useCurrent();
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
        });

        DB::connection('tenant')->statement('ALTER TABLE `nightauditlog` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('nightauditlog');
    }
};
