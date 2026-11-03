<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $orderno
 * @property string $name
 * @property string|null $email
 * @property string|null $phone_number
 * @property string|null $hotel_name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $CityName
 * @property string|null $AssPerson
 * @property string|null $ProductName
 * @property string|null $RefPerson
 * @property string|null $ModuleName
 * @property string|null $DemoYN
 * @property string|null $QuotationYN
 * @property string|null $OrderValue
 * @property string|null $Status
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest query()
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest whereAssPerson($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest whereCityName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest whereDemoYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest whereHotelName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest whereModuleName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest whereOrderValue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest whereOrderno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest wherePhoneNumber($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest whereProductName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest whereQuotationYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest whereRefPerson($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DemoRequest whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class DemoRequest extends Model
{
    use HasFactory;

    protected $fillable = [
        'name', 'email', 'phone_number', 'hotel_name', 'message'
    ];
}
