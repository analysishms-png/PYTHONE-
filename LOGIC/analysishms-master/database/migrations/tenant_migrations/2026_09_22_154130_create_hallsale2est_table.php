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
        Schema::connection('tenant')->create('hallsale2est', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid');
            $table->integer('sno');
            $table->integer('sno1');
            $table->string('vtype', 3);
            $table->integer('vno');
            $table->integer('vprefix');
            $table->date('vdate');
            $table->string('restcode', 8);
            $table->string('taxcode', 8);
            $table->decimal('basevalue', 10);
            $table->decimal('taxper', 10);
            $table->decimal('taxamt', 10);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);

            $table->primary(['propertyid', 'docid', 'sno', 'sno1']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `hallsale2est` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('hallsale2est');
    }
};
