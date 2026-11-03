<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (!Schema::connection('tenant')->hasColumn('mail_settings', 'signature')) {
            Schema::connection('tenant')->table('mail_settings', function ($table) {
                $table->string('signature')->nullable()->after('mailer');
            });
        }
    }

    public function down(): void
    {
        if (Schema::connection('tenant')->hasColumn('mail_settings', 'signature')) {
            Schema::connection('tenant')->table('mail_settings', function ($table) {
                $table->dropColumn('signature');
            });
        }
    }
};
