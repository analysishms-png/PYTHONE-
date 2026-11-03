<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $roomno
 * @property string $room_cat
 * @property string $occtype
 * @property string|null $rate1
 * @property string|null $rate2
 * @property string|null $rate3
 * @property string|null $rate4
 * @property string|null $rate5
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string|null $sysYN
 * @method static \Illuminate\Database\Eloquent\Builder|RateList newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RateList newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RateList query()
 * @method static \Illuminate\Database\Eloquent\Builder|RateList whereOcctype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateList wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateList whereRate1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateList whereRate2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateList whereRate3($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateList whereRate4($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateList whereRate5($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateList whereRoomCat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateList whereRoomno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateList whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateList whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateList whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateList whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateList whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateList whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class RateList extends Model
{
    use HasFactory;

    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'rate_list';
}
