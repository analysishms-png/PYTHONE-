<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $eglobepropertyid
 * @property string $name
 * @property string $url
 * @property string $username
 * @property string $password
 * @property string $apikey
 * @property string $authorization
 * @property string $providercode
 * @property string|null $postdata
 * @property string $response
 * @property int $httpcode
 * @property string $checkyn
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes query()
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes whereApikey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes whereAuthorization($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes whereCheckyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes whereEglobepropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes whereHttpcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes wherePostdata($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes whereProvidercode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes whereResponse($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes whereUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelPushes whereUsername($value)
 * @mixin \Eloquent
 */
class ChannelPushes extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'channelpushes';
}
