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
        Schema::connection('tenant')->create('hklfitem', function (Blueprint $table) {
            $table->bigInteger('id')->unique('id');
            $table->integer('PropertyID');
            $table->bigInteger('vno');
            $table->integer('sno');
            $table->integer('category');
            $table->string('itemname', 50)->nullable();
            $table->string('brandname', 50)->nullable();
            $table->string('color', 25)->nullable();
            $table->string('description', 50)->nullable();
            $table->string('conditiontype', 25)->nullable();
            $table->decimal('estimatedvalue', 12)->nullable();
            $table->decimal('qty', 10)->nullable()->default(1);
            $table->char('perishable', 1)->nullable()->default('N');
            $table->string('u_name', 15)->nullable();
            $table->dateTime('created_at');
            $table->string('u_ae', 1)->nullable();

            $table->primary(['PropertyID', 'vno', 'sno']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `hklfitem` MODIFY `id` BIGINT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('hklfitem');
    }
};
