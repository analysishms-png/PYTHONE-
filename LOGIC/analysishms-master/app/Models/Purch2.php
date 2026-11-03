<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property int $sno
 * @property string $vtype
 * @property int $vno
 * @property string $vprefix
 * @property string $vdate
 * @property string $partycode
 * @property string $restcode
 * @property int $mrno
 * @property string $contradocid
 * @property int $contrasno
 * @property string $item
 * @property string $qtyiss
 * @property string $qtyrec
 * @property string $unit
 * @property string $rate
 * @property string $amount
 * @property string $taxper
 * @property string $taxamt
 * @property string $discper
 * @property string $discamt
 * @property string $remarks
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @property string $total
 * @property string $discapp
 * @property string $roundoff
 * @property string $departcode
 * @property string $godcode
 * @property string $chalqty
 * @property string $recdqty
 * @property string $accqty
 * @property string $rejqty
 * @property string $recdunit
 * @property string $specification
 * @property string $itemrate
 * @property string $delflag
 * @property string $convratio
 * @property string $postval
 * @property string $landval
 * @property string $issqty
 * @property string $issuunit
 * @property string $taxstru
 * @property string $accode
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 query()
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereAccode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereAccqty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereChalqty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereContradocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereContrasno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereConvratio($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereDepartcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereDiscamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereDiscapp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereDiscper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereGodcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereIssqty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereIssuunit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereItem($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereItemrate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereLandval($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereMrno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 wherePartycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 wherePostval($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereQtyiss($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereQtyrec($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereRecdqty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereRecdunit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereRejqty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereRoundoff($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereSpecification($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereTaxamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereTaxper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereTaxstru($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereUnit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Purch2 whereVtype($value)
 * @mixin \Eloquent
 */
class Purch2 extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'purch2';
    protected $primaryKey = 'docid';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $fillable = [
        'propertyid',
        'docid',
        'sno',
        'vtype',
        'vno',
        'vprefix',
        'vdate',
        'partycode',
        'restcode',
        'mrno',
        'contradocid',
        'contrasno',
        'item',
        'qtyiss',
        'qtyrec',
        'unit',
        'rate',
        'amount',
        'taxper',
        'taxamt',
        'discper',
        'discamt',
        'remarks',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae',
        'total',
        'discapp',
        'roundoff',
        'departcode',
        'godcode',
        'chalqty',
        'recdqty',
        'accqty',
        'rejqty',
        'recdunit',
        'specification',
        'itemrate',
        'delflag',
        'convratio',
        'postval',
        'landval',
        'issqty',
        'issuunit',
        'taxstru',
        'accode'
    ];
}
