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
        Schema::connection('tenant')->create('suntranh', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid', 50);
            $table->integer('sno');
            $table->string('vtype', 6);
            $table->integer('vno');
            $table->date('vdate');
            $table->string('partycode', 11);
            $table->string('suncode', 10);
            $table->string('dispname', 50);
            $table->string('calcformula', 20);
            $table->decimal('svalue', 10)->default(0);
            $table->decimal('amount', 10)->default(0);
            $table->decimal('baseamount', 10)->default(0);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);
            $table->date('sunappdate');
            $table->string('revcode', 10);
            $table->string('restcode', 20);
            $table->string('delflag', 1);
            $table->string('delremark')->nullable();

            $table->primary(['propertyid', 'docid', 'sno']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `suntranh` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('suntranh');
    }
};
