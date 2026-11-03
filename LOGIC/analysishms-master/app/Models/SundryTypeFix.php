<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $sundry_code
 * @property string $disp_name
 * @property string $nature
 * @property string $calcsign
 * @property string $calcformula
 * @property string $peroramt
 * @property string $roundoff
 * @property string|null $vals
 * @property string|null $limits
 * @property string|null $postac
 * @property string|null $grp
 * @property string $sysYN
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix query()
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix whereCalcformula($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix whereCalcsign($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix whereDispName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix whereGrp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix whereLimits($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix whereNature($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix wherePeroramt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix wherePostac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix whereRoundoff($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix whereSundryCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SundryTypeFix whereVals($value)
 * @mixin \Eloquent
 */
class SundryTypeFix extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'sundrytypefix';
}
