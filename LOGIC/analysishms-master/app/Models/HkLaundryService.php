<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $code
 * @property string $name
 * @property string $dcode
 * @property string $u_name
 * @property string $created_at
 * @property string $u_ae
 * @property string|null $u_upddt
 * @method static \Illuminate\Database\Eloquent\Builder|HkLaundryService newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HkLaundryService newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HkLaundryService query()
 * @method static \Illuminate\Database\Eloquent\Builder|HkLaundryService whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkLaundryService whereDcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkLaundryService whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkLaundryService wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkLaundryService whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkLaundryService whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkLaundryService whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkLaundryService whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkLaundryService whereUUpddt($value)
 * @mixin \Eloquent
 */
class HkLaundryService extends Model
{
    protected $table = 'hklaundryservicemaster';

    

    public $timestamps = false; // 🔥 MOST IMPORTANT (error fix)

    protected $fillable = [
        'propertyid',
        'code',
        'name',
        'dcode',
        'u_name',
        'created_at',
        'u_ae'
    ];
}
