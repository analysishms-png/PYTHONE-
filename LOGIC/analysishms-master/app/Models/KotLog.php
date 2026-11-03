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
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog query()
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereContradocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereContrsno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereFreesno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereItem($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereItemrestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereMergedwith($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereNckot($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereNcreason($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereNctype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog wherePax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog wherePending($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog wherePrinted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog wherePrintflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereQty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereReasons($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereRoomcat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereRoomno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereRoomtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereSchemecode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereTokenno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereVoidyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereVtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereVtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|KotLog whereWaiter($value)
 * @mixin \Eloquent
 */
class KotLog extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'kotlog';
}
