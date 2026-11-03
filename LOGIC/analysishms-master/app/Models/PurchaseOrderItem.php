<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property int $sno
 * @property int $vno
 * @property string $vdate
 * @property string $vtype
 * @property string $vprefix
 * @property string $partycode
 * @property string $itemcode
 * @property string $qty
 * @property string $instock
 * @property string $unit
 * @property string $rate
 * @property string $amount
 * @property string $indentdocId
 * @property int $indentsno
 * @property string $specification
 * @property string $taxstru
 * @property string $taxamt
 * @property string $total
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property string $u_ae
 * @property string $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem query()
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereIndentdocId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereIndentsno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereInstock($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereItemcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem wherePartycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereQty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereSpecification($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereTaxamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereTaxstru($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereUnit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrderItem whereVtype($value)
 * @mixin \Eloquent
 */
class PurchaseOrderItem extends Model
{
    use HasFactory;


    protected $table = 'porder1';

    
    const CREATED_AT = 'created_at';

    protected $fillable = [
        'propertyid',
        'docid',
        'sno',
        'vno',
        'vdate',
        'vtype',
        'vprefix',
        'partycode', // 'partyname',
        'itemcode',
        'qty',
        'instock',
        'unit',
        'rate',
        'amount',
        'indentdocid',
        'indentsno',
        'specification',
        'taxstru',
        'taxamt',
        'total',
        'u_name',
        'created_at',
        'updated_at',
    ];
}
