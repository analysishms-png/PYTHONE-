<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    public function up(): void
    {
        // 4. Payment Detail columns — mall_receipt me add (ALTER)
        // paymentmode -> paycode/paytype & amount -> receiptamount pehle se h
        DB::connection('tenant')->statement("
            ALTER TABLE mall_receipt
                MODIFY COLUMN refno VARCHAR(25) NULL,
                ADD COLUMN narration VARCHAR(50)  NULL AFTER remarks,
                ADD COLUMN cardno    VARCHAR(16)  NULL AFTER narration,
                ADD COLUMN cardholder VARCHAR(50) NULL AFTER cardno,
                ADD COLUMN expdate   DATE         NULL AFTER cardholder,
                ADD COLUMN batchno   VARCHAR(10)  NULL AFTER expdate,
                ADD COLUMN comp_code VARCHAR(15)  NULL AFTER batchno
        ");
    }

    public function down(): void
    {
        DB::connection('tenant')->statement("
            ALTER TABLE mall_receipt
                DROP COLUMN narration,
                DROP COLUMN cardno,
                DROP COLUMN cardholder,
                DROP COLUMN expdate,
                DROP COLUMN batchno,
                DROP COLUMN comp_code,
                MODIFY COLUMN refno VARCHAR(10) NULL
        ");
    }
};