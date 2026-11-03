<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property string $propertyid
 * @property string|null $vdate
 * @property string $interestamount
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|Focc newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Focc newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Focc query()
 * @method static \Illuminate\Database\Eloquent\Builder|Focc whereInterestamount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Focc wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Focc whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Focc whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Focc whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Focc whereVdate($value)
 * @mixin \Eloquent
 */
class Focc extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'focc';
}
