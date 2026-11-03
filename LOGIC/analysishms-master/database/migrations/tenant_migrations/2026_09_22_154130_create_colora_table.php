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
        Schema::connection('tenant')->create('colora', function (Blueprint $table) {
            $table->integer('id', true);
            $table->integer('propertyid');
            $table->string('rcode', 100)->nullable();
            $table->string('colorcode', 100)->nullable();
            $table->integer('cstatus')->nullable()->default(0);
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
            $table->string('sysYN', 1)->nullable();
            $table->string('activeYN', 1)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('colora');
    }
};
