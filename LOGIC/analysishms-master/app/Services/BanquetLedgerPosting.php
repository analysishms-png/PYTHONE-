<?php

namespace App\Services;

use App\Models\HallSale1;
use App\Models\Ledger;
use App\Models\PaychargeH;
use App\Models\VoucherPrefix;
use Exception;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use App\Models\Log as Logs;
use Illuminate\Support\Facades\Request;

class BanquetLedgerPosting
{
    protected $username;
    protected $propertyid;

    public function __construct($username, $propertyid)
    {
        $this->username = $username;
        $this->propertyid = $propertyid;
    }

    public function generatepostingdocid($hallsale1)
    {
        $vtype = 'BREC';

        $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', $hallsale1->vdate)
            ->whereDate('date_to', '>=', $hallsale1->vdate)
            ->lockForUpdate()
            ->first();

        $vno = $chkvpf->start_srl_no + 1;
        $vprefix = $chkvpf->prefix;

        $docid = $this->propertyid . $vtype . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $vno;
        $chkvpf->increment('start_srl_no');
        return [
            'vno' => $vno,
            'docid' => $docid,
            'vprefix' => $vprefix,
            'vtype' => $vtype
        ];
    }

    public function banquetposting($docid, $revmast, $sno, $amount, $gendocid, $paychargeold, $companycode)
    {
        DB::transaction(function () use ($docid, $revmast, $sno, $amount, $gendocid, $paychargeold, $companycode) {

            try {
                $hallsale1 = HallSale1::where('propertyid', $this->propertyid)
                    ->where('docId', $docid)
                    ->first();

                $indoorpartyac = banquetparameter()->indoorpartyac;

                $accode = $revmast->ac_code;
                if($revmast->nature == 'Company') {
                    $accode = $companycode;
                }

                $ledgercomp = new Ledger();
                $ledgercomp->propertyid = $this->propertyid;
                $ledgercomp->docid = $gendocid['docid'];
                $ledgercomp->vdate = $paychargeold->vdate ?? ncurdate();
                $ledgercomp->vtype = $gendocid['vtype'];
                $ledgercomp->vprefix = $gendocid['vprefix'];
                $ledgercomp->vsno = $sno;
                $ledgercomp->vno = $gendocid['vno'];
                $ledgercomp->subcode = $indoorpartyac;
                $ledgercomp->amtcr = $amount;
                $ledgercomp->contrasub = $accode;
                $ledgercomp->narration = "AGAINST BANQUET BILL NO: $hallsale1->vno";
                $ledgercomp->groupcode = subgroup($indoorpartyac)->group_code ?? '';
                $ledgercomp->groupnature = subgroup($indoorpartyac)->nature ?? '';
                $ledgercomp->u_name = Auth::user()->name;
                $ledgercomp->save();

                $ledgerpay = new Ledger();
                $ledgerpay->propertyid = $this->propertyid;
                $ledgerpay->docid = $gendocid['docid'];
                $ledgerpay->vdate = $paychargeold->vdate ?? ncurdate();
                $ledgerpay->vtype = $gendocid['vtype'];
                $ledgerpay->vprefix = $gendocid['vprefix'];
                $ledgerpay->vsno = $sno + 1;
                $ledgerpay->vno = $gendocid['vno'];
                $ledgerpay->subcode = $accode;
                $ledgerpay->amtdr = $amount;
                $ledgerpay->contrasub = $indoorpartyac;
                $ledgerpay->narration = "AGAINST BANQUET BILL NO: $hallsale1->vno";
                $ledgerpay->groupcode = subgroup($accode)->group_code ?? '';
                $ledgerpay->groupnature = subgroup($accode)->nature ?? '';
                $ledgerpay->u_name = Auth::user()->name;
                $ledgerpay->save();
            } catch (Exception $e) {
                Log::info("Unknown Error Occured: " . $e->getMessage());
                Logs::create([
                    'propertyid' => $this->propertyid,
                    'username' => Auth::user()->name,
                    'log_type' => 'Banquet',
                    'message' => $e->getMessage(),
                    'line' => $e->getLine(),
                    'file' => $e->getFile(),
                    'ip_address' => Request::ip()
                ]);
            }
        });
    }
}
