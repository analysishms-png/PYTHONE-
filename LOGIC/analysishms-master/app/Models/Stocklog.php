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
 * @property string $roomcat
 * @property string $roomtype
 * @property string $roomno
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
 * @property string $description
 * @property string $voidyn
 * @property string $remarks
 * @property string $kotdocid
 * @property int $kotsno
 * @property string $vtime
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @property string $total
 * @property string $discapp
 * @property string $roundoff
 * @property string $departcode
 * @property string $godowncode
 * @property string $chalqty
 * @property string $recdqty
 * @property string $accqty
 * @property string $rejqty
 * @property string $recdunit
 * @property string $specification
 * @property string $itemrate
 * @property string $delflag
 * @property string $landval
 * @property string $convratio
 * @property string $indentdocid
 * @property int $indentsno
 * @property string $issqty
 * @property string $issueunit
 * @property int $freesno
 * @property string $schemecode
 * @property int $seqno
 * @property string $company
 * @property string $itemrestcode
 * @property string $schrgapp
 * @property string $schrgper
 * @property string $schrgamt
 * @property string $refdocid
 * @property string $mergedwith
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog query()
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereAccqty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereChalqty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereCompany($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereContradocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereContrasno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereConvratio($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereDepartcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereDiscamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereDiscapp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereDiscper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereFreesno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereGodowncode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereIndentdocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereIndentsno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereIssqty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereIssueunit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereItem($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereItemrate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereItemrestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereKotdocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereKotsno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereLandval($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereMergedwith($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog wherePartycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereQtyiss($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereQtyrec($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereRecdqty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereRecdunit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereRefdocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereRejqty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereRoomcat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereRoomno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereRoomtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereRoundoff($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereSchemecode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereSchrgamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereSchrgapp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereSchrgper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereSeqno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereSpecification($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereTaxamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereTaxper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereUnit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereVoidyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereVtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stocklog whereVtype($value)
 * @mixin \Eloquent
 */
class Stocklog extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'stocklog';
    public $incrementing = true;

    protected $fillable = [
        'propertyid', 'docid', 'sno', 'vtype', 'vno', 'vprefix', 'vdate', 'partycode', 'restcode',
        'roomcat', 'roomtype', 'roomno', 'contradocid', 'contrasno', 'item', 'qtyiss', 'qtyrec',
        'unit', 'rate', 'amount', 'taxper', 'taxamt', 'discper', 'discamt', 'description', 'voidyn',
        'remarks', 'kotdocid', 'kotsno', 'vtime', 'u_name', 'created_at', 'updated_at', 'u_ae', 'total',
        'discapp', 'roundoff', 'departcode', 'godowncode', 'chalqty', 'recdqty', 'accqty', 'rejqty',
        'recdunit', 'specification', 'itemrate', 'delflag', 'landval', 'convratio', 'indentdocid',
        'indentsno', 'issqty', 'issueunit', 'freesno', 'schemecode', 'seqno', 'company', 'itemrestcode',
        'schrgapp', 'schrgper', 'schrgamt', 'refdocid'
    ];
}
