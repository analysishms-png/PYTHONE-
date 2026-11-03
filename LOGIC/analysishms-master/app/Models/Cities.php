<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $propertyid
 * @property int $city_code
 * @property string|null $zipcode
 * @property string $country
 * @property string $cityname
 * @property string $state
 * @property int $activeyn
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|Cities newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Cities newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Cities query()
 * @method static \Illuminate\Database\Eloquent\Builder|Cities whereActiveyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cities whereCityCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cities whereCityname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cities whereCountry($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cities wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cities whereState($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cities whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cities whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cities whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cities whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cities whereZipcode($value)
 * @mixin \Eloquent
 */
class Cities extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'cities'; 
}
