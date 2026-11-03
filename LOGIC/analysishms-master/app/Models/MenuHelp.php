<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $compcode
 * @property string $username
 * @property int $opt1
 * @property int $opt2
 * @property int $opt3
 * @property int $code
 * @property string $route
 * @property string $module
 * @property string $module_name
 * @property int $view
 * @property int $ins
 * @property int $edit
 * @property string $del
 * @property int $print
 * @property string $flag
 * @property string $outletcode
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp query()
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp whereCompcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp whereDel($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp whereEdit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp whereFlag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp whereIns($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp whereModule($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp whereModuleName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp whereOpt1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp whereOpt2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp whereOpt3($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp whereOutletcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp wherePrint($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp whereRoute($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp whereUsername($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MenuHelp whereView($value)
 * @mixin \Eloquent
 */
class MenuHelp extends Model
{
    use HasFactory;
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'menuhelp'; 

    protected $fillable = [
        'propertyid',
        'username',
        'compcode',
        'opt1',
        'opt2',
        'opt3',
        'code',
        'route',
        'module',
        'module_name',
        'view',
        'ins',
        'edit',
        'del',
        'print',
        'flag',
        'outletcode',
        'created_at',
        'updated_at',
        'u_name',
    ];
}
