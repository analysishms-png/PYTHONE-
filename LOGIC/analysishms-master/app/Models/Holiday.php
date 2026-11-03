<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property string $propertyid
 * @property string $holiday_date
 * @property string $name
 * @property string|null $type
 * @property string $is_repeat
 * @property string $is_active
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property string $u_name
 * @property string $u_ae
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|Holiday newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Holiday newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Holiday query()
 * @method static \Illuminate\Database\Eloquent\Builder|Holiday whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Holiday whereHolidayDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Holiday whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Holiday whereIsActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Holiday whereIsRepeat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Holiday whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Holiday wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Holiday whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Holiday whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Holiday whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Holiday whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Holiday extends Model
{
    use HasFactory;

    protected $fillable = [
        'holiday_date',
        'name',
        'type',
        'is_repeat',
        'is_active',
    ];
}
