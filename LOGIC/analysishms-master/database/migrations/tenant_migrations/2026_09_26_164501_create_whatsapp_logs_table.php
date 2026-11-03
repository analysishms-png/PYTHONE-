<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->create('whatsapp_logs', function (Blueprint $table) {
            $table->id();
            $table->string('recipient_phone_number');
            $table->integer('propertyid');
            $table->string('type');
            $table->string('template_id');
            $table->text('parameters')->nullable();
            $table->text('response')->nullable();
            $table->integer('http_code');
            $table->enum('status', ['success', 'failed']);
            $table->string('u_name')->default('');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('whatsapp_logs');
    }
};