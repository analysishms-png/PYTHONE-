<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Auth;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    // protected $connection = 'tenant';

    protected $fillable = [
        'name',
        'email',
        'password',
        'u_name',
        'role',
        'propertyid',
        'status',
        'email_verified_at',
        'superwiser',
        'backdate',
        'freeitemkot',
        'freeitemsale',
        'discappsale',
        'useroradmin',
        'u_ae',
        'AP',
        'designation',
        'department',
        'addedby',
        'fcm_token',
        'device_type',
        'device_name',
        'last_used_at',
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];
}
