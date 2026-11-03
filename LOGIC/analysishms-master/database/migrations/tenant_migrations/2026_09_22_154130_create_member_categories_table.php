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
        Schema::connection('tenant')->create('member_categories', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('propertyid');
            $table->integer('code')->default(0);
            $table->string('title', 191);
            $table->string('short_name', 191);
            $table->enum('subscription', ['yes', 'no'])->default('no');
            $table->enum('surcharge', ['yes', 'no'])->default('no');
            $table->enum('facility_billing', ['yes', 'no'])->default('no');
            $table->enum('status', ['active', 'inactive'])->default('active');
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('member_categories');
    }
};
