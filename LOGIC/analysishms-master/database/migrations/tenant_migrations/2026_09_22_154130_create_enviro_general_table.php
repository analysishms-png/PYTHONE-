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
        Schema::connection('tenant')->create('enviro_general', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid')->primary();
            $table->date('ncur');
            $table->string('cashpurcheffect', 1)->default('Y');
            $table->string('sundry_password', 10)->nullable();
            $table->string('creditcard_info_mandatory', 3)->nullable();
            $table->string('interest_amount', 3)->nullable();
            $table->string('sms_featureYN', 1)->nullable();
            $table->string('mobileno', 1)->nullable();
            $table->string('sms_center_username', 15)->nullable();
            $table->string('sms_center_password', 15)->nullable();
            $table->string('sms_display_name', 15)->nullable();
            $table->string('sms_url', 100)->nullable();
            $table->string('tuser', 15)->nullable();
            $table->string('tpassword', 15)->nullable();
            $table->string('tfrom_send', 100)->nullable();
            $table->longText('tmessage')->nullable();
            $table->string('textra', 50)->nullable();
            $table->string('tphno', 50)->nullable();
            $table->longText('sending_message_text')->nullable();
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
            $table->string('autonightaudit', 1)->default('');
            $table->time('time');
            $table->text('expdate');
            $table->text('amount');
            $table->string('api_key')->nullable()->default('');
            $table->string('bearer_token')->nullable()->default('');
            $table->integer('blockdays')->default(7);
        });

        DB::connection('tenant')->statement('ALTER TABLE `enviro_general` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('enviro_general');
    }
};
