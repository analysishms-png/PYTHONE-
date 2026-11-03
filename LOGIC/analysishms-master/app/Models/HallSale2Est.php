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
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est query()
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est whereBasevalue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est whereSno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est whereTaxamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est whereTaxcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est whereTaxper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale2Est whereVtype($value)
 * @mixin \Eloquent
 */
class HallSale2Est extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'hallsale2est';
}
