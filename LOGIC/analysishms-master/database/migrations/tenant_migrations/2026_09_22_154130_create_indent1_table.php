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
        Schema::connection('tenant')->create('indent1', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid', 50);
            $table->integer('sno');
            $table->string('vtype', 6);
            $table->integer('vno');
            $table->date('vdate');
            $table->string('vprefix', 5);
            $table->string('item');
            $table->decimal('qty', 10)->default(0);
            $table->decimal('rate', 10)->default(0);
            $table->decimal('amount', 10)->default(0);
            $table->string('unit', 8);
            $table->decimal('vqty', 10, 0)->default(0);
            $table->decimal('balqty', 10, 0)->default(0);
            $table->string('wtunit', 8);
            $table->string('delflag', 1)->default('N');
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);
            $table->string('specification', 35);
            $table->float('convfactor', null, 0);
            $table->float('qtqty', null, 0);

            $table->primary(['propertyid', 'docid', 'sno']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `indent1` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('indent1');
    }
};
