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
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst query()
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereDiscamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereDiscper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereItem($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereParty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereQtyiss($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereTaxamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereTaxper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereUnit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallStockEst whereVtype($value)
 * @mixin \Eloquent
 */
class HallStockEst extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'hallstockest';
}
