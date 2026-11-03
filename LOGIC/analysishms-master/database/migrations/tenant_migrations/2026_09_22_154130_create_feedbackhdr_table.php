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
        Schema::connection('tenant')->create('feedbackhdr', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->bigInteger('feedbackid');
            $table->integer('propertyid');
            $table->bigInteger('guestprof')->nullable();
            $table->string('mobileno', 12);
            $table->string('mailid', 20);
            $table->integer('roomno')->nullable();
            $table->string('docid', 50)->nullable();
            $table->string('folioNo', 10);
            $table->integer('sno1');
            $table->dateTime('deedbackdate');
            $table->enum('feedbacksource', ['QR', 'Mobile App', 'Reception', 'Email', 'Website'])->nullable();
            $table->decimal('overallrating', 3, 1)->nullable()->default(0);
            $table->enum('recommend', ['YES', 'NO', 'MAYBE'])->nullable();
            $table->string('comments', 500)->nullable();
            $table->string('improve', 500);
            $table->string('purpose', 25);

            $table->primary(['feedbackid', 'propertyid']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `feedbackhdr` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('feedbackhdr');
    }
};
