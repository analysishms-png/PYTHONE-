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
        Schema::connection('tenant')->create('hallsale1', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docId', 25);
            $table->string('vtype', 3);
            $table->string('vprefix', 20)->default('');
            $table->integer('vno');
            $table->date('vdate');
            $table->string('restcode', 7);
            $table->string('party', 40);
            $table->string('comp_code')->default('');
            $table->decimal('total', 10);
            $table->decimal('discper', 10);
            $table->decimal('discamt', 10);
            $table->decimal('nontaxable', 10);
            $table->decimal('taxable', 10);
            $table->decimal('roundoff', 10)->default(0);
            $table->decimal('netamt', 10);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);
            $table->string('remark')->default('');
            $table->float('noofpax', null, 0);
            $table->decimal('rateperpax', 10, 3);
            $table->decimal('totalpercover', 10);
            $table->decimal('advance', 10);
            $table->integer('rectno');
            $table->dateTime('rectdate')->nullable();
            $table->string('bookdocid');
            $table->string('narration', 25);
            $table->string('narration1', 25);
            $table->decimal('cgst', 10);
            $table->decimal('sgst', 10);

            $table->index(['propertyid', 'bookdocid'], 'idx_hallsale1_prop_book');
            $table->primary(['propertyid', 'docId']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `hallsale1` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('hallsale1');
    }
};
