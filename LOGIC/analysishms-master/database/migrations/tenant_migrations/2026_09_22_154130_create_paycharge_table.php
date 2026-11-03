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
        Schema::connection('tenant')->create('paycharge', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid', 30)->index('idx_paycharge_docid');
            $table->integer('sno');
            $table->integer('sno1');
            $table->string('vtype', 5)->nullable()->index('idx_paycharge_vtype');
            $table->integer('vno')->nullable();
            $table->string('vprefix', 4)->nullable();
            $table->date('vdate')->nullable();
            $table->time('vtime')->nullable();
            $table->string('guestprof', 10)->nullable();
            $table->string('comp_code', 10)->nullable();
            $table->string('travel_agent', 100)->nullable();
            $table->longText('comments')->nullable();
            $table->string('paycode', 10)->index('idx_paycharge_paycode');
            $table->string('paytype', 15)->nullable();
            $table->decimal('amtcr', 10)->nullable()->default(0);
            $table->decimal('amtdr', 10)->nullable()->default(0);
            $table->integer('tipamt')->nullable();
            $table->string('roomcat', 10)->nullable();
            $table->string('roomtype', 10)->nullable();
            $table->string('roomno', 10)->nullable();
            $table->integer('foliono')->nullable();
            $table->integer('msno1')->default(0);
            $table->string('cardno', 10)->nullable();
            $table->string('cardholder', 15)->nullable();
            $table->string('chqno', 10)->nullable();
            $table->date('chqdate')->nullable();
            $table->date('expdate')->nullable();
            $table->string('bookno', 15)->nullable();
            $table->string('booktype', 15)->nullable();
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
            $table->string('restcode', 10)->nullable();
            $table->decimal('billamount', 20)->nullable();
            $table->string('contraid', 15)->nullable();
            $table->string('dbtchkin', 10)->nullable();
            $table->decimal('taxper', 10)->nullable()->default(0);
            $table->decimal('onamt', 20)->nullable();
            $table->integer('split')->nullable()->default(1);
            $table->integer('billno')->nullable()->default(0)->index('billno');
            $table->string('modeset', 1)->nullable();
            $table->date('settledate')->nullable()->index('settledate');
            $table->string('batchno', 4)->nullable();
            $table->string('plancharge', 10)->nullable();
            $table->string('fixedchargecode', 10)->nullable();
            $table->string('relatdfoliono', 10)->nullable();
            $table->string('folionodocid', 50)->nullable()->index('idx_paycharge_folionodocid');
            $table->string('refno', 100)->nullable();
            $table->string('plancode', 10)->nullable();
            $table->string('seqno', 2)->nullable();
            $table->string('relatedfolionodocid', 50)->nullable()->index('idx_paycharge_related_foliono');
            $table->string('refdocid', 50)->nullable();
            $table->longText('remarks')->nullable();
            $table->string('au_name', 15)->nullable();
            $table->dateTime('acreated_at')->nullable();
            $table->dateTime('aupdated_at')->nullable();
            $table->decimal('taxcondamt', 20)->nullable();
            $table->string('taxstru', 10)->nullable();
            $table->string('agac', 10)->nullable();
            $table->string('txnno', 10)->nullable();
            $table->string('posted', 10)->default('');

            $table->index(['folionodocid', 'sno1', 'vtype', 'modeset', 'propertyid'], 'idx_paycharge_advance');
            $table->index(['folionodocid', 'sno1', 'propertyid', 'vtype', 'modeset', 'amtcr'], 'idx_paycharge_advance_complex');
            $table->index(['billno'], 'idx_paycharge_billno');
            $table->index(['billno', 'paycode', 'amtdr', 'amtcr', 'sno'], 'idx_paycharge_billno_group');
            $table->index(['propertyid', 'roomtype', 'settledate', 'folionodocid', 'foliono', 'docid', 'paycode', 'modeset'], 'idx_paycharge_billtotal_fast');
            $table->index(['propertyid', 'settledate', 'billno', 'paycode'], 'idx_paycharge_charges');
            $table->index(['propertyid', 'settledate', 'roomtype', 'foliono', 'folionodocid', 'billno'], 'idx_paycharge_combined');
            $table->index(['propertyid', 'settledate', 'roomtype', 'foliono', 'billno', 'paytype'], 'idx_paycharge_complex_filter');
            $table->index(['folionodocid', 'sno1', 'vtype', 'amtdr', 'amtcr'], 'idx_paycharge_composite');
            $table->index(['propertyid', 'settledate', 'roomtype', 'foliono', 'billno', 'folionodocid', 'sno1', 'vprefix', 'docid', 'roomno', 'paytype', 'paycode', 'amtdr', 'amtcr', 'sno', 'vtype', 'modeset'], 'idx_paycharge_covering');
            $table->index(['settledate', 'propertyid', 'roomtype'], 'idx_paycharge_date_range');
            $table->index(['paycode', 'docid'], 'idx_paycharge_disc_doc');
            $table->index(['folionodocid', 'sno1'], 'idx_paycharge_foliono_sno1');
            $table->index(['folionodocid', 'sno1', 'vtype'], 'idx_paycharge_foliono_sno1_vtype');
            $table->index(['folionodocid', 'billno'], 'idx_paycharge_folio_bill');
            $table->index(['propertyid', 'roomtype', 'settledate', 'paycode', 'folionodocid', 'foliono', 'taxper', 'billno'], 'idx_paycharge_gst_fast');
            $table->index(['settledate', 'propertyid', 'roomtype', 'foliono', 'folionodocid'], 'idx_paycharge_main');
            $table->index(['paytype', 'settledate', 'propertyid'], 'idx_paycharge_paytype_filter');
            $table->index(['settledate', 'propertyid'], 'idx_paycharge_settledate_property');
            $table->index(['folionodocid', 'modeset', 'paycode', 'paytype'], 'idx_paycharge_settlement');
            $table->index(['folionodocid', 'modeset', 'paycode', 'paytype', 'amtcr'], 'idx_paycharge_settlement_complex');
            $table->index(['propertyid', 'sno', 'refdocid'], 'idx_property_sno_refdoc');
            $table->primary(['propertyid', 'docid', 'sno', 'sno1']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `paycharge` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('paycharge');
    }
};
