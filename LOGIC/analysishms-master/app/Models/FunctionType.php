<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $code
 * @property string $name
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string $u_ae
 * @property string $activeYN
 * @method static \Illuminate\Database\Eloquent\Builder|FunctionType newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|FunctionType newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|FunctionType query()
 * @method static \Illuminate\Database\Eloquent\Builder|FunctionType whereActiveYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FunctionType whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FunctionType whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FunctionType wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FunctionType whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FunctionType whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FunctionType whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FunctionType whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FunctionType whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class FunctionType extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'functiontype';
}
