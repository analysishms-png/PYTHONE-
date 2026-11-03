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
        Schema::connection('tenant')->create('feedbackdtl', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->integer('feedbackid');
            $table->integer('sno');
            $table->string('questioncode', 10);
            $table->decimal('overallrating', 3, 1)->default(0);

            $table->primary(['propertyid', 'feedbackid', 'sno']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `feedbackdtl` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('feedbackdtl');
    }
};
