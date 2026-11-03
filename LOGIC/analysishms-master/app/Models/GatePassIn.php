<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int|null $propertyid
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
 * @property string|null $wordstatus
 * @property string|null $u_name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property string|null $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn query()
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereApprovedby($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereDepartment($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereGatepassno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereInout($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereInwordduedate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereItemName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereMaterinouyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereMobileno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereMtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn wherePartycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereQty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereSecuritychkyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereUnit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereVehicleno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereVisitiorname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereVtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatePassIn whereWordstatus($value)
 * @mixin \Eloquent
 */
class GatePassIn extends Model
{
    use HasFactory;

    protected $table = 'gate_passin';
    
    public $timestamps = false;

    protected $fillable = [
        'propertyid',
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
        'wordstatus',
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
