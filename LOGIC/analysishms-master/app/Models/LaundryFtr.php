<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $hdr_sn
 * @property string $item_code
 * @property string $item_name
 * @property string $uom
 * @property int $send_qty
 * @property string|null $send_remarks
 * @property int|null $received_qty
 * @property int|null $good_qty
 * @property int|null $missing_qty
 * @property int|null $damage_qty
 * @property string|null $recv_remarks
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryFtr newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryFtr newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryFtr query()
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryFtr whereDamageQty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryFtr whereGoodQty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryFtr whereHdrSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryFtr whereItemCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryFtr whereItemName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryFtr whereMissingQty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryFtr wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryFtr whereReceivedQty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryFtr whereRecvRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryFtr whereSendQty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryFtr whereSendRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryFtr whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryFtr whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryFtr whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryFtr whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryFtr whereUom($value)
 * @mixin \Eloquent
 */
class LaundryFtr extends Model
{
    const CREATED_AT = 'created_at';
    const UPDATED_AT = null;          // laundry_ftr has no updated_at column

    protected $table = 'laundry_ftr';
    
    public $incrementing = true;
    protected $keyType = 'int';

    protected $fillable = [
        'propertyid', 'hdr_sn', 'item_code', 'item_name', 'uom',
        'send_qty', 'send_remarks',
        'received_qty', 'good_qty', 'missing_qty', 'damage_qty', 'recv_remarks',
        'u_name', 'created_at', 'u_ae',
    ];
}

