<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $empcode
 * @property string $otdate
 * @property string $ottime
 * @property string $rate
 * @property string $amount
 * @property string $remark
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @property-read \App\Models\Employee|null $employee
 * @method static \Illuminate\Database\Eloquent\Builder|Overtime newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Overtime newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Overtime query()
 * @method static \Illuminate\Database\Eloquent\Builder|Overtime whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Overtime whereEmpcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Overtime whereOtdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Overtime whereOttime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Overtime wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Overtime whereRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Overtime whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Overtime whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Overtime whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Overtime whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Overtime whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Overtime whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class Overtime extends Model
{
    use HasFactory;

    protected $table = 'overtime';
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

    protected $fillable = [
        'propertyid',
        'empcode',
        'otdate',
        'ottime',
        'rate',
        'amount',
        'remark',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae'
    ];

    public function employee()
    {
        return $this->belongsTo(Employee::class, 'empcode', 'code');
    }
}
