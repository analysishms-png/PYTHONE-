<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $country
 * @property string $state_code
 * @property string $name
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|States newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|States newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|States query()
 * @method static \Illuminate\Database\Eloquent\Builder|States whereCountry($value)
 * @method static \Illuminate\Database\Eloquent\Builder|States whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|States wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|States whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|States whereStateCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|States whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|States whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|States whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|States whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class States extends Model
{
    use HasFactory;
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'states';
}
