<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->create('mdrrate', function (Blueprint $table) {
            $table->bigInteger('id')->unique('id');

            $table->unsignedBigInteger('propertyid');
            $table->string('taxstru', 20);
            $table->string('revcode', 20);

            $table->decimal('commper', 18, 2)->default(0);
            $table->decimal('limit', 18, 2)->default(0);
            $table->decimal('llimit', 18, 2)->default(0);
            $table->string('compoperator', 5)->nullable();
            $table->decimal('ulimit', 18, 2)->default(0);

            $table->string('commac', 20)->nullable();

            $table->dateTime('created_at');
            $table->string('u_ae', 1);
            $table->string('u_name', 15);

            $table->primary(['propertyid', 'taxstru', 'revcode']);
        });

        DB::connection('tenant')->statement(
            'ALTER TABLE `mdrrate` MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT'
        );
    }

    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('mdrrate');
    }
};
