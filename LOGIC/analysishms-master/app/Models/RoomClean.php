<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $hosuekeeper
 * @property string $roomno
 * @property string $remarks
 * @property string $type
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|RoomClean newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomClean newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomClean query()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomClean whereHosuekeeper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomClean wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomClean whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomClean whereRoomno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomClean whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomClean whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomClean whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomClean whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomClean whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomClean whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class RoomClean extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'roomclean';
}
