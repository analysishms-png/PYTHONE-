<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    public function up(): void
    {
        DB::connection('tenant')->statement(
            'ALTER TABLE `facilitybill` MODIFY `docid` VARCHAR(26) NOT NULL'
        );
        DB::connection('tenant')->statement(
            'ALTER TABLE `facilitybill1` MODIFY `docid` VARCHAR(26) NOT NULL'
        );
        DB::connection('tenant')->statement(
            'ALTER TABLE `facilitybill1` MODIFY `docid1` VARCHAR(26) NOT NULL DEFAULT \'\''
        );
        DB::connection('tenant')->statement(
            'ALTER TABLE `facilitybill2` MODIFY `docid` VARCHAR(26) NOT NULL'
        );
        DB::connection('tenant')->statement(
            'ALTER TABLE `facilitybill2` MODIFY `docid1` VARCHAR(26) NOT NULL DEFAULT \'\''
        );
        DB::connection('tenant')->statement(
            'ALTER TABLE `suntranfacility` MODIFY `docid` VARCHAR(26) NOT NULL'
        );
        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_receipt` MODIFY `docid` VARCHAR(26) NOT NULL'
        );
    }

    public function down(): void
    {
        DB::connection('tenant')->statement(
            'ALTER TABLE `facilitybill` MODIFY `docid` VARCHAR(21) NOT NULL'
        );
        DB::connection('tenant')->statement(
            'ALTER TABLE `facilitybill1` MODIFY `docid` VARCHAR(21) NOT NULL'
        );
        DB::connection('tenant')->statement(
            'ALTER TABLE `facilitybill1` MODIFY `docid1` VARCHAR(21) NOT NULL DEFAULT \'\''
        );
        DB::connection('tenant')->statement(
            'ALTER TABLE `facilitybill2` MODIFY `docid` VARCHAR(21) NOT NULL'
        );
        DB::connection('tenant')->statement(
            'ALTER TABLE `facilitybill2` MODIFY `docid1` VARCHAR(21) NOT NULL DEFAULT \'\''
        );
        DB::connection('tenant')->statement(
            'ALTER TABLE `suntranfacility` MODIFY `docid` VARCHAR(21) NOT NULL'
        );
        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_receipt` MODIFY `docid` VARCHAR(21) NOT NULL'
        );
    }
};
