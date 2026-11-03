<?php

namespace App\Http\Controllers;

use App\Helpers\DateHelper;
use App\Models\Companyreg;
use App\Models\Paycharge;
use App\Models\TaxStructure;
use DateTime;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Log;
use PhpOffice\PhpSpreadsheet\IOFactory;
use stdClass;

class ExcelController extends Controller
{

    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    protected $ptlngth;
    protected $prpid;
    protected $ncurdate;
    protected $datemanage;
    protected $company;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }

            $this->username = Auth::user()->name;
            $this->email = Auth::user()->email;
            $this->prpid = Auth::user()->propertyid;
            $propertydata = DB::table('users')->where('propertyid', $this->prpid)->first();
            $this->ncurdate = DB::table('enviro_general')->where('propertyid', Auth::user()->propertyid)->value('ncur');
            $this->propertyid = $propertydata->propertyid;
            $this->ptlngth = strlen($this->propertyid);
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');
            $this->datemanage = DateHelper::calculateDateRanges($this->ncurdate);
            $this->company = Companyreg::where('propertyid', $this->propertyid)->first();
            return $next($request);
        });
    }

    public function gstr1(Request $request)
    {
        return view('property.gstexcel', [
            'ncurdate' => $this->ncurdate
        ]);
    }

    private function findFirstEmptyRow($worksheet, $column = 'A', $startRow = 6)
    {
        $row = $startRow;
        while (true) {
            $cellValue = $worksheet->getCell($column . $row)->getValue();
            if (is_null($cellValue) || trim($cellValue) === '') {
                return $row;
            }
            $row++;
        }
    }

    private function writeAdvanceTxtFiles(string $directory, $advancequery): void
    {
        if (!File::exists($directory)) {
            File::makeDirectory($directory, 0755, true);
        }

        $templatePath = storage_path('app/public/files/ataandatadj.xlsx');
        if (!file_exists($templatePath)) {
            throw new Exception('Template file ataandatadj.xlsx not found.');
        }

        $targetPath = rtrim($directory, DIRECTORY_SEPARATOR) . DIRECTORY_SEPARATOR . 'ataandatadj.xlsx';
        if (file_exists($targetPath)) {
            unlink($targetPath);
        }
        if (!copy($templatePath, $targetPath)) {
            throw new Exception('Failed to copy ataandatadj.xlsx template.');
        }

        $spreadsheet = IOFactory::load($targetPath);

        $worksheetAta = $spreadsheet->getSheetByName('ata');
        if (!$worksheetAta) {
            throw new Exception("Sheet 'ata' not found in ataandatadj.xlsx.");
        }

        $worksheetAtadj = $spreadsheet->getSheetByName('atadj');
        if (!$worksheetAtadj) {
            throw new Exception("Sheet 'atadj' not found in ataandatadj.xlsx.");
        }

        // Clear existing data rows (keep header row 1).
        $this->clearWorksheetData($worksheetAta, 2);
        $this->clearWorksheetData($worksheetAtadj, 2);

        $ataRows = [];
        $atadjRows = [];

        if ($advancequery && method_exists($advancequery, 'isNotEmpty') && $advancequery->isNotEmpty()) {
            foreach ($advancequery as $row) {
                $docid = $row->docid;
                $advdate = date('d-m-Y', strtotime($row->advdate));
                $contradocid = $row->contradocid;
                $billdocid = $row->billdocid;
                $advanceamount = $row->advanceamount;
                $taxper = $row->totaltaxper;
                $cgst = $row->cgstamount;
                $sgst = $row->sgstamount;
                $igst = $row->igstamount;

                if (($row->Cond) == 1) {
                    $ataRows[] = [$docid, $advdate, $taxper, $advanceamount, $cgst, $sgst, $igst, $contradocid, $billdocid];
                } else {
                    $atadjRows[] = [$docid, $advdate, $taxper, $advanceamount, $cgst, $sgst, $igst, $contradocid, $billdocid];
                }
            }
        }

        $emptyRowStartAta = 2;
        foreach ($ataRows as $i => $row) {
            $worksheetAta->fromArray($row, null, 'A' . ($emptyRowStartAta + $i));
        }

        $emptyRowStartAtadj = 2;
        foreach ($atadjRows as $i => $row) {
            $worksheetAtadj->fromArray($row, null, 'A' . ($emptyRowStartAtadj + $i));
        }

        $writer = IOFactory::createWriter($spreadsheet, 'Xlsx');
        $writer->save($targetPath);
    }

    private function clearWorksheetData($worksheet, int $startRow = 2): void
    {
        $highestRow = $worksheet->getHighestRow();
        if ($highestRow < $startRow) {
            return;
        }

        for ($row = $startRow; $row <= $highestRow; $row++) {
            $worksheet->setCellValue('A' . $row, null);
            $worksheet->setCellValue('B' . $row, null);
            $worksheet->setCellValue('C' . $row, null);
        }
    }

    public function submitgstr1(Request $request)
    {
        $fromdate = $request->fromdate;
        $todate = $request->todate;

        if ($fromdate > $todate) {
            return response()->json([
                'success' => 'false',
                'message' => 'From date cannot be greater than to date'
            ]);
        }
        $yt = $this->datemanage['hf']['start'] . '-' . $this->datemanage['hf']['end'];
        // return $yt;
        $advancequery = (object) [];
        $advancequery = collect();

        if (banquetparameter()) {
            $advancequery = $advancequery->concat(
                getadvancequerybanquet($fromdate, $todate)
            );
            // Log::info("Advance Query Banquet: \n" . json_encode(getadvancequerybanquet($fromdate, $todate), JSON_PRETTY_PRINT));
        }

        if (fomparameter()) {
            $advancequery = $advancequery->concat(
                advancequeryfom($fromdate, $todate)
            );
            // $advancequeryfom = advancequeryfom($fromdate, $todate);

            // Log::info("Advance Query: \n" . json_encode($advancequeryfom, JSON_PRETTY_PRINT));
        }
        // Log ::info("Advance Query: \n" . json_encode($advancequery, JSON_PRETTY_PRINT));
        // return 'sagar';

        $repdata = $this->getGSTR1Data($fromdate, $todate);

        // return $repdata;
        $repdata2 = $this->getGSTR1DataPOS($fromdate, $todate);
        $company = $this->company;
        $division_code = $company->division_code;

        $docdata = [];

        // 1. From sale1 table
        $docdata = array_merge(
            $docdata,
            DB::table('sale1')
                ->select(
                    'vtype',
                    DB::raw('MIN(vno) AS startsrlno'),
                    DB::raw('MAX(vno) AS endsrlno'),
                    DB::raw("COUNT(CASE WHEN delflag = 'Y' THEN 1 ELSE NULL END) AS totalcancelledbill")
                )
                ->whereBetween('vdate', [$fromdate, $todate])
                ->where('propertyid', $this->propertyid)
                ->groupBy('vtype')
                ->get()
                ->toArray()
        );

        // return $docdata;

        // 2. From fombilldetails table
        $docdata = array_merge(
            $docdata,
            DB::table('fombilldetails')
                ->select(
                    DB::raw("'BCNT' as vtype"),
                    DB::raw('MIN(billno) AS startsrlno'),
                    DB::raw('MAX(billno) AS endsrlno'),
                    DB::raw("COUNT(CASE WHEN status = 'Cancel' THEN 1 ELSE NULL END) AS totalcancelledbill")
                )
                ->where('propertyid', $this->propertyid)
                ->whereBetween('billdate', [$fromdate, $todate])
                ->get()
                ->toArray()
        );

        if (banquetparameter()) {
            // 3. From hallsale1 table (Banquet)
            $docdata = array_merge(
                $docdata,
                DB::table('hallsale1')
                    ->select(
                        'vtype',
                        DB::raw('MIN(vno) AS startsrlno'),
                        DB::raw('MAX(vno) AS endsrlno'),
                    )
                    ->whereBetween('vdate', [$fromdate, $todate])
                    ->where('propertyid', $this->propertyid)
                    ->groupBy('vtype')
                    ->get()
                    ->toArray()
            );
        }

        $b2bedata = [];
        $b2bdatajson = [];
        $b2csdata = [];
        $b2csjson = [];
        $docrows = [];
        $docrowsjson = [];
        $hsnrowsb2b = [];
        $hsnrowsjson = [];
        $hsnrowsb2c = [];
        $atadata = [];
        $atadjdata = [];
        $exempdata = [];
        $count = 0;
        $count2 = 0;
        $count3 = 0;
        $count4 = 0;
        $count5 = 0;

        if (banquetparameter()) {
            if ($advancequery->isNotEmpty()) {

                foreach ($advancequery as $row) {

                    $key = $row->totaltaxper;

                    if ($row->Cond == 1) {

                        if (!isset($atadata[$key])) {
                            $atadata[$key] = [
                                $this->datemanage['finyear']['current'] . '-' . $this->datemanage['hf']['end'],
                                DateTime::createFromFormat('Y-m-d', $row->advdate)->format('m'),
                                $company->state_code,
                                $row->totaltaxper,
                                $row->totaltaxper,
                                0,
                                0.00
                            ];
                        }
                        $atadata[$key][5] += $row->advanceamount;
                    } else {

                        if (!isset($atadjdata[$key])) {
                            $atadjdata[$key] = [
                                $company->state_code,
                                $row->totaltaxper,
                                $row->totaltaxper,
                                0,
                                0.00
                            ];
                        }
                        $atadjdata[$key][3] += $row->advanceamount;
                    }
                }

                $atadata = array_values($atadata ?? []);
                $atadjdata = array_values($atadjdata ?? []);
            }
        }

        // Log::info("Advance Data: \n" . json_encode($atadata, JSON_PRETTY_PRINT));
        // return 'sagar';
        $taxGroupedfom = [];
        $taxGroupedpos = [];
        $taxGroupedbanq = [];

        // Log::info("repdata: " . json_encode($repdata));

        foreach ($repdata as $row) {
            if (!empty($row->GSTIN)) {
                $invoiceno = empty($division_code)
                    ? 'BCNT/' . $yt . '/' . $row->Bill_No
                    : $division_code . $yt . '/' . $row->Bill_No;

                $fdate = DateTime::createFromFormat('Y-m-d', $row->Bill_Date);

                $b2bedata[] = [
                    $row->GSTIN,
                    $row->CompanyName,
                    $invoiceno,
                    $fdate ? $fdate->format('d-M-y') : '',
                    $row->BillTotal,
                    $company->state_code . '-' . $company->state,
                    'N',
                    "",
                    'Regular B2B',
                    $row->EGSTIN,
                    $row->TAXPER,
                    $row->BASEVALUE,
                    0.00
                ];

                $b2bdatajson[] = [
                    "ctin" => $row->GSTIN,
                    "inv" => [
                        "inum" => $invoiceno,
                        "idt" => $fdate,
                        "val" => $row->BillTotal,
                        "pos" => $company->state_code,
                        "rchrg" => "N",
                        "inv_typ" => "R",
                        "itms" => [
                            "num" => $count,
                            "itm_det" => [
                                "txval" => $row->BASEVALUE,
                                "rt" => $row->TAXPER,
                                "camt" => calculateTax($row->BillTotal, $row->TAXPER),
                                "samt" => calculateTax($row->BillTotal, $row->TAXPER),
                                "csamt" => 0
                            ]
                        ]
                    ],
                ];
                $count++;
            } else {
                if (!empty($row->EGSTIN)) {

                    $key = $row->EGSTIN . '_' . $row->TAXPER;

                    if (!isset($b2csdata[$key])) {

                        $b2csdata[$key] = [
                            'OE',
                            $company->state_code . '-' . $company->state,
                            '',
                            $row->TAXPER,
                            0,
                            '0.00',
                            $row->EGSTIN
                        ];

                        $b2csjson[$key] = [
                            "sply_ty" => "INTRA",
                            "rt" => $row->TAXPER,
                            "typ" => "OE",
                            "pos" => $company->state_code,
                            "txval" => 0,
                            "camt" => 0,
                            "samt" => 0,
                            "csamt" => 0
                        ];
                    }

                    $baseValue = (float) str_replace(',', '', $row->BASEVALUE);
                    $taxAmount = (float) str_replace(',', '', calculateTax($row->BillTotal, $row->TAXPER));

                    $b2csdata[$key][4] = (float) str_replace(',', '', $b2csdata[$key][4]) + $baseValue;

                    $b2csjson[$key]['txval'] = (float) str_replace(',', '', $b2csjson[$key]['txval']) + $baseValue;

                    $b2csjson[$key]['camt'] = (float) str_replace(',', '', $b2csjson[$key]['camt']) + $taxAmount;

                    $b2csjson[$key]['samt'] = (float) str_replace(',', '', $b2csjson[$key]['samt']) + $taxAmount;

                    $count2++;
                } else {
                    // Group by TAXPER if EGSTIN is empty
                    $taxPer = $row->TAXPER;
                    if (!isset($taxGroupedfom[$taxPer])) {
                        $taxGroupedfom[$taxPer] = 0;
                    }
                    $taxGroupedfom[$taxPer] += $row->BASEVALUE;
                }
            }
        }

        // return print_r($repdata2, true);
        foreach ($repdata2 as $row) {
            $rowAddrString = $company->state_code . '-' . $company->state;
            $rowStateCode = $company->state_code;

            if ((float) $row->igstvalue > 0 && !empty($row->PartyCode)) {
                $subgroup = subgroup($row->PartyCode);

                if (!empty($subgroup) && !empty($subgroup->citycode) && !empty($subgroup->state_code) && !empty($subgroup->statename)) {
                    $rowAddrString = $subgroup->state_code . '-' . $subgroup->statename;
                    $rowStateCode = $subgroup->state_code;
                }
            }

            if (!empty($row->GSTIN)) {
                $invoiceno = $row->vouchertype . '/' . $yt . '/' . $row->BillNo;

                // Log::info("Invoiceno: {$invoiceno}");
                // return;

                $fdate = DateTime::createFromFormat('Y-m-d', $row->Bill_Date);

                $b2bedata[] = [
                    $row->GSTIN,
                    $row->CompanyName,
                    $invoiceno,
                    $fdate ? $fdate->format('d-M-y') : '',
                    $row->BillTotal,
                    $rowAddrString,
                    'N',
                    '',
                    'Regular B2B',
                    $row->EGSTIN,
                    $row->TAXPER,
                    $row->BASEVALUE - $row->Discount,
                    0.00
                ];

                $b2bdatajson[] = [
                    "ctin" => $row->GSTIN,
                    "inv" => [
                        "inum" => $invoiceno,
                        "idt" => $fdate ? $fdate->format('d-m-Y') : '',
                        "val" => (float) $row->BillTotal,
                        "pos" => $rowStateCode,
                        "rchrg" => "N",
                        "inv_typ" => "R",
                        "itms" => [
                            "num" => $count,
                            "itm_det" => [
                                "txval" => (float) $row->BASEVALUE - (float) $row->Discount,
                                "rt" => (float) $row->TAXPER,
                                "camt" => calculateTax((float) $row->BillTotal, (float) $row->TAXPER),
                                "samt" => calculateTax((float) $row->BillTotal, (float) $row->TAXPER),
                                "csamt" => 0
                            ]
                        ]
                    ],
                ];

                $count++;
            } else {
                if (!empty($row->EGSTIN)) {
                    $b2csdata[] = [
                        'OE',
                        $rowAddrString,
                        '',
                        number_format((float) $row->TAXPER, 2, '.', ''),
                        number_format((float) $row->BASEVALUE - (float) $row->Discount, 2, '.', ''),
                        '0.00',
                        $row->EGSTIN
                    ];

                    $b2csjson[] = [
                        "sply_ty" => "INTRA",
                        "rt" => (float) $row->TAXPER,
                        "typ" => "OE",
                        "pos" => $rowStateCode,
                        "txval" => (float) $row->BASEVALUE - (float) $row->Discount,
                        "camt" => calculateTax((float) $row->BillTotal, (float) $row->TAXPER),
                        "samt" => calculateTax((float) $row->BillTotal, (float) $row->TAXPER),
                        "csamt" => 0
                    ];

                    $count2++;
                } else {
                    // $taxPer = (float) $row->TAXPER * 2;
                    $taxPer = (float) $row->TAXPER;
                    if ($taxPer > 0) {
                        $taxKey = number_format($taxPer, 2, '.', '');

                        if (!isset($taxGroupedpos[$rowAddrString])) {
                            $taxGroupedpos[$rowAddrString] = [];
                        }

                        if (!isset($taxGroupedpos[$rowAddrString][$taxKey])) {
                            $taxGroupedpos[$rowAddrString][$taxKey] = 0;
                        }

                        $taxGroupedpos[$rowAddrString][$taxKey] += (float) $row->BASEVALUE - (float) $row->Discount;
                    }
                }
            }
        }


        // return $taxGroupedpos;

        // Add grouped rows to $b2csdata
        foreach ($taxGroupedfom as $taxPer => $baseValueSum) {
            $b2csdata[] = [
                'OE',
                $company->state_code . '-' . $company->state,
                '',
                $taxPer,
                number_format($baseValueSum, 2, '.', ''),
                '0.00',
                ''
            ];

            $b2csjson[] = [
                "csamt" => 0,
                "samt" => 25309.43,
                "rt" => 12,
                "flag" => "N",
                "pos" => $company->state_code,
                "txval" => number_format($baseValueSum, 2, '.', ''),
                "typ" => "OE",
                "camt" => 25309.43,
                "chksum" => "3d6651776a9b747b1a9c4ed471571a1ce68bf9faee257e68ef3ccd0aa634a5f9",
                "iamt" => 0,
                "sply_ty" => "INTRA"
            ];

            $b2csjson[] = [
                "sply_ty" => "INTRA",
                "rt" => $taxPer,
                "typ" => "OE",
                "pos" => $company->state_code,
                "txval" => $baseValueSum,
                "camt" => calculateTax($baseValueSum, $taxPer),
                "samt" => calculateTax($baseValueSum, $taxPer),
                "csamt" => 0
            ];
            $count2++;
        }

        foreach ($taxGroupedpos as $groupAddr => $taxRates) {
            preg_match('/^(\d+)\-/', $groupAddr, $matches);
            $groupStateCode = $matches[1] ?? $company->state_code;

            foreach ($taxRates as $taxPer => $baseValueSum) {
                $baseValueSum = (float) $baseValueSum;

                $b2csdata[] = [
                    'OE',
                    $groupAddr,
                    '',
                    number_format((float) $taxPer, 2, '.', ''),
                    number_format($baseValueSum, 2, '.', ''),
                    '0.00',
                    ''
                ];

                $b2csjson[] = [
                    "csamt" => 0,
                    "samt" => calculateTax($baseValueSum, (float) $taxPer),
                    "rt" => (float) $taxPer,
                    "flag" => "N",
                    "pos" => $groupStateCode,
                    "txval" => $baseValueSum,
                    "typ" => "OE",
                    "camt" => calculateTax($baseValueSum, (float) $taxPer),
                    "chksum" => hash('sha256', 'INTRA' . $taxPer . number_format($baseValueSum, 2, '.', '') . $groupStateCode . 'OE'),
                    "iamt" => 0,
                    "sply_ty" => "INTRA"
                ];

                $count2++;
            }
        }

        $nontaxable = DB::table('sale1')
            ->where('nontaxable', '>', 0)
            ->where('propertyid', $this->propertyid)
            ->whereBetween('vdate', [$fromdate, $todate])
            ->where('delflag', '!=', 'Y')
            ->sum('nontaxable');

        if ($nontaxable > 0) {
            $exempdata[] = [
                'Intra-State supplies to unregistered persons',
                0,
                0,
                number_format($nontaxable, 2, '.', ''),
            ];
        }

        // Log::info('exempdata: ' . json_encode($exempdata));
        // return 'sagar';

        // Log::info('b2csdata: ' . json_encode($b2csdata));
        // return;
        // return $docdata;
        $n = 1;
        foreach ($docdata as $row) {
            $vtype = $row->vtype;
            $startsrlno = (int) $row->startsrlno;
            $endsrlno = (int) $row->endsrlno;

            if ($startsrlno == 0 || $endsrlno == 0) {
                continue;
            }

            if ($vtype == 'BCNT' || $vtype == 'IDC') {
                $startcode = empty($division_code)
                    ? "$vtype/$yt/$startsrlno"
                    : "$division_code/$yt/$startsrlno";

                $endcode = empty($division_code)
                    ? "$vtype/$yt/$endsrlno"
                    : "$division_code/$yt/$endsrlno";
            } else {
                $startcode = "$vtype/$yt/$startsrlno";
                $endcode = "$vtype/$yt/$endsrlno";
            }

            $billCount = ($startsrlno > 0 && $endsrlno > 0) ? $endsrlno - $startsrlno + 1 : 0;
            $docrows[] = [
                'Invoice for outward supply',
                $startcode,
                $endcode,
                $billCount,
                $row->totalcancelledbill ?? '0'
            ];

            $docrowsjson[] = [
                "flag" => "N",
                "doc_det" => [
                    "docs" => [
                        "cancel" => 0,
                        "num" => 2,
                        "totnum" => 1650,
                        "from" => "BMM/25-26/1135",
                        "to" => "BMM/25-26/2784",
                        "net_issue" => 1650
                    ],
                    "doc_num" => $n++
                ]
            ];

            $count3++;
        }

        $hsnCountSub = DB::table('stock as s')
            ->select(
                's.docid',
                DB::raw('COUNT(DISTINCT im.HSNCode) AS total_hsn')
            )
            ->join('itemmast as im', function ($join) {
                $join->on('im.Code', '=', 's.item')
                    ->on('im.RestCode', '=', 's.restcode');
            })
            ->groupBy('s.docid');

        $s2Sub = DB::table('sale2')
            ->select(
                'docid',
                DB::raw('MAX(taxper) AS taxper')
            )
            ->where('taxper', '>', 0)
            ->groupBy('docid');

        $innerQuery = DB::table('sale1 as s1')
            ->select([
                's1.restcode',
                'd.name',
                DB::raw('im.HSNCode AS hsncode'),
                's2.taxper',

                DB::raw('s1.total / hsn_count.total_hsn AS total'),
                DB::raw('s1.discamt / hsn_count.total_hsn AS discamt'),
                DB::raw('s1.netamt / hsn_count.total_hsn AS netamt'),
                DB::raw('s1.cgst / hsn_count.total_hsn AS cgst'),
                DB::raw('s1.sgst / hsn_count.total_hsn AS sgst'),
                DB::raw('s1.igst / hsn_count.total_hsn AS igst'),

                'SG.gstin',
                's1.party',
                DB::raw('SG.name AS compname'),
                's1.id',
                's1.docid',
            ])
            ->join('stock as st', 'st.docid', '=', 's1.docid')
            ->join('depart as d', 'd.dcode', '=', 's1.restcode')
            ->join('itemmast as im', function ($join) {
                $join->on('im.Code', '=', 'st.item')
                    ->on('im.RestCode', '=', 'st.restcode');
            })
            ->leftJoinSub($s2Sub, 's2', function ($join) {
                $join->on('s2.docid', '=', 's1.docid');
            })
            ->leftJoin('subgroup as SG', 'SG.sub_code', '=', 's1.party')
            ->joinSub($hsnCountSub, 'hsn_count', function ($join) {
                $join->on('hsn_count.docid', '=', 's1.docid');
            })
            ->where('s1.propertyid', $this->propertyid)
            ->where('s1.delflag', 'N')
            ->whereBetween('s1.vdate', [$fromdate, $todate])
            ->groupBy(
                's1.docid',
                'im.HSNCode',
                's2.taxper',
                's1.restcode',
                'd.name'
            );

        $hsnquery = DB::query()
            ->fromSub($innerQuery, 'hsndata')
            ->select([
                'hsndata.id',
                'hsndata.docid',
                'hsndata.restcode',
                'hsndata.name',
                'hsndata.hsncode',
                'hsndata.taxper',

                DB::raw('SUM(hsndata.total) AS total'),
                DB::raw('SUM(hsndata.discamt) AS discamt'),
                DB::raw('SUM(hsndata.netamt) AS netamt'),
                DB::raw('SUM(hsndata.cgst) AS cgst'),
                DB::raw('SUM(hsndata.sgst) AS sgst'),
                DB::raw('SUM(hsndata.igst) AS igst'),

                'hsndata.gstin',
                'hsndata.party',
                'hsndata.compname',
            ])
            ->groupBy(
                'hsndata.restcode',
                'hsndata.party',
                'hsndata.hsncode',
                'hsndata.taxper'
            )
            ->get();

        // Log::info("HSNB2CPOST: \n" . json_encode($hsnquery, JSON_PRETTY_PRINT));

        // return $hsnquery->sum('netamt');

        foreach ($hsnquery as $row) {

            $key = $row->hsncode . '_' . $row->name . '_' . $row->taxper;

            $totalamt = (float) $row->total - (float) $row->discamt;

            if (!empty($row->gstin)) {

                if (!isset($hsnrowsb2b[$key])) {

                    $hsnrowsb2b[$key] = [
                        $row->hsncode,
                        $row->name,
                        'LOT-LOTS',
                        0.00,
                        0.00,
                        round($row->taxper, 2) * 2,
                        0.00,
                        0.00,
                        0.00,
                        0.00
                    ];
                }

                $hsnrowsb2b[$key][4] += round((float) $row->netamt, 2);
                $hsnrowsb2b[$key][6] += round($totalamt, 2);
                $hsnrowsb2b[$key][7] += round((float) $row->igst, 2);
                $hsnrowsb2b[$key][8] += round((float) $row->cgst, 2);
                $hsnrowsb2b[$key][9] += round((float) $row->sgst, 2);

                $hsnrowsjson[] = [
                    "num" => $count4,
                    "hsn_sc" => $row->hsncode,
                    "desc" => $row->name,
                    "uqc" => "NA",
                    "qty" => 0,
                    "rt" => $row->taxper * 2,
                    "txval" => $row->total,
                    "iamt" => round((float) $row->igst, 2),
                    "samt" => round((float) $row->sgst, 2),
                    "camt" => round((float) $row->cgst, 2),
                    "csamt" => 0
                ];

                $count4++;
            } else {

                if (!isset($hsnrowsb2c[$key])) {

                    $hsnrowsb2c[$key] = [
                        $row->hsncode,
                        $row->name,
                        'LOT-LOTS',
                        0.00,
                        0.00,
                        round($row->taxper, 2) * 2,
                        0.00,
                        0.00,
                        0.00,
                        0.00,
                        0.00
                    ];
                }

                $hsnrowsb2c[$key][4] += round((float) $row->netamt, 2);
                $hsnrowsb2c[$key][6] += round($totalamt, 2);
                $hsnrowsb2c[$key][7] += round((float) $row->igst, 2);
                $hsnrowsb2c[$key][8] += round((float) $row->cgst, 2);
                $hsnrowsb2c[$key][9] += round((float) $row->sgst, 2);

                $hsnrowsjson[] = [
                    "num" => $count5,
                    "hsn_sc" => $row->hsncode,
                    "desc" => $row->name,
                    "uqc" => "NA",
                    "qty" => 0,
                    "rt" => $row->taxper * 2,
                    "txval" => $row->total,
                    "iamt" => round((float) $row->igst, 2),
                    "samt" => round((float) $row->sgst, 2),
                    "camt" => round((float) $row->cgst, 2),
                    "csamt" => 0
                ];

                $count5++;
            }
        }

        $hsnrowsb2b = array_values($hsnrowsb2b);
        $hsnrowsb2c = array_values($hsnrowsb2c);

        // Log::info('hsnrowsb2b: ' . json_encode($hsnrowsb2b));
        // Log::info('hsnrowsb2c: ' . json_encode($hsnrowsb2c));
        // return;

        $prop = $this->propertyid;

        $roundoffSub = DB::table('paycharge')
            ->selectRaw("
        propertyid,
        folionodocid,
        billno,
        DATE(settledate) as settle_day,
        SUM(amtdr) as roundoff
    ")
            ->where('propertyid', $prop)
            ->where('paycode', "ROFF{$prop}")
            ->whereBetween('SettleDate', [$fromdate, $todate])
            ->where('FolioNo', '<>', 0)
            ->whereNotNull('SettleDate')
            ->where('billno', '<>', 0)
            ->groupByRaw('propertyid, folionodocid, billno, DATE(settledate)');

        $hsnfom = DB::table('paycharge as P')
            ->select(
                'P.sno1',
                'P.sno',
                'P.FolioNoDocId',
                'P.DocId',
                'SM.Nature',
                'P.PayCode',
                DB::raw("'996311' as hsncode"),
                'P.Vdate',
                'P.FolioNo',
                'P.SettleDate',
                'P.billno',
                DB::raw('SUM(P.amtdr) as taxsum'),
                // DB::raw('SUM(P.billamount) as taxableamount'),
                DB::raw("SUM(
                    CASE
                        WHEN SM.Nature IN ('CGST','IGST')
                        THEN P.OnAmt
                        ELSE 0
                    END
                ) AS taxableamount"),
                'P.taxper',
                DB::raw("CASE WHEN (P.AmtDr - P.AmtCr) > 0 THEN P.OnAmt ELSE -P.OnAmt END as BaseValue"),
                'subgroup.name as company',
                'subgroup.gstin',
                DB::raw("SUM(CASE WHEN SM.nature = 'CGST' THEN P.amtdr ELSE 0 END) as cgst"),
                DB::raw("SUM(CASE WHEN SM.nature = 'SGST' THEN P.amtdr ELSE 0 END) as sgst"),
                DB::raw("COALESCE(R.roundoff, 0) as roundoff"),
                DB::raw("SUM(P.amtdr) + SUM(P.billamount) + SUM(P.amtdr) as netamount")
            )
            ->leftJoinSub($roundoffSub, 'R', function ($join) {
                $join->on('R.propertyid', '=', 'P.propertyid')
                    ->on('R.folionodocid', '=', 'P.folionodocid')
                    ->on('R.billno', '=', 'P.billno')
                    ->whereRaw('R.settle_day = DATE(P.settledate)');
            })
            ->leftJoin('revmast', function ($join) use ($prop) {
                $join->on('P.PayCode', '=', 'revmast.rev_code')
                    ->where('revmast.propertyid', $prop);
            })
            ->leftJoin('sundrymast as SM', function ($join) use ($prop) {
                $join->on('revmast.Sundry', '=', 'SM.sundry_code')
                    ->whereIn('SM.Nature', ['CGST', 'SGST', 'IGST'])
                    ->where('SM.propertyid', $prop);
            })
            ->leftJoin('guestfolio', function ($join) use ($prop) {
                $join->on('guestfolio.docid', '=', 'P.folionodocid')
                    ->on('guestfolio.sno1', '=', 'P.sno1')
                    ->where('guestfolio.propertyid', $prop);
            })
            ->leftJoin('subgroup', function ($join) use ($prop) {
                $join->on('subgroup.sub_code', '=', 'guestfolio.company')
                    ->where('subgroup.propertyid', $prop);
            })
            ->whereBetween('P.SettleDate', [$fromdate, $todate])
            ->where('P.FolioNo', '<>', 0)
            ->whereNotNull('P.SettleDate')
            ->where('P.billno', '<>', 0)
            ->where('P.propertyid', $prop)
            ->where('P.paycode', '<>', "ROFF{$prop}")
            ->groupBy(
                'revmast.hsn_code',
                'P.taxper',
                'guestfolio.company',
                'P.paycode'
            )
            ->get();

        $grouped = [];

        // Log::info("hsnfom: \n" . json_encode($hsnfom, JSON_PRETTY_PRINT));
        // return 'sagar';

        foreach ($hsnfom as $row) {
            $key = (!empty($row->gstin) ? 'b2b' : 'b2c') . '_' . $row->hsncode . '_' . number_format((float) $row->taxper, 2, '.', '');
            if (!isset($grouped[$key])) {

                $grouped[$key] = [
                    'docid' => $row->FolioNoDocId,
                    'hsncode' => $row->hsncode,
                    'taxper' => (float) $row->taxper,
                    'netamount' => 0.00,
                    'taxableamount' => 0.0,
                    'cgst' => 0.0,
                    'sgst' => 0.0,
                    'igst' => 0.0,
                    'gstin' => $row->gstin
                ];
            }

            if (strtoupper($row->Nature) === 'CGST' || strtoupper($row->Nature) === 'IGST') {
                $grouped[$key]['taxableamount'] += (float) $row->taxableamount;
                $grouped[$key]['netamount'] += (float) $row->netamount;
                $grouped[$key]['netamount'] += (float) $row->roundoff;
            }

            $grouped[$key]['cgst'] += (float) $row->cgst;
            $grouped[$key]['sgst'] += (float) $row->sgst;
        }

        foreach ($grouped as $key => $g) {

            $rateStr = number_format($g['taxper'], 2);

            $totalValue = $g['netamount'];
            if (!empty($g['gstin']) && $totalValue > 0) {
                $hsnrowsb2b[] = [
                    $g['hsncode'],
                    'LODGING',
                    'LOT-LOTS',
                    0,
                    $totalValue,
                    $rateStr * 2,
                    round($g['taxableamount'], 2),
                    0.00,
                    round($g['cgst'], 2),
                    round($g['sgst'], 2),
                    0.00
                ];

                $hsnrowsjson[] = [
                    "num" => $count4++,
                    "hsn_sc" => $g['hsncode'],
                    "desc" => "LODGING",
                    "uqc" => "NA",
                    "qty" => 0,
                    "rt" => $g['taxper'] * 2,
                    "txval" => round($g['taxableamount'], 2),
                    "iamt" => 0,
                    "samt" => round($g['sgst'], 2),
                    "camt" => round($g['cgst'], 2),
                    "csamt" => 0
                ];
            } else {
                if ($totalValue > 0) {
                    $hsnrowsb2c[] = [
                        $g['hsncode'],
                        'LODGING',
                        'LOT-LOTS',
                        0,
                        $totalValue,
                        $rateStr * 2,
                        round($g['taxableamount'], 2),
                        0.00,
                        round($g['cgst'], 2),
                        round($g['sgst'], 2),
                        0.00
                    ];

                    $hsnrowsjson[] = [
                        "num" => $count5++,
                        "hsn_sc" => $g['hsncode'],
                        "desc" => "LODGING",
                        "uqc" => "NA",
                        "qty" => 0,
                        "rt" => $g['taxper'] * 2,
                        "txval" => round($g['taxableamount'], 2),
                        "iamt" => 0,
                        "samt" => round($g['sgst'], 2),
                        "camt" => round($g['cgst'], 2),
                        "csamt" => 0
                    ];
                }
            }
        }

        if (banquetparameter()) {

            $banquetdata = getbanquetdata($fromdate, $todate);
            // Log::info("banquet data \n" . json_encode($banquetdata, JSON_PRETTY_PRINT));

            // return 'sagar';
            if ($banquetdata->count() > 0) {

                foreach ($banquetdata as $row) {

                    if (!empty($row->gstin)) {
                        $invoiceno = empty($division_code)
                            ? $row->vtype . '/' . $yt . '/' . $row->billno
                            : $division_code . '/' . $yt . '/' . $row->billno;

                        $fdate = DateTime::createFromFormat('Y-m-d', $row->bill_date);

                        $b2bedata[] = [
                            $row->gstin,
                            $row->companyname,
                            $invoiceno,
                            $fdate ? $fdate->format('d-M-y') : '',
                            $row->billtotal,
                            $company->state_code . '-' . $company->state,
                            'N',
                            "",
                            'Regular B2B',
                            $row->egstin,
                            $row->taxper,
                            $row->basevalue,
                            0.00
                        ];

                        $taxablevalue = (float) $row->basevalue;
                        $taxrate = (float) $row->taxper;

                        if ($taxrate == 0) {
                            $cgst = 0;
                            $sgst = 0;
                        } else {
                            $cgst = round(($taxablevalue * ($taxrate / 2)) / 100, 2);
                            $sgst = round(($taxablevalue * ($taxrate / 2)) / 100, 2);
                        }

                        $b2bdatajson[] = [
                            "ctin" => $row->gstin,
                            "inv" => [
                                "inum" => $invoiceno,
                                "idt" => $fdate ? $fdate->format('d-m-Y') : '',
                                "val" => (float) $row->billtotal,
                                "pos" => $company->state_code,
                                "rchrg" => "N",
                                "inv_typ" => "R",
                                "itms" => [
                                    [
                                        "num" => $count,
                                        "itm_det" => [
                                            "txval" => $taxablevalue,
                                            "rt" => $taxrate,
                                            "camt" => $cgst,
                                            "samt" => $sgst,
                                            "csamt" => 0
                                        ]
                                    ]
                                ]
                            ]
                        ];

                        $count++;
                    } else {

                        if (!empty($row->egstin)) {

                            $b2csdata[] = [
                                'OE',
                                $company->state_code . '-' . $company->state,
                                '',
                                $row->taxper,
                                $row->basevalue,
                                '0.00',
                                $row->egstin
                            ];

                            $taxablevalue = (float) $row->basevalue;
                            $taxrate = (float) $row->taxper;

                            if ($taxrate == 0) {
                                $cgst = 0;
                                $sgst = 0;
                            } else {
                                $cgst = round(($taxablevalue * ($taxrate / 2)) / 100, 2);
                                $sgst = round(($taxablevalue * ($taxrate / 2)) / 100, 2);
                            }

                            $b2csjson[] = [
                                "sply_ty" => "INTRA",
                                "rt" => $taxrate,
                                "typ" => "OE",
                                "pos" => $company->state_code,
                                "txval" => $taxablevalue,
                                "camt" => $cgst,
                                "samt" => $sgst,
                                "csamt" => 0
                            ];

                            $count2++;
                        } else {

                            $taxper = $row->taxper;

                            if (!isset($taxGroupedbanq[$taxper])) {
                                $taxGroupedbanq[$taxper] = 0;
                            }

                            $taxGroupedbanq[$taxper] += (float) $row->basevalue;
                        }
                    }
                }
            }

            // Log::info("Tax Grouped Banquet Data: \n" . json_encode($taxGroupedbanq, JSON_PRETTY_PRINT));
            // return 'sagar';
            foreach ($taxGroupedbanq as $taxPer => $baseValueSum) {
                $b2csdata[] = [
                    'OE',
                    $company->state_code . '-' . $company->state,
                    '',
                    $taxPer,
                    number_format($baseValueSum, 2, '.', ''),
                    '0.00',
                    ''
                ];

                $b2csjson[] = [
                    "csamt" => 0,
                    "samt" => 25309.43,
                    "rt" => 12,
                    "flag" => "N",
                    "pos" => $company->state_code,
                    "txval" => number_format($baseValueSum, 2, '.', ''),
                    "typ" => "OE",
                    "camt" => 25309.43,
                    "chksum" => "3d6651776a9b747b1a9c4ed471571a1ce68bf9faee257e68ef3ccd0aa634a5f9",
                    "iamt" => 0,
                    "sply_ty" => "INTRA"
                ];

                $b2csjson[] = [
                    "sply_ty" => "INTRA",
                    "rt" => $taxPer,
                    "typ" => "OE",
                    "pos" => $company->state_code,
                    "txval" => $baseValueSum,
                    "camt" => calculateTax($baseValueSum, $taxPer),
                    "samt" => calculateTax($baseValueSum, $taxPer),
                    "csamt" => 0
                ];
                $count2++;
            }
        }

        if (banquetparameter()) {
            // HSN Summary for Banquet Items
            $hsnBanquet = hsnbanquet($fromdate, $todate);

            // Log::info("HSN Banquet Data: \n" . json_encode($hsnBanquet, JSON_PRETTY_PRINT));

            // return 'sagar';

            foreach ($hsnBanquet as $row) {
                if (!empty($row->party)) {
                    // B2B HSN
                    $hsnrowsb2b[] = [
                        $row->hsncode,
                        'Indoor Banquet',
                        'LOT-LOTS',
                        0.00,
                        round((float) $row->netamt + ((float) $row->cgst + (float) $row->sgst), 2),
                        round($row->taxper, 2),
                        round($row->total, 2),
                        0.00,
                        round($row->cgst, 2),
                        round($row->sgst, 2),
                        0.00
                    ];

                    $hsnrowsjson[] = [
                        "num" => $count4++,
                        "hsn_sc" => $row->hsncode,
                        "desc" => $row->name,
                        "uqc" => "NA",
                        "qty" => 0,
                        "rt" => $row->taxper,
                        "txval" => round($row->netamt, 2),
                        "iamt" => 0,
                        "samt" => round($row->sgst, 2),
                        "camt" => round($row->cgst, 2),
                        "csamt" => 0
                    ];
                } else {
                    // B2C HSN
                    $hsnrowsb2c[] = [
                        $row->hsncode,
                        'Indoor Banquet',
                        'LOT-LOTS',
                        0.00,
                        round((float) $row->netamt + ((float) $row->cgst + (float) $row->sgst), 2),
                        round($row->taxper, 2),
                        round($row->netamt, 2),
                        0.00,
                        round($row->cgst, 2),
                        round($row->sgst, 2),
                        0.00
                    ];

                    $hsnrowsjson[] = [
                        "num" => $count5++,
                        "hsn_sc" => $row->hsncode,
                        "desc" => $row->name,
                        "uqc" => "NA",
                        "qty" => 0,
                        "rt" => $row->taxper,
                        "txval" => round($row->netamt, 2),
                        "iamt" => 0,
                        "samt" => round($row->sgst, 2),
                        "camt" => round($row->cgst, 2),
                        "csamt" => 0
                    ];
                }
            }
        }

        // return $banquetdata;

        // Log::info("HSN B2B: \n" . json_encode($hsnrowsb2b, JSON_PRETTY_PRINT));
        // return 'sagar';


        $datajson = [
            "gstin" => $company->gstin,
            "fp" => getMonthYearCode($this->ncurdate),
            "version" => "GST3.1.7",
            "hash" => "hash",
            "b2b" => $b2bdatajson,
            "b2cs" => $b2csjson,
            "hsn" => $hsnrowsjson,
            "doc_issue" => $docrowsjson,
            "fil_dt" => date('d-m-Y')
        ];

        $directory = storage_path('app/public/files/newfile/');
        if (!File::exists($directory)) {
            File::makeDirectory($directory, 0755, true);
        }

        if (file_exists('storage/files/gstr1_data.json')) {
            unlink('storage/files/gstr1_data.json');
        }

        $filePath = $directory . 'gstr1_data.json';
        File::put($filePath, json_encode($datajson, JSON_PRETTY_PRINT));

        try {
            $this->writeAdvanceTxtFiles($directory, $advancequery);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage() . ' On Line: ' . $e->getLine()
            ], 500);
        }

        // Log::info('HSNROWS B2B: ' . json_encode($hsnrowsb2b));
        // Log::info('HSNROWS B2C: ' . json_encode($hsnrowsb2c));
        // return;

        try {
            // $templatePath = storage_path('app/public/files/GSTR1_Excel_Workbook_Template_V2.1.xlsx');
            $templatePath = storage_path('app/public/files/gstr1.xlsx');
            $newDir = storage_path('app/public/files/newfile/');
            // $newFile = $newDir . 'GSTR1_Excel_Workbook_Template_V2.1.xlsx';
            $newFile = $newDir . 'gstr1.xlsx';

            // if (file_exists('storage/files/newfile/GSTR1_Excel_Workbook_Template_V2.1.xlsx')) {
            //     unlink('storage/files/newfile/GSTR1_Excel_Workbook_Template_V2.1.xlsx');
            // }
            if (file_exists('storage/files/newfile/gstr1.xlsx')) {
                unlink('storage/files/newfile/gstr1.xlsx');
            }

            // Ensure the target directory exists
            if (!file_exists($newDir)) {
                mkdir($newDir, 0755, true);
            }

            if (!copy($templatePath, $newFile)) {
                return response()->json([
                    'success' => false,
                    'message' => 'Failed to copy template file.'
                ], 500);
            }

            // Log::info('Excel File: ' . $newFile);

            $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
            $spreadsheet = $reader->load($newFile);

            // === B2B Sheet ===
            $worksheetB2B = $spreadsheet->getSheetByName('b2b,sez,de');
            if (!$worksheetB2B) {
                return response()->json(['success' => false, 'message' => "Sheet 'b2b' not found."], 500);
            }

            // Log::info('Excel File Sheet: ' . json_encode($b2bedata));
            // return true;

            $emptyRowStartB2B = $this->findFirstEmptyRow($worksheetB2B, 'A', 5);
            // return $b2bedata;
            foreach ($b2bedata as $i => $row) {
                $worksheetB2B->fromArray($row, null, 'A' . ($emptyRowStartB2B + $i));
            }

            // === B2CS Sheet ===
            $worksheetB2CS = $spreadsheet->getSheetByName('b2cs');
            if (!$worksheetB2CS) {
                return response()->json(['success' => false, 'message' => "Sheet 'b2cs' not found."], 500);
            }

            $b2csdata = array_values($b2csdata);
            $emptyRowStartB2CS = $this->findFirstEmptyRow($worksheetB2CS, 'A', 5);
            foreach ($b2csdata as $i => $row) {
                $worksheetB2CS->fromArray($row, null, 'A' . ($emptyRowStartB2CS + $i));
            }

            // === DOCS Sheet ===
            $worksheetdocs = $spreadsheet->getSheetByName('docs');
            if (!$worksheetdocs) {
                return response()->json(['success' => false, 'message' => "Sheet 'docs' not found."], 500);
            }

            $worksheetexempted = $spreadsheet->getSheetByName('exemp');
            if (!$worksheetexempted) {
                return response()->json(['success' => false, 'message' => "Sheet 'exempted' not found."], 500);
            }

            foreach ($exempdata as $i => $row) {
                $worksheetexempted->fromArray($row, null, 'A' . (5 + $i));
            }

            $emptyrowstartdocs = $this->findFirstEmptyRow($worksheetdocs, 'A', 5);
            foreach ($docrows as $i => $row) {
                $worksheetdocs->fromArray($row, null, 'A' . ($emptyrowstartdocs + $i));
            }

            // === HSN Sheet B2B ===
            $worksheethsnb2b = $spreadsheet->getSheetByName('hsn(b2b)');
            if (!$worksheethsnb2b) {
                return response()->json(['success' => false, 'message' => "Sheet 'HSN B2B' not found."], 500);
            }

            $emptyrowstarthsnb2b = $this->findFirstEmptyRow($worksheethsnb2b, 'A', 5);
            foreach ($hsnrowsb2b as $i => $row) {
                $worksheethsnb2b->fromArray($row, null, 'A' . ($emptyrowstarthsnb2b + $i));
            }

            // === HSN Sheet B2C ===
            $worksheethsnb2c = $spreadsheet->getSheetByName('hsn(b2c)');
            if (!$worksheethsnb2c) {
                return response()->json(['success' => false, 'message' => "Sheet 'HSN B2C' not found."], 500);
            }

            $emptyrowstarthsnb2c = $this->findFirstEmptyRow($worksheethsnb2c, 'A', 5);
            foreach ($hsnrowsb2c as $i => $row) {
                $worksheethsnb2c->fromArray($row, null, 'A' . ($emptyrowstarthsnb2c + $i));
            }

            // === ATA Sheet ===
            $worksheetata = $spreadsheet->getSheetByName('ata');
            if (!$worksheetata) {
                return response()->json(['success' => false, 'message' => "Sheet 'ATA' not found."], 500);
            }

            $emptyrowstartata = $this->findFirstEmptyRow($worksheetata, 'A', 5);
            foreach ($atadata as $i => $row) {
                $worksheetata->fromArray($row, null, 'A' . ($emptyrowstartata + $i));
            }

            // === atadj Sheet ===
            $worksheetatadj = $spreadsheet->getSheetByName('atadj');
            if (!$worksheetatadj) {
                return response()->json(['success' => false, 'message' => "Sheet 'atadj' not found."], 500);
            }
            $emptyrowstartatadj = $this->findFirstEmptyRow($worksheetatadj, 'A', 5);
            foreach ($atadjdata as $i => $row) {
                $worksheetatadj->fromArray($row, null, 'A' . ($emptyrowstartatadj + $i));
            }

            // Save to new path
            $writer = new \PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
            $writer->save($newFile);

            return response()->json([
                'success' => true,
                // 'message' => "{$count} B2B rows and {$count2} B2CS and {$count3} DOCS and {$count4} HSN B2B and {$count5} HSN B2C rows inserted successfully. Saved to: newfile/"
                'message' => 'GSTR1 Generated Successfully'
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage() . ' On Line: ' . $e->getLine()
            ], 500);
        }
    }

    public function getGSTR1Data($fromdate, $todate)
    {
        $data1 =  DB::table(DB::raw("(
            SELECT 
                R.FolionoDocid, 
                R.Foliono, 
                R.Bill_Date, 
                R.Bill_No, 
                R.AmtDr, 
                R.BASEVALUE, 
                R.TAXPER, 
                0 AS TaxAmtOther, 
                0 AS TaxPerOther, 
                0 AS BaseValueOther, 
                0 AS NilRated 
            FROM (
                SELECT 
                    MAX(Q.FolionoDocid) AS FolionoDocid, 
                    MAX(Q.Foliono) AS Foliono, 
                    MAX(Q.SettleDate) AS Bill_Date, 
                    MAX(Q.Bill_No) AS Bill_No, 
                    SUM(Q.AmtDr) AS AmtDr, 
                    SUM(Q.BASEVALUE) AS BASEVALUE, 
                    MAX(Q.TAXPER) AS TAXPER 
                FROM (
                    SELECT 
                        P.FolionoDocid, 
                        P.FolioNo, 
                        P.SettleDate, 
                        MAX(P.billno) AS Bill_No, 
                        SUM(P.AmtDr - P.AmtCr) AS AmtDr, 
                        MAX(CASE WHEN (P.AmtDr - P.AmtCr) > 0 THEN P.OnAmt ELSE -P.OnAmt END) AS BASEVALUE, 
                        SUM(P.TaxPer) AS TAXPER 
                    FROM paycharge P 
                    LEFT JOIN revmast ON P.PayCode = revmast.rev_code 
                    LEFT JOIN sundrymast ON revmast.sundry = sundrymast.sundry_code 
                    WHERE sundrymast.nature IN('CGST', 'SGST', 'IGST') 
                        AND P.roomtype = 'RO' 
                        AND P.propertyid = {$this->propertyid} 
                        AND P.settledate BETWEEN ? AND ? 
                        AND (P.amtdr - P.amtcr) <> 0 
                        AND P.foliono <> 0 
                        AND P.settledate IS NOT NULL 
                        AND IFNULL(P.billno, '') <> '' 
                    GROUP BY P.docid, P.folionodocid, P.foliono, P.settledate, P.taxper
                ) Q 
                GROUP BY folionodocid, taxper
            ) R
        ) as T"))
            ->join(DB::raw("(
            SELECT 
                FolionoDocid, 
                SUM(amtdr - amtcr) AS BillTotal 
            FROM paycharge 
            WHERE (
                DocId IN (SELECT docid FROM paycharge WHERE paycode = 'DISC{$this->propertyid}') 
                OR (AmtDr <> 0 AND IFNULL(Modeset, '') <> 'S') 
                OR (Modeset = 'S' AND PayCode = 'ROFF{$this->propertyid}')
            ) 
            AND RoomType = 'RO' 
            AND propertyid = {$this->propertyid}
            AND paycode NOT IN ('TOUT{$this->propertyid}')
            AND settledate BETWEEN ? AND ? 
            AND FolioNo <> 0 
            GROUP BY FolioNoDocId
        ) as S"), 'T.folionodocid', '=', 'S.FolionoDocId')
            ->join('guestfolio as GF', 'T.folionodocid', '=', 'GF.DocId')
            ->leftJoin('subgroup as SG', 'GF.Company', '=', 'SG.sub_code')
            ->leftJoin('subgroup as TA', 'GF.TravelAgent', '=', 'TA.sub_code')
            ->select([
                'T.*',
                DB::raw('0 AS Exempted'),
                DB::raw('0 AS NonGST'),
                'S.BillTotal',
                DB::raw("CONCAT('BCNT/24-25/', T.Bill_No) AS BillNo"),
                DB::raw("TRIM(IFNULL(SG.GSTIN, '')) AS GSTIN"),
                DB::raw("TRIM(IFNULL(SG.Name, '')) AS CompanyName"),
                DB::raw("IFNULL(GF.Company, '') AS Company"),
                DB::raw("TRIM(IFNULL(TA.GSTIN, '')) AS EGSTIN"),
                DB::raw("IFNULL(GF.TravelAgent, '') AS TravelAgent"),
                DB::raw("CASE WHEN (T.BaseValue <> 0 OR T.TaxAmtOther <> 0) THEN 1 ELSE 0 END AS Cond1"),
                DB::raw("CASE WHEN (T.NilRated <> 0) THEN 1 ELSE 0 END AS Cond2")
            ])
            ->orderByRaw("CAST(T.Bill_No AS UNSIGNED), T.FolionoDocid, T.TAXPER DESC")
            ->setBindings([$fromdate, $todate, $fromdate, $todate])
            ->get();

        $data2 = DB::table('paycharge as P')
            ->leftJoin('guestfolio as GF', 'P.folionodocid', '=', 'GF.DocId')
            ->leftJoin('subgroup as SG', 'GF.Company', '=', 'SG.sub_code')
            ->leftJoin('subgroup as TA', 'GF.TravelAgent', '=', 'TA.sub_code')
            ->where('P.vtype', 'CCHG')
            ->where('P.propertyid', $this->propertyid)
            ->where('P.roomtype', 'RO')
            ->whereBetween('P.vdate', [$fromdate, $todate])
            ->where('P.foliono', '<>', 0)
            ->select([
                'P.folionodocid as FolionoDocid',
                'P.foliono as Foliono',
                'P.vdate as Bill_Date',
                'P.billno as Bill_No',
                DB::raw('SUM(P.amtdr - P.amtcr) AS AmtDr'),
                DB::raw('MAX(P.onamt) AS BASEVALUE'),
                DB::raw('MAX(CASE WHEN P.onamt IS NULL THEN P.taxper ELSE 0 END) AS TAXPER'),
                DB::raw('0 AS TaxAmtOther'),
                DB::raw('0 AS TaxPerOther'),
                DB::raw('0 AS BaseValueOther'),
                DB::raw('0 AS NilRated'),
                DB::raw('0 AS Exempted'),
                DB::raw('0 AS NonGST'),
                DB::raw('SUM(P.amtdr - P.amtcr) AS BillTotal'),
                DB::raw("CONCAT('CCHG/24-25/', P.billno) AS BillNo"),
                DB::raw("TRIM(IFNULL(SG.GSTIN, '')) AS GSTIN"),
                DB::raw("TRIM(IFNULL(SG.Name, '')) AS CompanyName"),
                DB::raw("IFNULL(GF.Company, '') AS Company"),
                DB::raw("TRIM(IFNULL(TA.GSTIN, '')) AS EGSTIN"),
                DB::raw("IFNULL(GF.TravelAgent, '') AS TravelAgent"),
                DB::raw('CASE WHEN SUM(P.onamt) <> 0 THEN 1 ELSE 0 END AS Cond1'),
                DB::raw('0 AS Cond2'),
            ])
            ->groupBy(
                'P.folionodocid',
                'P.foliono',
                'P.vdate',
                'P.billno',
                'GF.Company',
                'GF.TravelAgent',
                'SG.GSTIN',
                'SG.Name',
                'TA.GSTIN'
            )
            ->orderByRaw('CAST(P.billno AS UNSIGNED), P.folionodocid, TAXPER DESC')
            ->get();

        return collect($data1)
            ->concat($data2)
            ->sortBy([
                ['Bill_No', 'asc'],
                ['FolionoDocid', 'asc'],
                ['TAXPER', 'desc'],
            ])
            ->values();
    }

    public function getGSTR1DataPOS($fromdate, $todate)
    {


        $finalResult = DB::select("
SELECT
    S1.DocId AS FolioNoDocId,
    S1.Vdate AS Bill_Date,
    S1.vtype AS vouchertype,
    CAST(S1.VNo AS CHAR) AS BillNo,
    IFNULL(SG.ConPerson, '') AS GuestName,
    S1.NetAmt AS BillTotal,
    S1.Total AS BASEVALUE,
    S1.cgst AS cgstvalue,
    S1.sgst AS sgstvalue,
    S1.igst AS igstvalue,
    S1.discamt AS Discount,
    S1.party AS PartyCode,
    Q.TAXPER,
    IFNULL(Q.TaxAmtOther, 0) AS TaxAmtOther,
    IFNULL(Q.BaseValueOther, 0) AS BaseValueOther,
    IFNULL(Q.TaxPerOther, 0) AS TaxPerOther,
    IFNULL(Q.Exempted, 0) AS Exempted,
    IFNULL(Q.NonGST, 0) AS NonGST,
    0 AS NilRated,
    TRIM(IFNULL(SG.GSTIN, '')) AS GSTIN,
    TRIM(IFNULL(SG.Name, '')) AS CompanyName,
    IFNULL(S1.Party, '') AS Company,
    '' AS EGSTIN
FROM
(
    SELECT
        T1.DocId,
        SUM(T1.TAXPER) AS TAXPER,
        SUM(T1.TAXAMT) AS TAXAMT,
        SUM(T1.TaxAmtOther) AS TaxAmtOther,
        SUM(T1.BaseValueOther) AS BaseValueOther,
        SUM(T1.TaxPerOther) AS TaxPerOther,
        SUM(T1.Exempted) AS Exempted,
        SUM(T1.NonGST) AS NonGST
    FROM
    (
        SELECT
            SL.DocId,
            SL.TaxPer AS TAXPER,
            SUM(CASE WHEN SL.Nature IN ('CGST','SGST','IGST')
                     THEN SL.TaxAmt ELSE 0 END) AS TAXAMT,
            SUM(CASE WHEN SL.Nature IN ('Luxury Tax','Sale Tax','Service Tax')
                     THEN SL.TaxAmt ELSE 0 END) AS TaxAmtOther,
            SUM(CASE WHEN SL.Nature IN ('Luxury Tax','Sale Tax','Service Tax')
                     THEN SL.BaseValue ELSE 0 END) AS BaseValueOther,
            SUM(CASE WHEN SL.Nature IN ('Luxury Tax','Sale Tax','Service Tax')
                     THEN SL.TaxPer ELSE 0 END) AS TaxPerOther,
            0 AS Exempted,
            0 AS NonGST
        FROM
        (
            SELECT
                T.DocId,
                SM.Nature,
                T.Taxcode,
                T.TaxPer,
                T.TaxAmt,
                T.BaseValue
            FROM
            (
                SELECT
                    x.DocId,
                    MIN(x.Taxcode) AS Taxcode,
                    SUM(CASE WHEN x.rn <= 2 THEN x.TaxPer END) AS TaxPer,
                    SUM(x.TaxAmt) AS TaxAmt,
                    SUM(x.BaseValue) AS BaseValue
                FROM
                (
                    SELECT
                        sale2.DocId,
                        sale2.Taxcode,
                        sale2.TaxPer,
                        sale2.TaxAmt,
                        sale2.BaseValue,
                        ROW_NUMBER() OVER (
                            PARTITION BY sale2.DocId, sale2.TaxPer
                            ORDER BY sale2.sno1
                        ) rn
                    FROM sale2
                    INNER JOIN depart
                        ON depart.dcode = sale2.restcode
                    WHERE sale2.delflag = 'N'
                        AND sale2.propertyid = ?
                        AND sale2.vdate BETWEEN ? AND ?
                        AND depart.rest_type IN ('Outlet','Room Service')
                ) x
                GROUP BY x.DocId

                UNION ALL

                SELECT
                    suntran.DocId,
                    suntran.RevCode AS Taxcode,
                    suntran.SValue AS TaxPer,
                    SUM((suntran.BaseAmount * suntran.SValue / 100)) AS TaxAmt,
                    SUM(suntran.BaseAmount) AS BaseValue
                FROM suntran
                INNER JOIN depart
                    ON depart.dcode = suntran.restcode
                WHERE suntran.delflag = 'N'
                    AND suntran.propertyid = ?
                    AND suntran.vdate BETWEEN ? AND ?
                    AND depart.rest_type IN ('Outlet','Room Service')
                    AND suntran.revcode <> ''
                    AND suntran.svalue > 0
                    AND suntran.amount > 0
                GROUP BY
                    suntran.DocId,
                    suntran.RevCode,
                    suntran.SValue

            ) T
            INNER JOIN revmast
                ON revmast.rev_code = T.Taxcode
                AND revmast.propertyid = ?
            LEFT JOIN sundrymast SM
                ON revmast.sundry = SM.sundry_code
                AND SM.propertyid = ?
            WHERE revmast.field_type = 'T'
        ) SL
        GROUP BY SL.DocId, SL.TaxPer
    ) T1
    GROUP BY T1.DocId
) Q
INNER JOIN sale1 S1 ON S1.DocId = Q.DocId
    AND S1.delflag = 'N'
    AND S1.propertyid = ?
    AND S1.Vdate BETWEEN ?
    AND ?
LEFT JOIN subgroup SG ON SG.sub_code = S1.party
ORDER BY S1.VType, S1.VNo, Q.TAXPER DESC
", [
            $this->propertyid,
            $fromdate,
            $todate,
            $this->propertyid,
            $fromdate,
            $todate,
            $this->propertyid,
            $this->propertyid,
            $this->propertyid,
            $fromdate,
            $todate
        ]);

        return $finalResult;
    }

    public function download()
    {
        $file1 = storage_path('app/public/files/newfile/gstr1.xlsx');
        $file2 = storage_path('app/public/files/newfile/gstr1_data.json');
        $file3 = storage_path('app/public/files/newfile/ataandatadj.xlsx');

        $zipFileName = 'gstr1_.zip';
        $zipPath = storage_path('app/public/files/newfile/' . $zipFileName);

        $zip = new \ZipArchive;
        if ($zip->open($zipPath, \ZipArchive::CREATE | \ZipArchive::OVERWRITE) === TRUE) {
            $zip->addFile($file1, 'gstr1.xlsx');
            $zip->addFile($file2, 'gstr1_data.json');

            if (file_exists($file3)) {
                $zip->addFile($file3, 'ataandatadj.xlsx');
            } else {
                $zip->addFromString('ataandatadj.xlsx', '');
            }

            $zip->close();
        } else {
            return response()->json(['error' => 'Failed to create ZIP file.'], 500);
        }

        if (ob_get_length()) {
            ob_end_clean();
        }

        return response()->download($zipPath, $zipFileName, [
            'Content-Type' => 'application/zip',
            'Content-Disposition' => 'attachment; filename="' . $zipFileName . '"',
        ])->deleteFileAfterSend(true);
    }
}
