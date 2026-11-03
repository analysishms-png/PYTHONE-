<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $leaseid
 * @property string $chargecode
 * @property string|null $chargename
 * @property string $calculationmethod
 * @property string|null $basis
 * @property float $area
 * @property float $rate
 * @property float $amount
 * @property string $billingcycle
 * @property bool $gstapplicable
 * @property float $gstpercent
 * @property string|null $effectivefrom
 * @property string|null $effectiveto
 * @property string|null $u_name
 * @property string|null $created_at
 * @property string|null $u_updatedby
 * @property string|null $updated_at
 */
class MallLeaseCharge extends Model
{
    protected $table      = 'tablemall_lease_charges';
    

    public $timestamps = false;

    protected $fillable = [
        'propertyid',
        'leaseid',
        'tenantid',
        'shopcode',
        'chargecode',
        'chargename',
        'calculationmethod',
        'basis',
        'area',
        'rate',
        'amount',
        'billingcycle',
        'gstapplicable',
        'gstpercent',
        'effectivefrom',
        'effectiveto',
        'u_name',
        'created_at',
        'u_updatedby',
        'updated_at',
    ];
}