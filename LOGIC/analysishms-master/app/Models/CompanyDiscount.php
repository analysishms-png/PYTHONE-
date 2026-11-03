<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $compcode
 * @property int $sno
 * @property int $roomcatcode
 * @property int $adult
 * @property string $fixrate
 * @property string $plan
 * @property string $planamount
 * @property string $taxinc
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|CompanyDiscount newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CompanyDiscount newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CompanyDiscount query()
 * @method static \Illuminate\Database\Eloquent\Builder|CompanyDiscount whereAdult($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompanyDiscount whereCompcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompanyDiscount whereFixrate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompanyDiscount wherePlan($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompanyDiscount wherePlanamount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompanyDiscount wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompanyDiscount whereRoomcatcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompanyDiscount whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompanyDiscount whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompanyDiscount whereTaxinc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompanyDiscount whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompanyDiscount whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompanyDiscount whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompanyDiscount whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class CompanyDiscount extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'companydiscount';

    protected $fillable = [
        'id',
        'propertyid',
        'compcode',
        'sno',
        'roomcatcode',
        'adult',
        'fixrate',
        'plan',
        'planamount',
        'taxinc',
        'u_name',
        'created_at',
        'u_ae'
    ];
}
