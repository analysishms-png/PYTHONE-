<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    public function up(): void
    {
        DB::connection('tenant')->statement("ALTER TABLE facilitybill1 MODIFY amount DECIMAL(20,2) NOT NULL");
        DB::connection('tenant')->statement("ALTER TABLE facilitybill2 MODIFY basevalue DECIMAL(20,2) NOT NULL");
        DB::connection('tenant')->statement("ALTER TABLE facilitybill2 MODIFY taxamt DECIMAL(20,2) NOT NULL");
        DB::connection('tenant')->statement("ALTER TABLE suntranfacility MODIFY amount DECIMAL(20,2) NOT NULL");
        DB::connection('tenant')->statement("ALTER TABLE suntranfacility MODIFY baseamount DECIMAL(20,2) NOT NULL");
    }

    public function down(): void
    {
        DB::connection('tenant')->statement("ALTER TABLE facilitybill1 MODIFY amount DOUBLE(8,2) NOT NULL");
        DB::connection('tenant')->statement("ALTER TABLE facilitybill2 MODIFY basevalue DOUBLE(8,2) NOT NULL");
        DB::connection('tenant')->statement("ALTER TABLE facilitybill2 MODIFY taxamt DOUBLE(8,2) NOT NULL");
        DB::connection('tenant')->statement("ALTER TABLE suntranfacility MODIFY amount DOUBLE(8,2) NOT NULL");
        DB::connection('tenant')->statement("ALTER TABLE suntranfacility MODIFY baseamount DOUBLE(8,2) NOT NULL");
    }
};