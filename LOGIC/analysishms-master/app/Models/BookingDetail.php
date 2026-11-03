<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $inqno
 * @property int $sno
 * @property string $venuecode
 * @property string $fromdate
 * @property string $todate
 * @property string $fromtime
 * @property string $totime
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|BookingDetail newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BookingDetail newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BookingDetail query()
 * @method static \Illuminate\Database\Eloquent\Builder|BookingDetail whereFromdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingDetail whereFromtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingDetail whereInqno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingDetail wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingDetail whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingDetail whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingDetail whereTodate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingDetail whereTotime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingDetail whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingDetail whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingDetail whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BookingDetail whereVenuecode($value)
 * @mixin \Eloquent
 */
class BookingDetail extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'bookingdetail';
}
