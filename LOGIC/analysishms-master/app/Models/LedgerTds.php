<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $propertyid
 * @property string $docid
 * @property int $vsno
 * @property string $vprefix
 * @property string $vdate
 * @property string $tdscode
 * @property string $tdsdrcode
 * @property float $onamt
 * @property float $tds
 * @property float $tdsamt
 * @property string $tdsdocid
 * @property int $tdsvsno
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds query()
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds whereOnamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds whereTds($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds whereTdsamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds whereTdscode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds whereTdsdocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds whereTdsdrcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds whereTdsvsno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerTds whereVsno($value)
 * @mixin \Eloquent
 */
class LedgerTds extends Model
{
    use HasFactory;

    protected $fillable = [
        'propertyid',
        'docid',
        'vsno',
        'vprefix',
        'vdate',
        'tdscode',
        'tdsdrcode',
        'onamt',
        'tds',
        'tdsamt',
        'tdsdocid',
        'tdsvsno',
        'u_name',
        'u_ae'
    ];
}
