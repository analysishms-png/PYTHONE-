<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NotificationDelivery extends Model
{
    protected $table = 'notification_deliveries';

    protected $fillable = [
        'notification_id',
        'propertyid',
        'user_id',
        'fcm_token',
        'state',
        'sent_at',
        'delivered_at',
        'seen_at',
        'opened_at',
        'failed_at',
        'error_message',
    ];

    protected $casts = [
        'sent_at' => 'datetime',
        'delivered_at' => 'datetime',
        'seen_at' => 'datetime',
        'opened_at' => 'datetime',
        'failed_at' => 'datetime',
    ];
}
