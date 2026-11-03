<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $propertyid
 * @property string $code
 * @property string $name
 * @property string|null $superviser
 * @property int $isactive
 * @property string $u_name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|HkFloor newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HkFloor newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HkFloor query()
 * @method static \Illuminate\Database\Eloquent\Builder|HkFloor whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkFloor whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkFloor whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkFloor whereIsactive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkFloor whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkFloor wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkFloor whereSuperviser($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkFloor whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkFloor whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class HkFloor extends Model
{
    protected $table = 'hkfloors';

    protected $fillable = [
        'propertyid',
        'code',
        'name',
        'superviser',
        'isactive',
        'u_name',
    ];
}
