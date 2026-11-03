<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $cashpurchaseac
 * @property string $purchasegodown
 * @property string $modifyaccountfield
 * @property int $blockdays
 * @property string $itemratemrbasedon
 * @property string $itemratepbillbasedon
 * @property string $storeissuerequistion
 * @property string $roundofftype
 * @property string|null $allow_future_date_pr
 * @property int $autofill_kitchen_closing
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroInventory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroInventory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroInventory query()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroInventory whereAllowFutureDatePr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroInventory whereAutofillKitchenClosing($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroInventory whereBlockdays($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroInventory whereCashpurchaseac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroInventory whereItemratemrbasedon($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroInventory whereItemratepbillbasedon($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroInventory whereModifyaccountfield($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroInventory wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroInventory wherePurchasegodown($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroInventory whereRoundofftype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroInventory whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroInventory whereStoreissuerequistion($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroInventory whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroInventory whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroInventory whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroInventory whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class EnviroInventory extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'enviro_inventory';
}
