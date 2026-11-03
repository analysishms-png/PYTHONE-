<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string|null $arrdatetimeedit
 * @property string|null $cancellationac
 * @property string $pageopenwalkin
 * @property string|null $advanceroomrentac
 * @property string $addroomreservation
 * @property string|null $grcmandatory
 * @property string $printfoodsaccode
 * @property string|null $roomrateeditable
 * @property string|null $roominctaxeditable
 * @property string $roominclusive
 * @property string|null $rrinctaxdefault
 * @property string|null $blockinvalidtarrifinctaxyn
 * @property int|null $fombillcopies
 * @property string|null $checkout
 * @property string $allowcheckinsubmit
 * @property string $checkintime
 * @property string|null $plancalc
 * @property int $autoroomassign
 * @property string $autofillroomres
 * @property string|null $emptyroomyn
 * @property string|null $noshowatnightaudit
 * @property string|null $billprintingsummerised
 * @property string|null $taxsummary
 * @property string|null $variationbefore
 * @property string|null $variationafter
 * @property string|null $roomrentcharge
 * @property string|null $roomrentbefchkout
 * @property string|null $roomrentchkoutpost
 * @property string|null $autosplityn
 * @property string|null $roomcheckoutclearanceyn
 * @property string|null $roomchrgdueac
 * @property string|null $postroomdiscseparately
 * @property string|null $plantariffnarration
 * @property string|null $guestchargesdeletelog
 * @property string|null $rate1
 * @property string|null $rate2
 * @property string|null $rate3
 * @property string|null $rate4
 * @property string|null $rate5
 * @property string|null $resinstruction1
 * @property string|null $resinstruction2
 * @property string|null $resinstruction3
 * @property string|null $resinstruction4
 * @property string|null $resinstruction5
 * @property string|null $resinstruction6
 * @property string|null $resinstruction7
 * @property string $displayplanonprint
 * @property string|null $resinstruction8
 * @property string|null $resinstruction9
 * @property string|null $resinstruction10
 * @property string|null $resinstruction11
 * @property string|null $resinstruction12
 * @property string|null $roomcheckinclearanceyn
 * @property string $logoyn
 * @property string $emailyn
 * @property string $websiteyn
 * @property string $fssaicode
 * @property string|null $seperatereservationletterasperstatusyn
 * @property string|null $newtarrifforoldguest
 * @property string|null $reservationexpondonsaveyn
 * @property string|null $increservationinblankgrc
 * @property int $tentativedays
 * @property string $tarrifcountwise
 * @property string|null $displayrackrow
 * @property string|null $displayrackcol
 * @property string|null $displayrackfontsize
 * @property string $grcdatetime
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string|null $sysYN
 * @property string|null $roundofftype
 * @property string $dualprintexpsheet
 * @property int $allowbelow18
 * @property int $pushroomkey
 * @property string $googlereviewurl
 * @property int $deptnotificationyn
 * @property int $housekeepingroomstatus
 * @property string $grcinstruction1
 * @property string $grcinstruction2
 * @property string $grcinstruction3
 * @property string $grcinstruction4
 * @property string $grcinstruction5
 * @property string $grcinstruction6
 * @property string $grcinstruction7
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom query()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereAddroomreservation($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereAdvanceroomrentac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereAllowbelow18($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereAllowcheckinsubmit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereArrdatetimeedit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereAutofillroomres($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereAutoroomassign($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereAutosplityn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereBillprintingsummerised($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereBlockinvalidtarrifinctaxyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereCancellationac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereCheckintime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereCheckout($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereDeptnotificationyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereDisplayplanonprint($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereDisplayrackcol($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereDisplayrackfontsize($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereDisplayrackrow($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereDualprintexpsheet($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereEmailyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereEmptyroomyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereFombillcopies($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereFssaicode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereGooglereviewurl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereGrcdatetime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereGrcinstruction1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereGrcinstruction2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereGrcinstruction3($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereGrcinstruction4($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereGrcinstruction5($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereGrcinstruction6($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereGrcinstruction7($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereGrcmandatory($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereGuestchargesdeletelog($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereHousekeepingroomstatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereIncreservationinblankgrc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereLogoyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereNewtarrifforoldguest($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereNoshowatnightaudit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom wherePageopenwalkin($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom wherePlancalc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom wherePlantariffnarration($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom wherePostroomdiscseparately($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom wherePrintfoodsaccode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom wherePushroomkey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereRate1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereRate2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereRate3($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereRate4($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereRate5($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereReservationexpondonsaveyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereResinstruction1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereResinstruction10($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereResinstruction11($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereResinstruction12($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereResinstruction2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereResinstruction3($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereResinstruction4($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereResinstruction5($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereResinstruction6($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereResinstruction7($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereResinstruction8($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereResinstruction9($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereRoomcheckinclearanceyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereRoomcheckoutclearanceyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereRoomchrgdueac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereRoominclusive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereRoominctaxeditable($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereRoomrateeditable($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereRoomrentbefchkout($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereRoomrentcharge($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereRoomrentchkoutpost($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereRoundofftype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereRrinctaxdefault($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereSeperatereservationletterasperstatusyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereTarrifcountwise($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereTaxsummary($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereTentativedays($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereVariationafter($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereVariationbefore($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFom whereWebsiteyn($value)
 * @mixin \Eloquent
 */
class EnviroFom extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'enviro_form';

    protected $fillable = [
        'propertyid',
        'arrdatetimeedit',
        'cancellationac',
        'pageopenwalkin',
        'advanceroomrentac',
        'addroomreservation',
        'grcmandatory',
        'printfoodsaccode',
        'roomrateeditable',
        'roominctaxeditable',
        'roominclusive',
        'rrinctaxdefault',
        'blockinvalidtarrifinctaxyn',
        'fombillcopies',
        'checkout',
        'allowcheckinsubmit',
        'checkintime',
        'plancalc',
        'autofillroomres',
        'emptyroomyn',
        'noshowatnightaudit',
        'billprintingsummerised',
        'taxsummary',
        'variationbefore',
        'variationafter',
        'roomrentcharge',
        'roomrentbefchkout',
        'roomrentchkoutpost',
        'autosplityn',
        'roomcheckoutclearanceyn',
        'roomchrgdueac',
        'postroomdiscseparately',
        'plantariffnarration',
        'guestchargesdeletelog',
        'rate1',
        'rate2',
        'rate3',
        'rate4',
        'rate5',
        'resinstruction1',
        'resinstruction2',
        'resinstruction3',
        'resinstruction4',
        'resinstruction5',
        'resinstruction6',
        'resinstruction7',
        'resinstruction8',
        'resinstruction9',
        'resinstruction10',
        'resinstruction11',
        'resinstruction12',
        'roomcheckinclearanceyn',
        'logoyn',
        'emailyn',
        'websiteyn',
        'fssaicode',
        'seperatereservationletterasperstatusyn',
        'newtarrifforoldguest',
        'reservationexpondonsaveyn',
        'increservationinblankgrc',
        'tentativedays',
        'displayrackrow',
        'displayrackcol',
        'displayrackfontsize',
        'grcdatetime',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae',
        'sysYN',
        'roundofftype',
        'allowbelow18',
        'deptnotificationyn',
        'grcinstruction1',
        'grcinstruction2',
        'grcinstruction3',
        'grcinstruction4',
        'grcinstruction5',
        'grcinstruction6',
        'grcinstruction7',
        'grcinstruction8',
        'grcinstruction9',
        'grcinstruction10',
        'grcinstruction11',
        'grcinstruction12'
    ];
}
