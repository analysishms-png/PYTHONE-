<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property float $pflimit
 * @property float $pfemployee
 * @property float $pfemployer
 * @property float $esilimit
 * @property float $esiemployee
 * @property string $salaryac
 * @property string $loanac
 * @property string $advanceac
 * @property string $esebasic
 * @property string $esida
 * @property string $esihra
 * @property string $esiconvey
 * @property string $esiother
 * @property string $esilta
 * @property float $gappcompyear
 * @property float $gmonthconsidered
 * @property float $gworkingdaysInamonth
 * @property float $gdayssalary
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll query()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereAdvanceac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereEsebasic($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereEsiconvey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereEsida($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereEsiemployee($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereEsihra($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereEsilimit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereEsilta($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereEsiother($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereGappcompyear($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereGdayssalary($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereGmonthconsidered($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereGworkingdaysInamonth($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereLoanac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll wherePfemployee($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll wherePfemployer($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll wherePflimit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereSalaryac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroPayroll whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class EnviroPayroll extends Model
{
    use HasFactory;

    protected $table = 'enviro_payroll';
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $primaryKey = 'propertyid';

    protected $fillable = [
        'id',
        'propertyid',
        'pflimit',
        'pfemployee',
        'pfemployer',
        'esilimit',
        'esiemployee',
        'salaryac',
        'loanac',
        'advanceac',
        'esebasic',
        'esida',
        'esihra',
        'esiconvey',
        'esiother',
        'esilta',
        'gappcompyear',
        'gmonthconsidered',
        'gworkingdaysInamonth',
        'gdayssalary',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae'
    ];
}
