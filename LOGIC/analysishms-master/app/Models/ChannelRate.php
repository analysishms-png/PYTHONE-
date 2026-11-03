<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $vdate
 * @property string $retcode
 * @property int $rcode
 * @property string $name
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelRate newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelRate newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelRate query()
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelRate whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelRate wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelRate whereRcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelRate whereRetcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelRate whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelRate whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelRate whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelRate whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelRate whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelRate whereVdate($value)
 * @mixin \Eloquent
 */
class ChannelRate extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'channelrate';
}
