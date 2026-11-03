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
 * @property int $vprefix
 * @property string $quotno
 * @property string $quotdate
 * @property string $partycode
 * @property string $remark
 * @property string|null $exp_delivery
 * @property string $dispatchmode
 * @property string $despatchthru
 * @property string $paymentterms
 * @property float $packcharge
 * @property float $forwardcharges
 * @property float $discper
 * @property float $taxper
 * @property string|null $mrcontradocId
 * @property int|null $mrsno
 * @property string $u_name
 * @property string $u_ae
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder query()
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereDespatchthru($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereDiscper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereDispatchmode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereExpDelivery($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereForwardcharges($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereMrcontradocId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereMrsno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder wherePackcharge($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder wherePartycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder wherePaymentterms($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereQuotdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereQuotno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereTaxper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PurchaseOrder whereVtype($value)
 * @mixin \Eloquent
 */
class PurchaseOrder extends Model
{
    use HasFactory;

    protected $table = 'porder';

    
    const CREATED_AT = 'created_at';

    const UPDATED_AT = 'updated_at';

    protected $fillable = [
        'propertyid',
        'docid',
        'vno',
        'vdate',
        'vtype',
        'vprefix',
        'quotno',
        'quotdate',
        'partycode',
        'remark',
        'exp_delivery',
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
