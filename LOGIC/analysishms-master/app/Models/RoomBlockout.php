<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $roomcode
 * @property string $block
 * @property string $reasons
 * @property string $fromdate
 * @property string $todate
 * @property string $type
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @property string $vtime
 * @property string $guestname
 * @property string $mobileno
 * @property string|null $cleardate
 * @property string|null $cleartime
 * @property string $clearuser
 * @property string $clearremark
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout query()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout whereBlock($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout whereCleardate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout whereClearremark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout whereCleartime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout whereClearuser($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout whereFromdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout whereGuestname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout whereMobileno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout whereReasons($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout whereRoomcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout whereTodate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomBlockout whereVtime($value)
 * @mixin \Eloquent
 */
class RoomBlockout extends Model
{
    use HasFactory;
    
    public $incrementing = false;
    protected $table = 'roomblockout';
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
}
