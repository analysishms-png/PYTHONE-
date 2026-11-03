<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property string|null $name
 * @property int $sno
 * @property int $sno1
 * @property int|null $folioNo
 * @property string|null $vtype
 * @property string|null $vprefix
 * @property string|null $guestprof
 * @property string|null $roomcat
 * @property string|null $roomtype
 * @property string|null $roomno
 * @property int|null $ratecode
 * @property string|null $roomrate
 * @property string|null $chkindate
 * @property string|null $chkintime
 * @property int|null $adult
 * @property int|null $children
 * @property string|null $depdate
 * @property string|null $deptime
 * @property int $nodays
 * @property string|null $chkoutdate
 * @property string|null $chkouttime
 * @property string|null $type
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string|null $sysYN
 * @property string|null $activeYN
 * @property string|null $userchkoutdate
 * @property string|null $chkoutuser
 * @property string|null $newroomno
 * @property string|null $plancode
 * @property string|null $planamt
 * @property int|null $incinrate
 * @property string|null $plandisc
 * @property string|null $plandiscamt
 * @property string|null $plandiscappon
 * @property string|null $rrtaxinc
 * @property string|null $rodisc
 * @property string|null $rsdisc
 * @property int $roomcount
 * @property string|null $rrservicechrg
 * @property string|null $chngdate
 * @property int|null $extrabed
 * @property string $reasonrchange
 * @property string|null $roomtaxstru
 * @property string|null $rackrate
 * @property string $originalamount
 * @property string $leaderyn
 * @property int $ammendstay
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc query()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereActiveYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereAdult($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereAmmendstay($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereChildren($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereChkindate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereChkintime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereChkoutdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereChkouttime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereChkoutuser($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereChngdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereDepdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereDeptime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereExtrabed($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereFolioNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereGuestprof($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereIncinrate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereLeaderyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereNewroomno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereNodays($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereOriginalamount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc wherePlanamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc wherePlancode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc wherePlandisc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc wherePlandiscamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc wherePlandiscappon($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereRackrate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereRatecode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereReasonrchange($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereRodisc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereRoomcat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereRoomcount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereRoomno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereRoomrate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereRoomtaxstru($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereRoomtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereRrservicechrg($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereRrtaxinc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereRsdisc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereSno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereUserchkoutdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomOcc whereVtype($value)
 * @mixin \Eloquent
 */
class RoomOcc extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'roomocc';
}
