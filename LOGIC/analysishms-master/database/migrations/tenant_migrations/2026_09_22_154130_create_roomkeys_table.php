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
        Schema::connection('tenant')->create('roomkeys', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('propertyid');
            $table->string('docid', 50)->default('');
            $table->integer('sno1')->default(0);
            $table->json('data');
            $table->string('u_name');
            $table->boolean('status')->default(true);
            $table->longText('reason')->default('');
            $table->timestamp('created_at')->nullable()->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('roomkeys');
    }
};
