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
        Schema::connection('tenant')->create('employee', function (Blueprint $table) {
            $table->integer('id', true);
            $table->integer('propertyid')->nullable();
            $table->string('code', 50)->nullable();
            $table->string('name', 35)->nullable();
            $table->string('sex', 10)->nullable();
            $table->string('designation', 30)->nullable();
            $table->string('category', 30)->nullable();
            $table->string('f_name', 25)->nullable();
            $table->date('birth_date')->nullable();
            $table->string('map_code', 50)->default('')->index('idx_map_code');
            $table->string('add1', 40)->nullable();
            $table->string('add2', 40)->nullable();
            $table->string('marital', 10)->nullable();
            $table->string('spouse', 15)->nullable();
            $table->string('qualification', 15)->nullable();
            $table->date('joining_date')->nullable();
            $table->date('resign_date')->nullable();
            $table->decimal('basic', 10)->nullable()->default(0);
            $table->decimal('da', 10)->nullable()->default(0);
            $table->decimal('hra', 10)->nullable()->default(0);
            $table->decimal('tds', 10)->nullable()->default(0);
            $table->decimal('other_allow', 10)->nullable()->default(0);
            $table->decimal('other_deduc', 10)->nullable()->default(0);
            $table->decimal('conveyance', 10)->nullable()->default(0);
            $table->decimal('medical', 10)->nullable()->default(0);
            $table->decimal('lta', 10)->nullable()->default(0);
            $table->decimal('pf_code', 10)->nullable()->default(0);
            $table->decimal('esi_code', 10)->nullable()->default(0);
            $table->string('pf_yn', 5)->nullable();
            $table->decimal('op_pf_balance', 10)->nullable()->default(0);
            $table->decimal('op_loan', 10)->nullable()->default(0);
            $table->decimal('op_inst', 10)->nullable()->default(0);
            $table->decimal('op_advance', 10)->nullable()->default(0);
            $table->decimal('tot_cl_allow', 10)->nullable()->default(0);
            $table->decimal('tot_el_allow', 10)->nullable()->default(0);
            $table->decimal('op_el', 10)->nullable()->default(0);
            $table->decimal('op_cl', 10)->nullable()->default(0);
            $table->decimal('curr_el', 10)->nullable()->default(0);
            $table->decimal('curr_cl', 10)->nullable()->default(0);
            $table->string('ac_code', 10)->nullable();
            $table->string('phone', 20)->nullable();
            $table->string('pan', 20)->nullable();
            $table->decimal('increment', 10)->nullable();
            $table->string('off_day', 10)->nullable();
            $table->string('off_day_allow', 10);
            $table->string('incrmth', 10)->nullable();
            $table->decimal('otrate', 10)->nullable()->default(0);
            $table->string('loanac', 10)->nullable();
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 50)->nullable();
            $table->string('activeyn', 5)->nullable()->default('Y');
            $table->string('esi_yn', 5)->nullable();
            $table->string('u_name', 15)->nullable();
            $table->string('pic_path', 100)->nullable();
            $table->string('idpicpath', 100)->nullable();
            $table->string('department', 10)->nullable();
            $table->string('idproof', 20)->nullable();
            $table->string('idproofno', 15)->nullable();
            $table->string('type', 15)->nullable()->default('permanent');
            $table->string('bio_metric_id', 50)->nullable();
            $table->string('bank_account', 20)->nullable();
            $table->string('ac_holder_name', 25)->nullable();
            $table->string('ifsc_code', 10)->nullable();
            $table->dateTime('created_at');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('employee');
    }
};
