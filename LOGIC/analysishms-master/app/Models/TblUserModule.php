<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $opt1
 * @property int $opt2
 * @property int $opt3
 * @property int $code
 * @property string $route
 * @property string|null $module
 * @property string $module_name
 * @property string|null $flag
 * @property string $outletcode
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|TblUserModule newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|TblUserModule newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|TblUserModule query()
 * @method static \Illuminate\Database\Eloquent\Builder|TblUserModule whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TblUserModule whereFlag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TblUserModule whereModule($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TblUserModule whereModuleName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TblUserModule whereOpt1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TblUserModule whereOpt2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TblUserModule whereOpt3($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TblUserModule whereOutletcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TblUserModule whereRoute($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TblUserModule whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TblUserModule whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TblUserModule whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class TblUserModule extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

    protected $table = 'tbl_usermodule';
}
