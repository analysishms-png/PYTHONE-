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
        Schema::connection('tenant')->create('loan', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('vtype', 4);
            $table->integer('vno');
            $table->date('vdate');
            $table->string('vprefix', 10)->default('');
            $table->string('empcode', 9);
            $table->decimal('amount', 10)->default(0);
            $table->integer('installment');
            $table->string('remark', 30);
            $table->string('accode', 9);
            $table->string('u_name', 15);
            $table->dateTime('created_at')->nullable();
            $table->dateTime('updated_at');
            $table->string('u_ae', 1);

            $table->primary(['propertyid', 'vtype', 'vno']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `loan` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('loan');
    }
};
