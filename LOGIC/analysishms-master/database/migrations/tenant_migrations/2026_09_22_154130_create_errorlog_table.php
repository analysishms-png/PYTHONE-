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
        Schema::connection('tenant')->create('errorlog', function (Blueprint $table) {
            $table->integer('id', true);
            $table->integer('propertyid')->nullable();
            $table->longText('error')->nullable();
            $table->string('pcode')->default('');
            $table->string('ccode')->default('');
            $table->string('u_name', 15)->nullable();
            $table->dateTime('created_at')->nullable();
            $table->dateTime('updated_at')->nullable();
            $table->char('u_ae', 1)->default('a');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('errorlog');
    }
};
