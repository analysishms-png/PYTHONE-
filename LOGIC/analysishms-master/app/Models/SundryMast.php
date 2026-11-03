<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $sundry_code
 * @property string $name
 * @property string $nature
 * @property string $calcsign
 * @property string $sysYN
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|SundryMast newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SundryMast newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SundryMast query()
 * @method static \Illuminate\Database\Eloquent\Builder|SundryMast whereCalcsign($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryMast whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryMast whereNature($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryMast wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryMast whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryMast whereSundryCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryMast whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryMast whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryMast whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryMast whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryMast whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class SundryMast extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'sundrymast';
}
