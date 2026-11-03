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
 * @property string $vtype
 * @property string|null $valiedup
 * @property int $vprefix
 * @property string $quotno
 * @property string $quotdate
 * @property string $partycode
 * @property string $remark
 * @property string $u_name
 * @property string $u_ae
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation query()
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation wherePartycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereQuotdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereQuotno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereValiedup($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Quotation whereVtype($value)
 * @mixin \Eloquent
 */
class Quotation extends Model
{
    use HasFactory;

    protected $table = 'quotation';

    
    const CREATED_AT = 'created_at';

    const UPDATED_AT = 'updated_at';

    protected $fillable = [
        'propertyid',
        'docid',
        'vno',
        'vdate',
        'valiedup',
        'vtype',
        'vprefix',
        'quotno',
        'quotdate',
        'partycode',
        'remark',
        'dispatchmode',
        'despatchthru',
        'paymentterms',
        'packcharge',
        'forwardcharges',
        'discper',
        'taxper',
        'u_name',
        'u_ae',
        'created_at',
    ];
}
