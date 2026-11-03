<?php

namespace App\Exports;

use Carbon\Carbon;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class FacilityBillRegisterExport
{
    protected $rows;

    protected $fromDate;

    protected $toDate;

    protected $companyName;

    public function __construct($rows, $fromDate, $toDate, $companyName)
    {
        $this->rows = $rows;
        $this->fromDate = $fromDate;
        $this->toDate = $toDate;
        $this->companyName = $companyName;
    }

    public function download()
    {
        $rows = $this->rows;

        $spreadsheet = new Spreadsheet;
        $sheet = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Facility Bill Register');

        $lastCol = 'T';   // columns A–T (20 cols)
        $mergeRng = 'A1:'.$lastCol;

        // ── Row 1: Company Name ───────────────────────────────────────
        $sheet->mergeCells($mergeRng.'1');
        $sheet->setCellValue('A1', $this->companyName);
        $sheet->getStyle('A1')->applyFromArray([
            'font' => ['bold' => true, 'size' => 14],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // ── Row 2: Report Title ───────────────────────────────────────
        $sheet->mergeCells($mergeRng.'2');
        $sheet->setCellValue('A2', 'Facility Bill Register');
        $sheet->getStyle('A2')->applyFromArray([
            'font' => ['bold' => true, 'size' => 12],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // ── Row 3: Date Range ─────────────────────────────────────────
        $sheet->mergeCells($mergeRng.'3');
        $from = $this->fromDate ? Carbon::parse($this->fromDate)->format('d-m-Y') : '—';
        $to = $this->toDate ? Carbon::parse($this->toDate)->format('d-m-Y') : '—';
        $sheet->setCellValue('A3', 'From: '.$from.'   To: '.$to);
        $sheet->getStyle('A3')->applyFromArray([
            'font' => ['italic' => true, 'size' => 10],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // ── Row 5: Headers ────────────────────────────────────────────
        $headerRow = 5;
        $headers = [
            'A' => 'Bill No',
            'B' => 'Date',
            'C' => 'Party',
            'D' => 'Party Code',
            'E' => 'Facility',
            'F' => 'For Period',
            'G' => 'To Period',
            'H' => 'Unit',
            'I' => 'Rate',
            'J' => 'Amount',
            'K' => 'CGST %',
            'L' => 'CGST',
            'M' => 'SGST %',
            'N' => 'SGST',
            'O' => 'IGST %',
            'P' => 'IGST',
            'Q' => 'Discount',
            'R' => 'Round Off',
            'S' => 'Net Amount',
            'T' => 'Remark',
        ];

        foreach ($headers as $col => $label) {
            $sheet->setCellValue($col.$headerRow, $label);
        }

        $sheet->getStyle('A'.$headerRow.':T'.$headerRow)->applyFromArray([
            'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
            'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF5C2D91']],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER, 'vertical' => Alignment::VERTICAL_CENTER],
            'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);

        // ── Data Rows ─────────────────────────────────────────────────
        $currentRow = $headerRow + 1;
        $totAmount = $totCgst = $totSgst = $totIgst = 0.0;
        $seenDocs = [];

        foreach ($rows as $row) {
            $amount = (float) ($row->Amount ?? 0);
            $cgst = (float) ($row->CGSTAmt ?? 0);
            $sgst = (float) ($row->SGSTAmt ?? 0);
            $igst = (float) ($row->IGSTAmt ?? 0);

            // Bill-level sundries sirf bill ki pehli line pe dikhane hain
            $docKey = (string) ($row->Docid ?? ($row->BillNo ?? $currentRow));
            $isFirst = ! isset($seenDocs[$docKey]);
            $seenDocs[$docKey] = true;

            $totAmount += $amount;
            $totCgst += $cgst;
            $totSgst += $sgst;
            $totIgst += $igst;

            $sheet->setCellValue('A'.$currentRow, $row->BillNo ?? '');
            $sheet->setCellValue('B'.$currentRow, $row->VDate ? Carbon::parse($row->VDate)->format('d/m/Y') : '');
            $sheet->setCellValue('C'.$currentRow, $row->Party ?? '');
            $sheet->setCellValue('D'.$currentRow, $row->PartyCode ?? '');
            $sheet->setCellValue('E'.$currentRow, $row->Facility ?? '');
            $sheet->setCellValue('F'.$currentRow, $row->ForPeriod ? Carbon::parse($row->ForPeriod)->format('d/m/Y') : '');
            $sheet->setCellValue('G'.$currentRow, $row->ToPeriod ? Carbon::parse($row->ToPeriod)->format('d/m/Y') : '');
            $sheet->setCellValue('H'.$currentRow, (float) ($row->Unit ?? 0));
            $sheet->setCellValue('I'.$currentRow, (float) ($row->UnitRate ?? 0));
            $sheet->setCellValue('J'.$currentRow, $amount);
            $sheet->setCellValue('K'.$currentRow, (float) ($row->CGSTPer ?? 0));
            $sheet->setCellValue('L'.$currentRow, $cgst);
            $sheet->setCellValue('M'.$currentRow, (float) ($row->SGSTPer ?? 0));
            $sheet->setCellValue('N'.$currentRow, $sgst);
            $sheet->setCellValue('O'.$currentRow, (float) ($row->IGSTPer ?? 0));
            $sheet->setCellValue('P'.$currentRow, $igst);
            $sheet->setCellValue('Q'.$currentRow, $isFirst ? (float) ($row->Discount ?? 0) : '');
            $sheet->setCellValue('R'.$currentRow, $isFirst ? (float) ($row->RoundOff ?? 0) : '');
            $sheet->setCellValue('S'.$currentRow, $isFirst ? (float) ($row->NetAmount ?? 0) : '');
            $sheet->setCellValue('T'.$currentRow, $row->Remark ?? '');

            $sheet->getStyle('A'.$currentRow.':T'.$currentRow)->applyFromArray([
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]],
            ]);

            foreach (['H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S'] as $numCol) {
                $sheet->getStyle($numCol.$currentRow)->getNumberFormat()->setFormatCode('#,##0.00');
                $sheet->getStyle($numCol.$currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_RIGHT);
            }
            $sheet->getStyle('B'.$currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);

            $currentRow++;
        }

        // ── Total Row ─────────────────────────────────────────────────
        $sheet->setCellValue('I'.$currentRow, 'Total');
        $sheet->setCellValue('J'.$currentRow, $totAmount);
        $sheet->setCellValue('L'.$currentRow, $totCgst);
        $sheet->setCellValue('N'.$currentRow, $totSgst);
        $sheet->setCellValue('P'.$currentRow, $totIgst);

        $sheet->getStyle('A'.$currentRow.':T'.$currentRow)->applyFromArray([
            'font' => ['bold' => true],
            'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFE8D5F5']],
            'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);
        foreach (['J', 'L', 'N', 'P'] as $numCol) {
            $sheet->getStyle($numCol.$currentRow)->getNumberFormat()->setFormatCode('#,##0.00');
            $sheet->getStyle($numCol.$currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_RIGHT);
        }
        $sheet->getStyle('I'.$currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_RIGHT);

        // ── Column Widths ─────────────────────────────────────────────
        $widths = [
            'A' => 16,
            'B' => 12,
            'C' => 26,
            'D' => 12,
            'E' => 22,
            'F' => 12,
            'G' => 12,
            'H' => 10,
            'I' => 12,
            'J' => 14,
            'K' => 9,
            'L' => 12,
            'M' => 9,
            'N' => 12,
            'O' => 9,
            'P' => 12,
            'Q' => 12,
            'R' => 12,
            'S' => 14,
            'T' => 22,
        ];
        foreach ($widths as $col => $width) {
            $sheet->getColumnDimension($col)->setWidth($width);
        }

        // ── Stream ────────────────────────────────────────────────────
        $filename = 'Facility_Bill_Register_'.$this->fromDate.'_to_'.$this->toDate.'.xlsx';

        if (ob_get_length()) {
            ob_end_clean();
        }

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="'.$filename.'"');
        header('Cache-Control: max-age=0');

        (new Xlsx($spreadsheet))->save('php://output');
        exit;
    }
}
