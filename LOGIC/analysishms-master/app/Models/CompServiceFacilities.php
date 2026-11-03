<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $displayorder
 * @property string $service
 * @property string $servicehdr
 * @property string $remark
 * @property string $U_name
 * @property string $created_at
 * @property string $u_ae
 * @property int $isactive
 * @method static \Illuminate\Database\Eloquent\Builder|CompServiceFacilities newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CompServiceFacilities newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CompServiceFacilities query()
 * @method static \Illuminate\Database\Eloquent\Builder|CompServiceFacilities whereDisplayorder($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompServiceFacilities whereIsactive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompServiceFacilities wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompServiceFacilities whereRemark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompServiceFacilities whereService($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompServiceFacilities whereServicehdr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompServiceFacilities whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompServiceFacilities whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompServiceFacilities whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CompServiceFacilities whereUName($value)
 * @mixin \Eloquent
 */
class CompServiceFacilities extends Model
{
    protected $table = 'compservicefacillities';

    

    public $timestamps = false;

    protected $fillable = [
        'propertyid',
        'displayorder',
        'service',
        'servicehdr',
        'remark',
        'isactive',
        'U_name',
        'created_at',
        'u_ae',
    ];
}