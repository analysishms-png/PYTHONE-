<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BuildingMaster extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = null;
    
    protected $table = 'buildingmaster';

    protected $fillable = [
        'id',
        'propertyid',
        'code',
        'name',
        'activeyn',
        'u_name',
        'created_at',
        'u_ae',
    ];
}