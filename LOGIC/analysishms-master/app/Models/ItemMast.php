<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $Property_ID
 * @property int $Code
 * @property string $codeold
 * @property string $Name
 * @property string $itemcodeold
 * @property string $Unit
 * @property string $Type
 * @property string $cattype
 * @property int|null $dishtype
 * @property int|null $favourite
 * @property int $ItemGroup
 * @property string $RestCode
 * @property string $PurchRate
 * @property string $MinStock
 * @property string $MaxStock
 * @property string $ReStock
 * @property string $DiscApp
 * @property string $RateEdit
 * @property float|null $LPurRate
 * @property string|null $LPurDate
 * @property string $U_Name
 * @property string $created_at
 * @property \Illuminate\Support\Carbon|null $u_updaedt
 * @property string $U_AE
 * @property string $ItemCatCode
 * @property int $DispCode
 * @property string $Kitchen
 * @property string $ConvRatio
 * @property string $IssueUnit
 * @property string $SChrgApp
 * @property string $Specification
 * @property string $RateIncTax
 * @property string $ActiveYN
 * @property string $NType
 * @property string $ItemType
 * @property string $BarCode
 * @property string $HSNCode
 * @property string $LabelName
 * @property string $LabelQty
 * @property string $LabelRemark1
 * @property string $LabelRemark2
 * @property string $LabelRemark3
 * @property string $LabelRemark4
 * @property string $iempic
 * @property int $expiry_applicable
 * @property string $wtqty
 * @property int $Pitemcode
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast query()
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereActiveYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereBarCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereCattype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereCodeold($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereConvRatio($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereDiscApp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereDishtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereDispCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereExpiryApplicable($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereFavourite($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereHSNCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereIempic($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereIssueUnit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereItemCatCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereItemGroup($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereItemType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereItemcodeold($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereKitchen($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereLPurDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereLPurRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereLabelName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereLabelQty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereLabelRemark1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereLabelRemark2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereLabelRemark3($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereLabelRemark4($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereMaxStock($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereMinStock($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereNType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast wherePitemcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast wherePropertyID($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast wherePurchRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereRateEdit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereRateIncTax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereReStock($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereRestCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereSChrgApp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereSpecification($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereUAE($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereUEntDt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereUUpdaedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereUnit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemMast whereWtqty($value)
 * @mixin \Eloquent
 */
class ItemMast extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'u_updaedt';
    protected $table    = 'itemmast';
    protected $guarded  = [];
}
