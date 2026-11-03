<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GrpBookinDetail extends Model
{
    use HasFactory;
    
    protected $table = 'grpbookingdetails';

    protected $fillable = [
        'id',
        'Property_ID',
        'BookingDocid',
        'BookNo',
        'GuestName',
        'GuestProf',
        'Sno',
        'RoomDet',
        'Adults',
        'Childs',
        'Tarrif',
        'IncTax',
        'created_at',
        'updated_at',
        'U_AE',
        'RoomCat',
        'ccode',
        'pcode',
        'Plan_Code',
        'Remarks',
        'ServiceChrg',
        'RoomNo',
        'RateCode',
        'ArrDate',
        'ArrTime',
        'NoDays',
        'DepDate',
        'Cancel',
        'CancelDate',
        'U_Name',
        'DepTime',
        'status',
        'RoomTaxStru',
        'CancelUName',
        'extraadd',
        'ContraDocId',
        'ContraSno',
        'chkoutyn'
    ];

    public function roominclusive()
    {
        return $this->hasMany(RoomInclusive::class, 'docid', 'BookingDocid');
    }
}
