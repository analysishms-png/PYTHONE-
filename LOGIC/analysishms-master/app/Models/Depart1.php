<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $departcode
 * @property string $associatedrestcode
 * @method static \Illuminate\Database\Eloquent\Builder|Depart1 newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Depart1 newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Depart1 query()
 * @method static \Illuminate\Database\Eloquent\Builder|Depart1 whereAssociatedrestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart1 whereDepartcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart1 wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart1 whereSn($value)
 * @mixin \Eloquent
 */
class Depart1 extends Model
{
    use HasFactory;
    protected $table = 'depart1';
}
