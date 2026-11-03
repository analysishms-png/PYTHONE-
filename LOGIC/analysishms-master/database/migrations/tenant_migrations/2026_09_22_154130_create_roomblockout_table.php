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
        Schema::connection('tenant')->create('roomblockout', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('roomcode', 5);
            $table->string('block', 50);
            $table->string('reasons', 50);
            $table->date('fromdate');
            $table->date('todate');
            $table->string('type', 5);
            $table->string('u_name', 50);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 5);
            $table->time('vtime');
            $table->string('guestname', 100);
            $table->string('mobileno', 10);
            $table->date('cleardate')->nullable();
            $table->time('cleartime')->nullable();
            $table->string('clearuser', 50);
            $table->string('clearremark', 50);

            $table->primary(['roomcode', 'fromdate', 'vtime']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `roomblockout` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('roomblockout');
    }
};
