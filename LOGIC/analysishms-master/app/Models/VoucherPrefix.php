<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property string|null $short_name
 * @property int $propertyid
 * @property string $v_type
 * @property string $date_from
 * @property string $date_to
 * @property int $prefix
 * @property int|null $start_srl_no
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string|null $sysYN
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherPrefix newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherPrefix newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherPrefix query()
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherPrefix whereDateFrom($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherPrefix whereDateTo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherPrefix wherePrefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherPrefix wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherPrefix whereShortName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherPrefix whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherPrefix whereStartSrlNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherPrefix whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherPrefix whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherPrefix whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherPrefix whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherPrefix whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherPrefix whereVType($value)
 * @mixin \Eloquent
 */
class VoucherPrefix extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    
    protected $table = 'voucher_prefix';

    protected $fillable = [
        'propertyid',
        'short_name',
        'v_type',
        'date_from',
        'date_to',
        'prefix',
        'description',
        'start_srl_no',
        'u_name',
        'u_ae'
    ];
}
