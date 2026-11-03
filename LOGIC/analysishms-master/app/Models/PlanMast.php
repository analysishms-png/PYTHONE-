<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $pcode
 * @property string $name
 * @property int|null $total
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string|null $activeYN
 * @property string|null $sysYN
 * @property string|null $room_per
 * @property string|null $room_rate
 * @property string $desc1
 * @property string $desc2
 * @property string|null $package_amount
 * @property string|null $disc_appYN
 * @property string|null $disc_appON
 * @property int|null $adults
 * @property int|null $childs
 * @property string|null $rrinc_tax
 * @property string|null $room_cat
 * @property string|null $tarrif
 * @property string|null $room_tax_stru
 * @property string|null $map_code
 * @property string $rateplancode
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast query()
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereActiveYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereAdults($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereChilds($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereDesc1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereDesc2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereDiscAppON($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereDiscAppYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereMapCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast wherePackageAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast wherePcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereRateplancode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereRoomCat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereRoomPer($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereRoomRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereRoomTaxStru($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereRrincTax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereTarrif($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PlanMast whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class PlanMast extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'plan_mast';
}
