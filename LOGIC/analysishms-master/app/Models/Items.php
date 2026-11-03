<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $icode
 * @property string $name
 * @property string|null $barcode
 * @property string|null $hsncode
 * @property string|null $itempic
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|Items newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Items newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Items query()
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereBarcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereHsncode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereIcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereItempic($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class Items extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'items';

    protected $fillable = [
        'propertyid',
        'icode',
        'barcode',
        'name',
        'hsncode',
        'itempic',
        'u_name',
        'u_ae',
        'created_at',
        'updated_at',
    ];
}
