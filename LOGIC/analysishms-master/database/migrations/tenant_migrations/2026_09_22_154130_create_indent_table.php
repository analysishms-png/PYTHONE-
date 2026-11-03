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
        Schema::connection('tenant')->create('indent', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid', 50);
            $table->string('vtype', 6);
            $table->integer('vno');
            $table->integer('vprefix');
            $table->date('vdate');
            $table->time('vtime');
            $table->string('department', 50);
            $table->string('godown', 50);
            $table->string('remarks', 50)->default('');
            $table->string('veryfiuser', 15)->default('');
            $table->date('veryfidate')->nullable();
            $table->string('veryfiremark', 50)->default('');
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);
            $table->string('company', 6)->default('');
            $table->string('refdocId', 50)->default('');
            $table->string('clearyn', 1)->default('');
            $table->string('delflag', 1)->default('N');

            $table->primary(['propertyid', 'docid']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `indent` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('indent');
    }
};
