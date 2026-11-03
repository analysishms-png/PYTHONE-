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
        Schema::connection('tenant')->create('depart', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('dcode', 25)->index('idx_depart_dcode');
            $table->string('name', 30)->nullable();
            $table->string('nature', 25)->nullable();
            $table->string('kot_yn', 3)->nullable();
            $table->string('companyname')->default('');
            $table->text('companyaddress')->default('');
            $table->string('gstin')->default('');
            $table->string('logo')->default('');
            $table->string('header1', 100)->nullable();
            $table->string('header2', 100)->nullable();
            $table->string('mobile_no', 10)->nullable();
            $table->string('slogan1', 100)->nullable();
            $table->string('slogan2', 100)->nullable();
            $table->string('company_title', 3)->nullable();
            $table->string('pos', 3)->nullable();
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
            $table->string('sysYN', 1)->nullable();
            $table->string('activeYN', 1)->nullable();
            $table->string('rest_type', 100)->nullable();
            $table->string('fssaicode', 100)->default('');
            $table->string('back_color', 10)->nullable();
            $table->string('outlet_yn', 3)->nullable();
            $table->string('short_name', 5)->nullable();
            $table->string('disc_app', 3)->nullable();
            $table->string('store_type', 10)->nullable();
            $table->string('token_print', 3)->nullable();
            $table->string('print_type', 30)->nullable();
            $table->string('order_booking', 30)->nullable();
            $table->string('outlet_title', 3)->nullable();
            $table->string('member_info', 3)->nullable();
            $table->string('auto_split', 3)->nullable();
            $table->string('party_name', 3)->nullable();
            $table->string('split_bill', 3)->nullable();
            $table->string('cust_info', 3)->nullable();
            $table->string('ckot_print_yn', 3)->nullable();
            $table->string('ckot_print_path', 100)->nullable();
            $table->integer('cur_token_no')->default(1);
            $table->string('no_of_kot', 1)->nullable();
            $table->string('no_of_bill', 1)->nullable();
            $table->string('token_print_after', 3)->nullable();
            $table->string('token_print_before', 3)->nullable();
            $table->string('order_book_com1', 100)->nullable();
            $table->string('order_book_com2', 100)->nullable();
            $table->string('print_on_save', 3)->nullable();
            $table->string('header3', 100)->nullable();
            $table->string('header4', 100)->nullable();
            $table->string('print_token_no', 3)->nullable();
            $table->string('auto_settlement', 3)->nullable();
            $table->string('sale_bill_token_header1', 100)->nullable();
            $table->string('barcode_app', 3)->nullable();
            $table->string('auto_reset_token', 3)->nullable();
            $table->string('cur_token_no_kot', 3)->nullable();
            $table->string('barcode_partition_app_on', 10)->nullable();
            $table->string('outlet_selection', 3)->nullable();
            $table->string('dis_print', 3)->nullable();
            $table->string('grp_disc_app', 3)->nullable();
            $table->string('multi_bill', 3)->nullable();
            $table->string('disc_remark_yn', 3)->nullable();
            $table->string('label_printing', 3)->nullable();
            $table->string('free_item_app', 3)->nullable();
            $table->string('cover_mandatory', 3)->nullable();
            $table->string('mobile_no_mandatory', 3)->nullable();
            $table->string('open_item_yn', 3)->nullable();
            $table->string('token_header', 100)->nullable();
            $table->string('occupied', 100)->nullable()->default('#efbcd5');
            $table->string('paymentqr')->default('');
            $table->string('vacant', 100)->nullable()->default('#98e6d7');
            $table->string('billed', 100)->nullable()->default('#c2bbf0');
            $table->string('booked', 10)->default('#cc8b86');
            $table->integer('height')->nullable()->default(3);
            $table->integer('fontsize')->nullable()->default(16);
            $table->integer('col')->nullable()->default(2);
            $table->integer('uborderspace')->nullable()->default(2);
            $table->string('divcode')->nullable();
            $table->string('email')->nullable();
            $table->string('floor')->default('');
            $table->string('timing')->default('');

            $table->primary(['propertyid', 'dcode']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `depart` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('depart');
    }
};
