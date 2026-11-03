<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    public function up()
    {
        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_lease_dtl` DROP PRIMARY KEY, ADD PRIMARY KEY (`lease_id`, `propertyid`, `unitid`)'
        );
    }

    public function down()
    {
        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_lease_dtl` DROP PRIMARY KEY, ADD PRIMARY KEY (`lease_id`, `propertyid`)'
        );
    }
};
