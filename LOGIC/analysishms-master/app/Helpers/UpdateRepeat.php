<?php

namespace App\Helpers;

use App\Models\GrpBookinDetail;

class UpdateRepeat
{
    public static function emptygrpcontra($docid, $sno1, $propertyid)
    {
        $upnew = [
            'ContraDocId' => null,
            'ContraSno' => null,
        ];
        GrpBookinDetail::where('Property_ID', $propertyid)
            ->where('BookingDocid', $docid)
            ->where('sno', $sno1 ?? 1)
            ->update($upnew);
    }
}
