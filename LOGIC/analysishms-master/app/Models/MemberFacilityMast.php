<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $code
 * @property string $name
 * @property string $sname
 * @property string $chargetype
 * @property string $fixedrate
 * @property string $taxstru
 * @property string $accode
 * @property string $activeyn
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFacilityMast newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFacilityMast newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFacilityMast query()
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFacilityMast whereAccode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFacilityMast whereActiveyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFacilityMast whereChargetype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFacilityMast whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFacilityMast whereFixedrate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFacilityMast whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFacilityMast wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFacilityMast whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFacilityMast whereSname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFacilityMast whereTaxstru($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFacilityMast whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFacilityMast whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFacilityMast whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberFacilityMast whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class MemberFacilityMast extends Model
{
    use HasFactory;

    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

    protected $table = 'memfacilitymast';
}
