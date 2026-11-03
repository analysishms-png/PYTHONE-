<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
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
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @property string $status
 * @property string $verifyuser
 * @property string $verifyremark
 * @property string|null $verifydate
 * @property string $rejectremark
 * @property string $rejectuser
 * @property string|null $rejectdate
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger query()
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereAmtcr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereAmtdr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereChqdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereChqno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereClgdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereContrasub($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereGroupcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereGroupnature($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereNarration($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereRejectdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereRejectremark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereRejectuser($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereSubcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereVerifydate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereVerifyremark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereVerifyuser($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereVsno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ledger whereVtype($value)
 * @mixin \Eloquent
 */
class Ledger extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'ledger';
    protected $primaryKey = 'docid';
    public $incrementing = false;
    protected $keyType = 'string';
    
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
        'created_at',
        'updated_at',
        'u_ae'
    ];
}
