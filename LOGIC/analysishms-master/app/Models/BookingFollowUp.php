<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $propertyid
 * @property int $inqno
 * @property int $sno
 * @property string $date
 * @property string $time
 * @property string $nextfollowupdate
 * @property string $remark
 * @property string $status
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property string $u_ae
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string $created_at
 * @method static \Illuminate\Database\Eloquent\Builder|BookingFollowUp newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BookingFollowUp newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BookingFollowUp query()
 * @method static \Illuminate\Database\Eloquent\Builder|BookingFollowUp whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingFollowUp whereDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingFollowUp whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingFollowUp whereInqno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingFollowUp whereNextfollowupdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingFollowUp wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingFollowUp whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingFollowUp whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingFollowUp whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingFollowUp whereTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingFollowUp whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingFollowUp whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingFollowUp whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingFollowUp whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class BookingFollowUp extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    protected $table = 'booking_follow_ups';
    protected $fillable = [
        'propertyid',
        'inqno',
        'sno',
        'date',
        'time',
        'nextfollowupdate',
        'remark',
        'status',
        'u_name',
        'created_at',
        'u_ae',
    ];
}
