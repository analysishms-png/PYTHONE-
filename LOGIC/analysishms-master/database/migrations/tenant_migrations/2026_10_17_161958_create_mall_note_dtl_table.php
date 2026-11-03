<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->create('mall_note_dtl', function (Blueprint $table) {
            $table->bigInteger('id')->unique('id');

            $table->unsignedBigInteger('propertyid');
            $table->string('docid', 26);
            $table->integer('sno');
            $table->string('refdocid', 50)->nullable();
            $table->string('chargecode', 30);

            $table->date('fromdate')->nullable();
            $table->date('todate')->nullable();

            $table->decimal('qty', 18, 3)->default(1.000);
            $table->string('unit', 20)->nullable();
            $table->decimal('rate', 18, 4)->default(0.0000);
            $table->decimal('amount', 18, 2)->default(0.00);
            $table->decimal('taxrate', 8, 2)->default(0.00);
            $table->decimal('taxableamount', 18, 2)->default(0.00);
            $table->decimal('taxamount', 18, 2)->default(0.00);
            $table->decimal('totalamount', 18, 2)->default(0.00);

            $table->string('remarks', 300)->nullable();
            $table->string('u_name', 50)->nullable();
            $table->dateTime('u_entdt')->useCurrent();
            $table->timestamps();

            $table->primary(['propertyid', 'docid', 'sno']);

            $table->index('propertyid');
            $table->index('docid');
            $table->index('chargecode');
        });

        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_note_dtl` MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT'
        );
    }

    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('mall_note_dtl');
    }
};
