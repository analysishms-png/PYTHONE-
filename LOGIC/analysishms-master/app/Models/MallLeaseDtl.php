<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $lease_id
 * @property int $propertyid
 * @property string|null $shopcode
 * @property int $unitid
 * @property string|null $unittype
 * @property string|null $carpetarea
 * @property string|null $builtuparea
 * @property string|null $chargeablearea
 * @property string|null $camrate
 * @property string|null $mincam
 * @property string|null $currentcam
 * @property string|null $areaunit
 * @property string|null $frontage
 * @property string|null $ceilingheight
 * @property string|null $possession_status
 * @property string|null $fitoutstatus
 * @property string|null $storestatus
 * @property string|null $effectivefrom
 * @property string|null $effectiveto
 * @property string|null $remarks
 * @property string $u_ae
 * @property int|null $u_name
 * @property string|null $created_at
 * @property int|null $activeyn
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl query()
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereActiveyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereAreaunit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereBuiltuparea($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereCarpetarea($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereCeilingheight($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereChargeablearea($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereEffectivefrom($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereEffectiveto($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereFitoutstatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereFloorid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereFrontage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereLeaseId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl wherePossessionStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereStorestatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereUnitid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseDtl whereUnittype($value)
 * @mixin \Eloquent
 */
class MallLeaseDtl extends Model
{
    protected $table      = 'mall_lease_dtl';
    

    public $timestamps = false;

    protected $fillable = [
        'lease_id',
        'propertyid',
        'shopcode',
        'unitid',
        'unittype',
        'carpetarea',
        'builtuparea',
        'chargeablearea',
        'renttype',
        'rentbasis',
        'rentrate',
        'minimumrent',
        'currentrent',
        'camrate',
        'mincam',
        'currentcam',
        'areaunit',       'frontage',
        'ceilingheight',
        'possession_status',
        'fitoutstatus',
        'storestatus',
        'effectivefrom',
        'effectiveto',
        'remarks',
        'u_ae',
        'u_name',
        'created_at',
        'activeyn',
    ];
}
