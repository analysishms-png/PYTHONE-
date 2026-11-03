<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->create('mall_note_hdr', function (Blueprint $table) {
            $table->bigInteger('id')->unique('id');

            $table->unsignedBigInteger('propertyid');
            $table->string('docid', 26);
            $table->string('vtype', 5);
            $table->integer('vno');
            $table->date('vdate');

            $table->unsignedBigInteger('tenantid');
            $table->unsignedBigInteger('leaseid')->nullable();
            $table->string('refdocid', 50)->nullable();
            $table->date('refdate')->nullable();
            $table->string('reason', 250)->nullable();

            $table->decimal('taxableamount', 18, 2)->default(0.00);
            $table->decimal('taxamount', 18, 2)->default(0.00);
            $table->decimal('totalamount', 18, 2)->default(0.00);

            $table->string('remarks', 500)->nullable();
            $table->string('u_name', 50)->nullable();
            $table->dateTime('u_entdt')->useCurrent();
            $table->timestamps();

            $table->primary(['propertyid', 'docid']);

            $table->index('propertyid');
            $table->index('docid');
            $table->index('tenantid');
            $table->index('vdate');
        });

        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_note_hdr` MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT'
        );
    }

    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('mall_note_hdr');
    }
};
