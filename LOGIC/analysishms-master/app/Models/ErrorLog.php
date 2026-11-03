<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int|null $propertyid
 * @property string|null $error
 * @property string $pcode
 * @property string $ccode
 * @property string|null $u_name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|ErrorLog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ErrorLog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ErrorLog query()
 * @method static \Illuminate\Database\Eloquent\Builder|ErrorLog whereCcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ErrorLog whereError($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ErrorLog wherePcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ErrorLog wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ErrorLog whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ErrorLog whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ErrorLog whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ErrorLog whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ErrorLog whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class ErrorLog extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'errorlog';

    
}
