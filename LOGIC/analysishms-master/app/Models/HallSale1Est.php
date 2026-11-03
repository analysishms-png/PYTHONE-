<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docId
 * @property string $vtype
 * @property string $vprefix
 * @property int $vno
 * @property string $vdate
 * @property string $restcode
 * @property string $party
 * @property string $comp_code
 * @property string $total
 * @property string $discper
 * @property string $discamt
 * @property string $nontaxable
 * @property string $taxable
 * @property string $roundoff
 * @property string $netamt
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @property string $remark
 * @property float $noofpax
 * @property string $rateperpax
 * @property string $totalpercover
 * @property string $advance
 * @property int $rectno
 * @property string|null $rectdate
 * @property string $bookdocid
 * @property string $narration
 * @property string $narration1
 * @property string $cgst
 * @property string $sgst
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est query()
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereAdvance($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereBookdocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereCgst($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereCompCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereDiscamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereDiscper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereDocId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereNarration($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereNarration1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereNetamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereNontaxable($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereNoofpax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereParty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereRateperpax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereRectdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereRectno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereRoundoff($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereSgst($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereTaxable($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereTotalpercover($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1Est whereVtype($value)
 * @mixin \Eloquent
 */
class HallSale1Est extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'hallsale1est';

    protected $fillable = [
        'id',
        'propertyid',
        'docId',
        'vtype',
        'vno',
        'vdate',
        'restcode',
        'party',
        'total',
        'discper',
        'discamt',
        'nontaxable',
        'taxable',
        'netamt',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae',
        'remark',
        'noofpax',
        'rateperpax',
        'totalpercover',
        'advance',
        'rectno',
        'rectdate',
        'bookdocid',
        'narration',
        'narration1',
        'cgst',
        'sgst',
    ];
}
