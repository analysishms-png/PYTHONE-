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
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log query()
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereAdd($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereAddamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereAuEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereAuName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereCashrecd($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereCgst($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereCity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereCustname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereDedamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereDeliveredyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereDiscamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereDiscper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereDiscremark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereFoliono($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereFolionodocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereGuaratt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereIgst($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereKotno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereMergedwith($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereNetamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereNontaxable($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereParty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log wherePhoneno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log wherePrinted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereRoomcat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereRoomno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereRoomtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereRoundoff($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereServicecharge($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereSgst($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereSno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereTaxable($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereTokenno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereVat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereVtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereVtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Sale1log whereWaiter($value)
 * @mixin \Eloquent
 */
class Sale1log extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'sale1log';
    public $incrementing = true;

    protected $fillable = [
        'propertyid',
        'docid',
        'vtype',
        'vno',
        'vtime',
        'vprefix',
        'vdate',
        'restcode',
        'roomcat',
        'roomtype',
        'roomno',
        'foliono',
        'sno1',
        'party',
        'total',
        'discper',
        'discamt',
        'nontaxable',
        'taxable',
        'servicecharge',
        'addamt',
        'dedamt',
        'roundoff',
        'netamt',
        'remark',
        'waiter',
        'kotno',
        'tokenno',
        'guaratt',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae',
        'delflag',
        'printed',
        'deliveredyn',
        'custname',
        'phoneno',
        'add',
        'city',
        'cashrecd',
        'folionodocid',
        'au_name',
        'acreated_at',
        'discremark',
        'cgst',
        'sgst',
        'igst'
    ];
}
