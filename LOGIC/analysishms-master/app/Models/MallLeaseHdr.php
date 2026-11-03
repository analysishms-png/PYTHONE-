<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $code
 * @property int $propertyid
 * @property int|null $floorid
 * @property int $unitid
 * @property int $tenantid
 * @property string $leaseno
 * @property string|null $leasetype
 * @property string|null $leasestatus
 * @property string|null $loino
 * @property string|null $loidate
 * @property string|null $agreementno
 * @property string|null $agreement_date
 * @property string|null $commercialmodel
 * @property string|null $leasecommencementdate
 * @property string|null $leaseexpirydate
 * @property string|null $lockinstartdate
 * @property string|null $lockinenddate
 * @property string|null $possessiondate
 * @property string|null $fitoutstartdate
 * @property string|null $fitout_completion_date
 * @property string|null $storeopeningdate
 * @property string|null $moveindate
 * @property string|null $moveout_ate
 * @property int|null $noticeperioddays
 * @property int|null $renewalrequired
 * @property string|null $renewaldate
 * @property string|null $remarks
 * @property string|null $approvalstatus
 * @property int|null $U_name
 * @property string $u_ae
 * @property string|null $created_at
 * @property int|null $activeyn
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr query()
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereActiveyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereAgreementDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereAgreementno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereApprovalstatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereCommercialmodel($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereFitoutCompletionDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereFitoutstartdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereFloorid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereLeasecommencementdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereLeaseexpirydate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereLeaseno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereLeasestatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereLeasetype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereLockinenddate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereLockinstartdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereLoidate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereLoino($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereMoveindate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereMoveoutAte($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereNoticeperioddays($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr wherePossessiondate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereRenewaldate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereRenewalrequired($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereStoreopeningdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereTenantid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MallLeaseHdr whereUnitid($value)
 * @mixin \Eloquent
 */
class MallLeaseHdr extends Model
{
    protected $table      = 'mall_lease_hdr';
    

    // Table uses created_at / created_at as timestamps ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Â disable auto timestamps
    public $timestamps = false;

    protected $fillable = [
        'code',
        'propertyid',
        'floorid',
        'unitid',
        'tenantid',
        'leaseno',
        'leasetype',
        'leasestatus',
        'loino',
        'loidate',
        'agreementno',
        'agreement_date',
        'commercialmodel',
        'leasecommencementdate',
        'leaseexpirydate',
        'lockinstartdate',
        'lockinenddate',
        'possessiondate',
        'fitoutstartdate',
        'fitout_completion_date',
        'storeopeningdate',
        'moveindate',
        'moveout_date',
        'noticeperioddays',
        'renewalrequired',
        'renewaldate',
        'billingcycle',
        'billingstartfrom',
        'duedateofmonth',
        'remarks',
        'approvalstatus',
        'U_name',
        'u_ae',
        'created_at',
        'activeyn',
    ];
}
