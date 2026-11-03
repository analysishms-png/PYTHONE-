<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $category
 * @property string $ncat
 * @property string|null $short_name
 * @property string $v_type
 * @property string|null $contratype
 * @property string $description
 * @property string $description_help
 * @property string $number_method
 * @property int|null $start_no
 * @property string|null $last_ent_date
 * @property string|null $separate_narr
 * @property string|null $common_narr
 * @property string|null $narration
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string|null $chqno
 * @property string|null $chqdt
 * @property string|null $clgdt
 * @property string|null $restcode
 * @property string|null $defaultcrac
 * @property string|null $defaultdrac
 * @property string|null $firstdrcr
 * @property string|null $sysYN
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType query()
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereCategory($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereChqdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereChqno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereClgdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereCommonNarr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereContratype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereDefaultcrac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereDefaultdrac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereDescriptionHelp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereFirstdrcr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereLastEntDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereNarration($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereNcat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereNumberMethod($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereSeparateNarr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereShortName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereStartNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VoucherType whereVType($value)
 * @mixin \Eloquent
 */
class VoucherType extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'voucher_type';

    protected $fillable = [
        'propertyid',
        'category',
        'ncat',
        'short_name',
        'v_type',
        'contratype',
        'description',
        'description_help',
        'number_method',
        'start_no',
        'last_ent_date',
        'separate_narr',
        'common_narr',
        'narration',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae',
        'chqno',
        'chqdt',
        'clgdt',
        'restcode',
        'defaultcrac',
        'defaultdrac',
        'firstdrcr',
        'sysYN'
    ];
}
