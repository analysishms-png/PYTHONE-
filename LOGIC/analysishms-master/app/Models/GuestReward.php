<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property string $custcode
 * @property string $vdate
 * @property string $vtime
 * @property string $departname
 * @property string $billno
 * @property string $billamt
 * @property string $rewardpoint
 * @property string $redeempoint
 * @property string $mobileno
 * @property string $total
 * @property string $discamt
 * @property string $restcode
 * @property string $schemecode
 * @property string $saleupto
 * @property string $rppointonamt
 * @property string $rewardvalue
 * @property string $reedemvalue
 * @property string $regid
 * @property string $discper
 * @property string $u_name
 * @property string $u_ae
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward query()
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereBillamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereBillno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereCustcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereDepartname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereDiscamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereDiscper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereMobileno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereRedeempoint($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereReedemvalue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereRegid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereRewardpoint($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereRewardvalue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereRppointonamt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereSaleupto($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereSchemecode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestReward whereVtime($value)
 * @mixin \Eloquent
 */
class GuestReward extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'guestreward';
    
    protected $fillable = [
        'propertyid',
        'docid',
        'custcode',
        'vdate',
        'vtime',
        'restcode',
        'departname',
        'billno',
        'total',
        'billamt',
        'rewardpoint',
        'redeempoint',
        'mobileno',
        'discamt',
        'schemecode',
        'saleupto',
        'rppointonamt',
        'rewardvalue',
        'reedemvalue',
        'regid',
        'discper',
        'created_at',
        'u_name',
        'u_ae',
        'updated_at',
    ];
}
