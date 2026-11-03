<?php


use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // Step 1: Pehle AUTO_INCREMENT remove karo 'id' se
        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_receipt` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL'
        );
        
        // Step 2: Ab PRIMARY KEY drop kar sakte ho
        DB::connection('tenant')->statement('ALTER TABLE `mall_receipt` DROP PRIMARY KEY');
        
        // Step 3: Ab 'id' ko unique banao aur AUTO_INCREMENT wapas lagao
        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_receipt` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE'
        );
        
        // Step 4: Composite primary key add karo
        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_receipt` ADD PRIMARY KEY (`propertyid`, `docid`)'
        );
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Step 1: Composite primary key drop karo
        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_receipt` DROP PRIMARY KEY'
        );
        
        // Step 2: 'id' se AUTO_INCREMENT aur unique hatao
        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_receipt` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL'
        );
        
        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_receipt` DROP INDEX `id`'
        );
        
        // Step 3: 'id' ko wapas PRIMARY KEY banao with AUTO_INCREMENT
        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_receipt` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY'
        );
    }
};
