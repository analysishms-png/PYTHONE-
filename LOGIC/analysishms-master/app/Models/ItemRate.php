<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $Property_ID
 * @property string $ItemCode
 * @property string $itemcodeold
 * @property string $RestCode
 * @property string $Rate
 * @property string $AppDate
 * @property string $Party
 * @property string $U_Name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $U_AE
 * @method static \Illuminate\Database\Eloquent\Builder|ItemRate newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ItemRate newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ItemRate query()
 * @method static \Illuminate\Database\Eloquent\Builder|ItemRate whereAppDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemRate whereItemCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemRate whereItemcodeold($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemRate whereParty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemRate wherePropertyID($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemRate whereRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemRate whereRestCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemRate whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemRate whereUAE($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemRate whereUEntDt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemRate whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemRate whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class ItemRate extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table   = 'itemrate';
    protected $guarded = [];
}
