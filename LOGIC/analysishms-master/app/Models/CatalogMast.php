<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CatalogMast extends Model
{
    use HasFactory;

    const CREATED_AT = 'created_at';
    const UPDATED_AT = null;          // no updated_at column

    protected $table = 'catalogmast';

    protected $fillable = [
        'propertyid',
        'code',
        'itemcode',
        'restcode',
        'name',
        'itemcatcode',
        'u_name',
        'created_at',
        'u_ae',
    ];
}
