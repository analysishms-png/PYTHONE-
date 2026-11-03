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
        Schema::connection('tenant')->create('servicerequesthdr', function (Blueprint $table) {
            $table->bigInteger('id')->unique('id');
            $table->integer('propertyid');
            $table->string('foliodocid', 25)->nullable();
            $table->bigInteger('guestprof')->nullable();
            $table->string('roomno', 7);
            $table->string('requestno', 30);
            $table->date('requestdate');
            $table->time('requesttime');
            $table->enum('status', ['Pending', 'Accepted', 'Assigned', 'In Progress', 'Delivered', 'Completed', 'Cancelled'])->nullable()->default('Pending');
            $table->time('viewtime');
            $table->string('viewuser', 15);
            $table->enum('requestedfrom', ['Guest', 'Reception', 'Housekeeping', 'Restaurant', 'Mobile App', 'QR Portal'])->nullable()->default('QR Portal');
            $table->string('remarks', 35)->nullable()->default('');
            $table->string('assignedto', 11)->nullable();
            $table->dateTime('assigneddate')->nullable();
            $table->string('closedby', 15)->nullable();
            $table->dateTime('closeddate')->nullable();
            $table->string('dcode', 20)->nullable();

            $table->primary(['propertyid', 'requestno']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `servicerequesthdr` MODIFY `id` BIGINT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('servicerequesthdr');
    }
};
