<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EnviroNotification extends Model
{
    protected $table = 'enviro_notifications';

    protected $fillable = [
        'propertyid',
        'route',
        'enabled',
        'departments',
        'superwiser',
        'message',
    ];

    protected $casts = [
        'propertyid' => 'integer',
        'enabled' => 'integer',
        'departments' => 'array',
        'superwiser' => 'integer',
        'message' => 'string'
    ];
}
