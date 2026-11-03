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
        Schema::connection('tenant')->create('enviro_einvoice', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid')->primary();
            $table->string('apiid');
            $table->string('apisecret');
            $table->string('einvusername');
            $table->string('customerid');
            $table->string('einvpwd');
            $table->string('activeyn', 1);
            $table->string('source')->default('API');
            $table->string('generateirnurl')->default('https://api.mygstcafe.com/eicore/v1.03/Invoice');
            $table->dateTime('created_at');
            $table->dateTime('updated_at');
            $table->string('u_ae', 1)->default('a');
        });

        DB::connection('tenant')->statement('ALTER TABLE `enviro_einvoice` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('enviro_einvoice');
    }
};
