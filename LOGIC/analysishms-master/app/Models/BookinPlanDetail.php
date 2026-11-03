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
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail query()
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail whereFixrate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail whereFoliono($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail whereNetplanamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail whereNoofdays($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail wherePcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail wherePlanper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail whereRevCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail whereRoomRateBeforeTax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail whereRoomno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail whereSno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail whereTaxinc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail whereTaxstru($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail whereTotalRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookinPlanDetail whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class BookinPlanDetail extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    
    protected $table = 'bookingplandetails';

    protected $fillable = [
        'id',
        'propertyid',
        'foliono',
        'docid',
        'sno',
        'sno1',
        'roomno',
        'rev_code',
        'taxinc',
        'taxstru',
        'fixrate',
        'noofdays',
        'planper',
        'amount',
        'room_rate_before_tax',
        'total_rate',
        'pcode',
        'netplanamt',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae',
    ];
}
