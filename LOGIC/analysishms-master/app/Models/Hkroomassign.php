<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property string $propertyid
 * @property string|null $vdate
 * @property int $assno
 * @property string|null $vtime
 * @property string $code
 * @property string|null $supervisor
 * @property string|null $ctype
 * @property string|null $esttime
 * @property string $roomno
 * @property string $status
 * @property string $cleaningstatus
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|Hkroomassign newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Hkroomassign newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Hkroomassign query()
 * @method static \Illuminate\Database\Eloquent\Builder|Hkroomassign whereAssno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hkroomassign whereCleaningstatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hkroomassign whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hkroomassign whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hkroomassign whereCtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hkroomassign whereEsttime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hkroomassign whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hkroomassign wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hkroomassign whereRoomno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hkroomassign whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hkroomassign whereSupervisor($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hkroomassign whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hkroomassign whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hkroomassign whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hkroomassign whereVtime($value)
 * @mixin \Eloquent
 */
class Hkroomassign extends Model
{
    use HasFactory;

    protected $fillable = [
        'code',
        'propertyid',
        'vdate',
        'vtime',
        'roomno',
        'status',
        'u_name',
        'assno' 
    ];
}
