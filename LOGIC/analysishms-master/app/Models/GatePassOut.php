<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int|null $propertyid
 * @property string $docid
 * @property int|null $gatepassno
 * @property string|null $inout
 * @property string|null $type
 * @property string $vtype
 * @property string $mtype
 * @property \Illuminate\Support\Carbon|null $date
 * @property \Illuminate\Support\Carbon|null $time
 * @property string|null $visitiorname
 * @property string|null $partycode
 * @property string|null $mobileno
 * @property string|null $vehicleno
 * @property string|null $materinouyn
 * @property string|null $item_name
 * @property string|null $qty
 * @property string|null $unit
 * @property string|null $department
 * @property string|null $remark
 * @property \Illuminate\Support\Carbon|null $inwordduedate
 * @property string|null $approvedby
 * @property string|null $securitychkyn
 * @property string|null $exitstatus
 * @property string|null $u_name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property string|null $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut query()
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereApprovedby($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereDepartment($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereExitstatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereGatepassno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereInout($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereInwordduedate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereItemName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereMaterinouyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereMobileno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereMtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut wherePartycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereQty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereSecuritychkyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereUnit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereVehicleno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereVisitiorname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassOut whereVtype($value)
 * @mixin \Eloquent
 */
class GatePassOut extends Model
{
    use HasFactory;

    protected $table = 'gate_pass_out';
    
    public $timestamps = false;

    protected $fillable = [
        'propertyid',
        'docid',
        'gatepassno',
        'inout',
        'type',
        'vtype',
        'mtype',
        'date',
        'time',
        'visitiorname',
        'partycode',
        'mobileno',
        'vehicleno',
        'materinouyn',
        'item_name',
        'qty',
        'unit',
        'department',
        'remark',
        'inwordduedate',
        'approvedby',
        'securitychkyn',
        'exitstatus',
        'u_name',
        'created_at',
        'u_ae',
    ];

    protected $casts = [
        'date' => 'datetime',
        'time' => 'datetime',
        'created_at' => 'datetime',
        'inwordduedate' => 'date',
    ];
}
