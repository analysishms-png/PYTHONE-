<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $username
 * @property string $posdiscountallowupto
 * @property string $possettlementyn
 * @property string $editelementinkot
 * @property string $freeitemallow
 * @property string $refundcashcardamt
 * @property string $fomdiscuntallowupto
 * @property string $cancelguestbill
 * @property string $changeroomdetail
 * @property string $deleteguestcharges
 * @property string $changeguestcharges
 * @property string $changeguestprofile
 * @property string $cancelreservation
 * @property string $system_name
 * @property string $allowchkouttimechange
 * @property string $allowadvancechargeedit
 * @property string $posrateedit
 * @property int $voucherverify
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission query()
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereAllowadvancechargeedit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereAllowchkouttimechange($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereCancelguestbill($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereCancelreservation($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereChangeguestcharges($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereChangeguestprofile($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereChangeroomdetail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereDeleteguestcharges($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereEditelementinkot($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereFomdiscuntallowupto($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereFreeitemallow($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission wherePosdiscountallowupto($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission wherePosrateedit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission wherePossettlementyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereRefundcashcardamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereSystemName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereUsername($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserPermission whereVoucherverify($value)
 * @mixin \Eloquent
 */
class UserPermission extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'userpermission';

    protected $fillable = [
        'propertyid',
        'username',
        'posdiscountallowupto',
        'possettlementyn',
        'editelementinkot',
        'freeitemallow',
        'refundcashcardamt',
        'fomdiscuntallowupto',
        'cancelguestbill',
        'changeroomdetail',
        'deleteguestcharges',
        'changeguestcharges',
        'changeguestprofile',
        'cancelreservation',
        'system_name',
        'allowchkouttimechange',
        'allowadvancechargeedit',
        'posrateedit',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae',
    ];
}
