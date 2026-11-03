<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property string $propertyid
 * @property int|null $user_id
 * @property string $username
 * @property string $action
 * @property string|null $module
 * @property string|null $description
 * @property string|null $ip_address
 * @property string|null $user_agent
 * @property array|null $properties
 * @property string|null $url
 * @property string|null $method
 * @property int|null $subject_id
 * @property string|null $subject_type
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read Model|\Eloquent|null $subject
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|ActivityLog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ActivityLog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ActivityLog query()
 * @method static \Illuminate\Database\Eloquent\Builder|ActivityLog whereAction($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ActivityLog whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ActivityLog whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ActivityLog whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ActivityLog whereIpAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ActivityLog whereMethod($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ActivityLog whereModule($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ActivityLog whereProperties($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ActivityLog wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ActivityLog whereSubjectId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ActivityLog whereSubjectType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ActivityLog whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ActivityLog whereUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ActivityLog whereUserAgent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ActivityLog whereUserId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ActivityLog whereUsername($value)
 * @mixin \Eloquent
 */
class ActivityLog extends Model
{
    protected $table = 'activity_logs';

    protected $fillable = [
        'propertyid',
        'username',
        'user_id',
        'action',
        'module',
        'description',
        'ip_address',
        'user_agent',
        'properties',
        'url',
        'method',
        'subject_id',
        'subject_type',
    ];

    protected $casts = [
        'properties' => 'array',
    ];

    public function user()
    {
        return $this->belongsTo(\App\Models\User::class);
    }

    public function subject()
    {
        return $this->morphTo();
    }
}
