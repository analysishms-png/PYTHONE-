<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->create('mall_lease_dtl', function (Blueprint $table) {
            $table->bigInteger('id')->unique('id');

            $table->unsignedBigInteger('lease_id');
            $table->unsignedBigInteger('propertyid');
            $table->unsignedBigInteger('floorid')->nullable();
            $table->unsignedBigInteger('unitid');

            $table->string('unittype', 50)->nullable();

            $table->decimal('carpetarea', 18, 2)->nullable()->default(0);
            $table->decimal('builtuparea', 18, 2)->nullable()->default(0);
            $table->decimal('chargeablearea', 18, 2)->nullable()->default(0);

            $table->string('renttype', 30)->nullable();
            $table->string('rentbasis', 30)->nullable();

            $table->decimal('rentrate', 18, 2)->nullable();
            $table->decimal('minimumrent', 18, 2)->nullable();
            $table->decimal('currentrent', 18, 2)->nullable();

            $table->string('areaunit', 20)->nullable()->default('SQFT');

            $table->decimal('frontage', 18, 2)->nullable()->default(0);
            $table->decimal('ceilingheight', 18, 2)->nullable()->default(0);

            $table->string('possession_status', 30)->nullable()->default('PENDING');
            $table->string('fitoutstatus', 30)->nullable()->default('PENDING');
            $table->string('storestatus', 30)->nullable()->default('NOT_OPEN');

            $table->date('effectivefrom')->nullable();
            $table->date('effectiveto')->nullable();

            $table->text('remarks')->nullable();

            $table->string('u_ae', 1);
            $table->bigInteger('u_name')->nullable();

            $table->dateTime('created_at')->nullable()->useCurrent();
            $table->dateTime('updated_at')->nullable();

            $table->boolean('activeyn')->nullable()->default(1);

            $table->decimal('camrate', 18, 0)->nullable()->default(0);
            $table->decimal('currentcam', 18, 0)->nullable()->default(0);
            $table->decimal('mincam', 18, 0)->nullable()->default(0);

            $table->primary(['lease_id', 'propertyid']);
        });

        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_lease_dtl` MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT'
        );
    }

    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('mall_lease_dtl');
    }
};
