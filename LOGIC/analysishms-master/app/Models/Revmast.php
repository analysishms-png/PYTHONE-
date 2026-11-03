<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $rev_code
 * @property string $name
 * @property string|null $short_name
 * @property string|null $ac_code
 * @property string|null $tax_stru
 * @property int|null $sales_rate
 * @property string $SysYN
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string $type
 * @property string|null $flag_type
 * @property string $Desk_code
 * @property string|null $pay_type
 * @property string|null $field_type
 * @property string|null $ac_posting
 * @property string|null $sundry
 * @property string|null $seq_no
 * @property string|null $nature
 * @property string $active
 * @property string|null $tax_inc
 * @property string|null $payable_ac
 * @property string|null $unregistered_ac
 * @property string|null $hsn_code
 * @property string|null $map_code
 * @property string|null $round_off
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast query()
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereAcCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereAcPosting($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereDeskCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereFieldType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereFlagType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereHsnCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereMapCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereNature($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast wherePayType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast wherePayableAc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereRevCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereRoundOff($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereSalesRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereSeqNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereShortName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereSundry($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereTaxInc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereTaxStru($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Revmast whereUnregisteredAc($value)
 * @mixin \Eloquent
 */
class Revmast extends Model
{
    use HasFactory;

    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'revmast';
}
