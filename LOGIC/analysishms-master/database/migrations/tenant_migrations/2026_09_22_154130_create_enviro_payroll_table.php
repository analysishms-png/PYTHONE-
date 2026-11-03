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
        Schema::connection('tenant')->create('enviro_payroll', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid')->primary();
            $table->float('pflimit', null, 0);
            $table->float('pfemployee', null, 0);
            $table->float('pfemployer', null, 0);
            $table->float('esilimit', null, 0);
            $table->float('esiemployee', null, 0);
            $table->string('salaryac', 8);
            $table->string('loanac', 8);
            $table->string('advanceac', 8);
            $table->string('esebasic', 1);
            $table->string('esida', 1);
            $table->string('esihra', 1);
            $table->string('esiconvey', 1);
            $table->string('esiother', 1);
            $table->string('esilta', 1);
            $table->float('gappcompyear', null, 0);
            $table->float('gmonthconsidered', null, 0);
            $table->float('gworkingdaysInamonth', null, 0);
            $table->float('gdayssalary', null, 0);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at');
            $table->string('u_ae', 1);
        });

        DB::connection('tenant')->statement('ALTER TABLE `enviro_payroll` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('enviro_payroll');
    }
};
