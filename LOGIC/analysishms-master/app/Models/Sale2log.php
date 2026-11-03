<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property int $sno
 * @property int $sno1
 * @property string $vtype
 * @property int $vno
 * @property string $vprefix
 * @property string $vtime
 * @property string $vdate
 * @property string $restcode
 * @property string $taxcode
 * @property string $basevalue
 * @property float $taxper
 * @property string $taxamt
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @property string $delflag
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log query()
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log whereBasevalue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log whereSno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log whereTaxamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log whereTaxcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log whereTaxper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log whereVtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2log whereVtype($value)
 * @mixin \Eloquent
 */
class Sale2log extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'sale2log';
    public $incrementing = true;

    protected $fillable = [
        'propertyid',
        'docid',
        'sno',
        'sno1',
        'vtype',
        'vno',
        'vprefix',
        'vtime',
        'vdate',
        'restcode',
        'taxcode',
        'basevalue',
        'taxper',
        'taxamt',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae',
        'delflag'
    ];
}
