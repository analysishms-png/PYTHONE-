<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $name
 * @property int $bcode
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string|null $activeYN
 * @property string|null $sysYN
 * @method static \Illuminate\Database\Eloquent\Builder|BussSource newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BussSource newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BussSource query()
 * @method static \Illuminate\Database\Eloquent\Builder|BussSource whereActiveYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BussSource whereBcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BussSource whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BussSource wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BussSource whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BussSource whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BussSource whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BussSource whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BussSource whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BussSource whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class BussSource extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'busssource';
}
