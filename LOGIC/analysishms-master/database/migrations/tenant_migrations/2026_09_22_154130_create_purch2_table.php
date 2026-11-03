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
        Schema::connection('tenant')->create('purch2', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid', 100);
            $table->integer('sno');
            $table->string('vtype', 6);
            $table->integer('vno');
            $table->string('vprefix', 5);
            $table->date('vdate');
            $table->string('partycode', 9);
            $table->string('restcode', 7);
            $table->integer('mrno')->default(0);
            $table->string('contradocid', 35);
            $table->integer('contrasno');
            $table->string('item', 10);
            $table->decimal('qtyiss', 10, 3);
            $table->decimal('qtyrec', 10, 3);
            $table->string('unit', 6);
            $table->decimal('rate', 10);
            $table->decimal('amount', 10);
            $table->decimal('taxper', 10);
            $table->decimal('taxamt', 10);
            $table->decimal('discper', 10);
            $table->decimal('discamt', 10);
            $table->string('remarks', 35);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);
            $table->decimal('total', 10);
            $table->string('discapp', 1);
            $table->decimal('roundoff', 10);
            $table->string('departcode', 9);
            $table->string('godcode', 9);
            $table->decimal('chalqty', 10, 3);
            $table->decimal('recdqty', 10, 3);
            $table->decimal('accqty', 10, 3);
            $table->decimal('rejqty', 10, 3);
            $table->string('recdunit', 7);
            $table->string('specification', 15);
            $table->decimal('itemrate', 10);
            $table->string('delflag', 1);
            $table->decimal('convratio', 10, 3);
            $table->decimal('postval', 10, 3)->default(0);
            $table->decimal('landval', 10, 3)->default(0);
            $table->decimal('issqty', 10, 3)->default(0);
            $table->string('issuunit');
            $table->string('taxstru')->default('');
            $table->string('accode')->default('');

            $table->primary(['propertyid', 'docid', 'sno']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `purch2` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('purch2');
    }
};
