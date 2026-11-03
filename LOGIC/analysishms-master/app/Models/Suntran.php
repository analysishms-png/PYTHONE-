<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property int $sno
 * @property string $vtype
 * @property int $vno
 * @property string $vdate
 * @property string $partycode
 * @property string $suncode
 * @property string $dispname
 * @property string $calcformula
 * @property string $svalue
 * @property string $amount
 * @property string $baseamount
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @property string $sunappdate
 * @property string $revcode
 * @property string $restcode
 * @property string $delflag
 * @property string|null $delremark
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran query()
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereBaseamount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereCalcformula($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereDelremark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereDispname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran wherePartycode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereRevcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereSunappdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereSuncode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereSvalue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Suntran whereVtype($value)
 * @mixin \Eloquent
 */
class Suntran extends Model
{
    use HasFactory;

    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

    protected $table = 'suntran';
}
