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
        Schema::connection('tenant')->create('updatelog', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('mainmenu')->nullable();
            $table->string('submenu')->nullable();
            $table->string('pagename')->nullable();
            $table->string('summary')->nullable();
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('updatelog');
    }
};
