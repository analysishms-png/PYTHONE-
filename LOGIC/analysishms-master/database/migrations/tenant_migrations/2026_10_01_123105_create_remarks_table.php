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
        Schema::connection('tenant')->create('remarks', function (Blueprint $table) {
            $table->bigInteger('id')->unique('id');
            $table->string('docid')->default('');
            $table->integer('sno')->default(0);
            $table->string('type')->default('')->comment('Type of remark');
            $table->text('description')->default('')->comment('Remark Description');
            $table->tinyInteger('status')->default(1)->comment('Status of remark');
            $table->ipAddress('ipaddr')->default('');
            $table->string('u_name')->default('');
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent()->useCurrentOnUpdate();
            
            $table->primary(['docid', 'sno']);
        });
        DB::connection('tenant')->statement('ALTER TABLE `remarks` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('remarks');
    }
};
