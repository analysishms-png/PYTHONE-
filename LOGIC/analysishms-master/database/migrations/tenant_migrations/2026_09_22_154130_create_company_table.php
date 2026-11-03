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
        Schema::connection('tenant')->create('company', function (Blueprint $table) {
            $table->integer('id', true);
            $table->integer('propertyid');
            $table->string('comp_code', 10);
            $table->string('sn_num', 10)->nullable();
            $table->string('role', 100)->nullable();
            $table->string('comp_name', 100);
            $table->date('start_dt')->nullable();
            $table->date('end_dt')->nullable();
            $table->string('address1', 100)->nullable();
            $table->string('address2', 100)->nullable();
            $table->string('country', 100)->nullable();
            $table->string('state', 100)->nullable();
            $table->string('city', 100)->nullable();
            $table->string('state_code', 10)->nullable();
            $table->string('mobile', 50)->nullable();
            $table->string('email', 100)->nullable();
            $table->string('password');
            $table->string('acname', 100)->default('');
            $table->string('acnum', 100)->default('');
            $table->string('ifsccode', 100)->default('');
            $table->string('bankname', 100)->default('');
            $table->string('branchname', 100)->default('');
            $table->string('cfyear', 9)->nullable();
            $table->string('pfyear', 9)->nullable();
            $table->string('pin', 10)->nullable();
            $table->string('u_name', 100)->nullable();
            $table->dateTime('created_at')->nullable();
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 5)->default('a');
            $table->string('pan_no', 20)->nullable();
            $table->string('nationality', 20);
            $table->string('gstin', 20)->nullable();
            $table->string('division_code', 20)->nullable();
            $table->string('eglobepropcode', 20)->nullable();
            $table->string('legal_name', 100)->nullable();
            $table->string('trade_name', 100)->nullable();
            $table->string('logo', 100)->nullable();
            $table->string('cover_image')->default('');
            $table->text('payment_qr_code');
            $table->string('dealer_logo', 256)->default('');
            $table->text('images')->default('');
            $table->string('website', 50);
            $table->text('meta_desc')->default('');
            $table->text('meta_keyword')->default('');
            $table->unsignedInteger('status')->default(1);
            $table->string('remember_token')->nullable();
            $table->string('CInNo', 25)->default('');
            $table->string('maplink', 225);
            $table->string('db_host')->nullable()->default('localhost');
            $table->string('db_name')->default('');
            $table->integer('db_port')->nullable()->default(3306);
            $table->string('db_username')->nullable();
            $table->string('db_password')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('company');
    }
};
