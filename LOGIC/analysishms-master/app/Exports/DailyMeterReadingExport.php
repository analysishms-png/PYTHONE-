<?php

namespace App\Exports;

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;

class DailyMeterReadingExport
{
    protected $rows;
    protected $fromDate;
    protected $toDate;
    protected $companyName;

    public function __construct($rows, $fromDate, $toDate, $companyName)
    {
        $this->rows        = $rows;
        $this->fromDate    = $fromDate;
        $this->toDate      = $toDate;
        $this->companyName = $companyName;
    }

    public function download()
    {
        $rows = $this->rows;

        $spreadsheet = new Spreadsheet();
        $sheet       = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Meter Reading Register');

        $lastCol  = 'L';   // columns A–L (12 cols)
        $mergeRng = 'A1:' . $lastCol;

        // ── Row 1: Company Name ───────────────────────────────────────
        $sheet->mergeCells($mergeRng . '1');
        $sheet->setCellValue('A1', $this->companyName);
        $sheet->getStyle('A1')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 14],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // ── Row 2: Report Title ───────────────────────────────────────
        $sheet->mergeCells($mergeRng . '2');
        $sheet->setCellValue('A2', 'Daily Meter Reading Register');
        $sheet->getStyle('A2')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 12],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // ── Row 3: Date Range ─────────────────────────────────────────
        $sheet->mergeCells($mergeRng . '3');
        $from = $this->fromDate
            ? \Carbon\Carbon::parse($this->fromDate)->format('d-m-Y')
            : '—';
        $to = $this->toDate
            ? \Carbon\Carbon::parse($this->toDate)->format('d-m-Y')
            : '—';
        $sheet->setCellValue('A3', 'From: ' . $from . '   To: ' . $to);
        $sheet->getStyle('A3')->applyFromArray([
            'font'      => ['italic' => true, 'size' => 10],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // ── Row 5: Headers ────────────────────────────────────────────
        $headerRow = 5;
        $headers = [
            'A' => '#',
            'B' => 'Date',
            'C' => 'Floor',
            'D' => 'Shop No',
            'E' => 'Meter No',
            'F' => 'Previous',
            'G' => 'Current',
            'H' => 'MF',
            'I' => 'Consumption',
            'J' => 'Reading By',
            'K' => 'Time',
            'L' => 'Photo',
        ];

        foreach ($headers as $col => $label) {
            $sheet->setCellValue($col . $headerRow, $label);
        }

        $sheet->getStyle('A' . $headerRow . ':' . $lastCol . $headerRow)->applyFromArray([
            'font'      => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
            'fill'      => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF5C2D91']],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER, 'vertical' => Alignment::VERTICAL_CENTER],
            'borders'   => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);

        // ── Data Rows ─────────────────────────────────────────────────
        $currentRow    = $headerRow + 1;
        $totalConsumption = 0;

        foreach ($rows as $i => $row) {
            $consumption = (float)($row->Consumption ?? 0);
            $totalConsumption += $consumption;

            $sheet->setCellValue('A' . $currentRow, $i + 1);
            $sheet->setCellValue('B' . $currentRow,
                $row->ReadingDate
                    ? \Carbon\Carbon::parse($row->ReadingDate)->format('d/m/Y')
                    : '—'
            );
            $sheet->setCellValue('C' . $currentRow, $row->Floor    ?? '—');
            $sheet->setCellValue('D' . $currentRow, $row->ShopNo   ?? '—');
            $sheet->setCellValue('E' . $currentRow, $row->MeterNo  ?? '—');
            $sheet->setCellValue('F' . $currentRow, (float)($row->Previous ?? 0));
            $sheet->setCellValue('G' . $currentRow, (float)($row->Current  ?? 0));
            $sheet->setCellValue('H' . $currentRow, $row->MF       ?? '');
            $sheet->setCellValue('I' . $currentRow, $consumption);
            $sheet->setCellValue('J' . $currentRow, $row->ReadingBy ?? '—');
            $sheet->setCellValue('K' . $currentRow,
                $row->Time
                    ? \Carbon\Carbon::parse($row->Time)->format('d/m/Y h:i A')
                    : '—'
            );
            $sheet->setCellValue('L' . $currentRow,
                ($row->Photo) ? 'Yes' : '—'
            );

            // Number formats
            $sheet->getStyle('F' . $currentRow)->getNumberFormat()->setFormatCode('#,##0.00');
            $sheet->getStyle('G' . $currentRow)->getNumberFormat()->setFormatCode('#,##0.00');
            $sheet->getStyle('I' . $currentRow)->getNumberFormat()->setFormatCode('#,##0.00');

            // Row borders + alternating fill
            $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)->applyFromArray([
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]],
            ]);

            if ($i % 2 === 1) {
                $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)
                    ->getFill()->setFillType(Fill::FILL_SOLID)
                    ->getStartColor()->setARGB('FFF5F0FB');
            }

            // Alignment
            $sheet->getStyle('A' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
            $sheet->getStyle('B' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
            $sheet->getStyle('H' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
            $sheet->getStyle('L' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
            foreach (['F', 'G', 'I'] as $numCol) {
                $sheet->getStyle($numCol . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_RIGHT);
            }

            $currentRow++;
        }

        // ── Total Row ─────────────────────────────────────────────────
        $sheet->setCellValue('H' . $currentRow, 'Total');
        $sheet->setCellValue('I' . $currentRow, $totalConsumption);
        $sheet->getStyle('I' . $currentRow)->getNumberFormat()->setFormatCode('#,##0.00');
        $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)->applyFromArray([
            'font'    => ['bold' => true],
            'fill'    => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFE8D5F5']],
            'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);
        $sheet->getStyle('H' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_RIGHT);
        $sheet->getStyle('I' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_RIGHT);

        // ── Column Widths ─────────────────────────────────────────────
        $widths = [
            'A' => 5,
            'B' => 12,
            'C' => 16,
            'D' => 18,
            'E' => 16,
            'F' => 12,
            'G' => 12,
            'H' => 6,
            'I' => 14,
            'J' => 18,
            'K' => 20,
            'L' => 8,
        ];
        foreach ($widths as $col => $width) {
            $sheet->getColumnDimension($col)->setWidth($width);
        }

        // Row 1-3 heights
        $sheet->getRowDimension(1)->setRowHeight(22);
        $sheet->getRowDimension(2)->setRowHeight(18);
        $sheet->getRowDimension(3)->setRowHeight(15);
        $sheet->getRowDimension($headerRow)->setRowHeight(18);

        // ── Stream ────────────────────────────────────────────────────
        $filename = 'Daily_Meter_Reading_' . $this->fromDate . '_to_' . $this->toDate . '.xlsx';

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="' . $filename . '"');
        header('Cache-Control: max-age=0');

        (new Xlsx($spreadsheet))->save('php://output');
        exit;
    }
}
