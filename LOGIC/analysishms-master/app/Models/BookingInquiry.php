<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $inqno
 * @property string $contradocid
 * @property string $cattype
 * @property string $partyname
 * @property string $add1
 * @property string $add2
 * @property string $citycode
 * @property string $mobileno
 * @property string $mobileno1
 * @property string $conperson
 * @property string $bookedby
 * @property string $functype
 * @property string $handledby
 * @property string $status
 * @property int $pax
 * @property int $gurrpax
 * @property string $ratepax
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @property string $remark
 * @property string $follupdate
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry query()
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereAdd1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereAdd2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereBookedby($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereCattype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereCitycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereConperson($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereContradocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereFollupdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereFunctype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereGurrpax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereHandledby($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereInqno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereMobileno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereMobileno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry wherePartyname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry wherePax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereRatepax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingInquiry whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class BookingInquiry extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';    
    const UPDATED_AT = 'updated_at';
    protected $table = 'bookinginquiry';
}
