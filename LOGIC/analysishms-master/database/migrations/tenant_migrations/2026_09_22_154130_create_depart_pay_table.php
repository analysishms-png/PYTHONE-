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
        Schema::connection('tenant')->create('depart_pay', function (Blueprint $table) {
            $table->integer('id', true);
            $table->integer('propertyid');
            $table->string('rest_code', 10);
            $table->string('pay_code', 10);
            $table->string('is_checked', 1)->nullable();
            $table->string('u_name', 20);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('depart_pay');
    }
};
