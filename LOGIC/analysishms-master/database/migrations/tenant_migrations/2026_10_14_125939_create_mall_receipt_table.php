<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    public function up(): void
    {
        DB::connection('tenant')->statement("CREATE TABLE IF NOT EXISTS mall_receipt (
            id                BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
            propertyid        BIGINT UNSIGNED NOT NULL,
            docid             VARCHAR(15)     NOT NULL,
            vtype             VARCHAR(7)      NULL DEFAULT 'RCPT',
            vno               INT             NOT NULL,
            vdate             DATE            NOT NULL,
            vprefix           INT             NOT NULL,
            tenantid          BIGINT UNSIGNED NOT NULL,
            leaseid           BIGINT UNSIGNED NULL,
            receiptamount     DECIMAL(18,2)   NOT NULL DEFAULT 0.00,
            paytype           VARCHAR(10)     NULL,
            paycode           VARCHAR(10)     NULL,
            adjustmentamount  DECIMAL(18,2)   NULL DEFAULT 0.00,
            remarks           VARCHAR(50)     NULL,
            refno             VARCHAR(10)     NULL,
            mobileno          VARCHAR(10)     NULL,
            u_name            VARCHAR(50)     NULL,
            u_entdt           DATETIME        NULL DEFAULT CURRENT_TIMESTAMP,
            u_updateby        VARCHAR(50)     NULL,
            u_updatedt        DATETIME        NULL,
            PRIMARY KEY (id)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci");
    }

    public function down(): void
    {
        DB::connection('tenant')->statement("DROP TABLE IF EXISTS mall_receipt");
    }
};
