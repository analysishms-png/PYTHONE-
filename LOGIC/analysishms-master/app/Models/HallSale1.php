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
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 query()
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereAdvance($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereBookdocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereCgst($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereCompCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereDiscamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereDiscper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereDocId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereNarration($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereNarration1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereNetamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereNontaxable($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereNoofpax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereParty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereRateperpax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereRectdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereRectno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereRoundoff($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereSgst($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereTaxable($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereTotalpercover($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HallSale1 whereVtype($value)
 * @mixin \Eloquent
 */
class HallSale1 extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'hallsale1';

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
