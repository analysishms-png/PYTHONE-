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
        Schema::connection('tenant')->create('cheque_designs', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('propertyid')->index('idx_propertyid');
            $table->string('design_name')->index('idx_design_name');
            $table->longText('layout_json');
            $table->boolean('is_active')->nullable()->default(true);
            $table->string('u_name', 100)->default('');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('cheque_designs');
    }
};
