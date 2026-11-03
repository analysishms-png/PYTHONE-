<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $Sn
 * @property int $Property_ID
 * @property string $DocId
 * @property string $Vtype
 * @property int $BookNo
 * @property int $Vprefix
 * @property string $vdate
 * @property int $NoofRooms
 * @property string $Remarks
 * @property string|null $pickupdrop
 * @property string $Authorization
 * @property string $Company
 * @property string $GuestProf
 * @property string $TravelAgency
 * @property string $BussSource
 * @property string $MarketSeg
 * @property string $ArrFrom
 * @property string $Destination
 * @property string $BookedBy
 * @property string $ResMode
 * @property string $TravelMode
 * @property string|null $CancelDate
 * @property string $Cancel
 * @property string $GuestName
 * @property string $U_Name
 * @property string $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $U_AE
 * @property string $MobNo
 * @property string $Email
 * @property string $RRTaxInc
 * @property float $RDisc
 * @property string|null $purpofvisit
 * @property string|null $vehiclenum
 * @property float $RSDisc
 * @property string|null $AdvDueDate
 * @property string $RRServiceChrg
 * @property string|null $advdeposit
 * @property string $ResStatus
 * @property string $RefCode
 * @property string $Verified
 * @property string $CancelUName
 * @property string $RefBookNo
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\GrpBookinDetail> $bookingdetails
 * @property-read int|null $bookingdetails_count
 * @property-read \App\Models\GuestProf|null $guestProfile
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings query()
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereAdvDueDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereAdvdeposit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereArrFrom($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereAuthorization($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereBookNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereBookedBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereBussSource($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereCancel($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereCancelDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereCancelUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereCompany($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereDestination($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereDocId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereGuestName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereGuestProf($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereMarketSeg($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereMobNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereNoofRooms($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings wherePickupdrop($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings wherePropertyID($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings wherePurpofvisit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereRDisc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereRRServiceChrg($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereRRTaxInc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereRSDisc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereRefBookNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereRefCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereResMode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereResStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereTravelAgency($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereTravelMode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereUAE($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereUEntDt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereVehiclenum($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereVerified($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Bookings whereVtype($value)
 * @mixin \Eloquent
 */
class Bookings extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'booking';

    protected $fillable = [
        'Property_ID',
        'DocId',
        'GuestName',
        'BookNo',
        'Vtype',
        'advdeposit',
        'Vprefix',
        'vdate',
        'GuestProf',
        'vehiclenum',
        'TravelAgency',
        'purpofvisit',
        'BussSource',
        'MarketSeg',
        'RRServiceChrg',
        'BookedBy',
        'ResStatus',
        'ResMode',
        'TravelMode',
        'CancelDate',
        'Cancel',
        'Company',
        'ArrFrom',
        'Destination',
        'created_at',
        'U_Name',
        'U_AE',
        'NoofRooms',
        'Remarks',
        'pickupdrop',
        'Authorization',
        'Verified',
        'CancelUName',
        'MobNo',
        'Email',
        'RRTaxInc',
        'RDisc',
        'RSDisc',
        'AdvDueDate',
        'RefCode',
        'RefBookNo'
    ];

    public function bookingdetails()
    {
        return $this->hasMany(GrpBookinDetail::class, 'BookingDocid', 'DocId');
    }

    public function guestProfile()
    {
        return $this->hasOne(GuestProf::class, 'docid', 'DocId');
    }
}
