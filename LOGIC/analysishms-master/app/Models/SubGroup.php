<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property string $sub_code
 * @property int $propertyid
 * @property string $name
 * @property string $group_code
 * @property string $nature
 * @property string|null $comp_type
 * @property string|null $allow_credit
 * @property string|null $conprefix
 * @property string|null $conperson
 * @property string|null $address
 * @property string $addtype
 * @property string|null $citycode
 * @property string|null $pin
 * @property string|null $mobile
 * @property string|null $email
 * @property string|null $panno
 * @property string|null $tds_catg
 * @property string|null $activeyn
 * @property string|null $allowcredit
 * @property string $creditlimit
 * @property int|null $creditdays
 * @property string|null $remark
 * @property string|null $discounttype
 * @property string $discount
 * @property string|null $religion
 * @property string|null $remarks
 * @property string|null $blacklisted
 * @property string|null $reasonblacklist
 * @property string|null $blacklistedby
 * @property string|null $sysYN
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @property string|null $gstin
 * @property string $bankacno
 * @property string $ifsccode
 * @property string $msmeno
 * @property int $cheque_design
 * @property string|null $mapcode
 * @property string|null $dealertype
 * @property string|null $legalname
 * @property string|null $tradename
 * @property int|null $subyn
 * @property string|null $fathername
 * @property string|null $mothername
 * @property string|null $appno
 * @property string|null $appdate
 * @property string|null $idproftype
 * @property string|null $idprofnum
 * @property string|null $membercategory
 * @property string|null $membership_date
 * @property string $member_id
 * @property string $logo
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup query()
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereActiveyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereAddtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereAllowCredit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereAppdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereAppno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereBankacno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereBlacklisted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereBlacklistedby($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereChequeDesign($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereCitycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereCompType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereConperson($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereConprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereCreditdays($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereCreditlimit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereDealertype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereDiscount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereDiscounttype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereFathername($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereGroupCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereGstin($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereIdprofnum($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereIdproftype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereIfsccode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereLegalname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereLogo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereMapcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereMemberId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereMembercategory($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereMembershipDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereMobile($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereMothername($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereMsmeno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereNature($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup wherePanno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup wherePin($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereReasonblacklist($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereReligion($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereRemarks($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereSubCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereSubyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereTdsCatg($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereTradename($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubGroup whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class SubGroup extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'subgroup';

    protected $fillable = [
        'sub_code',
        'propertyid',
        'name',
        'group_code',
        'nature',
        'comp_type',
        'allow_credit',
        'conprefix',
        'conperson',
        'address',
        'citycode',
        'pin',
        'mobile',
        'email',
        'panno',
        'tds_catg',
        'activeyn',
        'allowcredit',
        'creditlimit',
        'creditdays',
        'remark',
        'discounttype',
        'discount',
        'religion',
        'remarks',
        'blacklisted',
        'reasonblacklist',
        'blacklistedby',
        'sysYN',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae',
        'gstin',
        'mapcode',
        'dealertype',
        'legalname',
        'tradename',
        'subyn',
        'membership_date',
        'member_id',
        'addtype'
    ];
}
