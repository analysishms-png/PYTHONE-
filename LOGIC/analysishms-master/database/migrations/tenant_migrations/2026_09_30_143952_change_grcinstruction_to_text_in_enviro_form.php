<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->table('enviro_form', function (Blueprint $table) {
            foreach (range(1, 12) as $i) {
                $table->text('grcinstruction' . $i)->nullable()->change();
            }
        });
    }

    public function down(): void
    {
        Schema::connection('tenant')->table('enviro_form', function (Blueprint $table) {
            foreach (range(1, 12) as $i) {
                $table->string('grcinstruction' . $i, 100)->nullable()->change();
            }
        });
    }
};
