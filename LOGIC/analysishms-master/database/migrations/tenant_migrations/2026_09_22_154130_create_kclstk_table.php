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
        Schema::connection('tenant')->create('kclstk', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid', 15);
            $table->string('prefix', 7);
            $table->integer('sno');
            $table->string('vtype', 5);
            $table->integer('vno');
            $table->integer('vprefix');
            $table->dateTime('vdate');
            $table->integer('item');
            $table->float('qty', null, 0);
            $table->integer('unit');
            $table->string('departcode', 11);
            $table->string('u_name', 15);
            $table->string('u_ae', 1);
            $table->dateTime('created_at');

            $table->primary(['propertyid', 'docid', 'sno']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `kclstk` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('kclstk');
    }
};
