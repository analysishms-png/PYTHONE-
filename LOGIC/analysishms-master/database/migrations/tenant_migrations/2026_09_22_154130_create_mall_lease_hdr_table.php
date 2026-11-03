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
        Schema::connection('tenant')->create('mall_lease_hdr', function (Blueprint $table) {
            $table->bigInteger('id')->unique('id');
            $table->integer('code');
            $table->unsignedBigInteger('propertyid');
            $table->unsignedBigInteger('floorid')->nullable();
            $table->unsignedBigInteger('unitid');
            $table->unsignedBigInteger('tenantid');
            $table->string('leaseno', 50);
            $table->string('leasetype', 30)->nullable()->default('NEW');
            $table->string('leasestatus', 30)->nullable()->default('DRAFT');
            $table->string('loino', 50)->nullable();
            $table->date('loidate')->nullable();
            $table->string('agreementno', 50)->nullable();
            $table->date('agreement_date')->nullable();
            $table->string('commercialmodel', 50)->nullable();
            $table->date('leasecommencementdate')->nullable();
            $table->date('leaseexpirydate')->nullable();
            $table->date('lockinstartdate')->nullable();
            $table->date('lockinenddate')->nullable();
            $table->date('possessiondate')->nullable();
            $table->date('fitoutstartdate')->nullable();
            $table->date('fitout_completion_date')->nullable();
            $table->date('storeopeningdate')->nullable();
            $table->date('moveindate')->nullable();
            $table->date('moveout_date')->nullable();
            $table->date('billingstartfrom')->nullable();
            $table->date('duedateofmonth')->tinyInt()->nullable();
            $table->date('moveout_ate')->nullable();
            $table->integer('noticeperioddays')->nullable()->default(0);
            $table->boolean('renewalrequired')->nullable()->default(false);
            $table->date('renewaldate')->nullable();
            $table->text('remarks')->nullable();
            $table->string('approvalstatus', 30)->nullable()->default('PENDING');
            $table->bigInteger('U_name')->nullable();
            $table->string('u_ae', 1);
            $table->dateTime('created_at')->nullable()->useCurrent();
            $table->boolean('activeyn')->nullable()->default(true);

            $table->primary(['code', 'propertyid']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `mall_lease_hdr` MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('mall_lease_hdr');
    }
};
