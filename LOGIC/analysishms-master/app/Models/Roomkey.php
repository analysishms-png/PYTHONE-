<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $propertyid
 * @property string $docid
 * @property int $sno1
 * @property array $data
 * @property string $u_name
 * @property int $status
 * @property string $reason
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|Roomkey newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Roomkey newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Roomkey query()
 * @method static \Illuminate\Database\Eloquent\Builder|Roomkey whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Roomkey whereData($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Roomkey whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Roomkey whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Roomkey wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Roomkey whereReason($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Roomkey whereSno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Roomkey whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Roomkey whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Roomkey whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Roomkey extends Model
{
    use HasFactory;

    protected $fillable = [
        'propertyid',
        'docid',
        'sno1',
        'data',
        'u_name',
        'status',
        'reason'
    ];

    protected $casts = [
        'data' => 'array'
    ];
}
