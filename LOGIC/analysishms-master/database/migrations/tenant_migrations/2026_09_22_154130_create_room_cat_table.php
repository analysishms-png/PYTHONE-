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
        Schema::connection('tenant')->create('room_cat', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('type', 100);
            $table->integer('cat_code')->index('idx_room_cat_code');
            $table->string('name', 100)->nullable();
            $table->string('shortname', 100)->nullable();
            $table->string('rev_code', 100)->nullable();
            $table->integer('norooms')->nullable();
            $table->string('multiper', 100)->nullable();
            $table->string('inclcount', 100)->nullable();
            $table->string('map_code', 100)->nullable();
            $table->string('image_path')->nullable();
            $table->text('ammenties')->nullable();
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
            $table->string('sysYN', 1)->nullable();

            $table->primary(['propertyid', 'type', 'cat_code']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `room_cat` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('room_cat');
    }
};
