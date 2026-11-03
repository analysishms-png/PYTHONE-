<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $apiid
 * @property string $apisecret
 * @property string $einvusername
 * @property string $customerid
 * @property string $einvpwd
 * @property string $activeyn
 * @property string $source
 * @property string $generateirnurl
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroEinvoice newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroEinvoice newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroEinvoice query()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroEinvoice whereActiveyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroEinvoice whereApiid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroEinvoice whereApisecret($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroEinvoice whereCustomerid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroEinvoice whereEinvpwd($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroEinvoice whereEinvusername($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroEinvoice whereGenerateirnurl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroEinvoice wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroEinvoice whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroEinvoice whereSource($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroEinvoice whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroEinvoice whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroEinvoice whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class EnviroEinvoice extends Model
{
    use HasFactory;

    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'enviro_einvoice';

    protected $primaryKey = 'propertyid';

    protected $fillable = [
        'id',
        'propertyid',
        'apiid',
        'apisecret',
        'einvusername',
        'customerid',
        'einvpwd',
        'activeyn'
    ];
}
