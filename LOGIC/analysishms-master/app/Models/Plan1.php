<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $pcode
 * @property string|null $rev_code
 * @property int $sno
 * @property string|null $tax_inc
 * @property string|null $tax_stru
 * @property int|null $adult
 * @property int|null $child
 * @property string|null $plan_per
 * @property string|null $net_amount
 * @property string|null $fix_rate
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string|null $sysYN
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 query()
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 whereAdult($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 whereChild($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 whereFixRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 whereNetAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 wherePcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 wherePlanPer($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 whereRevCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 whereTaxInc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 whereTaxStru($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Plan1 whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class Plan1 extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'plan1';
}
