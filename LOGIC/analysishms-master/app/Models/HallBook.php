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
 * @property string $vtime
 * @property int $vprefix
 * @property string $vdate
 * @property string $partyname
 * @property string $add1
 * @property string $add2
 * @property string|null $city
 * @property string $panno
 * @property string $mobileno
 * @property string $mobileno1
 * @property string $func_name
 * @property string $restcode
 * @property string $housekeeping
 * @property string $frontoff
 * @property string $engg
 * @property string $security
 * @property string $chef
 * @property string $board
 * @property string $menuspl1
 * @property string $menuspl2
 * @property string $menuspl3
 * @property string $menuspl4
 * @property string $menuspl5
 * @property string $menuspl6
 * @property string $menuspl7
 * @property int $expatt
 * @property int $guaratt
 * @property string $coverrate
 * @property string $companycode
 * @property string $remark
 * @property string $bookingagent
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook query()
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereAdd1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereAdd2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereBoard($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereBookingagent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereChef($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereCity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereCompanycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereCoverrate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereEngg($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereExpatt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereFrontoff($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereFuncName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereGuaratt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereHousekeeping($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereMenuspl1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereMenuspl2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereMenuspl3($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereMenuspl4($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereMenuspl5($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereMenuspl6($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereMenuspl7($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereMobileno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereMobileno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook wherePanno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook wherePartyname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereSecurity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereVtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallBook whereVtype($value)
 * @mixin \Eloquent
 */
class HallBook extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'hallbook';


    protected $fillable = [
        'propertyid',
        'docid',
        'vtype',
        'vno',
        'vtime',
        'vprefix',
        'vdate',
        'partyname',
        'add1',
        'add2',
        'city',
        'panno',
        'mobileno',
        'mobileno1',
        'func_name',
        'restcode',
        'housekeeping',
        'frontoff',
        'engg',
        'security',
        'chef',
        'board',
        'menuspl1',
        'menuspl2',
        'menuspl3',
        'menuspl4',
        'menuspl5',
        'menuspl6',
        'menuspl7',
        'expatt',
        'guaratt',
        'coverrate',
        'companycode',
        'remark',
        'bookingagent',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae'
    ];   
}
