<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $propertyid
 * @property string|null $subcode
 * @property int|null $sno
 * @property string|null $relationship
 * @property string|null $conprefix
 * @property string|null $name
 * @property string|null $gender
 * @property string|null $maritalstatus
 * @property string|null $dob
 * @property string|null $pob
 * @property string|null $weddate
 * @property string|null $mobile
 * @property string|null $email
 * @property string|null $nationality
 * @property string|null $religion
 * @property string|null $bloodgroup
 * @property string|null $proocc
 * @property string|null $edquali
 * @property string|null $tbusiness
 * @property string|null $turnover
 * @property string|null $desig
 * @property string|null $passport
 * @property string|null $pan
 * @property string|null $intax
 * @property string|null $spinterest
 * @property string|null $picpath
 * @property string|null $signpath
 * @property string|null $label
 * @property string|null $u_name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string|null $hw_id
 * @property string|null $cardno
 * @property string|null $cardissdate
 * @property string|null $cardregid
 * @property string|null $cardvalidupto
 * @property string|null $postedat
 * @property string|null $mobile1
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily query()
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereBloodgroup($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereCardissdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereCardno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereCardregid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereCardvalidupto($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereConprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereDesig($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereDob($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereEdquali($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereGender($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereHwId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereIntax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereLabel($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereMaritalstatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereMobile($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereMobile1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereNationality($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily wherePan($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily wherePassport($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily wherePicpath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily wherePob($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily wherePostedat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereProocc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereRelationship($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereReligion($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereSignpath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereSpinterest($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereSubcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereTbusiness($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereTurnover($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFamily whereWeddate($value)
 * @mixin \Eloquent
 */
class MemberFamily extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'memberfamily';

    protected $fillable = [
        'propertyid',
        'subcode',
        'sno',
        'relationship',
        'conprefix',
        'name',
        'gender',
        'maritalstatus',
        'dob',
        'pob',
        'weddate',
        'mobile',
        'email',
        'nationality',
        'religion',
        'bloodgroup',
        'proocc',
        'edquali',
        'tbusiness',
        'turnover',
        'desig',
        'passport',
        'pan',
        'intax',
        'spinterest',
        'picpath',
        'signpath',
        'label',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae',
        'hw_id',
        'cardno',
        'cardissdate',
        'cardregid',
        'cardvalidupto',
        'postedat',
        'mobile1'
    ];
}
