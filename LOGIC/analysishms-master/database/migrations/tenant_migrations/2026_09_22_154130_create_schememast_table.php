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
        Schema::connection('tenant')->create('schememast', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->integer('code');
            $table->string('name', 35);
            $table->date('startdate');
            $table->date('enddate');
            $table->time('fromtime');
            $table->time('totime');
            $table->string('restcode', 12);
            $table->integer('itemcode');
            $table->integer('qty');
            $table->integer('freeitem');
            $table->integer('freeqty');
            $table->string('days', 100);
            $table->string('activeyn', 1);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);

            $table->primary(['propertyid', 'code']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `schememast` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('schememast');
    }
};
