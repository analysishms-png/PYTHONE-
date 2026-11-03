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
        Schema::connection('tenant')->create('enviro_inventory', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid')->primary();
            $table->string('cashpurchaseac', 8);
            $table->string('purchasegodown', 8)->default('');
            $table->string('modifyaccountfield', 1)->default('');
            $table->integer('blockdays')->default(0);
            $table->string('itemratemrbasedon', 100);
            $table->string('itemratepbillbasedon', 100);
            $table->enum('storeissuerequistion', ['Y', 'N'])->default('Y');
            $table->string('roundofftype')->default('Standard');
            $table->string('allow_future_date_pr', 1)->nullable()->default('N');
            $table->boolean('autofill_kitchen_closing')->default(false);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);
        });

        DB::connection('tenant')->statement('ALTER TABLE `enviro_inventory` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('enviro_inventory');
    }
};
