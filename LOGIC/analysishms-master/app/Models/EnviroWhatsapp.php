<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property string $checkyn
 * @property int $propertyid
 * @property string $managementmob
 * @property string $whatsappcenterusername
 * @property string $whatsappcenterpassword
 * @property string $whatsappdisplayname
 * @property string $whatsappurl
 * @property string $bearercode
 * @property int $whatsapppurchase
 * @property int $whatsappsend
 * @property int $whatsappbal
 * @property string $birthdaywishmessage
 * @property string $birthdaywisharray
 * @property string $birthdaywishtemplate
 * @property string $anniversarywishmessage
 * @property string $anniversarywisharray
 * @property string $anniversarywishtemplate
 * @property string $whatsappuser
 * @property string $whatspassword
 * @property string $whatsapptfromsend
 * @property string $whatsmessage
 * @property string $whatsappextra
 * @property string $checkinmsg
 * @property string $checkinmsgarray
 * @property string $checkintemplate
 * @property string $checkinmsgadmin
 * @property string $checkinmsgadminarray
 * @property string $checkinmsgadmintemplate
 * @property string $checkoutmsgadmin
 * @property string $checkoutmsgadminarray
 * @property string $checkoutmsgadmintemplate
 * @property string $checkoutmsg
 * @property string $checkoutmsgarray
 * @property string $checkouttemplate
 * @property string $pphonenoprefix
 * @property string $tphNo
 * @property string $reservation
 * @property string $reservationarray
 * @property string $reservationtemplate
 * @property string $adminreservation
 * @property string $adminreservationarray
 * @property string $adminreservationtemplate
 * @property string $adminreservationcancel
 * @property string $adminreservationcancelarray
 * @property string $adminreservationcanceltemplate
 * @property string $reservationcancel
 * @property string $reservationcancelarray
 * @property string $reservationcanceltemplate
 * @property string $kotmsgadmin
 * @property string $kotmsgadminarray
 * @property string $kotmsgadmintemplate
 * @property string $billmsgguest
 * @property string $billmsgguestarray
 * @property string $billmsgguesttemplate
 * @property string $billmsgadmin
 * @property string $billmsgadminarray
 * @property string $billmsgadmintemplate
 * @property string $assigndelmsg
 * @property string $assigndelmsgarray
 * @property string $assigndelmsgtemplate
 * @property string $banqbooking
 * @property string $banqbookingcancel
 * @property int $sendpdfcheckout
 * @property int $sendpdfcheckoutpos
 * @property string $posbill
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $u_ae
 * @property string $u_name
 * @property int $rate
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp query()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereAdminreservation($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereAdminreservationarray($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereAdminreservationcancel($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereAdminreservationcancelarray($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereAdminreservationcanceltemplate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereAdminreservationtemplate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereAnniversarywisharray($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereAnniversarywishmessage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereAnniversarywishtemplate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereAssigndelmsg($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereAssigndelmsgarray($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereAssigndelmsgtemplate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereBanqbooking($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereBanqbookingcancel($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereBearercode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereBillmsgadmin($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereBillmsgadminarray($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereBillmsgadmintemplate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereBillmsgguest($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereBillmsgguestarray($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereBillmsgguesttemplate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereBirthdaywisharray($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereBirthdaywishmessage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereBirthdaywishtemplate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereCheckinmsg($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereCheckinmsgadmin($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereCheckinmsgadminarray($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereCheckinmsgadmintemplate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereCheckinmsgarray($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereCheckintemplate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereCheckoutmsg($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereCheckoutmsgadmin($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereCheckoutmsgadminarray($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereCheckoutmsgadmintemplate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereCheckoutmsgarray($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereCheckouttemplate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereCheckyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereKotmsgadmin($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereKotmsgadminarray($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereKotmsgadmintemplate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereManagementmob($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp wherePosbill($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp wherePphonenoprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereReservation($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereReservationarray($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereReservationcancel($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereReservationcancelarray($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereReservationcanceltemplate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereReservationtemplate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereSendpdfcheckout($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereSendpdfcheckoutpos($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereTphNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereWhatsappbal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereWhatsappcenterpassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereWhatsappcenterusername($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereWhatsappdisplayname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereWhatsappextra($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereWhatsapppurchase($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereWhatsappsend($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereWhatsapptfromsend($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereWhatsappurl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereWhatsappuser($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereWhatsmessage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroWhatsapp whereWhatspassword($value)
 * @mixin \Eloquent
 */
class EnviroWhatsapp extends Model
{
    use HasFactory;

    
    protected $table = 'enviro_whatsapp';
    protected $primaryKey = 'propertyid';
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
}
