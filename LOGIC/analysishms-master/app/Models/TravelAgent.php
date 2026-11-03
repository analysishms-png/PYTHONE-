<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property string $name
 * @property string $url
 * @property string $img
 * @property int $status
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|TravelAgent newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|TravelAgent newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|TravelAgent query()
 * @method static \Illuminate\Database\Eloquent\Builder|TravelAgent whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TravelAgent whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TravelAgent whereImg($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TravelAgent whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TravelAgent whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TravelAgent whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TravelAgent whereUrl($value)
 * @mixin \Eloquent
 */
class TravelAgent extends Model
{
    use HasFactory;
    protected $connection = 'main';
}
