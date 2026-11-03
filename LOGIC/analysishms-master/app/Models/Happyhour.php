<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $code
 * @property string $name
 * @property string $startdate
 * @property string $enddate
 * @property string $fromtime
 * @property string $totime
 * @property string $restcode
 * @property int $itemcode
 * @property int $qty
 * @property int $freeitem
 * @property int $freeqty
 * @property string $days
 * @property string $activeyn
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour query()
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour whereActiveyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour whereDays($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour whereEnddate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour whereFreeitem($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour whereFreeqty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour whereFromtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour whereItemcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour whereQty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour whereStartdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour whereTotime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Happyhour whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Happyhour extends Model
{
    use HasFactory;

    protected $table = 'schememast';

    
    const CREATED_AT = 'created_at';
    const UPDATE_AT = 'updated_at';

    protected $fillable = [
        'id',
        'propertyid',
        'code',
        'name',
        'startdate',
        'enddate',
        'fromtime',
        'totime',
        'qty',
        'restcode',
        'itemcode',
        'freeitem',
        'freeqty',
        'days',
        'activeyn',
        'u_name',
        'created_at',
        'u_ae',
        'updated_at'
    ];
}
