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
 * @property int $vprefix
 * @property string $vdate
 * @property string $restcode
 * @property string $taxcode
 * @property string $basevalue
 * @property string $taxper
 * @property string $taxamt
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 query()
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 whereBasevalue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 whereSno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 whereTaxamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 whereTaxcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 whereTaxper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2 whereVtype($value)
 * @mixin \Eloquent
 */
class HallSale2 extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'hallsale2';
}
