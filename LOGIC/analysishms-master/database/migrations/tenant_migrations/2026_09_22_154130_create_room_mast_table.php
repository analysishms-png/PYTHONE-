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
        Schema::connection('tenant')->create('room_mast', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('cs')->default(0);
            $table->integer('propertyid');
            $table->string('rcode', 100)->index('idx_rcode');
            $table->string('name', 50);
            $table->string('type', 100)->index('idx_room_mast_type');
            $table->string('room_cat', 100)->index('idx_room_mast_room_cat');
            $table->integer('multiper')->nullable();
            $table->string('maid_station', 100)->nullable();
            $table->string('inclcount', 1);
            $table->string('rest_code', 100);
            $table->string('room_stat', 100)->nullable();
            $table->string('floor', 15);
            $table->string('building', 15)->nullable();
            $table->string('pic_path', 100)->nullable();
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
            $table->string('sysYN', 1)->nullable();

            $table->index(['propertyid', 'type'], 'idx_room_mast_propertyid_type');
            $table->index(['rcode'], 'idx_room_mast_rcode');
            $table->primary(['propertyid', 'rcode', 'type', 'rest_code']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `room_mast` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('room_mast');
    }
};
