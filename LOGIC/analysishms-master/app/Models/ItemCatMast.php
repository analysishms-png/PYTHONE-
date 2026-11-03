<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $Code
 * @property string $Name
 * @property string $RoundOff
 * @property string $AcCode
 * @property string $U_Name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $U_AE
 * @property string $OutletYN
 * @property string $Flag
 * @property string $TaxStru
 * @property string $CatType
 * @property string $cattyper
 * @property string $RestCode
 * @property string $DrCr
 * @property string $RevCode
 * @property string $ActiveYN
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast query()
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast whereAcCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast whereActiveYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast whereCatType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast whereCattyper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast whereDrCr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast whereFlag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast whereOutletYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast whereRestCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast whereRevCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast whereRoundOff($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast whereTaxStru($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast whereUAE($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast whereUEntDt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemCatMast whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class ItemCatMast extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'itemcatmast';
}
