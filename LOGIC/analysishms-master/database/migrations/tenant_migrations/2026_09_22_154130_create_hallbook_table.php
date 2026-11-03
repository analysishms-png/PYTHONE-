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
        Schema::connection('tenant')->create('hallbook', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid');
            $table->string('docid');
            $table->string('vtype', 5);
            $table->integer('vno');
            $table->time('vtime');
            $table->integer('vprefix');
            $table->date('vdate');
            $table->string('partyname', 50);
            $table->string('add1', 50)->default('');
            $table->string('add2', 50)->default('');
            $table->string('city', 8)->nullable()->default('');
            $table->string('panno', 10)->default('');
            $table->string('mobileno', 13);
            $table->string('mobileno1', 13);
            $table->string('func_name', 50);
            $table->string('restcode', 7);
            $table->string('housekeeping', 150)->default('');
            $table->string('frontoff', 150)->default('');
            $table->string('engg', 150)->default('');
            $table->string('security', 150)->default('');
            $table->string('chef', 150)->default('');
            $table->string('board', 150)->default('');
            $table->string('menuspl1', 150)->default('');
            $table->string('menuspl2', 150)->default('');
            $table->string('menuspl3', 150)->default('');
            $table->string('menuspl4', 150)->default('');
            $table->string('menuspl5', 150)->default('');
            $table->string('menuspl6', 150)->default('');
            $table->string('menuspl7', 150)->default('');
            $table->integer('expatt');
            $table->integer('guaratt');
            $table->decimal('coverrate', 10, 3)->default(0);
            $table->string('companycode', 8)->default('');
            $table->string('remark', 60)->default('');
            $table->string('bookingagent', 8)->default('');
            $table->string('u_name', 15);
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 1);

            $table->primary(['propertyid', 'docid']);
        });

        DB::connection('tenant')->statement('ALTER TABLE `hallbook` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('hallbook');
    }
};
