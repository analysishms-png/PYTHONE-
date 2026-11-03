<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property string $propertyid
 * @property string $docid
 * @property int $sno
 * @property string $vtype
 * @property string $vtime
 * @property int $vno
 * @property string $vprefix
 * @property string $vdate
 * @property string $restcode
 * @property string $roomcat
 * @property string $roomtype
 * @property string $roomno
 * @property string $item
 * @property string $qty
 * @property string $rate
 * @property string $amount
 * @property string $voidyn
 * @property string $waiter
 * @property string $pending
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @property string $delflag
 * @property string $contradocid
 * @property int $contrsno
 * @property string $reasons
 * @property string $ncreason
 * @property string $remarks
 * @property string $nckot
 * @property string $nctype
 * @property int $freesno
 * @property string $printed
 * @property string $description
 * @property string $schemecode
 * @property string $itemrestcode
 * @property int $pax
 * @property int $tokenno
 * @property string $printflag
 * @property string $mergedwith
 * @method static \Illuminate\Database\Eloquent\Builder|Kot newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Kot newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Kot query()
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereContradocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereContrsno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereFreesno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereItem($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereItemrestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereMergedwith($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereNckot($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereNcreason($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereNctype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot wherePax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot wherePending($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot wherePrinted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot wherePrintflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereQty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereReasons($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereRoomcat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereRoomno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereRoomtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereSchemecode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereTokenno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereVoidyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereVtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereVtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Kot whereWaiter($value)
 * @mixin \Eloquent
 */
class Kot extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'kot';
}
