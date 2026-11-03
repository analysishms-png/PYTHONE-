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
        Schema::connection('tenant')->create('laundry_hdr', function (Blueprint $table) {
            $table->integer('id')->unique('uq_laundry_hdr_sn');
            $table->integer('propertyid');
            $table->string('docid', 50);
            $table->string('vtype', 6);
            $table->integer('vno');
            $table->integer('vprefix');
            $table->date('vdate');
            $table->time('vtime');
            $table->string('sent_by', 25);
            $table->string('challan_no', 20)->nullable();
            $table->string('contractor_recv_by', 25)->nullable();
            $table->date('expected_return_date')->nullable();
            $table->string('send_remarks', 200)->nullable();
            $table->string('send_status', 10)->default('Open');
            $table->string('recv_docid', 50)->nullable();
            $table->string('recv_vtype', 6)->nullable();
            $table->integer('recv_vno')->nullable();
            $table->integer('recv_vprefix')->nullable();
            $table->date('recv_date')->nullable();
            $table->time('recv_time')->nullable();
            $table->string('recv_by', 25)->nullable();
            $table->string('delivered_by', 25)->nullable();
            $table->string('recv_challan_no', 20)->nullable();
            $table->string('recv_remarks', 200)->nullable();
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->char('u_ae', 1);

            $table->primary(['propertyid', 'docid']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `laundry_hdr` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('laundry_hdr');
    }
};
