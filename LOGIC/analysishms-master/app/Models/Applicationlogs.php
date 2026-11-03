<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Applicationlogs extends Model
{
    protected $table = 'application_logs';

    protected $primaryKey = 'id';

    public $timestamps = false;

    protected $fillable = [
        'propertyid',
        'userid',
        'username',
        'ipaddress',
        'level',
        'message',
        'context',
        'created_at',
    ];

    protected $casts = [
        'context' => 'array',
        'created_at' => 'datetime',
    ];
}
