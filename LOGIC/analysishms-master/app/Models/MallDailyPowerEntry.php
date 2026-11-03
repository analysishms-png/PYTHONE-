<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MallDailyPowerEntry extends Model
{
    use HasFactory;

    protected $table = 'mall_dailypowerentry';

    protected $primaryKey = 'id';

    public $timestamps = true;

    protected $fillable = [
        'propertyid',
        'entry_date',
        'kesco',
        'solar',
        'dg',
        'total',
        'kesco_per',
        'solar_per',
        'dg_per',
        'hsd',
        'kesco_h',
        'dg_h',
        'u_name',
        'u_ae',
    ];
}
