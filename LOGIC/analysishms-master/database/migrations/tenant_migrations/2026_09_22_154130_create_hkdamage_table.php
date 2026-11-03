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
        Schema::connection('tenant')->create('hkdamage', function (Blueprint $table) {
            $table->bigInteger('id')->unique('uk_hkdamage_sn');
            $table->integer('propertyid');
            $table->string('damageid', 20)->nullable()->index('idx_hkdamage_damageid');
            $table->string('roomno', 20)->nullable();
            $table->date('date')->nullable();
            $table->string('damagetype', 100)->nullable();
            $table->string('item', 35);
            $table->string('description', 250)->nullable();
            $table->string('status', 20)->default('Open')->index('idx_hkdamage_status');
            $table->string('u_name', 15)->nullable();
            $table->dateTime('created_at')->nullable();
            $table->char('u_ae', 1)->nullable();

            $table->index(['propertyid', 'roomno'], 'idx_hkdamage_pid_room');
        });

        DB::connection('tenant')->statement('ALTER TABLE `hkdamage` MODIFY `id` BIGINT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('hkdamage');
    }
};
