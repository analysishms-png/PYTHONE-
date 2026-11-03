<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $vdate
 * @property string $vprefix
 * @property string $empcode
 * @property string $firstshift
 * @property string $secondshift
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_name
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|Attendance newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Attendance newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Attendance query()
 * @method static \Illuminate\Database\Eloquent\Builder|Attendance whereEmpcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Attendance whereFirstshift($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Attendance wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Attendance whereSecondshift($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Attendance whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Attendance whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Attendance whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Attendance whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Attendance whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Attendance whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Attendance whereVprefix($value)
 * @mixin \Eloquent
 */
class Attendance extends Model
{
    use HasFactory;
    
    protected $table = 'attendance';
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

    protected $fillable = [
        'id',
        'propertyid',
        'vdate',
        'date_from',
        'date_to',
        'vprefix',
        'empcode',
        'firstshift',
        'secondshift',
        'created_at',
        'updated_at',
        'u_name',
        'u_ae'
    ];

}
