<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $outdoorcatering
 * @property string $cataloglimit
 * @property string $roundoffac
 * @property string $discountac
 * @property string $indoorsaleac
 * @property string $indoorpartyac
 * @property string $panrequiredyn
 * @property string $roundofftype
 * @property string $bookingraterequired
 * @property int $banquet_edit_date
 * @property int $booking_edit
 * @property int $adv_tax_on_bill
 * @property string|null $resinstructionfp1
 * @property string|null $resinstructionfp2
 * @property string|null $resinstructionfp3
 * @property string|null $resinstructionfp4
 * @property string|null $resinstructionfp5
 * @property string|null $resinstructionbillno1
 * @property string|null $resinstructionbillno2
 * @property string|null $resinstructionbillno3
 * @property string $divcode
 * @property string $u_name
 * @property string $u_ae
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $companyname
 * @property string $companyaddress
 * @property string $gstin
 * @property string $logo
 * @property string|null $email
 * @property string|null $mobile
 * @property string|null $advinstruction_no1
 * @property string|null $advinstruction_no2
 * @property string|null $advinstruction_no3
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet query()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereAdvTaxOnBill($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereAdvinstructionNo1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereAdvinstructionNo2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereAdvinstructionNo3($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereBanquetEditDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereBookingEdit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereBookingraterequired($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereCataloglimit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereCompanyaddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereCompanyname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereDiscountac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereDivcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereGstin($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereIndoorpartyac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereIndoorsaleac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereLogo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereMobile($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereOutdoorcatering($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet wherePanrequiredyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereResinstructionbillno1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereResinstructionbillno2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereResinstructionbillno3($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereResinstructionfp1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereResinstructionfp2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereResinstructionfp3($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereResinstructionfp4($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereResinstructionfp5($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereRoundoffac($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereRoundofftype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroBanquet whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class EnviroBanquet extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'enviro_banquet';

    protected $primaryKey = 'propertyid';
    
    protected $fillable = [
        'propertyid',
        'outdoorcatering',
        'cataloglimit',
        'roundoffac',
        'discountac',
        'indoorsaleac',
        'indoorpartyac',
        'resinstructionfp1',
        'resinstructionfp2',
        'resinstructionfp3',
        'resinstructionfp4',
        'resinstructionfp5',
        'resinstructionbillno1',
        'resinstructionbillno2',
        'resinstructionbillno3',
        'u_name',
        'u_ae',
        'banquet_edit_date',
        'booking_edit',
        'adv_tax_on_bill',
        'created_at',
        'updated_at' ,
        'companyname',
        'companyaddress',
        'gstin',
        'logo',
    ];
}
