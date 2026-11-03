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
        Schema::connection('tenant')->create('ledger_tds', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid', 50);
            $table->smallInteger('vsno');
            $table->string('vprefix', 4);
            $table->date('vdate');
            $table->string('tdscode', 7);
            $table->string('tdsdrcode', 7);
            $table->float('onamt', null, 0);
            $table->float('tds', null, 0);
            $table->float('tdsamt', null, 0);
            $table->string('tdsdocid', 50);
            $table->smallInteger('tdsvsno');
            $table->string('u_name', 15);
            $table->dateTime('created_at')->useCurrent();
            $table->dateTime('updated_at')->useCurrentOnUpdate()->useCurrent();
            $table->string('u_ae', 1);

            $table->primary(['propertyid', 'docid', 'vsno']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `ledger_tds` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('ledger_tds');
    }
};
