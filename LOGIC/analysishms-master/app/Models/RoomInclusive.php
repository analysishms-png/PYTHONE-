<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
class RoomInclusive extends Model
{
    protected $table = 'room_inclusive';
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

    protected $fillable = [
        'propertyid',
        'docid',
        'bookno',
        'vtype',
        'vprefix',
        'vdate',
        'sno',
        'rev_code',
        'amount',
        'chargepost',
        'contradocid',
        'contrasno',
        'created_at',
        'updated_at',
        'u_name',
        'u_ae'
    ];

    public function grpbookingdetail()
    {
        return $this->belongsTo(GrpBookinDetail::class, 'docid', 'BookingDocid');
    }
}
