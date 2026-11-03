<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Mall Payment Receipt — mall_receipt table
 *
 * @property int         $id
 * @property int         $propertyid
 * @property string      $docid
 * @property string|null $vtype
 * @property int         $vno
 * @property string      $vdate
 * @property int         $vprefix
 * @property int         $tenantid
 * @property int|null    $leaseid
 * @property float       $receiptamount
 * @property string|null $paytype
 * @property string|null $paycode
 * @property float|null  $adjustmentamount
 * @property string|null $remarks
 * @property string|null $refno
 * @property string|null $narration
 * @property string|null $cardno
 * @property string|null $cardholder
 * @property string|null $expdate
 * @property string|null $batchno
 * @property string|null $comp_code
 * @property string|null $mobileno
 * @property string|null $u_name
 * @property string|null $u_entdt
 * @property string|null $u_updateby
 * @property string|null $u_updatedt
 *
 * @method static \Illuminate\Database\Eloquent\Builder|MallReceipt newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MallReceipt newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MallReceipt query()
 * @method static \Illuminate\Database\Eloquent\Builder|MallReceipt wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallReceipt whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallReceipt whereTenantid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallReceipt whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallReceipt wherePaycode($value)
 * @mixin \Eloquent
 */
class MallReceipt extends Model
{
    protected $table      = 'mall_receipt';
    public    $timestamps = false; // u_entdt / u_updatedt manually manage karo

    protected $fillable = [
        'propertyid',
        'docid',
        'vtype',
        'vno',
        'vdate',
        'vprefix',
        'tenantid',
        'leaseid',
        'receiptamount',
        'paytype',
        'paycode',
        'adjustmentamount',
        'remarks',
        'refno',
        'narration',
        'cardno',
        'cardholder',
        'expdate',
        'batchno',
        'comp_code',
        'mobileno',
        'u_name',
        'u_entdt',
        'u_updateby',
        'u_updatedt',
    ];

    protected $casts = [
        'receiptamount'    => 'float',
        'adjustmentamount' => 'float',
        'vno'              => 'integer',
        'vprefix'          => 'integer',
        'propertyid'       => 'integer',
        'tenantid'         => 'integer',
        'leaseid'          => 'integer',
        'expdate'          => 'date',
    ];

    // ── Relationships ──────────────────────────────────────────────────────────

    /**
     * Property scope — controller me MallReceipt::forProperty($id) use hota hai.
     * Table-name qualified rakha hai, kyunki fetchBill()/printReceipt() me
     * subgroup & revmast ke saath join hota hai (dono me bhi propertyid hai).
     */
    public function scopeForProperty($query, $propertyid)
    {
        return $query->where($this->getTable() . '.propertyid', $propertyid);
    }

    public function lease()
    {
        return $this->belongsTo(MallLeaseHdr::class, 'leaseid', 'id');
    }
}
