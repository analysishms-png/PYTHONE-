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
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH query()
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereBaseamount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereCalcformula($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereDelremark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereDispname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH wherePartycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereRevcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereSunappdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereSuncode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereSvalue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranH whereVtype($value)
 * @mixin \Eloquent
 */
class SuntranH extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'suntranh';
}
