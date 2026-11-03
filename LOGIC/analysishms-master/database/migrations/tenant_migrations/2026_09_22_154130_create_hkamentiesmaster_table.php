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
        Schema::connection('tenant')->create('hkamentiesmaster', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('item', 10);
            $table->string('type', 17);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->string('u_ae', 1);
            $table->integer('srno')->nullable();
            $table->string('dcode', 10);
        });

        DB::connection('tenant')->statement('ALTER TABLE `hkamentiesmaster` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('hkamentiesmaster');
    }
};
