<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->table('channelrate', function (Blueprint $table) {
            $table->text('retcode')->change();
            $table->text('response')->nullable()->after('retcode');
            $table->integer('httpcode')->nullable()->after('response');
            $table->string('plancode', 100)->nullable()->after('httpcode');
        });
    }

    public function down(): void
    {
        Schema::connection('tenant')->table('channelrate', function (Blueprint $table) {
            $table->string('retcode', 100)->change();
            $table->dropColumn(['response', 'httpcode', 'plancode']);
        });
    }
};