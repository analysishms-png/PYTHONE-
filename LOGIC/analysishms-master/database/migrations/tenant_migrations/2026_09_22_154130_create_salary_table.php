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
        Schema::connection('tenant')->create('salary', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('mth_year', 8);
            $table->string('emp_code', 8);
            $table->decimal('work_day', 10, 1)->default(0);
            $table->decimal('cl', 10, 1)->default(0);
            $table->decimal('leave', 10, 1)->default(0);
            $table->decimal('sunday', 10)->default(0);
            $table->decimal('holiday', 10, 1)->default(0);
            $table->decimal('absent', 10, 1)->default(0);
            $table->decimal('basic', 10);
            $table->decimal('da', 10)->default(0);
            $table->decimal('hra', 10)->default(0);
            $table->decimal('other_allow', 10)->default(0);
            $table->decimal('other_deduc', 10)->default(0);
            $table->decimal('conveyance', 10)->default(0);
            $table->decimal('medical', 10)->default(0);
            $table->decimal('lta', 10)->default(0);
            $table->decimal('pf', 10)->default(0);
            $table->decimal('epf', 10)->default(0);
            $table->decimal('esi', 10)->default(0);
            $table->decimal('loan', 10)->default(0);
            $table->decimal('advance', 10)->default(0);
            $table->decimal('net_salary', 10)->default(0);
            $table->decimal('loan_bal', 10)->default(0);
            $table->decimal('overtime', 10)->default(0);
            $table->decimal('overtimeamt', 10)->default(0);
            $table->decimal('adv_bal', 10)->default(0);
            $table->decimal('emp_basic', 10);
            $table->string('department', 100)->default('');
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);

            $table->primary(['propertyid', 'mth_year', 'emp_code']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `salary` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('salary');
    }
};
