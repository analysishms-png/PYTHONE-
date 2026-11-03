<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->table('enviro_form', function (Blueprint $table) {
            $table->string('grcinstruction8',  100)->nullable()->after('grcinstruction7');
            $table->string('grcinstruction9',  100)->nullable()->after('grcinstruction8');
            $table->string('grcinstruction10', 100)->nullable()->after('grcinstruction9');
            $table->string('grcinstruction11', 100)->nullable()->after('grcinstruction10');
            $table->string('grcinstruction12', 100)->nullable()->after('grcinstruction11');
        });
    }

    public function down(): void
    {
        Schema::connection('tenant')->table('enviro_form', function (Blueprint $table) {
            $table->dropColumn([
                'grcinstruction8',
                'grcinstruction9',
                'grcinstruction10',
                'grcinstruction11',
                'grcinstruction12',
            ]);
        });
    }
};
