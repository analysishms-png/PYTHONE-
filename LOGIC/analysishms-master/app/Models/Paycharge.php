<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property int $sno
 * @property int $sno1
 * @property string|null $vtype
 * @property int|null $vno
 * @property string|null $vprefix
 * @property string|null $vdate
 * @property string|null $vtime
 * @property string|null $guestprof
 * @property string|null $comp_code
 * @property string|null $travel_agent
 * @property string|null $comments
 * @property string $paycode
 * @property string|null $paytype
 * @property string|null $amtcr
 * @property string|null $amtdr
 * @property int|null $tipamt
 * @property string|null $roomcat
 * @property string|null $roomtype
 * @property string|null $roomno
 * @property int|null $foliono
 * @property int $msno1
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
 * @property int|null $split
 * @property int|null $billno
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
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge query()
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereAgac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereAmtcr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereAmtdr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereAuEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereAuName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereAuUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereBatchno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereBillamount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereBillno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereBookno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereBooktype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereCardholder($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereCardno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereChqdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereChqno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereComments($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereCompCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereContraid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereDbtchkin($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereExpdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereFixedchargecode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereFoliono($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereFolionodocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereGuestprof($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereModeset($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereMsno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereOnamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge wherePaycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge wherePaytype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge wherePlancharge($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge wherePlancode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge wherePosted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereRefdocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereRefno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereRelatdfoliono($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereRelatedfolionodocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereRoomcat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereRoomno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereRoomtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereSeqno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereSettledate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereSno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereSplit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereTaxcondamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereTaxper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereTaxstru($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereTipamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereTravelAgent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereTxnno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereVtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Paycharge whereVtype($value)
 * @mixin \Eloquent
 */
class Paycharge extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'paycharge';

    protected $fillable = [
        'propertyid',
        'docid',
        'sno',
        'sno1',
        'vtype',
        'vno',
        'vprefix',
        'vdate',
        'vtime',
        'guestprof',
        'comp_code',
        'travel_agent',
        'comments',
        'paycode',
        'paytype',
        'amtcr',
        'amtdr',
        'tipamt',
        'roomcat',
        'roomtype',
        'roomno',
        'foliono',
        'msno1',
        'cardno',
        'cardholder',
        'chqno',
        'chqdate',
        'expdate',
        'bookno',
        'booktype',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae',
        'restcode',
        'billamount',
        'contraid',
        'dbtchkin',
        'taxper',
        'onamt',
        'split',
        'billno',
        'modeset',
        'settledate',
        'batchno',
        'plancharge',
        'fixedchargecode',
        'relatdfoliono',
        'folionodocid',
        'refno',
        'plancode',
        'seqno',
        'relatedfolionodocid',
        'refdocid',
        'remarks',
        'au_name',
        'acreated_at',
        'aupdated_at',
        'taxcondamt',
        'taxstru',
        'agac',
        'txnno',
        'posted'
    ];
}
