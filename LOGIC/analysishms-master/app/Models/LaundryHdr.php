<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property string $vtype
 * @property int $vno
 * @property int $vprefix
 * @property string $vdate
 * @property string $vtime
 * @property string $sent_by
 * @property string|null $challan_no
 * @property string|null $contractor_recv_by
 * @property string|null $expected_return_date
 * @property string|null $send_remarks
 * @property string $send_status
 * @property string|null $recv_docid
 * @property string|null $recv_vtype
 * @property int|null $recv_vno
 * @property int|null $recv_vprefix
 * @property string|null $recv_date
 * @property string|null $recv_time
 * @property string|null $recv_by
 * @property string|null $delivered_by
 * @property string|null $recv_challan_no
 * @property string|null $recv_remarks
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr query()
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereChallanNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereContractorRecvBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereDeliveredBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereExpectedReturnDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereRecvBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereRecvChallanNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereRecvDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereRecvDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereRecvRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereRecvTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereRecvVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereRecvVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereRecvVtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereSendRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereSendStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereSentBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereVtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LaundryHdr whereVtype($value)
 * @mixin \Eloquent
 */
class LaundryHdr extends Model
{
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

    protected $table = 'laundry_hdr';
    
    public $incrementing = true;
    protected $keyType = 'int';

    protected $fillable = [
        'propertyid', 'docid', 'vtype', 'vno', 'vprefix',
        'vdate', 'vtime', 'sent_by', 'challan_no', 'contractor_recv_by',
        'expected_return_date', 'send_remarks', 'send_status',
        'recv_docid', 'recv_vtype', 'recv_vno', 'recv_vprefix',
        'recv_date', 'recv_time', 'recv_by', 'delivered_by',
        'recv_challan_no', 'recv_remarks',
        'u_name', 'created_at', 'updated_at', 'u_ae',
    ];
}

