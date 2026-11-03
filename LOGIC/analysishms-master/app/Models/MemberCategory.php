<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $code
 * @property string $title
 * @property string $short_name
 * @property string $subscription
 * @property string $surcharge
 * @property string $facility_billing
 * @property string $status
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|MemberCategory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MemberCategory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MemberCategory query()
 * @method static \Illuminate\Database\Eloquent\Builder|MemberCategory whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberCategory whereFacilityBilling($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberCategory wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberCategory whereShortName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberCategory whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberCategory whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberCategory whereSubscription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberCategory whereSurcharge($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberCategory whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberCategory whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MemberCategory whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class MemberCategory extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'member_categories';

    protected $fillable = [
        'id',
        'propertyid',
        'code',
        'title',
        'short_name',
        'subscription',
        'surcharge',
        'facility_billing',
        'status',
    ];
}
