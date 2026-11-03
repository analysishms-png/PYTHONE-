<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property string $docdtls_no
 * @property int $billno
 * @property string $comp_code
 * @property string $docdtls_dt
 * @property string $buyerdtls_gstin
 * @property string $buyerdtls_lglnm
 * @property string $buyerdtls_trdnm
 * @property string $buyerdtls_pos
 * @property float $valdtls_assval
 * @property float $valdtls_cgstval
 * @property float $valdtls_sgstval
 * @property float $valdtls_igstval
 * @property float $valdtls_totInvval
 * @property string $jsonresponse
 * @property string $ackno
 * @property string $ackdt
 * @property string $irn
 * @property string $signedinvoice
 * @property string $signedqrcode
 * @property string $qrcodeimage
 * @property string $status
 * @property int $status_cd
 * @property string $cancelled
 * @property string|null $canceldate
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill query()
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereAckdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereAckno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereBillno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereBuyerdtlsGstin($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereBuyerdtlsLglnm($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereBuyerdtlsPos($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereBuyerdtlsTrdnm($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereCanceldate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereCancelled($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereCompCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereDocdtlsDt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereDocdtlsNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereIrn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereJsonresponse($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereQrcodeimage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereSignedinvoice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereSignedqrcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereStatusCd($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereValdtlsAssval($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereValdtlsCgstval($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereValdtlsIgstval($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereValdtlsSgstval($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoiceBill whereValdtlsTotInvval($value)
 * @mixin \Eloquent
 */
class EInvoiceBill extends Model
{
    use HasFactory;
    protected $table = 'einvoicebill';
    const CREATED_AT = 'created_at';
    const UPDATED_AT = null;

    protected $fillable = [
        'propertyid',
        'docid',
        'docdtls_no',
        'billno',
        'comp_code',
        'docdtls_dt',
        'buyerdtls_gstin',
        'buyerdtls_lglnm',
        'buyerdtls_trdnm',
        'buyerdtls_pos',
        'valdtls_assval',
        'valdtls_cgstval',
        'valdtls_sgstval',
        'valdtls_igstval',
        'valdtls_totInvval',
        'jsonresponse',
        'ackno',
        'ackdt',
        'irn',
        'signedinvoice',
        'signedqrcode',
        'qrcodeimage',
        'status',
        'u_name',
        'created_at'
    ];
}
