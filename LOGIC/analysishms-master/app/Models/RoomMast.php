<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RoomMast extends Model
{
    use HasFactory;

    protected $table = 'room_mast';

    protected $fillable = [
        'cs',
        'propertyid',
        'rcode',
        'name',
        'type',
        'room_cat',
        'multiper',
        'maid_station',
        'inclcount',
        'rest_code',
        'room_stat',
        'floor',
        'building',
        'pic_path',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae',
        'sysYN',
    ];
}
