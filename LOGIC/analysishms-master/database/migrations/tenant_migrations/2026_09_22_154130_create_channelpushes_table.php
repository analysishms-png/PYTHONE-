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
        Schema::connection('tenant')->create('channelpushes', function (Blueprint $table) {
            $table->integer('id', true);
            $table->integer('propertyid');
            $table->integer('eglobepropertyid');
            $table->string('name');
            $table->string('url', 200)->default('');
            $table->string('username', 50)->default('');
            $table->string('password', 50)->default('');
            $table->string('apikey', 50)->default('');
            $table->string('authorization')->default('');
            $table->string('providercode')->default('');
            $table->json('postdata')->nullable();
            $table->longText('response')->default('');
            $table->integer('httpcode')->default(0);
            $table->string('checkyn', 1)->default('N');
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('channelpushes');
    }
};
