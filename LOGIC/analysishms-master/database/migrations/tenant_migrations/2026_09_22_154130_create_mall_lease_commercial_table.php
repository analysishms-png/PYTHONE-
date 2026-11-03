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
        Schema::connection('tenant')->create('mall_lease_commercial', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('leaseid')->index('idx_leasecommercial_leaseid');
            $table->unsignedBigInteger('propertyid')->index('idx_leasecommercial_propertyid');
            $table->unsignedBigInteger('shopid')->index('idx_leasecommercial_shopid');
            $table->unsignedBigInteger('tenantid')->index('idx_leasecommercial_tenantid');
            $table->string('commercialmodel', 50);
            $table->decimal('chargeablearea', 18)->nullable()->default(0);
            $table->string('areaunit', 20)->nullable()->default('SQFT');
            $table->decimal('rentrate', 18)->nullable()->default(0);
            $table->decimal('monthlyrent', 18)->nullable()->default(0);
            $table->decimal('mgamount', 18)->nullable()->default(0);
            $table->decimal('revenuesharepercent', 8, 4)->nullable()->default(0);
            $table->string('turnoverbasis', 30)->nullable();
            $table->decimal('fixedamount', 18)->nullable()->default(0);
            $table->date('effectivefrom')->nullable();
            $table->date('effectiveto')->nullable();
            $table->string('billingfrequency', 30)->nullable()->default('MONTHLY');
            $table->string('remarks', 500)->nullable();
            $table->bigInteger('u_name')->nullable();
            $table->dateTime('created_at')->nullable()->useCurrent();
            $table->string('u_ae', 1);
            $table->boolean('activeyn')->nullable()->default(true);

            $table->index(['effectivefrom', 'effectiveto'], 'idx_leasecommercial_effective');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('mall_lease_commercial');
    }
};
