<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $vdate
 * @property string $retcode
 * @property string $price
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelDerived newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelDerived newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelDerived query()
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelDerived wherePrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelDerived wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelDerived whereRetcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelDerived whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelDerived whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelDerived whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelDerived whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelDerived whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelDerived whereVdate($value)
 * @mixin \Eloquent
 */
class ChannelDerived extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'channelderived';
}
