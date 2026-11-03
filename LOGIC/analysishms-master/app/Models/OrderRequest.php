<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderRequest extends Model
{
    use HasFactory;

    protected $table = 'order_requests';
    
    protected $fillable = [
        'id',
        'propertyid',
        'order_id',
        'rest_code',
        'baserestcode',
        'roomno',
        'roomtype',
        'itemcode',
        'item',
        'qty',
        'waiter',
        'status',
        'created_at',
        'updated_at'
    ];
}
