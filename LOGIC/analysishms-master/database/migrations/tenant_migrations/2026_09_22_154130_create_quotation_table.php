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
        Schema::connection('tenant')->create('quotation', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid', 30);
            $table->integer('vno');
            $table->date('vdate');
            $table->string('vtype', 5);
            $table->date('valiedup')->nullable();
            $table->integer('vprefix');
            $table->string('quotno', 15)->default('');
            $table->date('quotdate');
            $table->string('partycode', 10);
            $table->string('remark', 25)->default('');
            $table->string('u_name', 15);
            $table->string('u_ae', 1);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();

            $table->primary(['propertyid', 'docid']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `quotation` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('quotation');
    }
};
