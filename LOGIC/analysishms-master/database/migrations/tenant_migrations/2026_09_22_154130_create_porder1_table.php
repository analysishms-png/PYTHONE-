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
        Schema::connection('tenant')->create('porder1', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid', 25);
            $table->integer('sno');
            $table->integer('vno');
            $table->date('vdate');
            $table->string('vtype', 4);
            $table->string('vprefix', 5);
            $table->string('partycode', 8);
            $table->string('itemcode');
            $table->decimal('qty', 10);
            $table->decimal('instock', 10);
            $table->string('unit', 8);
            $table->decimal('rate', 10);
            $table->decimal('amount', 10);
            $table->string('indentdocId', 25)->default('');
            $table->integer('indentsno')->default(0);
            $table->string('specification', 30)->default('');
            $table->string('taxstru', 7)->default('');
            $table->decimal('taxamt', 10)->default(0);
            $table->decimal('total', 10);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->string('u_ae', 1);
            $table->dateTime('updated_at');

            $table->primary(['propertyid', 'docid', 'sno']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `porder1` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('porder1');
    }
};
