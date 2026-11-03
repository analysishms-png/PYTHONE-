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
        Schema::connection('tenant')->create('paychargelog', function (Blueprint $table) {
            $table->integer('id', true);
            $table->integer('propertyid');
            $table->string('docid', 100)->nullable();
            $table->integer('sno');
            $table->string('sno1', 50);
            $table->string('vtype', 100)->nullable();
            $table->string('vno', 100)->nullable();
            $table->string('vprefix', 100)->nullable();
            $table->date('vdate')->nullable();
            $table->time('vtime')->nullable();
            $table->string('guestprof', 100)->nullable();
            $table->string('comp_code', 100)->nullable();
            $table->string('travel_agent', 50);
            $table->longText('comments')->nullable();
            $table->string('paycode', 100);
            $table->string('paytype', 100)->nullable();
            $table->integer('amtcr')->nullable();
            $table->integer('amtdr')->nullable();
            $table->integer('tipamt')->nullable();
            $table->string('roomcat', 100)->nullable();
            $table->string('roomtype', 100)->nullable();
            $table->string('roomno', 100)->nullable();
            $table->integer('foliono')->nullable();
            $table->string('msno1', 50);
            $table->string('cardno', 100)->nullable();
            $table->string('cardholder', 100)->nullable();
            $table->string('chqno', 100)->nullable();
            $table->date('chqdate')->nullable();
            $table->date('expdate')->nullable();
            $table->string('bookno', 100)->nullable();
            $table->string('booktype', 100)->nullable();
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
            $table->string('restcode', 100)->nullable();
            $table->decimal('billamount', 20)->nullable();
            $table->string('contraid', 100)->nullable();
            $table->string('dbtchkin', 100)->nullable();
            $table->string('taxper', 100)->nullable();
            $table->decimal('onamt', 20)->nullable();
            $table->string('split', 100)->nullable();
            $table->string('billno', 100)->nullable();
            $table->string('modeset', 100)->nullable();
            $table->date('settledate')->nullable();
            $table->string('batchno', 100)->nullable();
            $table->string('plancharge', 100)->nullable();
            $table->string('fixedchargecode', 100)->nullable();
            $table->string('relatdfoliono', 100)->nullable();
            $table->string('folionodocid', 100)->nullable();
            $table->string('refno', 100)->nullable();
            $table->string('plancode', 100)->nullable();
            $table->string('seqno', 100)->nullable();
            $table->string('relatedfolionodocid', 100)->nullable();
            $table->string('refdocid', 100)->nullable();
            $table->longText('remarks')->nullable();
            $table->string('au_name', 100)->nullable();
            $table->dateTime('acreated_at')->nullable();
            $table->dateTime('aupdated_at')->nullable();
            $table->decimal('taxcondamt', 20)->nullable();
            $table->string('taxstru', 100)->nullable();
            $table->string('agac', 100)->nullable();
            $table->string('txnno', 100)->nullable();
            $table->string('posted', 10);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('paychargelog');
    }
};
