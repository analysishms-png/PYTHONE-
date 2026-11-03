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
        Schema::connection('tenant')->create('servicerequesthdrdtl', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('roomno', 9);
            $table->integer('requestno');
            $table->integer('sno');
            $table->string('itemname', 15);
            $table->string('itemcode', 20)->nullable();
            $table->decimal('qty', 10)->nullable()->default(1);
            $table->string('requesttype', 15);
            $table->enum('status', ['Pending', 'Accepted', 'Assigned', 'In Progress', 'Delivered', 'Completed', 'Cancelled'])->default('Pending');
            $table->date('closedate')->nullable();
            $table->time('closetime')->nullable();

            $table->primary(['propertyid', 'requestno', 'sno']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `servicerequesthdrdtl` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('servicerequesthdrdtl');
    }
};
