<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property string $propertyid
 * @property string $code
 * @property string $name
 * @property string|null $dcode
 * @property string|null $u_name
 * @property string|null $created_at
 * @property string|null $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|HkMaintenance newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HkMaintenance newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HkMaintenance query()
 * @method static \Illuminate\Database\Eloquent\Builder|HkMaintenance whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkMaintenance whereDcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkMaintenance whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkMaintenance wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkMaintenance whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkMaintenance whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkMaintenance whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkMaintenance whereUName($value)
 * @mixin \Eloquent
 */
class HkMaintenance extends Model
{
    protected $table = 'hkmaintenances';
    
    public $timestamps = false;
    protected $fillable = [
        'propertyid', 'code', 'name', 'dcode',
        'u_name', 'created_at', 'u_ae',
    ];
}
