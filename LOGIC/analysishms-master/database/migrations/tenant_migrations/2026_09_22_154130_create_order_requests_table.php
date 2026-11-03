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
        Schema::connection('tenant')->create('order_requests', function (Blueprint $table) {
            $table->integer('id', true);
            $table->integer('propertyid')->default(0);
            $table->string('order_id', 100)->default('');
            $table->string('rest_code', 100)->default('');
            $table->string('baserestcode')->default('');
            $table->string('roomno', 100)->default('');
            $table->string('roomtype', 100)->default('');
            $table->integer('item')->default(0);
            $table->decimal('qty', 10)->default(0);
            $table->string('waiter', 10)->default('');
            $table->string('status', 100)->default('pending');
            $table->dateTime('created_at')->nullable()->useCurrent();
            $table->dateTime('updated_at')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('order_requests');
    }
};
