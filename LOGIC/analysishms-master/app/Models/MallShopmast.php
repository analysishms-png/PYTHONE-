<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int|null $floorid
 * @property string $shopcode
 * @property string|null $shopname
 * @property string|null $shoptype
 * @property string|null $businesscategory
 * @property string|null $carpetarea
 * @property string|null $builtuparea
 * @property string|null $chargeablearea
 * @property string|null $areaunit
 * @property string|null $frontage
 * @property string|null $ceilingheight
 * @property string|null $shopstatus
 * @property string|null $electricitymeterno
 * @property int|null $u_name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property string $u_ae
 * @property int|null $activeyn
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast query()
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast whereActiveyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast whereAreaunit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast whereBuiltuparea($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast whereBusinesscategory($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast whereCarpetarea($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast whereCeilingheight($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast whereChargeablearea($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast whereElectricitymeterno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast whereFloorid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast whereFrontage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast whereShopcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast whereShopname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast whereShopstatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast whereShoptype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallShopmast whereUName($value)
 * @mixin \Eloquent
 */
class MallShopmast extends Model
{
    use HasFactory;

    protected $table = 'mall_shopmast';

    

    public $incrementing = true;
    protected $keyType   = 'int';

    const CREATED_AT = 'created_at';
    const UPDATED_AT = null;

    protected $fillable = [
        'propertyid',
        'floorid',
        'shopcode',
        'shopname',
        'shoptype',
        'businesscategory',
        'carpetarea',
        'builtuparea',
        'chargeablearea',
        'areaunit',
        'frontage',
        'ceilingheight',
        'shopstatus',
        'electricitymeterno',
        'u_name',
        'created_at',
        'u_ae',
        'activeyn',
    ];
}
