<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $mth_year
 * @property string $emp_code
 * @property string $work_day
 * @property string $cl
 * @property string $leave
 * @property string $sunday
 * @property string $holiday
 * @property string $absent
 * @property string $basic
 * @property string $da
 * @property string $hra
 * @property string $other_allow
 * @property string $other_deduc
 * @property string $conveyance
 * @property string $medical
 * @property string $lta
 * @property string $pf
 * @property string $epf
 * @property string $esi
 * @property string $loan
 * @property string $advance
 * @property string $net_salary
 * @property string $loan_bal
 * @property string $overtime
 * @property string $overtimeamt
 * @property string $adv_bal
 * @property string $emp_basic
 * @property string $department
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|Salary newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Salary newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Salary query()
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereAbsent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereAdvBal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereAdvance($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereBasic($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereCl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereConveyance($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereDa($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereDepartment($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereEmpBasic($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereEmpCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereEpf($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereEsi($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereHoliday($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereHra($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereLeave($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereLoan($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereLoanBal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereLta($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereMedical($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereMthYear($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereNetSalary($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereOtherAllow($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereOtherDeduc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereOvertime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereOvertimeamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary wherePf($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereSunday($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Salary whereWorkDay($value)
 * @mixin \Eloquent
 */
class Salary extends Model
{
    use HasFactory;
    protected $table = 'salary';
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

    protected $fillable = [
        'id',
        'propertyid',
        'mth_year',
        'emp_code',
        'work_day',
        'cl',
        'leave',
        'sunday',
        'holiday',
        'absent',
        'Basic',
        'da',
        'hra',
        'other_allow',
        'other_deduc',
        'conveyance',
        'medical',
        'lta',
        'pf',
        'epf',
        'esi',
        'loan',
        'advance',
        'net_salary',
        'loan_bal',
        'overtime',
        'overtimeamt',
        'adv_bal',
        'emp_basic',
        'department',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae'
    ];
}
