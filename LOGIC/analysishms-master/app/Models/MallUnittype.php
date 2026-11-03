<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $typecode
 * @property string $typename
 * @property string|null $description
 * @property int|null $u_name
 * @property string|null $created_at
 * @property int|null $u_ae
 * @property int|null $activeyn
 * @method static \Illuminate\Database\Eloquent\Builder|MallUnittype newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MallUnittype newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MallUnittype query()
 * @method static \Illuminate\Database\Eloquent\Builder|MallUnittype whereActiveyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallUnittype whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallUnittype wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallUnittype whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallUnittype whereTypecode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallUnittype whereTypename($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallUnittype whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallUnittype whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallUnittype whereUName($value)
 * @mixin \Eloquent
 */
class MallUnittype extends Model
{
    protected $table      = 'mall_unittype';
    

    public $timestamps = false;

    protected $fillable = [
        'propertyid',
        'typecode',
        'typename',
        'description',
        'u_name',
        'created_at',
        'u_ae',
        'activeyn',
    ];
}
