<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $ucode
 * @property string $name
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string|null $sysYN
 * @property string|null $activeYN
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast query()
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast whereActiveYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast whereUcode($value)
 * @mixin \Eloquent
 */
class UnitMast extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'unitmast';

    protected $fillable = [
        'ucode',
        'name',
        'propertyid',
        'activeYN',
        'sysYN',
        'u_name',
        'u_ae',
        'created_at',
        'updated_at',
    ];
}
