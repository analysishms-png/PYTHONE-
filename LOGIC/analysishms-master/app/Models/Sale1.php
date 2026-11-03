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
 * @property string $vprefix
 * @property string $vdate
 * @property string $restcode
 * @property string $roomcat
 * @property string $roomtype
 * @property string $roomno
 * @property int $foliono
 * @property int $sno1
 * @property string $party
 * @property string $total
 * @property string $discper
 * @property string $discamt
 * @property string $nontaxable
 * @property string $taxable
 * @property string $servicecharge
 * @property string $addamt
 * @property string $dedamt
 * @property string $roundoff
 * @property string $netamt
 * @property string $remark
 * @property string $waiter
 * @property string $kotno
 * @property int $tokenno
 * @property int $guaratt
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @property string $delflag
 * @property string|null $delremark
 * @property string $printed
 * @property string $deliveredyn
 * @property string $custname
 * @property string $phoneno
 * @property string $add
 * @property string $city
 * @property string $cashrecd
 * @property string $folionodocid
 * @property string $au_name
 * @property string|null $acreated_at
 * @property string $discremark
 * @property string $cgst
 * @property string $sgst
 * @property string $vat
 * @property string $igst
 * @property string $mergedwith
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 query()
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereAdd($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereAddamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereAuEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereAuName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereCashrecd($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereCgst($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereCity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereCustname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereDedamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereDeliveredyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereDelremark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereDiscamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereDiscper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereDiscremark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereFoliono($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereFolionodocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereGuaratt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereIgst($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereKotno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereMergedwith($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereNetamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereNontaxable($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereParty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 wherePhoneno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 wherePrinted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereRoomcat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereRoomno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereRoomtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereRoundoff($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereServicecharge($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereSgst($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereSno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereTaxable($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereTokenno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereVat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereVtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereVtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1 whereWaiter($value)
 * @mixin \Eloquent
 */
class Sale1 extends Model
{
    use HasFactory;

    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'sale1';
}
