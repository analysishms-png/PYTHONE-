<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $vtype
 * @property int $vno
 * @property string $vdate
 * @property string $vprefix
 * @property string $empcode
 * @property string $amount
 * @property int $installment
 * @property string $remark
 * @property string $accode
 * @property string $u_name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string $u_ae
 * @property-read \App\Models\Employee|null $employee
 * @method static \Illuminate\Database\Eloquent\Builder|Loan newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Loan newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Loan query()
 * @method static \Illuminate\Database\Eloquent\Builder|Loan whereAccode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Loan whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Loan whereEmpcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Loan whereInstallment($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Loan wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Loan whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Loan whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Loan whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Loan whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Loan whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Loan whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Loan whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Loan whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Loan whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Loan whereVtype($value)
 * @mixin \Eloquent
 */
class Loan extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'loan';

    protected $fillable = [
        'id',
        'propertyid',
        'vtype',
        'vno',
        'vprefix',
        'vdate',
        'empcode',
        'amount',
        'installment',
        'remark',
        'accode',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae'
    ];

    public function employee()
    {
        return $this->belongsTo(Employee::class, 'empcode', 'code')->where('propertyid', $this->propertyid);
    }
}

