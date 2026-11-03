<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $dcode
 * @property string|null $name
 * @property string|null $nature
 * @property string|null $kot_yn
 * @property string $companyname
 * @property string $companyaddress
 * @property string $gstin
 * @property string $logo
 * @property string|null $header1
 * @property string|null $header2
 * @property string|null $mobile_no
 * @property string|null $slogan1
 * @property string|null $slogan2
 * @property string|null $company_title
 * @property string|null $pos
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $u_ae
 * @property string|null $sysYN
 * @property string|null $activeYN
 * @property string|null $rest_type
 * @property string $fssaicode
 * @property string|null $back_color
 * @property string|null $outlet_yn
 * @property string|null $short_name
 * @property string|null $disc_app
 * @property string|null $store_type
 * @property string|null $token_print
 * @property string|null $print_type
 * @property string|null $order_booking
 * @property string|null $outlet_title
 * @property string|null $member_info
 * @property string|null $auto_split
 * @property string|null $party_name
 * @property string|null $split_bill
 * @property string|null $cust_info
 * @property string|null $ckot_print_yn
 * @property string|null $ckot_print_path
 * @property int $cur_token_no
 * @property string|null $no_of_kot
 * @property string|null $no_of_bill
 * @property string|null $token_print_after
 * @property string|null $token_print_before
 * @property string|null $order_book_com1
 * @property string|null $order_book_com2
 * @property string|null $print_on_save
 * @property string|null $header3
 * @property string|null $header4
 * @property string|null $print_token_no
 * @property string|null $auto_settlement
 * @property string|null $sale_bill_token_header1
 * @property string|null $barcode_app
 * @property string|null $auto_reset_token
 * @property string|null $cur_token_no_kot
 * @property string|null $barcode_partition_app_on
 * @property string|null $outlet_selection
 * @property string|null $dis_print
 * @property string|null $grp_disc_app
 * @property string|null $multi_bill
 * @property string|null $disc_remark_yn
 * @property string|null $label_printing
 * @property string|null $free_item_app
 * @property string|null $cover_mandatory
 * @property string|null $mobile_no_mandatory
 * @property string|null $open_item_yn
 * @property string|null $token_header
 * @property string|null $occupied
 * @property string $paymentqr
 * @property string|null $vacant
 * @property string|null $billed
 * @property string $booked
 * @property int|null $height
 * @property int|null $fontsize
 * @property int|null $col
 * @property int|null $uborderspace
 * @property string|null $divcode
 * @property string|null $email
 * @property string $floor
 * @property string $timing
 * @method static \Illuminate\Database\Eloquent\Builder|Depart newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Depart newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Depart query()
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereActiveYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereAutoResetToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereAutoSettlement($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereAutoSplit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereBackColor($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereBarcodeApp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereBarcodePartitionAppOn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereBilled($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereBooked($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereCkotPrintPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereCkotPrintYn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereCol($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereCompanyTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereCompanyaddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereCompanyname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereCoverMandatory($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereCurTokenNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereCurTokenNoKot($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereCustInfo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereDcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereDisPrint($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereDiscApp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereDiscRemarkYn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereDivcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereFloor($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereFontsize($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereFreeItemApp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereFssaicode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereGrpDiscApp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereGstin($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereHeader1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereHeader2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereHeader3($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereHeader4($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereHeight($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereKotYn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereLabelPrinting($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereLogo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereMemberInfo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereMobileNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereMobileNoMandatory($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereMultiBill($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereNature($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereNoOfBill($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereNoOfKot($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereOccupied($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereOpenItemYn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereOrderBookCom1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereOrderBookCom2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereOrderBooking($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereOutletSelection($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereOutletTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereOutletYn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart wherePartyName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart wherePaymentqr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart wherePos($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart wherePrintOnSave($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart wherePrintTokenNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart wherePrintType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereRestType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereSaleBillTokenHeader1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereShortName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereSlogan1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereSlogan2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereSplitBill($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereStoreType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereTiming($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereTokenHeader($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereTokenPrint($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereTokenPrintAfter($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereTokenPrintBefore($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereUborderspace($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Depart whereVacant($value)
 * @mixin \Eloquent
 */
class Depart extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'depart';

    protected $fillable = [
        'propertyid',
        'dcode',
        'name',
        'nature',
        'kot_yn',
        'companyname',
        'companyaddress',
        'gstin',
        'logo',
        'header1',
        'header2',
        'mobile_no',
        'slogan1',
        'slogan2',
        'company_title',
        'pos',
        'u_name',
        'created_at',
        'updated_at',
        'u_ae',
        'sysYN',
        'activeYN',
        'rest_type',
        'fssaicode',
        'back_color',
        'outlet_yn',
        'short_name',
        'disc_app',
        'store_type',
        'token_print',
        'print_type',
        'order_booking',
        'outlet_title',
        'member_info',
        'auto_split',
        'party_name',
        'split_bill',
        'cust_info',
        'ckot_print_yn',
        'ckot_print_path',
        'cur_token_no',
        'no_of_kot',
        'no_of_bill',
        'token_print_after',
        'token_print_before',
        'order_book_com1',
        'order_book_com2',
        'print_on_save',
        'header3',
        'header4',
        'print_token_no',
        'auto_settlement',
        'sale_bill_token_header1',
        'barcode_app',
        'auto_reset_token',
        'cur_token_no_kot',
        'barcode_partition_app_on',
        'outlet_selection',
        'dis_print',
        'grp_disc_app',
        'multi_bill',
        'disc_remark_yn',
        'label_printing',
        'free_item_app',
        'cover_mandatory',
        'mobile_no_mandatory',
        'open_item_yn',
        'token_header',
        'occupied',
        'paymentqr',
        'vacant',
        'billed',
        'booked',
        'height',
        'fontsize',
        'col',
        'uborderspace',
        'divcode'
    ];
}
