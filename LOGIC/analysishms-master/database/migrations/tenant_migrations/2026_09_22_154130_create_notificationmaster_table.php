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
        Schema::connection('tenant')->create('notificationmaster', function (Blueprint $table) {
            $table->integer('id')->unique('sn');
            $table->integer('propertyid');
            $table->string('route', 15);
            $table->string('module', 15);
            $table->string('dcode', 10);
            $table->longText('task');
            $table->tinyInteger('status')->default(0);
            $table->dateTime('created_at');
            $table->string('u_name', 15);
            $table->string('u_ae', 1);
        });

        DB::connection('tenant')->statement('ALTER TABLE `notificationmaster` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('notificationmaster');
    }
};
