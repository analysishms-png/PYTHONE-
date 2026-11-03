<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $foliono
 * @property string $docid
 * @property int $sno
 * @property int $sno1
 * @property string $roomno
 * @property string $rev_code
 * @property string $taxinc
 * @property string $taxstru
 * @property string $fixrate
 * @property int $noofdays
 * @property string $planper
 * @property string $amount
 * @property string $room_rate_before_tax
 * @property string $total_rate
 * @property string $pcode
 * @property string $netplanamt
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail query()
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail whereFixrate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail whereFoliono($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail whereNetplanamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail whereNoofdays($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail wherePcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail wherePlanper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail whereRevCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail whereRoomRateBeforeTax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail whereRoomno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail whereSno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail whereTaxinc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail whereTaxstru($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail whereTotalRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanDetail whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class PlanDetail extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'plandetails';

    protected $fillable = [
        'propertyid',
        'foliono',
        'docid',
        'sno',
        'sno1',
        'roomno',
        'room_rate_before_tax',
        'total_rate',
        'pcode',
        'noofdays',
        'rev_code',
        'fixrate',
        'planper',
        'amount',
        'netplanamt',
        'taxinc',
        'taxstru',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae'
    ];
}
