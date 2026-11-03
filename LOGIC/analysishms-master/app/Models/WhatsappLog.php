<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property string $recipient_phone_number
 * @property int $propertyid
 * @property string $type
 * @property string $template_id
 * @property string|null $parameters
 * @property string|null $response
 * @property int $http_code
 * @property string $status
 * @property string $u_name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|WhatsappLog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|WhatsappLog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|WhatsappLog query()
 * @method static \Illuminate\Database\Eloquent\Builder|WhatsappLog whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WhatsappLog whereHttpCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WhatsappLog whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WhatsappLog whereParameters($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WhatsappLog wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WhatsappLog whereRecipientPhoneNumber($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WhatsappLog whereResponse($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WhatsappLog whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WhatsappLog whereTemplateId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WhatsappLog whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WhatsappLog whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|WhatsappLog whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class WhatsappLog extends Model
{
    use HasFactory;

    protected $fillable = [
        'propertyid',
        'recipient_phone_number',
        'type',
        'template_id',
        'parameters',
        'response',
        'http_code',
        'status',
        'u_name'
    ];
}
