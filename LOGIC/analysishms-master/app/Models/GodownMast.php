<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $scode
 * @property string $name
 * @property string $short_name
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string|null $sysYN
 * @method static \Illuminate\Database\Eloquent\Builder|GodownMast newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|GodownMast newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|GodownMast query()
 * @method static \Illuminate\Database\Eloquent\Builder|GodownMast whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GodownMast wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GodownMast whereScode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GodownMast whereShortName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GodownMast whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GodownMast whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GodownMast whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GodownMast whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GodownMast whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GodownMast whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class GodownMast extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'godown_mast';
}
