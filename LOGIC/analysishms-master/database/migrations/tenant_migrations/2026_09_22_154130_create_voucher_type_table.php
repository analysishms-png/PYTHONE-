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
        Schema::connection('tenant')->create('voucher_type', function (Blueprint $table) {
            $table->integer('id', true);
            $table->integer('propertyid');
            $table->string('category');
            $table->string('ncat');
            $table->string('short_name', 100)->nullable();
            $table->string('v_type');
            $table->string('contratype')->nullable();
            $table->string('description');
            $table->string('description_help');
            $table->string('number_method');
            $table->integer('start_no')->nullable();
            $table->date('last_ent_date')->nullable();
            $table->string('separate_narr')->nullable();
            $table->string('common_narr')->nullable();
            $table->string('narration')->nullable();
            $table->string('u_name');
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
            $table->string('chqno', 1)->nullable();
            $table->string('chqdt', 1)->nullable();
            $table->string('clgdt', 1)->nullable();
            $table->string('restcode')->nullable();
            $table->string('defaultcrac')->nullable();
            $table->string('defaultdrac')->nullable();
            $table->string('firstdrcr')->nullable();
            $table->string('sysYN', 1)->nullable();

            $table->index(['category', 'propertyid'], 'idx_voucher_category_property');
            $table->index(['category', 'propertyid', 'v_type'], 'idx_voucher_property');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('voucher_type');
    }
};
