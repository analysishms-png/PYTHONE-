<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property string $propertyid
 * @property string $ncurdate
 * @property string $narration
 * @property string|null $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|NightAuditLog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|NightAuditLog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|NightAuditLog query()
 * @method static \Illuminate\Database\Eloquent\Builder|NightAuditLog whereNarration($value)
 * @method static \Illuminate\Database\Eloquent\Builder|NightAuditLog whereNcurdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|NightAuditLog wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|NightAuditLog whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|NightAuditLog whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|NightAuditLog whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|NightAuditLog whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|NightAuditLog whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class NightAuditLog extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'nightauditlog';
}
