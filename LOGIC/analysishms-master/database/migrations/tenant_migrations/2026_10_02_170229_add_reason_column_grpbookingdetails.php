<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->table('room_mast', function (Blueprint $table) {
            $table->index(
                ['type', 'room_cat'],
                'idx_room_mast_type_room_cat'
            );
        });

        Schema::connection('tenant')->table('hkroomassigns', function (Blueprint $table) {
            $table->index(
                ['roomno', 'vdate', 'cleaningstatus'],
                'idx_hkroomassigns_room_date_status'
            );
        });
    }

    public function down(): void
    {
        Schema::connection('tenant')->table('room_mast', function (Blueprint $table) {
            $table->dropIndex('idx_room_mast_type_room_cat');
        });

        Schema::connection('tenant')->table('hkroomassigns', function (Blueprint $table) {
            $table->dropIndex('idx_hkroomassigns_room_date_status');
        });
    }
};
