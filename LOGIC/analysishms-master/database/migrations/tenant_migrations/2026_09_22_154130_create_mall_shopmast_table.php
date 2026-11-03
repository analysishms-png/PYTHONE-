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
        Schema::connection('tenant')->create('mall_shopmast', function (Blueprint $table) {
            $table->bigInteger('id')->unique('id');
            $table->unsignedBigInteger('propertyid');
            $table->unsignedBigInteger('floorid')->nullable();
            $table->string('shopcode', 50);
            $table->string('shopname', 150)->nullable();
            $table->string('shoptype', 50)->nullable();
            $table->string('businesscategory', 100)->nullable();
            $table->decimal('carpetarea', 18)->nullable()->default(0);
            $table->decimal('builtuparea', 18)->nullable()->default(0);
            $table->decimal('chargeablearea', 18)->nullable()->default(0);
            $table->string('areaunit', 20)->nullable()->default('SQFT');
            $table->decimal('frontage', 18)->nullable()->default(0);
            $table->decimal('ceilingheight', 18)->nullable()->default(0);
            $table->string('shopstatus', 30)->nullable()->default('VACANT');
            $table->string('electricitymeterno', 50)->nullable();
            $table->bigInteger('u_name')->nullable();
            $table->dateTime('created_at')->nullable()->useCurrent();
            $table->string('u_ae', 1);
            $table->boolean('activeyn')->nullable()->default(true);

            $table->primary(['propertyid', 'shopcode']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `mall_shopmast` MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('mall_shopmast');
    }
};
