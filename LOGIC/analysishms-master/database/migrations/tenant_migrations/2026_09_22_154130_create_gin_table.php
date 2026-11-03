<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::connection('tenant')->create('gin', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid', 100);
            $table->integer('vno');
            $table->date('vdate');
            $table->string('vprefix', 4);
            $table->string('vtype', 5);
            $table->string('ocdocid', 100)->default('');
            $table->date('ocdate')->nullable();
            $table->string('partycode', 8)->default('');
            $table->string('partyname', 30)->default('');
            $table->string('remark', 50)->default('');
            $table->string('porddocid', 100)->default('');
            $table->date('porddate')->nullable();
            $table->string('pono', 15)->default('0');
            $table->string('chalno', 15)->default('');
            $table->decimal('totalamount', 10)->default(0);
            $table->date('chaldate');
            $table->string('meminvno', 15)->default('');
            $table->date('meminvdate')->nullable();
            $table->string('indentno', 100)->default('0');
            $table->string('inspectedby', 15)->default('');
            $table->string('approvedby', 15)->default('');
            $table->string('delflag', 1)->default('Y')->index('idx_delflag');
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at');
            $table->string('u_ae', 1);

            $table->index(['propertyid', 'delflag'], 'idx_property_del');
            $table->primary(['propertyid', 'docid']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `gin` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('gin');
    }
};
