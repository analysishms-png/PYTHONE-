<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $propertyid
 * @property string $docid
 * @property int $vsno
 * @property string $vtype
 * @property int $vno
 * @property string $vprefix
 * @property string $vdate
 * @property string $subcode
 * @property string $amtcr
 * @property string $amtdr
 * @property string $contrasub
 * @property string|null $chqno
 * @property string|null $chqdate
 * @property string $delflag
 * @property string|null $clgdate
 * @property string $narration
 * @property string $groupcode
 * @property string $groupnature
 * @property string $u_name
 * @property string $deleted_by
 * @property string|null $deleted_at
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @property string $verifyuser
 * @property string $verifyremark
 * @property string|null $verifydate
 * @property string $rejectremark
 * @property string $rejectuser
 * @property string|null $rejectdate
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog query()
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereAmtcr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereAmtdr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereChqdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereChqno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereClgdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereContrasub($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereDeletedBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereGroupcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereGroupnature($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereNarration($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereRejectdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereRejectremark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereRejectuser($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereSubcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereVerifydate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereVerifyremark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereVerifyuser($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereVsno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|LedgerLog whereVtype($value)
 * @mixin \Eloquent
 */
class LedgerLog extends Model
{
    use HasFactory;

    protected $fillable = [
        'propertyid',
        'docid',
        'vsno',
        'vtype',
        'vno',
        'vprefix',
        'vdate',
        'subcode',
        'amtcr',
        'amtdr',
        'contrasub',
        'chqno',
        'chqdate',
        'delflag',
        'clgdate',
        'narration',
        'groupcode',
        'groupnature',
        'u_name',
        'u_ae',
        'deleted_by',
        'deleted_at',
        'verifyuser',
        'verifyremark',
        'verifydate',
        'rejectremark',
        'rejectuser',
        'rejectdate'
    ];
}
