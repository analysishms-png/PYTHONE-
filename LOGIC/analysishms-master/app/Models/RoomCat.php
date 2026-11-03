<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
class RoomCat extends Model
{
    use HasFactory;

    protected $table = 'room_cat';

    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

    protected $fillable = [
        'id',
        'propertyid',
        'type',
        'cat_code',
        'name',
        'shortname',
        'rev_code',
        'norooms',
        'multiper',
        'inclcount',
        'map_code',
        'image_path',
        'ammenties',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae',
        'sysYN',
    ];

    public function companyreg()
    {
        return $this->belongsTo(Companyreg::class, 'propertyid', 'propertyid');
    }

    public function room()
    {
        return $this->hasMany(RoomMast::class, 'room_cat', 'cat_code');
    }

    public function plans()
    {
        return $this->hasMany(PlanMast::class, 'room_cat', 'cat_code');
    }

    public function ratelistdetails()
    {
        return $this->hasMany(RateList::class, 'room_cat', 'cat_code')
            ->select(
                'room_cat',
                'occtype',
                'rate1',
                'rate2',
                'rate3',
                'rate4',
                'rate5'
            );
    }
}
