<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $vno
 * @property string $tabaleno
 * @property string $vtype
 * @property string $vprefix
 * @property string $vdate
 * @property string $vtime
 * @property string $guestname
 * @property string $mobileno
 * @property float $pax
 * @property string $bookindate
 * @property string $fromtime
 * @property string $totime
 * @property string $remark
 * @property string $cancelyn
 * @property string $canceluser
 * @property string $canceldate
 * @property string $contradocid
 * @property string $restcode
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking query()
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereBookindate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereCanceldate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereCanceluser($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereCancelyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereContradocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereFromtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereGuestname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereMobileno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking wherePax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereTabaleno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereTotime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereVtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Tablebooking whereVtype($value)
 * @mixin \Eloquent
 */
class Tablebooking extends Model
{
    use HasFactory;

    protected $table = 'tablebooking';
    

    const CREATED_AT = 'created_at';
    const UPDATED_AT = null;

    protected $fillable = [
        'propertyid',
        'vno',
        'vtype',
        'vprefix',
        'tabaleno',
        'vdate',
        'vtime',
        'guestname',
        'mobileno',
        'pax',
        'bookindate',
        'fromtime',
        'totime',
        'remark',
        'cancelyn',
        'canceluser',
        'canceldate',
        'contradocid',
        'restcode',
        'u_name',
        'created_at',
        'u_ae',
    ];
}
