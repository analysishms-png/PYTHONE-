<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $scode
 * @property string $name
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string|null $sysYN
 * @property string|null $activeYN
 * @method static \Illuminate\Database\Eloquent\Builder|ServerMast newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ServerMast newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ServerMast query()
 * @method static \Illuminate\Database\Eloquent\Builder|ServerMast whereActiveYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ServerMast whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ServerMast wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ServerMast whereScode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ServerMast whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ServerMast whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ServerMast whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ServerMast whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ServerMast whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ServerMast whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class ServerMast extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'server_mast';
}
