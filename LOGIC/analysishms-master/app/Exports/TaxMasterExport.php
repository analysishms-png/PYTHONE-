<?php

namespace App\Exports;

use Illuminate\Support\Facades\DB;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;

class TaxMasterExport
{
    protected $propertyid;
    protected $companyName;

    public function __construct($propertyid, $companyName)
    {
        $this->propertyid  = $propertyid;
        $this->companyName = $companyName;
    }

    public function getData()
    {
        return DB::table('revmast')
            ->select('revmast.name as taxname', 'subgroup.name as subname', 'sundrymast.name as sundryname', 'revmast.*')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'revmast.ac_code')
            ->leftJoin('sundrymast', 'sundrymast.sundry_code', '=', 'revmast.sundry')
            ->where('revmast.propertyid', $this->propertyid)
            ->where('field_type', 'T')
            ->orderBy('taxname', 'ASC')
            ->get();
    }

    public function download()
    {
        $data = $this->getData();

        $spreadsheet = new Spreadsheet();
        $sheet       = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Tax Master');

        // ── Row 1: Company Name ──────────────────────────────
        $sheet->mergeCells('A1:E1');
        $sheet->setCellValue('A1', $this->companyName);
        $sheet->getStyle('A1')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 14],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // ── Row 2: Report Title ──────────────────────────────
        $sheet->mergeCells('A2:E2');
        $sheet->setCellValue('A2', 'Tax Master');
        $sheet->getStyle('A2')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 11],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // ── Row 3: blank ─────────────────────────────────────
        $currentRow = 4;

        // ── Row 4: Column Headers ────────────────────────────
        $headers = ['Sn.', 'Tax Name', 'Account Name', 'Sundry', 'Defined'];
        $cols    = ['A', 'B', 'C', 'D', 'E'];

        foreach ($headers as $i => $header) {
            $sheet->setCellValue($cols[$i] . $currentRow, $header);
        }

        $sheet->getStyle('A' . $currentRow . ':E' . $currentRow)->applyFromArray([
            'font'      => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
            'fill'      => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            'borders'   => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);

        $currentRow++;

        // ── Data rows ────────────────────────────────────────
        foreach ($data as $index => $row) {
            $sheet->setCellValue('A' . $currentRow, $index + 1);
            $sheet->setCellValue('B' . $currentRow, $row->taxname ?? '');
            $sheet->setCellValue('C' . $currentRow, $row->subname ?: ($row->ac_code ?? ''));
            $sheet->setCellValue('D' . $currentRow, $row->sundryname ?: ($row->sundry ?? ''));
            $sheet->setCellValue('E' . $currentRow, ($row->SysYN ?? '') == 'Y' ? 'System' : 'User');

            $sheet->getStyle('A' . $currentRow . ':E' . $currentRow)->applyFromArray([
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]],
            ]);

            $currentRow++;
        }

        // ── Column widths ─────────────────────────────────────
        $sheet->getColumnDimension('A')->setWidth(6);
        $sheet->getColumnDimension('B')->setWidth(28);
        $sheet->getColumnDimension('C')->setWidth(28);
        $sheet->getColumnDimension('D')->setWidth(22);
        $sheet->getColumnDimension('E')->setWidth(12);

        // ── Stream download ───────────────────────────────────
        $filename = 'Tax_Master.xlsx';

        $writer = new Xlsx($spreadsheet);

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="' . $filename . '"');
        header('Cache-Control: max-age=0');

        $writer->save('php://output');
        exit;
    }
}
