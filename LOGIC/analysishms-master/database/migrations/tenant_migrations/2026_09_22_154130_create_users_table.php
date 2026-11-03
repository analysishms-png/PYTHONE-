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
        Schema::connection('tenant')->create('users', function (Blueprint $table) {
            $table->bigInteger('id')->unique('id');
            $table->string('name');
            $table->integer('propertyid');
            $table->string('email');
            $table->timestamp('email_verified_at')->nullable();
            $table->string('role', 100);
            $table->integer('superwiser')->default(1);
            $table->integer('backdate')->default(0);
            $table->enum('freeitemkot', ['y', 'n'])->default('n');
            $table->enum('freeitemsale', ['y', 'n'])->default('n');
            $table->enum('discappsale', ['y', 'n'])->default('n');
            $table->enum('useroradmin', ['user', 'admin', 'support', 'dev', ''])->default('admin');
            $table->string('u_name', 50)->nullable();
            $table->string('password');
            $table->rememberToken();
            $table->text('fcm_token')->nullable();
            $table->string('device_type', 20)->nullable();
            $table->string('device_name', 100)->nullable();
            $table->timestamp('last_used_at')->nullable();
            $table->timestamps();
            $table->string('u_ae', 1)->default('a');
            $table->integer('status')->default(1);
            $table->string('AP', 1);
            $table->string('designation', 20)->default('');
            $table->string('department', 25)->default('');
            $table->string('addedby')->default('');

            $table->primary(['name', 'propertyid']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `users` MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('users');
    }
};
