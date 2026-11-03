<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $doc_id
 * @property int|null $folio_no
 * @property string $guest_prof
 * @property string|null $mprof
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|GuestFolioProfDetail newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|GuestFolioProfDetail newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|GuestFolioProfDetail query()
 * @method static \Illuminate\Database\Eloquent\Builder|GuestFolioProfDetail whereDocId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestFolioProfDetail whereFolioNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestFolioProfDetail whereGuestProf($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestFolioProfDetail whereMprof($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestFolioProfDetail wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestFolioProfDetail whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestFolioProfDetail whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestFolioProfDetail whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestFolioProfDetail whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GuestFolioProfDetail whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class GuestFolioProfDetail extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'guestfolioprofdetail';
}
