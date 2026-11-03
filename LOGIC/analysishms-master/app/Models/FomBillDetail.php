<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $billno
 * @property int $sno1
 * @property string $billdate
 * @property int $foliono
 * @property string $guestname
 * @property string $billamt
 * @property string $cancelremark
 * @property string $settamt
 * @property string $status
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @property string $folionodocid
 * @method static \Illuminate\Database\Eloquent\Builder|FomBillDetail newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|FomBillDetail newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|FomBillDetail query()
 * @method static \Illuminate\Database\Eloquent\Builder|FomBillDetail whereBillamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FomBillDetail whereBilldate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FomBillDetail whereBillno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FomBillDetail whereCancelremark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FomBillDetail whereFoliono($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FomBillDetail whereFolionodocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FomBillDetail whereGuestname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FomBillDetail wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FomBillDetail whereSettamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FomBillDetail whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FomBillDetail whereSno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FomBillDetail whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FomBillDetail whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FomBillDetail whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FomBillDetail whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FomBillDetail whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class FomBillDetail extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

    protected $table = 'fombilldetails';
}
