<?php

namespace App\Models;

class Backuplog extends MainModel
{
    protected $table = 'backuplog';

    protected $fillable = [
        'propertyid',
        'username',
        'filename',
        'filepath',
        'filesize',
        'status',
        'total_database',
        'downloaded_by',
        'downloaded_at',
        'created_at',
    ];

    protected $casts = [
        'filesize' => 'integer',
        'status' => 'integer',
        'total_database' => 'integer',
        'downloaded_at' => 'datetime',
        'created_at' => 'datetime',
    ];
}
