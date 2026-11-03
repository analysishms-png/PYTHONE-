<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property string $header_handle
 * @property string $media_id
 * @property string|null $expire_at
 * @property string $type
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|MuzztechSession newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MuzztechSession newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MuzztechSession query()
 * @method static \Illuminate\Database\Eloquent\Builder|MuzztechSession whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MuzztechSession whereExpireAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MuzztechSession whereHeaderHandle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MuzztechSession whereMediaId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MuzztechSession wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MuzztechSession whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MuzztechSession whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MuzztechSession whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MuzztechSession whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class MuzztechSession extends Model
{
    use HasFactory;
    protected $table = 'muzztech_session';

    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

    protected $fillable = [
        'propertyid',
        'docid',
        'header_handle',
        'media_id',
        'expire_at'
    ];

}
