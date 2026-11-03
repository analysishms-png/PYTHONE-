<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EnviroGeneral extends TenantModel
{
    use HasFactory;
    protected $primaryKey = 'propertyid';
    public $incrementing = false;
    protected $keyType = 'string';
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'enviro_general';

    protected $fillable = [
        'propertyid',
        'api_key',
        'bearer_token',
    ];
}
