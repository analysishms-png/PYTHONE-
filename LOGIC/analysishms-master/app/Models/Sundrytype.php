<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $vtype
 * @property string $sundry_code
 * @property int $sno
 * @property string $appdate
 * @property string $disp_name
 * @property string $calcformula
 * @property string $peroramt
 * @property string $svalue
 * @property string $revcode
 * @property string $nature
 * @property string $calcsign
 * @property string $bold
 * @property string $automanual
 * @property string $u_name
 * @property string $created_at
 * @property string|null $updated_at
 * @property string $u_ae
 * @property string $postyn
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype query()
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype whereAppdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype whereAutomanual($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype whereBold($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype whereCalcformula($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype whereCalcsign($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype whereDispName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype whereNature($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype wherePeroramt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype wherePostyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype whereRevcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype whereSundryCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype whereSvalue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sundrytype whereVtype($value)
 * @mixin \Eloquent
 */
class Sundrytype extends Model
{
    use HasFactory;
    protected $table = 'sundrytype';
}
