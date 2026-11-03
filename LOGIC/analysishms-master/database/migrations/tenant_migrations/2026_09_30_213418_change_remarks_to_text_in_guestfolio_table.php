<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->table('guestfolio', function (Blueprint $table) {
            $table->text('remarks')->change();
        });
    }

    public function down(): void
    {
        Schema::connection('tenant')->table('guestfolio', function (Blueprint $table) {
            $table->string('remarks', 50)->change();
        });
    }
};
