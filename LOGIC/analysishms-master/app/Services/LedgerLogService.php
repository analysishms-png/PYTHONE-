<?php

namespace App\Services;

use App\Models\LedgerLog;
use Illuminate\Support\Collection;

class LedgerLogService
{
    public static function store(Collection $ledgers, ?string $deletedBy = null): void
    {
        if ($ledgers->isEmpty()) {
            return;
        }

        $now = now();

        $logData = $ledgers->map(function ($ledger) use ($deletedBy, $now) {
            return [
                'propertyid'   => $ledger->propertyid,
                'docid'        => $ledger->docid,
                'vsno'         => $ledger->vsno,
                'vtype'        => $ledger->vtype,
                'vno'          => $ledger->vno,
                'vprefix'      => $ledger->vprefix,
                'vdate'        => $ledger->vdate,
                'subcode'      => $ledger->subcode,
                'amtcr'        => $ledger->amtcr,
                'amtdr'        => $ledger->amtdr,
                'contrasub'    => $ledger->contrasub,
                'chqno'        => $ledger->chqno,
                'chqdate'      => $ledger->chqdate,
                'delflag'      => $ledger->delflag,
                'clgdate'      => $ledger->clgdate,
                'narration'    => $ledger->narration,
                'groupcode'    => $ledger->groupcode,
                'groupnature'  => $ledger->groupnature,
                'u_name'       => $ledger->u_name,
                'u_ae'         => $ledger->u_ae,
                'verifyuser'   => $ledger->verifyuser,
                'verifyremark' => $ledger->verifyremark,
                'verifydate'   => $ledger->verifydate,
                'rejectremark' => $ledger->rejectremark,
                'rejectuser'   => $ledger->rejectuser,
                'rejectdate'   => $ledger->rejectdate,
                'deleted_by'   => $deletedBy,
                'deleted_at'   => $now,
                'created_at'   => $now,
                'updated_at'   => $now,
            ];
        })->toArray();

        LedgerLog::insert($logData);
    }
}
