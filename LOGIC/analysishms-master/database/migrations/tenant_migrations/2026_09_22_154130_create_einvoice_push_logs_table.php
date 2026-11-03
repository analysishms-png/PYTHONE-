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
        Schema::connection('tenant')->create('einvoice_push_logs', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('propertyid', 50);
            $table->string('docid', 100);
            $table->string('company')->default('');
            $table->integer('http_code')->nullable();
            $table->enum('success_yn', ['Y', 'N'])->nullable()->default('N')->index('success_yn');
            $table->integer('status_cd')->nullable();
            $table->text('curl_error')->nullable();
            $table->longText('post_data')->nullable();
            $table->longText('response_json')->nullable();
            $table->timestamp('created_at')->useCurrent();
            $table->dateTime('updated_at')->nullable();

            $table->index(['propertyid', 'docid'], 'propertyid');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('einvoice_push_logs');
    }
};
