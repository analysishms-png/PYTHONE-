<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string|null $docid
 * @property int $sno
 * @property string $sno1
 * @property string|null $vtype
 * @property string|null $vno
 * @property string|null $vprefix
 * @property string|null $vdate
 * @property string|null $vtime
 * @property string|null $guestprof
 * @property string|null $comp_code
 * @property string $travel_agent
 * @property string|null $comments
 * @property string $paycode
 * @property string|null $paytype
 * @property int|null $amtcr
 * @property int|null $amtdr
 * @property int|null $tipamt
 * @property string|null $roomcat
 * @property string|null $roomtype
 * @property string|null $roomno
 * @property int|null $foliono
 * @property string $msno1
 * @property string|null $cardno
 * @property string|null $cardholder
 * @property string|null $chqno
 * @property string|null $chqdate
 * @property string|null $expdate
 * @property string|null $bookno
 * @property string|null $booktype
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string|null $restcode
 * @property string|null $billamount
 * @property string|null $contraid
 * @property string|null $dbtchkin
 * @property string|null $taxper
 * @property string|null $onamt
 * @property string|null $split
 * @property string|null $billno
 * @property string|null $modeset
 * @property string|null $settledate
 * @property string|null $batchno
 * @property string|null $plancharge
 * @property string|null $fixedchargecode
 * @property string|null $relatdfoliono
 * @property string|null $folionodocid
 * @property string|null $refno
 * @property string|null $plancode
 * @property string|null $seqno
 * @property string|null $relatedfolionodocid
 * @property string|null $refdocid
 * @property string|null $remarks
 * @property string|null $au_name
 * @property string|null $acreated_at
 * @property string|null $aupdated_at
 * @property string|null $taxcondamt
 * @property string|null $taxstru
 * @property string|null $agac
 * @property string|null $txnno
 * @property string $posted
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog query()
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereAgac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereAmtcr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereAmtdr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereAuEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereAuName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereAuUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereBatchno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereBillamount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereBillno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereBookno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereBooktype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereCardholder($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereCardno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereChqdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereChqno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereComments($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereCompCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereContraid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereDbtchkin($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereExpdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereFixedchargecode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereFoliono($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereFolionodocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereGuestprof($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereModeset($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereMsno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereOnamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog wherePaycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog wherePaytype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog wherePlancharge($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog wherePlancode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog wherePosted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereRefdocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereRefno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereRelatdfoliono($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereRelatedfolionodocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereRoomcat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereRoomno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereRoomtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereSeqno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereSettledate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereSno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereSplit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereTaxcondamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereTaxper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereTaxstru($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereTipamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereTravelAgent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereTxnno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereVtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeLog whereVtype($value)
 * @mixin \Eloquent
 */
class PaychargeLog extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'paychargelog';
}
