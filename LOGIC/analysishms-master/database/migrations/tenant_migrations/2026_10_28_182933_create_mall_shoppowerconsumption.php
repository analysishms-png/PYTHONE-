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
        Schema::create('mall_shoppowerconsumption', function (Blueprint $table) {

            
            $table->unsignedBigInteger('property_id');
            $table->string('shop_code', 50);
            $table->string('month', 7); 
            $table->string('floor', 50)->nullable();
            $table->string('shop', 20)->nullable();
            $table->string('store', 20)->nullable();
            $table->decimal('on_date_kwh', 15, 2)->default(0);
            $table->decimal('prev_dt_kwh', 15, 2)->default(0);
            $table->decimal('consumption_kwh', 15, 2)->default(0);
            $table->decimal('kesco_percentage', 8, 2)->default(97.38);
            $table->decimal('dg_percentage', 8, 2)->default(2.62);
            $table->decimal('kesco', 15, 2)->default(0);
            $table->decimal('dg', 15, 2)->default(0);
            $table->decimal('total', 15, 2)->default(0);
            $table->primary(
                ['property_id', 'shop_code', 'month'],
                'mall_shoppowerconsumption_primary'
            );

      
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('mall_shoppowerconsumption');
    }
};
