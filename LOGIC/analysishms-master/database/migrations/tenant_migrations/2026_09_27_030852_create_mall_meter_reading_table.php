<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->create('mall_meter_reading', function (Blueprint $table) {
            $table->bigInteger('id')->unique('id');

            $table->unsignedBigInteger('propertyid');
            $table->unsignedBigInteger('shopid');
            $table->date('reading_date');

            $table->decimal('previous_reading', 18, 4)->default(0);
            $table->decimal('current_reading', 18, 4)->default(0);
            $table->decimal('multiplication_factor', 18, 4)->default(1);
            $table->decimal('consumption', 18, 4)->default(0);

            $table->string('reading_status', 10)->default('Normal');
            $table->string('remarks', 50)->nullable();
            $table->string('meter_photo', 255)->nullable();
            $table->string('entry_source', 10)->default('MOBILE');

            $table->string('u_name', 15)->nullable();
            $table->dateTime('created_at')->useCurrent();
            $table->string('u_ae', 1);

            $table->string('u_updatedby', 50)->nullable();
            $table->dateTime('updated_at')->nullable();

            $table->primary(['propertyid', 'shopid', 'reading_date']);
        });

        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_meter_reading` MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT'
        );
    }

    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('mall_meter_reading');
    }
};
