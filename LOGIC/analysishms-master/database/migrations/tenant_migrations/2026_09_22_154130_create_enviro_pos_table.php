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
        Schema::connection('tenant')->create('enviro_pos', function (Blueprint $table) {
            $table->integer('id')->unique('id');
            $table->integer('propertyid')->default(0)->primary();
            $table->string('cashpaytype', 10)->default('');
            $table->integer('salebillfont')->default(12);
            $table->string('extradiscountallow', 1)->default('N');
            $table->string('sundrypassword', 12)->default('');
            $table->string('kotprinting', 26)->default('');
            $table->decimal('nckot', 4)->default(0);
            $table->string('posbillatnightaudit', 1)->default('Y');
            $table->string('itemwisediscountprint', 1)->default('N');
            $table->string('kotheader1', 50)->default('');
            $table->string('kotheader2', 50)->default('');
            $table->string('kotheader3', 50)->default('');
            $table->string('kotheader4', 50)->default('');
            $table->string('possalebillauditlog', 1)->default('Y');
            $table->string('creditcardinfomandatory', 1)->default('N');
            $table->string('modifyentryinbackdate', 1)->default('N');
            $table->string('kotatnightaudit', 1)->default('');
            $table->string('reportingonsalebill', 1)->default('N');
            $table->string('postposdiscseperately', 1)->default('Y');
            $table->string('taxsummaryonsalebill', 1)->default('Y');
            $table->string('kotoutletselection', 50)->default('Seperate For All Kitchen');
            $table->string('printkotrate', 1)->default('Y');
            $table->string('printkot', 100)->default('Seperate For All Kitchen');
            $table->string('printkotautoqr', 1)->default('N');
            $table->string('displaymergedoutlet', 1)->default('N');
            $table->string('printeditkot', 11)->default('All Items');
            $table->string('roundofftype', 9)->default('Upper');
            $table->string('paymentqrdisplay', 1)->default('N');
            $table->string('bookingpartyac', 9)->default('');
            $table->string('slipfooter1', 50)->default('');
            $table->string('slipfooter2', 50)->default('');
            $table->string('system_based_printing', 1)->default('N');
            $table->time('waitingtime')->nullable();
            $table->string('u_name');
            $table->dateTime('created_at');
            $table->dateTime('updated_at')->nullable();
            $table->string('u_ae')->default('a');
        });

        DB::connection('tenant')->statement('ALTER TABLE `enviro_pos` MODIFY `id` INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('tenant')->dropIfExists('enviro_pos');
    }
};
