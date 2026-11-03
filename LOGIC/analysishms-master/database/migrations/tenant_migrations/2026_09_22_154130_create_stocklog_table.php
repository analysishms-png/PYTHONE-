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
        Schema::connection('tenant')->create('stocklog', function (Blueprint $table) {
            $table->integer('id', true);
            $table->integer('propertyid');
            $table->string('docid');
            $table->integer('sno');
            $table->string('vtype', 5);
            $table->integer('vno')->default(0);
            $table->string('vprefix', 4);
            $table->date('vdate');
            $table->string('partycode', 8);
            $table->string('restcode', 7);
            $table->string('roomcat', 7);
            $table->string('roomtype', 2);
            $table->string('roomno', 5);
            $table->string('contradocid', 15);
            $table->integer('contrasno')->default(0);
            $table->string('item', 8);
            $table->decimal('qtyiss', 10);
            $table->decimal('qtyrec', 10, 0)->default(0);
            $table->string('unit', 6);
            $table->decimal('rate', 10);
            $table->decimal('amount', 10);
            $table->decimal('taxper', 3)->default(0);
            $table->decimal('taxamt', 10)->default(0);
            $table->decimal('discper', 4)->default(0);
            $table->decimal('discamt', 10)->default(0);
            $table->string('description', 100)->default('');
            $table->string('voidyn', 1);
            $table->string('remarks', 75);
            $table->string('kotdocid', 50);
            $table->integer('kotsno');
            $table->time('vtime');
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);
            $table->decimal('total', 10)->default(0);
            $table->string('discapp', 1);
            $table->string('roundoff', 3);
            $table->string('departcode', 7);
            $table->string('godowncode', 7);
            $table->decimal('chalqty', 10)->default(0);
            $table->decimal('recdqty', 10)->default(0);
            $table->decimal('accqty', 10)->default(0);
            $table->decimal('rejqty', 10)->default(0);
            $table->string('recdunit', 6);
            $table->string('specification', 35);
            $table->decimal('itemrate', 10)->default(0);
            $table->string('delflag', 1);
            $table->decimal('landval', 10)->default(0);
            $table->decimal('convratio', 10)->default(0);
            $table->string('indentdocid', 15);
            $table->integer('indentsno')->default(0);
            $table->decimal('issqty', 10)->default(0);
            $table->string('issueunit', 7);
            $table->integer('freesno')->default(0);
            $table->string('schemecode', 7);
            $table->smallInteger('seqno')->default(0);
            $table->string('company', 8);
            $table->string('itemrestcode', 7);
            $table->string('schrgapp', 1);
            $table->decimal('schrgper', 10)->default(0);
            $table->decimal('schrgamt', 10)->default(0);
            $table->string('refdocid', 50);
            $table->string('mergedwith')->default('');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('stocklog');
    }
};
