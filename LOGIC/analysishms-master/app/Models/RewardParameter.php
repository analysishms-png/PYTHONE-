<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $propertyid
 * @property int $code
 * @property string $category
 * @property string $rpointonamt
 * @property string $rpoint
 * @property string $rpointvalue
 * @property string $limitlow
 * @property string $limitup
 * @property string $restcode
 * @property string|null $validupto
 * @property int $activeyn
 * @property string $minamtreedem
 * @property string $compoperator
 * @property string $u_name
 * @property string $created_at
 * @property string|null $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter query()
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter whereActiveyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter whereCategory($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter whereCompoperator($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter whereLimitlow($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter whereLimitup($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter whereMinamtreedem($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter whereRpoint($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter whereRpointonamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter whereRpointvalue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RewardParameter whereValidupto($value)
 * @mixin \Eloquent
 */
class RewardParameter extends Model
{
    use HasFactory;
    protected $table = 'rwparameter';
    public $timestamps = false;

    protected $fillable = [
        'propertyid',
        'code',
        'sno',
        'name',
        'category',
        'rpointonamt',
        'rpoint',
        'rpointvalue',
        'limitlow',
        'limitup',
        'compoperator',
        'u_name',
        'u_ae',
        'validupto',
        'activeyn',
        'restcode',
        'minamtreedem'
    ];
}
