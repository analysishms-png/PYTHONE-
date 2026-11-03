<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


    /**
 * @property int $sn
 * @property int $orderno
 * @property int|null $sno
 * @property string|null $remark
 * @property string|null $nextfollowdate
 * @property string $Status
 * @method static \Illuminate\Database\Eloquent\Builder|Demo1 newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Demo1 newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Demo1 query()
 * @method static \Illuminate\Database\Eloquent\Builder|Demo1 whereNextfollowdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Demo1 whereOrderno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Demo1 whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Demo1 whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Demo1 whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Demo1 whereStatus($value)
 * @mixin \Eloquent
 */
class Demo1 extends Model
{
    protected $table = 'demo1';

    protected $primaryKey = 'orderno';

    protected $fillable = [
        'remark',
        'nextfollowdate'
    ];
}
