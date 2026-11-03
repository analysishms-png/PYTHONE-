<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $leaseid
 * @property int $propertyid
 * @property int $shopid
 * @property int $tenantid
 * @property string $commercialmodel
 * @property string|null $chargeablearea
 * @property string|null $areaunit
 * @property string|null $rentrate
 * @property string|null $monthlyrent
 * @property string|null $mgamount
 * @property string|null $revenuesharepercent
 * @property string|null $turnoverbasis
 * @property string|null $fixedamount
 * @property string|null $effectivefrom
 * @property string|null $effectiveto
 * @property string|null $billingfrequency
 * @property string|null $remarks
 * @property int|null $u_name
 * @property string|null $created_at
 * @property string $u_ae
 * @property int|null $activeyn
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial query()
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereActiveyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereAreaunit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereBillingfrequency($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereChargeablearea($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereCommercialmodel($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereEffectivefrom($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereEffectiveto($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereFixedamount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereLeaseid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereMgamount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereMonthlyrent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereRentrate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereRevenuesharepercent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereShopid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereTenantid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereTurnoverbasis($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseCommercial whereUName($value)
 * @mixin \Eloquent
 */
class MallLeaseCommercial extends Model
{
    protected $table      = 'mall_lease_commercial';
    

    public $timestamps = false;

    protected $fillable = [
        'leaseid',
        'propertyid',
        'shopid',
        'tenantid',
        'commercialmodel',
        'rent_basis',
        'chargeablearea',
        'areaunit',
        'rentrate',
        'monthlyrent',
        'mgamount',
        'revenuesharepercent',
        'turnoverbasis',
        'rentfree_to',
        'fitout_period_to',
        'due_day',
        'review_basis',
        'grace_period_days',
        'payment_mode',
        'late_interest_type',
        'late_interest_pct',
        'interest_calculation',
        'interest_start_from',
        'security_deposit_adj',
        'terms_conditions',
        'fixedamount',
        'effectivefrom',
        'effectiveto',
        'billingfrequency',
        'remarks',
        'u_name',
        'created_at',
        'u_ae',
        'activeyn',
    ];
}
