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
        Schema::connection('tenant')->create('expsheet', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid', 50);
            $table->string('vtype', 6);
            $table->integer('vno')->default(0);
            $table->string('vprefix', 4);
            $table->date('vdate');
            $table->time('vtime');
            $table->decimal('dramt', 10)->default(0);
            $table->string('drac', 8)->default('');
            $table->decimal('cramt', 10)->default(0);
            $table->string('crac', 8)->default('');
            $table->string('remark', 100)->default('');
            $table->string('delflag', 1)->default('');
            $table->string('u_name', 15)->nullable()->default('');
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->default('');

            $table->index(['vdate', 'propertyid', 'vtype'], 'idx_expsheet');
            $table->primary(['propertyid', 'docid']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `expsheet` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('expsheet');
    }
};
