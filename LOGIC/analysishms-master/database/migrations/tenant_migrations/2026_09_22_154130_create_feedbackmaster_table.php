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
        Schema::connection('tenant')->create('feedbackmaster', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('questioncode', 10);
            $table->string('question', 250)->nullable();
            $table->integer('displayorder')->nullable();
            $table->boolean('isactive')->default(true);

            $table->primary(['propertyid', 'questioncode']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `feedbackmaster` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('feedbackmaster');
    }
};
