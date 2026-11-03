<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->create('mall_partylocation', function (Blueprint $table) {
            $table->bigInteger('id')->unique('id');

            $table->unsignedBigInteger('propertyid');
            $table->string('tenantcode', 8);
            $table->string('servicecode', 6);
            $table->string('shopcode', 8);
            $table->integer('sno');

            $table->string('activeyn', 1);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->string('u_ae', 1);

            $table->primary([
                'propertyid',
                'tenantcode',
                'servicecode',
                'shopcode',
                'sno'
            ]);
        });

        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_partylocation` MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT'
        );
    }

    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('mall_partylocation');
    }
};
