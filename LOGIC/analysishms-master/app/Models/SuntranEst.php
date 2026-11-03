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
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst query()
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereBaseamount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereCalcformula($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereDelremark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereDispname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst wherePartycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereRevcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereSunappdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereSuncode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereSvalue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SuntranEst whereVtype($value)
 * @mixin \Eloquent
 */
class SuntranEst extends Model
{
     const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

    protected $table = 'suntranest';
}
