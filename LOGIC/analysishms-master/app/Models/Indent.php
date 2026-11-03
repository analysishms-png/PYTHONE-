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
 * @property int $vprefix
 * @property string $vdate
 * @property string $vtime
 * @property string $department
 * @property string $godown
 * @property string $remarks
 * @property string $veryfiuser
 * @property string|null $veryfidate
 * @property string $veryfiremark
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @property string $company
 * @property string $refdocId
 * @property string $clearyn
 * @property string $delflag
 * @method static \Illuminate\Database\Eloquent\Builder|Indent newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Indent newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Indent query()
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereClearyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereCompany($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereDepartment($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereGodown($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereRefdocId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereVeryfidate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereVeryfiremark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereVeryfiuser($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereVtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent whereVtype($value)
 * @mixin \Eloquent
 */
class Indent extends Model
{
    use HasFactory;

    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    

    protected $table = 'indent';

    protected $fillable = [
        'id',
        'propertyid',
        'docid',
        'vtype',
        'vno',
        'vprefix',
        'vdate',
        'vtime',
        'department',
        'godown',
        'remarks',
        'veryfiuser',
        'veryfidate',
        'veryfiremark',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae',
        'company',
        'refdocId',
    ];
}
