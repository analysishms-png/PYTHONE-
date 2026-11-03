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
        Schema::connection('tenant')->create('lostfound', function (Blueprint $table) {
            $table->bigInteger('id')->unique('id');
            $table->integer('propertyid');
            $table->integer('vno');
            $table->date('vdate');
            $table->date('founddate')->index('idx_founddate');
            $table->time('foundtime')->nullable();
            $table->string('roomno', 20)->nullable()->index('idx_room');
            $table->string('itemcategory', 20)->nullable();
            $table->string('itemname', 25)->nullable();
            $table->string('brandname', 25)->nullable();
            $table->string('color', 15)->nullable();
            $table->decimal('quantity', 10)->nullable()->default(1);
            $table->string('perishable', 3)->nullable()->default('No');
            $table->enum('itemcondition', ['Excellent', 'Good', 'Fair', 'Damaged'])->nullable();
            $table->string('foundlocation', 15)->nullable();
            $table->string('description', 80)->nullable();
            $table->integer('foundby')->nullable();
            $table->string('storagelocation', 15)->nullable();
            $table->decimal('estimatedvalue', 12)->nullable();
            $table->enum('status', ['Found', 'Stored', 'Claimed', 'HandedOver', 'Courier', 'Disposed'])->nullable()->index('idx_status');
            $table->string('remarks', 80)->nullable();
            $table->integer('u_name')->nullable();
            $table->dateTime('created_at')->nullable()->useCurrent();
            $table->string('u_ae', 1)->nullable();
            $table->string('claimby', 15)->default('');
            $table->string('claimmoblieno', 10)->default('');
            $table->string('claimemail', 15)->default('');
            $table->string('handoverto', 15)->default('');
            $table->dateTime('handoverdate');
            $table->string('receivedby', 15)->default('');
            $table->string('claimremark', 20)->default('');
            $table->string('couiername', 15)->default('');
            $table->string('couierdocno', 15)->default('');

            $table->primary(['propertyid', 'vno']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `lostfound` MODIFY `id` BIGINT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('lostfound');
    }
};
