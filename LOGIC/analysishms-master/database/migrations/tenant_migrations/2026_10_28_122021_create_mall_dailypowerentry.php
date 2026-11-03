<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->create('mall_dailypowerentry', function (Blueprint $table) {
            $table->bigInteger('id')->unique('id');
            $table->string('propertyid', 50);
            $table->date('entry_date');
            $table->decimal('kesco', 12, 2)->default(0.00);
            $table->decimal('solar', 12, 2)->default(0.00);
            $table->decimal('dg', 12, 2)->default(0.00);
            $table->decimal('total', 12, 2)->default(0.00);
            $table->decimal('kesco_per', 12, 2)->default(0.00);
            $table->decimal('solar_per', 12, 2)->default(0.00);
            $table->decimal('dg_per', 12, 2)->default(0.00);
            $table->decimal('hsd', 12, 2)->default(0.00);
            $table->string('kesco_h', 10)->nullable();
            $table->string('dg_h', 10)->nullable();
            $table->string('u_name', 20)->nullable();
            $table->string('u_ae', 20)->nullable();
            $table->dateTime('created_at')->nullable();
            $table->dateTime('updated_at')->nullable();

            $table->primary(['propertyid', 'entry_date']);
        });

        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_dailypowerentry` MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT'
        );
    }

    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('mall_dailypowerentry');
    }
};
