<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $propertyid
 * @property string $username
 * @property string $log_type
 * @property string $message
 * @property int|null $line
 * @property string|null $file
 * @property string|null $ip_address
 * @property string $created_at
 * @method static \Illuminate\Database\Eloquent\Builder|Log newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Log newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Log query()
 * @method static \Illuminate\Database\Eloquent\Builder|Log whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Log whereFile($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Log whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Log whereIpAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Log whereLine($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Log whereLogType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Log whereMessage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Log wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Log whereUsername($value)
 * @mixin \Eloquent
 */
class Log extends Model
{
    protected $table = 'logs';

    protected $fillable = [
        'propertyid',
        'username',
        'log_type',
        'message',
        'line',
        'file',
        'ip_address'
    ];

    public $timestamps = false;
}
