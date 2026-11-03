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
        Schema::connection('tenant')->create('holidays', function (Blueprint $table) {
            $table->bigInteger('id', true);
            $table->string('propertyid', 50)->default('0');
            $table->date('holiday_date');
            $table->string('name');
            $table->string('type')->nullable();
            $table->enum('is_repeat', ['Y', 'N'])->default('N');
            $table->enum('is_active', ['Y', 'N'])->default('Y');
            $table->timestamp('created_at')->nullable();
            $table->string('u_name', 50);
            $table->string('u_ae', 10);
            $table->timestamp('updated_at')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('holidays');
    }
};
