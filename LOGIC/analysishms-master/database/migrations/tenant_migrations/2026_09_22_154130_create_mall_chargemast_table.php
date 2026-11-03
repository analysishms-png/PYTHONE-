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
        Schema::connection('tenant')->create('mall_chargemast', function (Blueprint $table) {
            $table->bigInteger('id', true);
            $table->bigInteger('propertyid')->index('idx_mall_charge_propertyid');
            $table->string('chargecode', 30);
            $table->string('chargename', 30);
            $table->string('chargecategory', 30)->nullable();
            $table->string('calculationbasis', 30)->nullable();
            $table->string('unit', 20)->nullable();
            $table->decimal('taxstru')->nullable()->default(0);
            $table->boolean('escalationyn')->nullable()->default(false);
            $table->string('billingfrequency', 30)->nullable()->default('MONTHLY');
            $table->string('accountcode', 50)->nullable();
            $table->bigInteger('u_name')->nullable();
            $table->dateTime('created_at')->nullable()->useCurrent();
            $table->string('u_ae', 1);
            $table->boolean('activeyn')->nullable()->default(true)->index('idx_mall_charge_status');

            $table->unique(['propertyid', 'chargecode'], 'uk_mall_chargecode');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('mall_chargemast');
    }
};
