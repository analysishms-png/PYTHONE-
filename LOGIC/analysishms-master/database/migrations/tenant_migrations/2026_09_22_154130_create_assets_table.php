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
        Schema::connection('tenant')->create('assets', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->string('propertyid', 10);
            $table->string('code', 50);
            $table->string('name');
            $table->string('type', 50);
            $table->string('location', 100);
            $table->text('company_name');
            $table->string('suppler_name', 100);
            $table->date('purchase_date');
            $table->string('purchase_bill_no', 50);
            $table->text('assets_image');
            $table->text('bill_image');
            $table->dateTime('create_at');
            $table->dateTime('update_at');
            $table->string('status', 10);

            $table->primary(['propertyid', 'code']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `assets` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('assets');
    }
};
