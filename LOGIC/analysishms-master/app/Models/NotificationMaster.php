<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NotificationMaster extends Model
{
    use HasFactory;

    protected $table = 'notificationmaster';

    protected $primaryKey = 'id';

    protected $fillable = [
        'propertyid',
        'route',
        'module',
        'dcode',
        'task',
        'status',
        'created_at',
        'updated_at',
        'u_name',
        'u_ae',
    ];
}