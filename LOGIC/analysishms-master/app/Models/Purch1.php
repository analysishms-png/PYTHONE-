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
 * @property string $vprefix
 * @property string $restcode
 * @property string $Party
 * @property string $partytextname
 * @property string $total
 * @property string $discper
 * @property string $discamt
 * @property string $nontaxable
 * @property string $taxable
 * @property string $tax
 * @property string $servicecharge
 * @property string $addamt
 * @property string $dedamt
 * @property string $roundoff
 * @property string $netamt
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @property string $delflag
 * @property string $partybillno
 * @property string $partybilldt
 * @property string $cashparty
 * @property string $gstno
 * @property string $remark
 * @property string $invoicetype
 * @property int $invoiceno
 * @property string $cgst
 * @property string $sgst
 * @property string $igst
 * @property string $payable
 * @property string $billimagepath
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 query()
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereAddamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereBillimagepath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereCashparty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereCgst($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereDedamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereDiscamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereDiscper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereGstno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereIgst($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereInvoiceno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereInvoicetype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereNetamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereNontaxable($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereParty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 wherePartybilldt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 wherePartybillno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 wherePartytextname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 wherePayable($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereRoundoff($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereServicecharge($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereSgst($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereTax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereTaxable($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch1 whereVtype($value)
 * @mixin \Eloquent
 */
class Purch1 extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'purch1';
    protected $primaryKey = 'docid';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $fillable = [
        'delflag',
    ];
}
