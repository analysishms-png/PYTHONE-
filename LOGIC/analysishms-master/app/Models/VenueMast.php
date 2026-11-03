<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $code
 * @property string $name
 * @property string $shortname
 * @property string $dimension
 * @property string $activeYN
 * @property string $departcode
 * @property string $picpath
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|VenueMast newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|VenueMast newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|VenueMast query()
 * @method static \Illuminate\Database\Eloquent\Builder|VenueMast whereActiveYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueMast whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueMast whereDepartcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueMast whereDimension($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueMast whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueMast wherePicpath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueMast wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueMast whereShortname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueMast whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueMast whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueMast whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueMast whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueMast whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class VenueMast extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'venuemast';
}
