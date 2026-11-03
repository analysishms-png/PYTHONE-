<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property string $propertyid
 * @property string $code
 * @property string $name
 * @property string|null $dcode
 * @property string|null $u_name
 * @property string|null $created_at
 * @property string|null $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|HkService newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HkService newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HkService query()
 * @method static \Illuminate\Database\Eloquent\Builder|HkService whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkService whereDcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkService whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkService wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkService whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkService whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkService whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkService whereUName($value)
 * @mixin \Eloquent
 */
class HkService extends Model
{
    protected $table = 'hkservices';
    
    public $timestamps = false;
    protected $fillable = [
        'propertyid', 'code', 'name', 'dcode',
        'u_name', 'created_at', 'u_ae',
    ];
}
