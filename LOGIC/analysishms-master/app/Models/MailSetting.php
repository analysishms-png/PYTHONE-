<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MailSetting extends Model
{
    protected $table      = 'mail_settings';
    protected $connection = 'tenant';
    public $timestamps    = false;

    protected $fillable = [
        'propertyid',
        'mailer',
        'host',
        'port',
        'username',
        'password',
        'encryption',
        'from_address',
        'from_name',
        'signature',
        'activeyn',
        'u_name',
        'u_ae',
        'created_at',
    ];

    // password ko DB me encrypted store + read karte waqt decrypt
    protected $casts = [
        'password' => 'encrypted',
    ];
}