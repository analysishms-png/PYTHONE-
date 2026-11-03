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
 * @property string|null $valiedup
 * @property string $vtype
 * @property string $vprefix
 * @property string $partycode
 * @property string $itemcode
 * @property float $qty
 * @property float $instock
 * @property string $unit
 * @property float $rate
 * @property float $amount
 * @property string $indentdocId
 * @property int $indentsno
 * @property string $specification
 * @property string $taxstru
 * @property float $taxamt
 * @property float $total
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property string $u_ae
 * @property string $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem query()
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereIndentdocId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereIndentsno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereInstock($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereItemcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem wherePartycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereQty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereSpecification($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereTaxamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereTaxstru($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereUnit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereValiedup($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|QuotationItem whereVtype($value)
 * @mixin \Eloquent
 */
class QuotationItem extends Model
{
  use HasFactory;


    protected $table = 'quotation1';

    
    const CREATED_AT = 'created_at';

    protected $fillable = [
        'propertyid',
        'docid',
        'sno',
        'vno',
        'vdate',
        'vtype',
        'valiedup',
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
