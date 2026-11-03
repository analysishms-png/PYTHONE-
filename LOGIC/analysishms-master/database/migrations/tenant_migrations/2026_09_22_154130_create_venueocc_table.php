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
        Schema::connection('tenant')->create('venueocc', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('fpdocid');
            $table->string('venucode', 8);
            $table->integer('sno')->default(0);
            $table->date('fromdate');
            $table->time('dromtime');
            $table->date('todate');
            $table->string('totime', 20);
            $table->string('u_name');
            $table->dateTime('created_at');
            $table->string('u_ae', 1);
            $table->dateTime('updated_at')->nullable();

            $table->primary(['propertyid', 'fpdocid', 'venucode', 'fromdate']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `venueocc` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('venueocc');
    }
};
