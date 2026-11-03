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
        Schema::connection('tenant')->create('hallstock', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid');
            $table->integer('sno');
            $table->string('vtype', 3);
            $table->integer('vno');
            $table->integer('vprefix');
            $table->date('vdate');
            $table->string('party', 30);
            $table->string('restcode', 7);
            $table->string('item', 10);
            $table->decimal('qtyiss', 10);
            $table->string('unit', 6);
            $table->decimal('rate', 10);
            $table->decimal('amount', 10);
            $table->decimal('taxamt', 10);
            $table->decimal('taxper', 10)->default(0);
            $table->decimal('discper', 10);
            $table->decimal('discamt', 10);
            $table->string('remarks', 25);
            $table->decimal('total', 10);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);

            $table->primary(['propertyid', 'docid', 'sno']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `hallstock` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('hallstock');
    }
};
