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
        Schema::connection('tenant')->create('tds_categories', function (Blueprint $table) {
            $table->integer('id')->unique('sn');
            $table->integer('propertyid');
            $table->string('code', 100);
            $table->string('name', 100);
            $table->float('tdspercentage', null, 0);
            $table->string('account', 100)->default('');
            $table->string('u_name', 100);
            $table->dateTime('created_at');
            $table->dateTime('updated_at');
            $table->string('u_ae', 1);

            $table->primary(['propertyid', 'code']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `tds_categories` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('tds_categories');
    }
};
