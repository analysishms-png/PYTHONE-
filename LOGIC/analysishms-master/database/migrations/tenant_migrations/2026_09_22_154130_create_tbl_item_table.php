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
        Schema::connection('tenant')->create('tbl_item', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('property_id');
            $table->integer('code');
            $table->string('name', 30);
            $table->string('type', 15);
            $table->string('activeyn', 10);
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at');
            $table->string('u_ae', 1);
            $table->string('restcode', 25);
            $table->string('cattype', 15);

            $table->primary(['property_id', 'code', 'restcode']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `tbl_item` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('tbl_item');
    }
};
