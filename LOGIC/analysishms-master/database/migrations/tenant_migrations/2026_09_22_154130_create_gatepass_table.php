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
        Schema::connection('tenant')->create('gatepass', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->integer('gatepassno');
            $table->string('inout', 3);
            $table->string('type', 8);
            $table->string('mtype', 10);
            $table->string('vtype', 10);
            $table->dateTime('date');
            $table->time('time');
            $table->string('visitiorname', 35)->default('');
            $table->string('partycode', 10)->default('');
            $table->string('mobileno', 15)->default('');
            $table->string('vehicleno', 10)->default('');
            $table->string('materinouyyn', 1);
            $table->string('remark', 35)->default('');
            $table->date('inwordduedate');
            $table->string('approvedby', 25)->default('');
            $table->string('securitychkyn', 1);
            $table->string('exitstatus', 8)->default('');
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->string('u_ae', 1);

            $table->primary(['propertyid', 'gatepassno', 'type']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `gatepass` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('gatepass');
    }
};
