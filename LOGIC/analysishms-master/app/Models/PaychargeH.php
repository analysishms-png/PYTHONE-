<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property int $sno
 * @property string|null $vtype
 * @property int|null $vno
 * @property string|null $vprefix
 * @property int $fpno
 * @property string|null $vdate
 * @property string|null $vtime
 * @property string|null $comp_code
 * @property string|null $comments
 * @property string $paycode
 * @property string|null $paytype
 * @property string|null $amtcr
 * @property string|null $amtdr
 * @property string|null $roomcat
 * @property string|null $roomno
 * @property string|null $cardno
 * @property string|null $cardholder
 * @property string|null $chqno
 * @property string|null $chqdate
 * @property string|null $expdate
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string|null $restcode
 * @property string|null $billamount
 * @property string|null $contradocid
 * @property string $postdocId
 * @property string $taxper
 * @property string|null $onamt
 * @property int|null $split
 * @property int|null $billno
 * @property string|null $batchno
 * @property string|null $au_name
 * @property string|null $acreated_at
 * @property string|null $aupdated_at
 * @property string|null $taxstru
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH query()
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereAmtcr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereAmtdr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereAuEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereAuName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereAuUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereBatchno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereBillamount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereBillno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereCardholder($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereCardno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereChqdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereChqno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereComments($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereCompCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereContradocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereExpdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereFpno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereOnamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH wherePaycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH wherePaytype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH wherePostdocId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereRoomcat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereRoomno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereSplit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereTaxper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereTaxstru($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereVtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaychargeH whereVtype($value)
 * @mixin \Eloquent
 */
class PaychargeH extends Model
{
    use HasFactory;

    protected $table = 'paychargeh';
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
}
