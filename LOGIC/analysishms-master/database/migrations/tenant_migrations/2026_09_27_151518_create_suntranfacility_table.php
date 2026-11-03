<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->create('suntranfacility', function (Blueprint $table) {

            $table->bigInteger('id')->unique('id');

            $table->unsignedBigInteger('propertyid');
            $table->string('docid', 21);
            $table->smallInteger('sno');

            $table->string('vtype', 6);
            $table->integer('vno');
            $table->dateTime('vdate');

            $table->string('partycode', 10);
            $table->string('suncode', 30);
            $table->string('dispname', 30);

            $table->string('roff', 1)->default('N');
            $table->string('calcformula', 19);

            $table->float('svalue');
            $table->float('amount');
            $table->float('baseamount');

            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();

            $table->string('u_ae', 1);

            $table->dateTime('sunappaate');
            $table->string('revcode', 20);
            $table->string('delflag', 1);

            $table->primary(['propertyid', 'docid', 'sno']);

            $table->index('propertyid');
            $table->index('docid');
            $table->index('partycode');
            $table->index('suncode');
            $table->index('vdate');
        });

        DB::connection('tenant')->statement(
            'ALTER TABLE `suntranfacility` MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT'
        );
    }

    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('suntranfacility');
    }
};
