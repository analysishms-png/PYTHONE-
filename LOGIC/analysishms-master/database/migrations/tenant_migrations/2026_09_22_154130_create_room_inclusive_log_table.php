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
        Schema::connection('tenant')->create('room_inclusive_log', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid', 100)->default('');
            $table->integer('bookno')->default(0);
            $table->string('vtype')->default('');
            $table->string('vprefix', 10)->default('');
            $table->date('vdate')->nullable();
            $table->integer('sno')->default(0);
            $table->string('rev_code')->default('');
            $table->decimal('amount', 10)->default(0);
            $table->string('chargepost', 50)->default('Daily');
            $table->string('contradocid')->default('');
            $table->integer('contrasno')->default(0);
            $table->dateTime('created_at')->useCurrent();
            $table->dateTime('updated_at')->useCurrentOnUpdate()->useCurrent();
            $table->string('u_name', 100);
            $table->string('u_ae', 1)->default('a');
        });

        DB::connection('tenant')->statement('ALTER TABLE `room_inclusive_log` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('room_inclusive_log');
    }
};
