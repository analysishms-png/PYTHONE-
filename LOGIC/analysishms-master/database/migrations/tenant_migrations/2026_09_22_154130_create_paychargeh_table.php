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
        Schema::connection('tenant')->create('paychargeh', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid')->index('idx_paychargeh_main');
            $table->string('docid', 30)->index('idx_paychargeh_docid');
            $table->integer('sno');
            $table->string('vtype', 5)->nullable();
            $table->integer('vno')->nullable();
            $table->string('vprefix', 4)->nullable();
            $table->integer('fpno');
            $table->date('vdate')->nullable();
            $table->time('vtime')->nullable();
            $table->string('comp_code', 10)->nullable()->default('');
            $table->longText('comments')->nullable();
            $table->string('paycode', 10)->index('idx_paychargeh_paycode');
            $table->string('paytype', 15)->nullable();
            $table->decimal('amtcr', 10)->nullable()->default(0);
            $table->decimal('amtdr', 10)->nullable()->default(0);
            $table->string('roomcat', 10)->nullable()->default('');
            $table->string('roomno', 10)->nullable()->default('');
            $table->string('cardno', 10)->nullable()->default('');
            $table->string('cardholder', 15)->nullable()->default('');
            $table->string('chqno', 10)->nullable()->default('');
            $table->date('chqdate')->nullable();
            $table->date('expdate')->nullable();
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
            $table->string('restcode', 10)->nullable();
            $table->decimal('billamount', 20)->nullable()->default(0);
            $table->string('contradocid', 35)->nullable();
            $table->string('postdocId', 100);
            $table->decimal('taxper', 10)->default(0);
            $table->decimal('onamt', 20)->nullable()->default(0);
            $table->integer('split')->nullable()->default(1);
            $table->integer('billno')->nullable()->default(0)->index('billno');
            $table->string('batchno', 4)->nullable()->default('');
            $table->string('au_name', 15)->nullable()->default('');
            $table->dateTime('acreated_at')->nullable();
            $table->dateTime('aupdated_at')->nullable();
            $table->string('taxstru', 10)->nullable()->default('');

            $table->index(['amtdr', 'amtcr'], 'idx_paychargeh_amounts');
            $table->index(['propertyid', 'billno'], 'idx_paychargeh_combined');
            $table->index(['propertyid', 'contradocid'], 'idx_paychargeh_prop_contra');
            $table->index(['propertyid', 'vtype', 'docid'], 'idx_paychargeh_prop_vtype_docid');
            $table->index(['propertyid', 'sno'], 'idx_property_sno_refdoc');
            $table->primary(['propertyid', 'docid', 'sno']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `paychargeh` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('paychargeh');
    }
};
