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
        Schema::connection('tenant')->create('ledger', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid', 100);
            $table->integer('vsno');
            $table->string('vtype', 5);
            $table->integer('vno');
            $table->string('vprefix', 5);
            $table->date('vdate');
            $table->string('subcode', 50);
            $table->decimal('amtcr', 10);
            $table->decimal('amtdr', 10);
            $table->string('contrasub', 50);
            $table->string('chqno', 15)->nullable();
            $table->date('chqdate')->nullable();
            $table->string('delflag', 1)->default('N');
            $table->date('clgdate')->nullable();
            $table->string('narration', 500)->default('');
            $table->string('groupcode', 8)->default('');
            $table->string('groupnature', 50);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);
            $table->string('status', 1)->default('U');
            $table->string('verifyuser', 15)->default('');
            $table->string('verifyremark', 45)->default('');
            $table->date('verifydate')->nullable();
            $table->string('rejectremark', 35)->default('');
            $table->string('rejectuser', 15);
            $table->date('rejectdate')->nullable();

            $table->primary(['propertyid', 'docid', 'vsno']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `ledger` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('ledger');
    }
};
