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
        Schema::connection('tenant')->create('hkroomassigns', function (Blueprint $table) {
            $table->bigInteger('id')->unique('id');
            $table->string('propertyid', 50)->default('');
            $table->date('vdate')->nullable();
            $table->integer('assno');
            $table->time('vtime')->nullable();
            $table->string('code', 50)->default('');
            $table->string('supervisor', 100)->nullable();
            $table->string('ctype', 100)->nullable();
            $table->string('esttime', 10)->nullable();
            $table->string('roomno', 50)->default('');
            $table->enum('status', ['cleaned', 'dirty'])->default('dirty');
            $table->string('cleaningstatus', 30);
            $table->string('u_name', 100)->default('');
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable();
        });

        DB::connection('tenant')->statement('ALTER TABLE `hkroomassigns` MODIFY `id` BIGINT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('hkroomassigns');
    }
};
