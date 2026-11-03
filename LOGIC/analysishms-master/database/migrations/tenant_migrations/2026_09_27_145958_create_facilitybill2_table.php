<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->create('facilitybill2', function (Blueprint $table) {

            $table->bigInteger('id')->unique('id');

            $table->unsignedBigInteger('propertyid');
            $table->string('docid', 21);
            $table->string('docid1', 21);

            $table->smallInteger('sno');
            $table->smallInteger('sno1');

            $table->string('vtype', 6);
            $table->integer('vno');
            $table->string('vprefix', 5);
            $table->dateTime('vdate');

            $table->string('taxcode', 6);

            $table->float('basevalue');
            $table->float('taxper');
            $table->float('taxamt');

            $table->string('u_name', 15);
            $table->dateTime('created_at');

            $table->string('u_ae', 1);
            $table->string('delflag', 1);

            $table->dateTime('updated_at')->nullable();

            $table->primary(['propertyid', 'docid1', 'sno1', 'sno']);

            $table->index('propertyid');
            $table->index('docid');
            $table->index('docid1');
            $table->index('taxcode');
            $table->index('vdate');
        });

        DB::connection('tenant')->statement(
            'ALTER TABLE `facilitybill2` MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT'
        );
    }

    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('facilitybill2');
    }
};
