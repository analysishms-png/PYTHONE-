<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $str_code
 * @property string $name
 * @property int $sno
 * @property string $tax_code
 * @property string|null $nature
 * @property float|null $rate
 * @property string|null $limits
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string|null $sysYN
 * @property string|null $condapp
 * @property string|null $comp_operator
 * @property string|null $limit1
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure query()
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure whereCompOperator($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure whereCondapp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure whereLimit1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure whereLimits($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure whereNature($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure whereRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure whereStrCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure whereTaxCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TaxStructure whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class TaxStructure extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

    protected $table = 'taxstru';

    protected $fillable = [
        'id',
        'propertyid',
        'str_code',
        'name',
        'sno',
        'tax_code',
        'nature',
        'rate',
        'limits',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae',
        'sysYN',
        'condapp',
        'comp_operator',
        'limit1'
    ];
}
