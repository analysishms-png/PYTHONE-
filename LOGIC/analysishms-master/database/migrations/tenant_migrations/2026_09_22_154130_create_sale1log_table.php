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
        Schema::connection('tenant')->create('sale1log', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid', 50);
            $table->string('vtype', 6);
            $table->integer('vno')->default(0);
            $table->time('vtime');
            $table->string('vprefix', 5);
            $table->date('vdate');
            $table->string('restcode', 7);
            $table->string('roomcat', 7);
            $table->string('roomtype', 2);
            $table->string('roomno', 4);
            $table->integer('foliono')->default(0);
            $table->integer('sno1')->default(0);
            $table->string('party', 8);
            $table->decimal('total', 10)->default(0);
            $table->decimal('discper', 6)->default(0);
            $table->decimal('discamt', 10)->default(0);
            $table->decimal('nontaxable', 10)->default(0);
            $table->decimal('taxable', 10)->default(0);
            $table->decimal('servicecharge', 10)->default(0);
            $table->decimal('addamt', 10)->default(0);
            $table->decimal('dedamt', 10)->default(0);
            $table->decimal('roundoff', 10)->default(0);
            $table->decimal('netamt', 10)->default(0);
            $table->string('remark', 75);
            $table->string('waiter', 7);
            $table->string('kotno', 400);
            $table->integer('tokenno')->default(0);
            $table->integer('guaratt')->default(0);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);
            $table->string('delflag', 1);
            $table->string('printed', 1);
            $table->string('deliveredyn', 1);
            $table->string('custname', 35);
            $table->string('phoneno', 10);
            $table->string('add', 50);
            $table->string('city', 35);
            $table->decimal('cashrecd', 10)->default(0);
            $table->string('folionodocid', 50);
            $table->string('au_name', 15);
            $table->dateTime('acreated_at')->nullable();
            $table->string('discremark', 35);
            $table->decimal('cgst', 10)->default(0);
            $table->decimal('sgst', 10)->default(0);
            $table->decimal('vat', 10)->default(0);
            $table->decimal('igst', 10)->default(0);
            $table->string('mergedwith')->default('');
        });

        DB::connection('tenant')->statement('ALTER TABLE `sale1log` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('sale1log');
    }
};
