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
        Schema::connection('tenant')->create('porder', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid', 30);
            $table->integer('vno');
            $table->date('vdate');
            $table->string('vtype', 5);
            $table->integer('vprefix');
            $table->string('quotno', 15)->default('');
            $table->date('quotdate');
            $table->string('partycode', 10);
            $table->string('remark', 25)->default('');
            $table->date('exp_delivery')->nullable();
            $table->string('dispatchmode', 25)->default('');
            $table->string('despatchthru', 25)->default('');
            $table->string('paymentterms', 25)->default('');
            $table->float('packcharge', null, 0)->default(0);
            $table->float('forwardcharges', null, 0)->default(0);
            $table->float('discper', null, 0)->default(0);
            $table->float('taxper', null, 0)->default(0);
            $table->string('mrcontradocId', 50)->nullable();
            $table->integer('mrsno')->nullable();
            $table->string('u_name', 15);
            $table->string('u_ae', 1);
            $table->dateTime('created_at');
            $table->dateTime('updated_at');

            $table->primary(['propertyid', 'docid']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `porder` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('porder');
    }
};
