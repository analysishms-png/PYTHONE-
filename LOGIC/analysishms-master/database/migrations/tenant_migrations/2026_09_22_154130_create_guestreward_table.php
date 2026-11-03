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
        Schema::connection('tenant')->create('guestreward', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid', 30);
            $table->string('custcode', 8);
            $table->date('vdate');
            $table->time('vtime');
            $table->string('departname', 25);
            $table->string('billno', 8);
            $table->decimal('billamt', 10)->default(0);
            $table->decimal('rewardpoint', 10)->default(0);
            $table->decimal('redeempoint', 10)->default(0);
            $table->string('mobileno', 12);
            $table->decimal('total', 10)->default(0);
            $table->decimal('discamt', 10)->default(0);
            $table->string('restcode', 6);
            $table->string('schemecode', 6);
            $table->decimal('saleupto', 10)->default(0);
            $table->decimal('rppointonamt', 10)->default(0);
            $table->decimal('rewardvalue', 10)->default(0);
            $table->decimal('reedemvalue', 10)->default(0);
            $table->string('regid', 11);
            $table->decimal('discper', 10)->default(0);
            $table->string('u_name', 10);
            $table->string('u_ae', 1);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
        });

        DB::connection('tenant')->statement('ALTER TABLE `guestreward` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('guestreward');
    }
};
