<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property string $vtype
 * @property int $vno
 * @property string $vprefix
 * @property string $vdate
 * @property string $vtime
 * @property string $dramt
 * @property string $drac
 * @property string $cramt
 * @property string $crac
 * @property string $remark
 * @property string $delflag
 * @property string|null $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry query()
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry whereCrac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry whereCramt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry whereDrac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry whereDramt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry whereVtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ExpenseEntry whereVtype($value)
 * @mixin \Eloquent
 */
class ExpenseEntry extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'expsheet';
}
