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
        Schema::connection('tenant')->create('roomocc', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid', 100)->index('idx_roomocc_docid');
            $table->string('name')->nullable();
            $table->integer('sno');
            $table->integer('sno1');
            $table->integer('folioNo')->nullable()->index('idx_roomocc_foliono');
            $table->string('vtype', 100)->nullable();
            $table->string('vprefix', 100)->nullable();
            $table->string('guestprof', 100)->nullable()->index('idx_roomocc_guestprof');
            $table->string('roomcat', 100)->nullable()->index('idx_roomocc_roomcat');
            $table->string('roomtype', 100)->nullable();
            $table->string('roomno', 100)->nullable()->index('idx_roomocc_roomno');
            $table->integer('ratecode')->nullable();
            $table->decimal('roomrate', 10)->nullable();
            $table->date('chkindate')->nullable()->index('idx_roomocc_chkindate');
            $table->time('chkintime')->nullable();
            $table->integer('adult')->nullable();
            $table->integer('children')->nullable();
            $table->date('depdate')->nullable();
            $table->time('deptime')->nullable();
            $table->integer('nodays');
            $table->date('chkoutdate')->nullable();
            $table->time('chkouttime')->nullable();
            $table->string('type', 100)->nullable();
            $table->string('u_name', 25);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1)->nullable()->default('a');
            $table->string('sysYN', 1)->nullable();
            $table->string('activeYN', 1)->nullable();
            $table->date('userchkoutdate')->nullable();
            $table->string('chkoutuser', 100)->nullable();
            $table->string('newroomno', 100)->nullable();
            $table->string('plancode', 100)->nullable()->index('idx_roomocc_plancode');
            $table->decimal('planamt', 10)->nullable();
            $table->integer('incinrate')->nullable();
            $table->string('plandisc', 100)->nullable();
            $table->decimal('plandiscamt', 10)->nullable();
            $table->string('plandiscappon', 100)->nullable();
            $table->string('rrtaxinc', 100)->nullable();
            $table->decimal('rodisc', 7)->nullable();
            $table->decimal('rsdisc', 7)->nullable();
            $table->integer('roomcount');
            $table->string('rrservicechrg', 100)->nullable();
            $table->date('chngdate')->nullable();
            $table->integer('extrabed')->nullable();
            $table->string('reasonrchange')->default('');
            $table->string('roomtaxstru', 100)->nullable();
            $table->decimal('rackrate', 10)->nullable();
            $table->decimal('originalamount', 10)->default(0);
            $table->string('leaderyn', 1)->default('N');
            $table->tinyInteger('ammendstay')->default(0);

            $table->index(['propertyid', 'type', 'docid', 'guestprof', 'roomno'], 'idx_roomocc_composite');
            $table->index(['docid', 'type', 'sno1', 'adult', 'children', 'nodays'], 'idx_roomocc_comprehensive');
            $table->index(['docid', 'type', 'sno1', 'guestprof', 'chkintime', 'chkouttime', 'chkoutdate', 'nodays', 'adult', 'children'], 'idx_roomocc_covering');
            $table->index(['docid', 'sno1'], 'idx_roomocc_docid_sno1');
            $table->index(['docid', 'type'], 'idx_roomocc_docid_type');
            $table->index(['docid', 'type', 'leaderyn'], 'idx_roomocc_docid_type_leader');
            $table->index(['propertyid', 'type'], 'idx_roomocc_propertyid_type');
            $table->index(['propertyid', 'type', 'chkindate'], 'idx_roomocc_propertyid_type_chkindate');
            $table->index(['propertyid', 'type'], 'idx_roomocc_property_type');
            $table->primary(['propertyid', 'docid', 'sno', 'sno1']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `roomocc` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('roomocc');
    }
};
