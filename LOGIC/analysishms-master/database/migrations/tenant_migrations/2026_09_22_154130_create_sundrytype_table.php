<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::connection('tenant')->create('sundrytype', function (Blueprint $table) {
            $table->integer('id', true);
            $table->integer('propertyid');
            $table->string('vtype', 25);
            $table->string('sundry_code', 6);
            $table->integer('sno');
            $table->date('appdate');
            $table->string('disp_name', 20);
            $table->string('calcformula', 25);
            $table->string('peroramt', 1);
            $table->decimal('svalue', 10, 3);
            $table->string('revcode', 20);
            $table->string('nature', 15);
            $table->string('calcsign', 1);
            $table->string('bold', 1);
            $table->string('automanual', 1);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);
            $table->string('postyn', 1);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('sundrytype');
    }
};
