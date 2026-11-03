<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $cashpaytype
 * @property int $salebillfont
 * @property string $extradiscountallow
 * @property string $sundrypassword
 * @property string $kotprinting
 * @property string $nckot
 * @property string $posbillatnightaudit
 * @property string $itemwisediscountprint
 * @property string $kotheader1
 * @property string $kotheader2
 * @property string $kotheader3
 * @property string $kotheader4
 * @property string $possalebillauditlog
 * @property string $creditcardinfomandatory
 * @property string $modifyentryinbackdate
 * @property string $kotatnightaudit
 * @property string $reportingonsalebill
 * @property string $postposdiscseperately
 * @property string $taxsummaryonsalebill
 * @property string $kotoutletselection
 * @property string $printkotrate
 * @property string $printkot
 * @property string $printkotautoqr
 * @property string $displaymergedoutlet
 * @property string $printeditkot
 * @property string $roundofftype
 * @property string $paymentqrdisplay
 * @property string $bookingpartyac
 * @property string $slipfooter1
 * @property string $slipfooter2
 * @property string $system_based_printing
 * @property string|null $waitingtime
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos query()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereBookingpartyac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereCashpaytype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereCreditcardinfomandatory($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereDisplaymergedoutlet($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereExtradiscountallow($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereItemwisediscountprint($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereKotatnightaudit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereKotheader1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereKotheader2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereKotheader3($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereKotheader4($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereKotoutletselection($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereKotprinting($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereModifyentryinbackdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereNckot($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos wherePaymentqrdisplay($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos wherePosbillatnightaudit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos wherePossalebillauditlog($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos wherePostposdiscseperately($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos wherePrinteditkot($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos wherePrintkot($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos wherePrintkotautoqr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos wherePrintkotrate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereReportingonsalebill($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereRoundofftype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereSalebillfont($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereSlipfooter1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereSlipfooter2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereSundrypassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereSystemBasedPrinting($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereTaxsummaryonsalebill($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPos whereWaitingtime($value)
 * @mixin \Eloquent
 */
class EnviroPos extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'enviro_pos';
}
