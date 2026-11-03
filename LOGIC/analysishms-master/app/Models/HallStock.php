<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property int $sno
 * @property string $vtype
 * @property int $vno
 * @property int $vprefix
 * @property string $vdate
 * @property string $party
 * @property string $restcode
 * @property string $item
 * @property string $qtyiss
 * @property string $unit
 * @property string $rate
 * @property string $amount
 * @property string $taxamt
 * @property string $taxper
 * @property string $discper
 * @property string $discamt
 * @property string $remarks
 * @property string $total
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock query()
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereDiscamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereDiscper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereItem($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereParty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereQtyiss($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereTaxamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereTaxper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereUnit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStock whereVtype($value)
 * @mixin \Eloquent
 */
class HallStock extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'hallstock';
}
