<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    public function up(): void
    {
        // Per-property (per-client) SMTP settings — mail_settings
        // Concept: koi PK nahi, id = sirf AUTO_INCREMENT (unassigned),
        // propertyid = UNIQUE (ek property ki ek hi settings row).
        // Project pattern: id pehle PLAIN INT (no auto), baad me
        // ALTER ... MODIFY id ... AUTO_INCREMENT (subgroup/mall_lease_hdr jaisa).
        DB::connection('tenant')->statement("CREATE TABLE IF NOT EXISTS mail_settings (
            id            INT NOT NULL,
            propertyid    INT NOT NULL,
            mailer        VARCHAR(20)  NOT NULL DEFAULT 'smtp',
            host          VARCHAR(120) NULL,
            port          INT          NULL DEFAULT 587,
            username      VARCHAR(160) NULL,
            `password`    TEXT         NULL,
            encryption    VARCHAR(10)  NULL DEFAULT 'tls',
            from_address  VARCHAR(160) NULL,
            from_name     VARCHAR(160) NULL,
            activeyn      TINYINT(1)   NOT NULL DEFAULT 1,
            u_name        INT          NULL,
            u_ae          VARCHAR(1)   NULL,
            created_at    DATETIME     NULL,
            UNIQUE KEY uniq_mail_settings_id (id),
            UNIQUE KEY uniq_mail_settings_property (propertyid)
        ) DEFAULT CHARSET=utf8mb4");

        DB::connection('tenant')->statement('ALTER TABLE `mail_settings` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    public function down(): void
    {
        DB::connection('tenant')->statement("DROP TABLE IF EXISTS mail_settings");
    }
};