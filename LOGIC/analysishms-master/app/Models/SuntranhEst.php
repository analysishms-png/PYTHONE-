<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property int $sno
 * @property string $vtype
 * @property int $vno
 * @property string $vdate
 * @property string $partycode
 * @property string $suncode
 * @property string $dispname
 * @property string $calcformula
 * @property string $svalue
 * @property string $amount
 * @property string $baseamount
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @property string $sunappdate
 * @property string $revcode
 * @property string $restcode
 * @property string $delflag
 * @property string|null $delremark
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst query()
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereBaseamount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereCalcformula($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereDelremark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereDispname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst wherePartycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereRevcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereSunappdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereSuncode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereSvalue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranhEst whereVtype($value)
 * @mixin \Eloquent
 */
class SuntranhEst extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'suntranhest';
}
