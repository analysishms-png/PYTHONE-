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
        Schema::connection('tenant')->create('mall_unittype', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('propertyid')->index('idx_mall_unittype_propertyid');
            $table->string('typecode', 30);
            $table->string('typename', 100);
            $table->string('description', 500)->nullable();
            $table->bigInteger('u_name')->nullable();
            $table->dateTime('created_at')->nullable()->useCurrent();
            $table->bigInteger('u_ae')->nullable();
            $table->boolean('activeyn')->nullable()->default(true)->index('idx_mall_unittype_activeyn');

            $table->unique(['propertyid', 'typecode'], 'uk_mall_unittype');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('mall_unittype');
    }
};
