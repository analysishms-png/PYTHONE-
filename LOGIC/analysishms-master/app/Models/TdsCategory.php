<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $propertyid
 * @property string $code
 * @property string $name
 * @property float $tdspercentage
 * @property string $account
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|TdsCategory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|TdsCategory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|TdsCategory query()
 * @method static \Illuminate\Database\Eloquent\Builder|TdsCategory whereAccount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TdsCategory whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TdsCategory whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TdsCategory whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TdsCategory whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TdsCategory wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TdsCategory whereTdspercentage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TdsCategory whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TdsCategory whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TdsCategory whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class TdsCategory extends Model
{
    use HasFactory;

    protected $fillable = [
        'propertyid',
        'code',
        'name',
        'tdspercentage',
        'account',
        'u_name',
    ];
}
