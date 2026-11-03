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
        Schema::connection('tenant')->create('userpermission', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('username', 100);
            $table->decimal('posdiscountallowupto', 10)->default(0);
            $table->string('possettlementyn', 1)->default('Y');
            $table->string('editelementinkot', 1)->default('Y');
            $table->string('freeitemallow', 1)->default('N');
            $table->string('refundcashcardamt', 1)->default('Y');
            $table->decimal('fomdiscuntallowupto', 10)->default(0);
            $table->string('cancelguestbill', 1)->default('Y');
            $table->string('changeroomdetail', 1)->default('Y');
            $table->string('deleteguestcharges', 1)->default('Y');
            $table->string('changeguestcharges', 1)->default('Y');
            $table->string('changeguestprofile', 1)->default('Y');
            $table->string('cancelreservation', 1)->default('Y');
            $table->string('system_name')->default('');
            $table->string('allowchkouttimechange', 1)->default('N');
            $table->string('allowadvancechargeedit', 1)->default('N');
            $table->string('posrateedit', 1)->default('N');
            $table->boolean('voucherverify')->default(false);
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);
        });

        DB::connection('tenant')->statement('ALTER TABLE `userpermission` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('userpermission');
    }
};
