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
        Schema::connection('tenant')->create('einvoicebill', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid', 50);
            $table->string('docdtls_no', 15);
            $table->integer('billno')->default(0);
            $table->string('comp_code', 100)->default('');
            $table->date('docdtls_dt');
            $table->string('buyerdtls_gstin', 15);
            $table->string('buyerdtls_lglnm', 40);
            $table->string('buyerdtls_trdnm', 40);
            $table->string('buyerdtls_pos', 2);
            $table->float('valdtls_assval', null, 0);
            $table->float('valdtls_cgstval', null, 0);
            $table->float('valdtls_sgstval', null, 0);
            $table->float('valdtls_igstval', null, 0);
            $table->float('valdtls_totInvval', null, 0);
            $table->longText('jsonresponse');
            $table->string('ackno', 20);
            $table->dateTime('ackdt');
            $table->string('irn', 64);
            $table->longText('signedinvoice');
            $table->longText('signedqrcode');
            $table->longText('qrcodeimage');
            $table->string('status', 5);
            $table->integer('status_cd')->default(0);
            $table->string('cancelled', 1)->default('N');
            $table->dateTime('canceldate')->nullable();
            $table->string('u_name', 15);
            $table->dateTime('created_at');
        });

        DB::connection('tenant')->statement('ALTER TABLE `einvoicebill` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('einvoicebill');
    }
};
