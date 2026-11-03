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
        Schema::connection('tenant')->create('rwparameter', function (Blueprint $table) {
            $table->integer('id')->unique('sn');
            $table->integer('propertyid');
            $table->integer('code');
            $table->string('category', 30);
            $table->enum('type', ['percentage', 'value', '', ''])->default('value');
            $table->decimal('firstpervalue', 10)->default(0);
            $table->decimal('pervalue', 10)->default(0);
            $table->decimal('rpointonamt', 10)->default(0);
            $table->decimal('rpoint', 10)->default(0);
            $table->decimal('rpointvalue', 10)->default(0);
            $table->decimal('limitlow', 10)->default(0);
            $table->decimal('limitup', 10)->default(0);
            $table->string('restcode', 50);
            $table->date('validupto')->nullable();
            $table->boolean('activeyn')->default(false);
            $table->decimal('minamtreedem', 10)->default(0);
            $table->string('compoperator', 10);
            $table->string('u_name', 15);
            $table->dateTime('created_at')->useCurrent();
            $table->dateTime('updated_at')->useCurrentOnUpdate()->nullable();
            $table->string('u_ae', 1)->default('e');
        });

        DB::connection('tenant')->statement('ALTER TABLE `rwparameter` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('rwparameter');
    }
};
