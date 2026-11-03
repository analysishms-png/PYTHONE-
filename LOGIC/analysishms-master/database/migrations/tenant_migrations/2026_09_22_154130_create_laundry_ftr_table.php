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
        Schema::connection('tenant')->create('laundry_ftr', function (Blueprint $table) {
            $table->integer('id', true);
            $table->integer('propertyid');
            $table->integer('hdr_sn');
            $table->string('item_code', 10);
            $table->string('item_name', 40);
            $table->string('uom', 8)->default('Nos');
            $table->integer('send_qty')->default(0);
            $table->string('send_remarks', 200)->nullable();
            $table->integer('received_qty')->nullable();
            $table->integer('good_qty')->nullable();
            $table->integer('missing_qty')->nullable();
            $table->integer('damage_qty')->nullable();
            $table->string('recv_remarks', 200)->nullable();
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->char('u_ae', 1);

            $table->index(['propertyid', 'hdr_sn'], 'idx_laundry_ftr_hdr');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('laundry_ftr');
    }
};
