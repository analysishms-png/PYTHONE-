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
        Schema::connection('tenant')->create('companydiscount', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('compcode', 9);
            $table->integer('sno');
            $table->integer('roomcatcode');
            $table->integer('adult');
            $table->decimal('fixrate', 10)->default(0);
            $table->string('plan', 9)->default('');
            $table->decimal('planamount', 10)->default(0);
            $table->string('taxinc', 1)->default('');
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);

            $table->primary(['propertyid', 'compcode', 'roomcatcode', 'adult']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `companydiscount` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('companydiscount');
    }
};
