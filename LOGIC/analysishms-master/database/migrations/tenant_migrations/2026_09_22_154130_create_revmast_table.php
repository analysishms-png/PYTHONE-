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
        Schema::connection('tenant')->create('revmast', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('rev_code', 100)->index('idx_revmast_rev_code');
            $table->string('name', 100);
            $table->string('short_name', 100)->nullable();
            $table->string('ac_code', 100)->nullable();
            $table->string('tax_stru', 100)->nullable();
            $table->integer('sales_rate')->nullable();
            $table->string('SysYN', 1);
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
            $table->string('type', 50)->default('Cr');
            $table->string('flag_type', 10)->nullable();
            $table->string('Desk_code', 100)->default('');
            $table->string('pay_type', 50)->nullable();
            $table->string('field_type', 1)->nullable();
            $table->string('ac_posting', 10)->nullable();
            $table->string('sundry', 100)->nullable()->index('idx_revmast_sundry');
            $table->string('seq_no', 100)->nullable();
            $table->string('nature', 100)->nullable();
            $table->string('active', 1)->default('Y');
            $table->string('tax_inc', 100)->nullable();
            $table->string('payable_ac', 100)->nullable();
            $table->string('unregistered_ac', 100)->nullable();
            $table->string('hsn_code', 100)->nullable();
            $table->string('map_code', 100)->nullable();
            $table->string('round_off', 100)->nullable();

            $table->index(['propertyid', 'field_type', 'Desk_code', 'seq_no', 'rev_code'], 'idx_revmast_comprehensive');
            $table->index(['rev_code', 'field_type'], 'idx_revmast_paycode_join');
            $table->index(['propertyid', 'rev_code'], 'idx_revmast_prop_rev');
            $table->index(['rev_code'], 'idx_rev_code');
            $table->primary(['propertyid', 'rev_code', 'Desk_code']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `revmast` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('revmast');
    }
};
