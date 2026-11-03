<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $chargecode
 * @property string $chargename
 * @property string|null $shortcode
 * @property string|null $chargecategory
 * @property string|null $calculationbasis
 * @property string|null $unit
 * @property string|null $taxstru
 * @property int|null $escalationyn
 * @property string|null $billingfrequency
 * @property string|null $accountcode
 * @property int|null $u_name
 * @property string|null $created_at
 * @property string $u_ae
 * @property int|null $activeyn
 * @method static \Illuminate\Database\Eloquent\Builder|MallChargemast newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MallChargemast newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MallChargemast query()
 * @method static \Illuminate\Database\Eloquent\Builder|MallChargemast whereAccountcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallChargemast whereActiveyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallChargemast whereBillingfrequency($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallChargemast whereCalculationbasis($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallChargemast whereChargecategory($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallChargemast whereChargecode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallChargemast whereChargename($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallChargemast whereEscalationyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallChargemast wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallChargemast whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallChargemast whereTaxstru($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallChargemast whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallChargemast whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallChargemast whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallChargemast whereUnit($value)
 * @mixin \Eloquent
 */
class MallChargemast extends Model
{
    protected $table      = 'mall_chargemast';
    

    public $timestamps = false;

    protected $fillable = [
        'propertyid',
        'chargecode',
        'chargename',
        'shortcode',
        'saccode',
        'chargecategory',
        'calculationbasis',
        'unit',
        'taxstru',
        'escalationyn',
        'billingfrequency',
        'accountcode',
        'u_name',
        'created_at',
        'u_ae',
        'activeyn',
    ];
}
