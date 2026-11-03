<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $item
 * @property string $type
 * @property string $u_name
 * @property string $created_at
 * @property string $u_ae
 * @property int|null $srno
 * @property string $dcode
 * @method static \Illuminate\Database\Eloquent\Builder|HkAmentiesMaster newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HkAmentiesMaster newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HkAmentiesMaster query()
 * @method static \Illuminate\Database\Eloquent\Builder|HkAmentiesMaster whereDcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkAmentiesMaster whereItem($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkAmentiesMaster wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkAmentiesMaster whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkAmentiesMaster whereSrno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkAmentiesMaster whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkAmentiesMaster whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkAmentiesMaster whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkAmentiesMaster whereUName($value)
 * @mixin \Eloquent
 */
class HkAmentiesMaster extends Model
{
    protected $table = 'hkamentiesmaster';

    

    protected $keyType = 'int';

    public $incrementing = true;

    public $timestamps = false;

    protected $fillable = [
        'propertyid',
        'item',
        'type',
        'u_name',
        'created_at',
        'u_ae',
        'srno',
        'dcode',
    ];
}
