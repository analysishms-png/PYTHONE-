<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $code
 * @property string $name
 * @property string $Activ
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property string $u_ae
 * @property \Illuminate\Support\Carbon $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls query()
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls whereActiv($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class Hrpayrolls extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';
    protected $table = 'desig';

    protected $fillable = [
        'propertyid',
        'code',
        'name',
        'Activ',
        'u_name',
        'created_at',
        'u_ae',
        'updated_at'
    ];
}
