<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string|null $docid
 * @property int|null $folio_no
 * @property int $sno1
 * @property string $bill_to
 * @property string $guestcode
 * @property string|null $name
 * @property string|null $add1
 * @property string|null $add2
 * @property string|null $city
 * @property string|null $state_code
 * @property string|null $country_code
 * @property string|null $type
 * @property string|null $mobile_no
 * @property string|null $email_id
 * @property string|null $nationality
 * @property string|null $anniversary
 * @property string|null $guest_status
 * @property string|null $spl_instr
 * @property string|null $comments1
 * @property string|null $comments2
 * @property string|null $comments3
 * @property string|null $city_name
 * @property string|null $state_name
 * @property string|null $country_name
 * @property string|null $gender
 * @property string|null $marital_status
 * @property string|null $zip_code
 * @property string|null $panno
 * @property string|null $con_prefix
 * @property string|null $dob
 * @property int|null $age
 * @property string $guestsign
 * @property string|null $pic_path
 * @property string|null $id_proof
 * @property string|null $m_prof
 * @property string|null $father_name
 * @property string|null $idproof_no
 * @property string|null $idpic_path
 * @property string|null $issuingcitycode
 * @property string|null $issuingcityname
 * @property string|null $issuingcountrycode
 * @property string|null $issuingcountryname
 * @property string|null $expiryDate
 * @property string|null $paymentMethod
 * @property string|null $billingAccount
 * @property string|null $complimentry
 * @property string|null $vipStatus
 * @property string|null $likes
 * @property string|null $dislikes
 * @property int|null $fom
 * @property string|null $pos
 * @property string|null $webYN
 * @property int $birthdaywishsend
 * @property int $anniversarywishsend
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf query()
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereAdd1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereAdd2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereAge($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereAnniversary($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereAnniversarywishsend($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereBillTo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereBillingAccount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereBirthdaywishsend($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereCity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereCityName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereComments1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereComments2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereComments3($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereComplimentry($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereConPrefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereCountryCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereCountryName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereDislikes($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereDob($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereEmailId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereExpiryDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereFatherName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereFolioNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereFom($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereGender($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereGuestStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereGuestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereGuestsign($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereIdProof($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereIdpicPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereIdproofNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereIssuingcitycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereIssuingcityname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereIssuingcountrycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereIssuingcountryname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereLikes($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereMProf($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereMaritalStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereMobileNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereNationality($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf wherePanno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf wherePaymentMethod($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf wherePicPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf wherePos($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereSno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereSplInstr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereStateCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereStateName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereVipStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereWebYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestProf whereZipCode($value)
 * @mixin \Eloquent
 */
class GuestProf extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'guestprof';
    

    protected $fillable = [
        'propertyid',
        'docid',
        'folio_no',
        'created_at',
        'u_name',
        'u_ae',
        'complimentry',
        'guestcode',
        'name',
        'state_code',
        'country_code',
        'add1',
        'add2',
        'city',
        'type',
        'mobile_no',
        'email_id',
        'nationality',
        'anniversary',
        'guest_status',
        'comments1',
        'comments2',
        'comments3',
        'city_name',
        'state_name',
        'country_name',
        'gender',
        'marital_status',
        'zip_code',
        'con_prefix',
        'dob',
        'age',
        'pic_path',
        'id_proof',
        'idproof_no',
        'issuingcitycode',
        'issuingcityname',
        'issuingcountrycode',
        'issuingcountryname',
        'expiryDate',
        'paymentMethod',
        'idpic_path',
        'm_prof',
        'father_name',
        'fom',
        'pos'
    ];
}
