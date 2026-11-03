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
        Schema::connection('tenant')->create('attendance', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->date('vdate');
            $table->string('vprefix', 6);
            $table->string('empcode', 15);
            $table->string('firstshift', 1);
            $table->string('secondshift', 1);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_name', 15);
            $table->string('u_ae', 1);

            $table->primary(['propertyid', 'vdate', 'vprefix', 'empcode']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `attendance` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('attendance');
    }
};
