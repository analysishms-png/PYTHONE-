<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->create('facilitybill1', function (Blueprint $table) {

            $table->bigInteger('id')->unique('id');

            $table->unsignedBigInteger('propertyid');
            $table->string('docid', 21);
            $table->integer('vno');
            $table->integer('sno');

            $table->string('vtype', 6);
            $table->dateTime('vdate');
            $table->string('vprefix', 5);

            $table->string('partycode', 10);
            $table->string('docid1', 21);

            $table->string('facilitycode', 30);

            $table->float('unit');
            $table->float('unitrate');
            $table->float('amount');

            $table->dateTime('forperiod');
            $table->dateTime('toperiod');

            $table->string('facilitytax', 10);
            $table->dateTime('appdate');

            $table->string('revcode', 20);

            $table->string('u_ae', 1);
            $table->string('u_name', 15);

            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();

            $table->primary(['propertyid', 'docid', 'sno']);

            $table->index('propertyid');
            $table->index('docid');
            $table->index('partycode');
            $table->index('facilitycode');
            $table->index('vdate');
        });

        DB::connection('tenant')->statement(
            'ALTER TABLE `facilitybill1` MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT'
        );
    }

    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('facilitybill1');
    }
};
