<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->create('facilitybill', function (Blueprint $table) {

            $table->bigInteger('id')->unique('id');          // AUTO_INCREMENT (UNSIGNED via ALTER)

            $table->unsignedBigInteger('propertyid');

            $table->string('docid', 21);                    // e.g. DKKFACL2026001
            $table->string('vtype', 6);                     // FACL
            $table->dateTime('vdate');                      // Voucher Date
            $table->integer('vno');                         // Voucher Number
            $table->string('vprefix', 10);                  // e.g. 2026

            $table->string('partycode', 10);                // Tenant / Party Code
            $table->string('locationcode', 10)->nullable(); // Shop / Unit Code

            $table->dateTime('duedate')->nullable();        // Due Date
            $table->dateTime('forperiod');                  // From Period
            $table->dateTime('toperiod');                   // To Period

            $table->string('u_ae', 1)->default('A');        // A = Add, E = Edit
            $table->string('u_name', 50)->nullable();       // User Name
            $table->string('u_updatedby', 50)->nullable();  // Updated By
            $table->dateTime('u_entdt')->nullable();        // Entry DateTime

            $table->string('remark', 255)->nullable();      // Remark

            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();

            // PK on propertyid + docid
            $table->primary(['propertyid', 'docid']);
        });

        DB::connection('tenant')->statement(
            'ALTER TABLE `facilitybill` MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT'
        );
    }

    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('facilitybill');
    }
};
