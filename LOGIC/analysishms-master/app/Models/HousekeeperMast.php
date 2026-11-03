<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $scode
 * @property string $name
 * @property string $empid
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @property string $activeYN
 * @method static \Illuminate\Database\Eloquent\Builder|HousekeeperMast newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HousekeeperMast newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HousekeeperMast query()
 * @method static \Illuminate\Database\Eloquent\Builder|HousekeeperMast whereActiveYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HousekeeperMast whereEmpid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HousekeeperMast whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HousekeeperMast wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HousekeeperMast whereScode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HousekeeperMast whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HousekeeperMast whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HousekeeperMast whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HousekeeperMast whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HousekeeperMast whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class HousekeeperMast extends Model
{
    use HasFactory;

    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'housekeeparmast';
}
