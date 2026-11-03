<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MallShopPowerConsumption extends Model
{
    protected $table = 'mall_shoppowerconsumption';

    public $incrementing = true;

    protected $primaryKey = 'id';

    protected $keyType = 'int';

    public $timestamps = true;

    protected $fillable = [
        'property_id',
        'shop_code',
        'month',
        'floor',
        'shop',
        'store',
        'on_date_kwh',
        'prev_dt_kwh',
        'consumption_kwh',
        'kesco_percentage',
        'dg_percentage',
        'kesco_rate',
        'dg_rate',
        'kesco',
        'dg',
        'total',
    ];
}
