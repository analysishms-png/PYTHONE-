<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;

class Remark extends TenantModel
{
    use HasFactory;

    protected $fillable = [
        'docid',
        'sno',
        'type',
        'status',
        'description',
        'ipaddr',
        'u_name'
    ];
}
