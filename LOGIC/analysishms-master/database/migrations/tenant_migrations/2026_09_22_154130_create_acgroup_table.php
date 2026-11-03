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
        Schema::connection('tenant')->create('acgroup', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('group_code', 10);
            $table->string('group_name', 25);
            $table->string('maingroupcode', 100)->default('');
            $table->string('maingroupname')->default('');
            $table->string('nature', 25);
            $table->string('sys_group', 10);
            $table->enum('undergroup', ['Y', 'N'])->default('Y');
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->char('u_ae', 1)->default('a');

            $table->primary(['propertyid', 'group_name']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `acgroup` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('acgroup');
    }
};
