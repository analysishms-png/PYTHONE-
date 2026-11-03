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
        Schema::connection('tenant')->create('gate_pass_out', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('propertyid')->nullable();
            $table->string('docid', 50);
            $table->integer('gatepassno')->nullable();
            $table->string('inout', 3)->nullable();
            $table->string('type', 8)->nullable();
            $table->string('vtype', 10);
            $table->string('mtype', 10);
            $table->dateTime('date')->nullable();
            $table->time('time')->nullable();
            $table->string('visitiorname', 35)->nullable();
            $table->string('partycode', 10)->nullable();
            $table->string('mobileno', 15)->nullable();
            $table->string('vehicleno', 10)->nullable();
            $table->string('materinouyn', 1)->nullable();
            $table->string('item_name', 50)->nullable();
            $table->decimal('qty', 10)->nullable();
            $table->string('unit', 20)->nullable();
            $table->string('department', 20)->nullable();
            $table->string('remark', 35)->nullable();
            $table->date('inwordduedate')->nullable();
            $table->string('approvedby', 25)->nullable();
            $table->string('securitychkyn', 1)->nullable();
            $table->string('exitstatus', 8)->nullable();
            $table->string('u_name', 15)->nullable();
            $table->dateTime('created_at')->nullable();
            $table->string('u_ae', 1)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('gate_pass_out');
    }
};
