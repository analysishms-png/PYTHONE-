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
        Schema::connection('tenant')->create('subgroup', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->string('sub_code', 100)->index('idx_subgroup');
            $table->integer('propertyid');
            $table->string('name', 100);
            $table->string('group_code', 100);
            $table->string('nature', 100);
            $table->string('comp_type', 100)->nullable();
            $table->string('allow_credit', 100)->nullable();
            $table->string('conprefix')->nullable();
            $table->string('conperson')->nullable();
            $table->string('address')->nullable();
            $table->string('addtype')->default('residental');
            $table->string('citycode')->nullable();
            $table->string('pin')->nullable();
            $table->string('mobile')->nullable();
            $table->string('email')->nullable();
            $table->string('panno')->nullable();
            $table->string('tds_catg')->nullable();
            $table->char('activeyn', 1)->nullable()->default('Y');
            $table->string('allowcredit', 10)->nullable()->default('0');
            $table->decimal('creditlimit', 10)->default(0);
            $table->integer('creditdays')->nullable();
            $table->string('remark')->nullable();
            $table->string('discounttype')->nullable();
            $table->decimal('discount', 10)->default(0);
            $table->string('religion')->nullable();
            $table->text('remarks')->nullable();
            $table->string('blacklisted', 10)->nullable();
            $table->string('reasonblacklist')->nullable();
            $table->string('blacklistedby')->nullable();
            $table->string('sysYN', 10)->nullable();
            $table->string('u_name');
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae')->default('a');
            $table->string('gstin')->nullable();
            $table->string('bankacno', 20)->default('');
            $table->string('ifsccode', 20)->default('');
            $table->string('msmeno', 20)->default('');
            $table->unsignedBigInteger('cheque_design')->default(0);
            $table->string('mapcode')->nullable();
            $table->string('dealertype')->nullable();
            $table->string('legalname')->nullable();
            $table->string('tradename')->nullable();
            $table->integer('subyn')->nullable();
            $table->string('fathername')->nullable();
            $table->string('mothername')->nullable();
            $table->string('appno', 100)->nullable();
            $table->date('appdate')->nullable();
            $table->string('idproftype', 100)->nullable();
            $table->string('idprofnum', 100)->nullable();
            $table->string('membercategory', 100)->nullable();
            $table->date('membership_date')->nullable();
            $table->string('member_id')->default('');
            $table->string('logo')->default('');

            $table->index(['sub_code'], 'idx_subgroup_subcode');
            $table->index(['sub_code'], 'idx_subgroup_sub_code');
            $table->primary(['sub_code', 'propertyid']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `subgroup` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('subgroup');
    }
};
