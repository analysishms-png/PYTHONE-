<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::connection('tenant')->create('memberfamily', function (Blueprint $table) {
            $table->integer('id', true);
            $table->integer('propertyid');
            $table->string('subcode', 100)->nullable();
            $table->integer('sno')->nullable();
            $table->string('relationship', 100)->nullable();
            $table->string('conprefix', 50)->nullable();
            $table->string('name', 150)->nullable();
            $table->string('gender', 20)->nullable();
            $table->string('maritalstatus', 50)->nullable();
            $table->date('dob')->nullable();
            $table->string('pob', 150)->nullable();
            $table->date('weddate')->nullable();
            $table->string('mobile', 20)->nullable();
            $table->string('email', 150)->nullable();
            $table->string('nationality', 100)->nullable();
            $table->string('religion', 100)->nullable();
            $table->string('bloodgroup', 10)->nullable();
            $table->string('proocc', 150)->nullable();
            $table->string('edquali', 150)->nullable();
            $table->string('tbusiness', 150)->nullable();
            $table->decimal('turnover', 15)->nullable();
            $table->string('desig', 100)->nullable();
            $table->string('passport', 50)->nullable();
            $table->string('pan', 50)->nullable();
            $table->string('intax', 50)->nullable();
            $table->string('spinterest', 150)->nullable();
            $table->string('picpath')->nullable();
            $table->string('signpath')->nullable();
            $table->string('label', 150)->nullable();
            $table->string('u_name', 100)->nullable();
            $table->dateTime('created_at')->nullable();
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae', 50)->nullable();
            $table->string('hw_id', 100)->nullable();
            $table->string('cardno', 50)->nullable();
            $table->date('cardissdate')->nullable();
            $table->string('cardregid', 100)->nullable();
            $table->date('cardvalidupto')->nullable();
            $table->string('postedat', 150)->nullable();
            $table->string('mobile1', 20)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('memberfamily');
    }
};
