<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::connection('tenant')->create('fombilldetails', function (Blueprint $table) {
            $table->integer('id', true);
            $table->integer('propertyid');
            $table->integer('billno');
            $table->integer('sno1');
            $table->date('billdate');
            $table->integer('foliono');
            $table->string('guestname', 35);
            $table->decimal('billamt', 10)->default(0);
            $table->string('cancelremark', 50);
            $table->decimal('settamt', 10);
            $table->string('status', 8);
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);
            $table->string('folionodocid', 100);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('fombilldetails');
    }
};
