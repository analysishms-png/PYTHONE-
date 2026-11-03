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
        Schema::connection('tenant')->create('bom', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('FinItem', 9);
            $table->decimal('rawcost', 10)->default(0);
            $table->decimal('FinQty', 10)->default(1);
            $table->string('RawItem', 9);
            $table->decimal('RawQty', 10);
            $table->string('rawunit', 8);
            $table->dateTime('created_at');
            $table->string('U_Name', 15);
            $table->string('u_ae', 1);
        });

        DB::connection('tenant')->statement('ALTER TABLE `bom` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('bom');
    }
};
