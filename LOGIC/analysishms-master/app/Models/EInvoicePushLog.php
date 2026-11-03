<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property string $propertyid
 * @property string $docid
 * @property string $company
 * @property int|null $http_code
 * @property string|null $success_yn
 * @property int|null $status_cd
 * @property string|null $curl_error
 * @property string|null $post_data
 * @property string|null $response_json
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoicePushLog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoicePushLog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoicePushLog query()
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoicePushLog whereCompany($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoicePushLog whereCurlError($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoicePushLog whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoicePushLog whereHttpCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoicePushLog wherePostData($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoicePushLog wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoicePushLog whereResponseJson($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoicePushLog whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoicePushLog whereStatusCd($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoicePushLog whereSuccessYn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoicePushLog whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EInvoicePushLog whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class EInvoicePushLog extends Model
{
    use HasFactory;

    protected $table = 'einvoice_push_logs';
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

    protected $fillable = [
        'propertyid',
        'docid',
        'company',
        'http_code',
        'success_yn',
        'status_cd',
        'curl_error',
        'post_data',
        'response_json'
    ];
}
