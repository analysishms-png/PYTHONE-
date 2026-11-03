<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $group_code
 * @property string $group_name
 * @property string $maingroupcode
 * @property string $maingroupname
 * @property string $nature
 * @property string $sys_group
 * @property string $undergroup
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup query()
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereGroupCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereGroupName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereMaingroupcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereMaingroupname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereNature($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereSysGroup($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereUndergroup($value)
 * @mixin \Eloquent
 */
class ACGroup extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'acgroup';

    protected $fillable = [
        'group_code',
        'group_name',
        'maingroupcode',
        'maingroupname',
        'nature',
        'propertyid',
        'created_at',
        'updated_at',
        'u_name'
    ];
}
