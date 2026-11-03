<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int|null $propertyid
 * @property string|null $code
 * @property string|null $name
 * @property string|null $sex
 * @property string|null $designation
 * @property string|null $category
 * @property string|null $f_name
 * @property string|null $birth_date
 * @property string $map_code
 * @property string|null $add1
 * @property string|null $add2
 * @property string|null $marital
 * @property string|null $spouse
 * @property string|null $qualification
 * @property string|null $joining_date
 * @property string|null $resign_date
 * @property string|null $basic
 * @property string|null $da
 * @property string|null $hra
 * @property string|null $tds
 * @property string|null $other_allow
 * @property string|null $other_deduc
 * @property string|null $conveyance
 * @property string|null $medical
 * @property string|null $lta
 * @property string|null $pf_code
 * @property string|null $esi_code
 * @property string|null $pf_yn
 * @property string|null $op_pf_balance
 * @property string|null $op_loan
 * @property string|null $op_inst
 * @property string|null $op_advance
 * @property string|null $tot_cl_allow
 * @property string|null $tot_el_allow
 * @property string|null $op_el
 * @property string|null $op_cl
 * @property string|null $curr_el
 * @property string|null $curr_cl
 * @property string|null $ac_code
 * @property string|null $phone
 * @property string|null $pan
 * @property string|null $increment
 * @property string|null $off_day
 * @property string $off_day_allow
 * @property string|null $incrmth
 * @property string|null $otrate
 * @property string|null $loanac
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string|null $activeyn
 * @property string|null $esi_yn
 * @property string|null $u_name
 * @property string|null $pic_path
 * @property string|null $idpicpath
 * @property string|null $department
 * @property string|null $idproof
 * @property string|null $idproofno
 * @property string|null $type
 * @property string|null $bio_metric_id
 * @property string|null $bank_account
 * @property string|null $ac_holder_name
 * @property string|null $ifsc_code
 * @property \Illuminate\Support\Carbon $created_at
 * @method static \Illuminate\Database\Eloquent\Builder|Employee newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Employee newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Employee query()
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereAcCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereAcHolderName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereActiveyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereAdd1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereAdd2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereBankAccount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereBasic($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereBioMetricId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereBirthDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereCategory($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereConveyance($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereCurrCl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereCurrEl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereDa($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereDepartment($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereDesignation($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereEsiCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereEsiYn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereFName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereHra($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereIdpicpath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereIdproof($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereIdproofno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereIfscCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereIncrement($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereIncrmth($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereJoiningDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereLoanac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereLta($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereMapCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereMarital($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereMedical($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereOffDay($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereOffDayAllow($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereOpAdvance($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereOpCl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereOpEl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereOpInst($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereOpLoan($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereOpPfBalance($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereOtherAllow($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereOtherDeduc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereOtrate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee wherePan($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee wherePfCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee wherePfYn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee wherePhone($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee wherePicPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereQualification($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereResignDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereSex($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereSpouse($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereTds($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereTotClAllow($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereTotElAllow($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Employee whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class Employee extends Model
{
    use HasFactory;
    protected $table = 'employee';

    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

    protected $fillable = [
        'propertyid',
        'code',
        'name',
        'sex',
        'designation',
        'category',
        'f_name',
        'birth_date',
        'add1',
        'add2',
        'marital',
        'spouse',
        'qualification',
        'joining_date',
        'resign_date',
        'basic',
        'da',
        'hra',
        'tds',
        'other_allow',
        'other_deduc',
        'conveyance',
        'medical',
        'lta',
        'pf_code',
        'esi_code',
        'pf_yn',
        'op_pf_balance',
        'op_loan',
        'op_inst',
        'op_advance',
        'tot_cl_allow',
        'tot_el_allow',
        'op_el',
        'op_cl',
        'curr_el',
        'curr_cl',
        'ac_code',
        'phone',
        'pan',
        'increment',
        'off_day',
        'off_day_allow',
        'incrmth',
        'otrate',
        'loanac',
        'updated_at',
        'u_ae',
        'activeyn',
        'esi_yn',
        'u_name',
        'pic_path',
        'idpicpath',
        'department',
        'idproof',
        'idproofno',
        'type',
        'created_at',
        'bio_metric_id',
        'bank_account',
        'ac_holder_name',
        'ifsc_code'
    ];

    // 👇 Magic: toArray me key lowercase kar denge
    public function toArray()
    {
        $original = parent::toArray();
        return array_change_key_case($original, CASE_LOWER);
    }
}
