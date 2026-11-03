<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $name
 * @property string $Type
 * @property string $country_code
 * @property string $nationality
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|Countries newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Countries newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Countries query()
 * @method static \Illuminate\Database\Eloquent\Builder|Countries whereCountryCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Countries whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Countries whereNationality($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Countries wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Countries whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Countries whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Countries whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Countries whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Countries whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Countries whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class Countries extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'countries'; 
}
