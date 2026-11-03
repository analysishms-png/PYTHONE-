<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property string $propertyid
 * @property string $code
 * @property string $name
 * @property string $type
 * @property string $location
 * @property string $company_name
 * @property string $suppler_name
 * @property string $purchase_date
 * @property string $purchase_bill_no
 * @property string $assets_image
 * @property string $bill_image
 * @property \Illuminate\Support\Carbon $create_at
 * @property \Illuminate\Support\Carbon $update_at
 * @property string $status
 * @method static \Illuminate\Database\Eloquent\Builder|Assets newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Assets newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Assets query()
 * @method static \Illuminate\Database\Eloquent\Builder|Assets whereAssetsImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Assets whereBillImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Assets whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Assets whereCompanyName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Assets whereCreateAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Assets whereLocation($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Assets whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Assets wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Assets wherePurchaseBillNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Assets wherePurchaseDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Assets whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Assets whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Assets whereSupplerName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Assets whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Assets whereUpdateAt($value)
 * @mixin \Eloquent
 */
class Assets extends Model
{
    use HasFactory;

    const CREATED_AT = 'create_at';
    const UPDATED_AT = 'update_at';

    protected $table = 'assets';
    


    protected $fillable =
    [
        'id',
        'propertyid',
        'code',
        'name',
        'location',
        'type',
        'company_name',
        'suppler_name',
        'purchase_date',
        'purchase_bill_no',
        'assets_image',
        'bill_image',
        'status',
    ];
}
