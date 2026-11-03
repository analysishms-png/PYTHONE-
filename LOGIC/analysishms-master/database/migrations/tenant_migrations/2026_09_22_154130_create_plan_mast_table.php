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
        Schema::connection('tenant')->create('plan_mast', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->integer('pcode')->index('idx_pcode');
            $table->string('name');
            $table->integer('total')->nullable();
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
            $table->string('activeYN', 1)->nullable();
            $table->string('sysYN', 1)->nullable();
            $table->decimal('room_per', 10)->nullable();
            $table->decimal('room_rate', 10)->nullable();
            $table->string('desc1')->default('');
            $table->string('desc2')->default('');
            $table->decimal('package_amount', 10)->nullable();
            $table->string('disc_appYN', 1)->nullable();
            $table->string('disc_appON')->nullable();
            $table->integer('adults')->nullable()->default(0);
            $table->integer('childs')->nullable()->default(0);
            $table->string('rrinc_tax', 50)->nullable();
            $table->string('room_cat')->nullable();
            $table->string('tarrif')->nullable();
            $table->string('room_tax_stru')->nullable();
            $table->string('map_code')->nullable()->default('0');
            $table->string('rateplancode', 100)->default('');

            $table->index(['pcode'], 'idx_plan_mast_pcode');
            $table->primary(['propertyid', 'pcode']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `plan_mast` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('plan_mast');
    }
};
