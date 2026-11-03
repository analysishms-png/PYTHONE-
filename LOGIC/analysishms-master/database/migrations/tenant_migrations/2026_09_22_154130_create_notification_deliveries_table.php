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
        Schema::connection('tenant')->create('notification_deliveries', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('propertyid', 10)->default('');
            $table->unsignedBigInteger('notification_id')->index('notification_id_index');
            $table->unsignedBigInteger('user_id')->index('user_id_index');
            $table->text('fcm_token')->nullable();
            $table->enum('state', ['failed', 'sent', 'delivered', 'seen', 'opened'])->default('sent')->index('state_index');
            $table->dateTime('sent_at')->nullable();
            $table->dateTime('delivered_at')->nullable();
            $table->dateTime('seen_at')->nullable();
            $table->dateTime('opened_at')->nullable();
            $table->dateTime('failed_at')->nullable();
            $table->text('error_message')->nullable();
            $table->timestamps();

            $table->unique(['notification_id', 'user_id'], 'notification_user_unique');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('notification_deliveries');
    }
};
