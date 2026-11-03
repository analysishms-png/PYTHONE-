<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Mall Debit / Credit Note — mall_note_dtl table (charge-wise lines)
 *
 * @property int         $id
 * @property int         $propertyid
 * @property string      $docid
 * @property int         $sno
 * @property string|null $refdocid
 * @property string      $chargecode
 * @property string|null $fromdate
 * @property string|null $todate
 * @property float       $qty
 * @property string|null $unit
 * @property float       $rate
 * @property float       $amount
 * @property float       $taxrate
 * @property float       $taxableamount
 * @property float       $taxamount
 * @property float       $totalamount
 * @property string|null $remarks
 * @property string|null $u_name
 * @property string|null $u_entdt
 *
 * @mixin \Eloquent
 */
class MallNoteDtl extends Model
{
    protected $table      = 'mall_note_dtl';
    protected $primaryKey = 'id';
    public    $incrementing = true;
    public    $timestamps   = true;

    protected $fillable = [
        'propertyid',
        'docid',
        'sno',
        'refdocid',
        'chargecode',
        'fromdate',
        'todate',
        'qty',
        'unit',
        'rate',
        'amount',
        'taxrate',
        'taxableamount',
        'taxamount',
        'totalamount',
        'remarks',
        'u_name',
        'u_entdt',
    ];

    protected $casts = [
        'propertyid'    => 'integer',
        'sno'           => 'integer',
        'qty'           => 'float',
        'rate'          => 'float',
        'amount'        => 'float',
        'taxrate'       => 'float',
        'taxableamount' => 'float',
        'taxamount'     => 'float',
        'totalamount'   => 'float',
    ];

    public function scopeForProperty($query, $propertyid)
    {
        return $query->where($this->getTable() . '.propertyid', $propertyid);
    }
}
