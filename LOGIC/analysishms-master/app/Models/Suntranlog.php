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
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog query()
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereBaseamount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereCalcformula($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereDispname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog wherePartycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereRevcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereSunappdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereSuncode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereSvalue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntranlog whereVtype($value)
 * @mixin \Eloquent
 */
class Suntranlog extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'suntranlog';
    public $incrementing = true;

    protected $fillable = [
        'propertyid',
        'docid',
        'sno',
        'vtype',
        'vno',
        'vdate',
        'partycode',
        'suncode',
        'dispname',
        'calcformula',
        'svalue',
        'amount',
        'baseamount',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae',
        'sunappdate',
        'revcode',
        'restcode',
        'delflag'
    ];
}
