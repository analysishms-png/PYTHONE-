<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property int $vno
 * @property string $vdate
 * @property string $vprefix
 * @property string $vtype
 * @property string $ocdocid
 * @property string|null $ocdate
 * @property string $partycode
 * @property string $partyname
 * @property string $remark
 * @property string $porddocid
 * @property string|null $porddate
 * @property string $pono
 * @property string $chalno
 * @property string $totalamount
 * @property string $chaldate
 * @property string $meminvno
 * @property string|null $meminvdate
 * @property string $indentno
 * @property string $inspectedby
 * @property string $approvedby
 * @property string $delflag
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|Gin newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Gin newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Gin query()
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereApprovedby($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereChaldate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereChalno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereIndentno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereInspectedby($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereMeminvdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereMeminvno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereOcdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereOcdocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin wherePartycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin wherePartyname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin wherePono($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin wherePorddate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin wherePorddocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereTotalamount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gin whereVtype($value)
 * @mixin \Eloquent
 */
class Gin extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'gin';
}
