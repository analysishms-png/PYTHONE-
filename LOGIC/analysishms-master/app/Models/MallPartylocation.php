<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $tenantcode
 * @property string $servicecode
 * @property string $shopcode
 * @property string|null $activeyn
 * @property int|null $u_name
 * @property string|null $u_enddt
 * @property string|null $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|MallPartylocation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MallPartylocation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MallPartylocation query()
 * @method static \Illuminate\Database\Eloquent\Builder|MallPartylocation whereActiveyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallPartylocation wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallPartylocation whereServicecode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallPartylocation whereShopcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallPartylocation whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallPartylocation whereTenantcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallPartylocation whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallPartylocation whereUEnddt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallPartylocation whereUName($value)
 * @mixin \Eloquent
 */
class MallPartylocation extends Model
{
    protected $table      = 'mall_partylocation';
    

    public $timestamps = false;

    protected $fillable = [
        'propertyid',
        'tenantcode',
        'servicecode',
        'sno',
        'shopcode',
        'activeyn',
        'u_name',
        'created_at',
        'u_ae',
    ];
}