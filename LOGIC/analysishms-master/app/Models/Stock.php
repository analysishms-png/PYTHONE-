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
 * @property int|null $item
 * @property string $qtyiss
 * @property string|null $qtyrec
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
 * @property string|null $vtime
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
 * @property string|null $delremark
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
 * @property string|null $ExpDate
 * @property string $mergedwith
 * @property string $batch_no
 * @property string|null $mfg_date
 * @property string|null $expiry_date
 * @method static \Illuminate\Database\Eloquent\Builder|Stock newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Stock newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Stock query()
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereAccqty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereBatchNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereChalqty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereCompany($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereContradocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereContrasno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereConvratio($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereDelremark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereDepartcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereDiscamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereDiscapp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereDiscper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereExpDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereExpiryDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereFreesno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereGodowncode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereIndentdocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereIndentsno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereIssqty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereIssueunit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereItem($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereItemrate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereItemrestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereKotdocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereKotsno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereLandval($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereMergedwith($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereMfgDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock wherePartycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereQtyiss($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereQtyrec($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereRecdqty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereRecdunit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereRefdocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereRejqty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereRoomcat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereRoomno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereRoomtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereRoundoff($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereSchemecode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereSchrgamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereSchrgapp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereSchrgper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereSeqno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereSpecification($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereTaxamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereTaxper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereUnit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereVoidyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereVtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Stock whereVtype($value)
 * @mixin \Eloquent
 */
class Stock extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'stock';
    protected $primaryKey = 'docid';
    public $incrementing = false;
    protected $keyType = 'string';
    protected $fillable = [
        'delflag',
    ];
}
