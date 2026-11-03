<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $code
 * @property string $name
 * @property string $empcode
 * @property int $activeyn
 * @property string $u_name
 * @property string $created_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|HkSupervisor newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HkSupervisor newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HkSupervisor query()
 * @method static \Illuminate\Database\Eloquent\Builder|HkSupervisor whereActiveyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkSupervisor whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkSupervisor whereEmpcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkSupervisor whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkSupervisor wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkSupervisor whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkSupervisor whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkSupervisor whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkSupervisor whereUName($value)
 * @mixin \Eloquent
 */
class HkSupervisor extends Model
{
    protected $table = 'hksupervisor';

    

    public $timestamps = false;

    protected $fillable = [
        'propertyid',
        'code',
        'name',
        'empcode',
        'activeyn',
        'u_name',
        'created_at',
        'u_ae',
    ];
}
