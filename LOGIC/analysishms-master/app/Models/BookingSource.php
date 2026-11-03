<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $name
 * @property int $bcode
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string|null $activeYN
 * @property string|null $sysYN
 * @method static \Illuminate\Database\Eloquent\Builder|BookingSource newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BookingSource newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BookingSource query()
 * @method static \Illuminate\Database\Eloquent\Builder|BookingSource whereActiveYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingSource whereBcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingSource whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingSource wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingSource whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingSource whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingSource whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingSource whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingSource whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingSource whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class BookingSource extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    
    protected $table = 'bookingsource';

    protected $fillable = [
        'id',
        'propertyid',
        'name',
        'bcode',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae',
        'activeYN',
        'sysYN',
    ];
}
