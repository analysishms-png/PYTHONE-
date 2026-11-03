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
        Schema::connection('tenant')->create('muzztech_session', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('propertyid');
            $table->string('docid', 100)->index('idx_docid');
            $table->text('header_handle');
            $table->string('media_id', 50)->index('idx_media_id');
            $table->string('expire_at')->nullable()->default('');
            $table->string('type')->default('');
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->useCurrent();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('muzztech_session');
    }
};
