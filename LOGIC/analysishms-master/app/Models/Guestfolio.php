<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property int|null $folio_no
 * @property int $sno1
 * @property string $nochargepost
 * @property string|null $vtype
 * @property string|null $vdate
 * @property string|null $vprefix
 * @property string|null $guestprof
 * @property string|null $name
 * @property string|null $add1
 * @property string|null $add2
 * @property string|null $city
 * @property int|null $nodays
 * @property string|null $remarks
 * @property string $pickupdrop
 * @property string|null $company
 * @property string|null $purvisit
 * @property string|null $arrfrom
 * @property string|null $destination
 * @property string|null $travelmode
 * @property string|null $vehiclenum
 * @property string|null $remark
 * @property string|null $rodisc
 * @property string|null $rsdisc
 * @property string|null $bookingdocid
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string|null $busssource
 * @property string|null $booking_source
 * @property string|null $depdate
 * @property string|null $travelagent
 * @property int|null $roomcount
 * @property int|null $mfoliono
 * @property string|null $comp
 * @property string|null $mfolionodocid
 * @property int|null $refno
 * @property int|null $bookingsno
 * @property string|null $refbookno
 * @property string $whatsappcheckout
 * @property string $suppressrate
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio query()
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereAdd1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereAdd2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereArrfrom($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereBookingSource($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereBookingdocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereBookingsno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereBusssource($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereCity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereComp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereCompany($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereDepdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereDestination($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereFolioNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereGuestprof($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereMfoliono($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereMfolionodocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereNochargepost($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereNodays($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio wherePickupdrop($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio wherePurvisit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereRefbookno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereRefno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereRodisc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereRoomcount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereRsdisc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereSno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereSuppressrate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereTravelagent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereTravelmode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereVehiclenum($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereVtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Guestfolio whereWhatsappcheckout($value)
 * @mixin \Eloquent
 */
class Guestfolio extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'guestfolio';

    protected $fillable = [
        'id',
        'propertyid',
        'docid',
        'folio_no',
        'sno1',
        'vtype',
        'vdate',
        'vprefix',
        'guestprof',
        'name',
        'add1',
        'add2',
        'city',
        'nodays',
        'remarks',
        'pickupdrop',
        'company',
        'purvisit',
        'arrfrom',
        'destination',
        'travelmode',
        'vehiclenum',
        'remark',
        'rodisc',
        'rsdisc',
        'bookingdocid',
        'u_name',
        'u_ae',
        'busssource',
        'booking_source',
        'depdate',
        'travelagent',
        'roomcount',
        'mfoliono',
        'comp',
        'mfolionodocid',
        'refno',
        'bookingsno',
        'refbookno',
        'whatsappcheckout',
        'suppressrate',
    ];
}
