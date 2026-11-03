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
 * @property string|null $delremark
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 query()
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereBasevalue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereDelremark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereSno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereTaxamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereTaxcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereTaxper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereVtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale2 whereVtype($value)
 * @mixin \Eloquent
 */
class Sale2 extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'sale2';
    protected $primaryKey = 'docid';
    public $incrementing = false;
    protected $keyType = 'string';
    protected $fillable = [
        'delflag',
    ];
}
