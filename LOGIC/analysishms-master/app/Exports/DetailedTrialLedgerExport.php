<?php

namespace App\Exports;

use Illuminate\Support\Facades\DB;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Font;
use PhpOffice\PhpSpreadsheet\Style\Border;

class DetailedTrialLedgerExport
{
    protected $fromdate;
    protected $todate;
    protected $propertyid;
    protected $companyName;

    public function __construct($fromdate, $todate, $propertyid, $companyName)
    {
        $this->fromdate    = $fromdate;
        $this->todate      = $todate;
        $this->propertyid  = $propertyid;
        $this->companyName = $companyName;
    }

    public function getData()
    {
        return DB::table('subgroup as s')
            ->leftJoin('acgroup as a', 's.group_code', '=', 'a.group_code')
            ->leftJoin('ledger as l', function ($join) {
                $join->on('s.sub_code', '=', 'l.subcode')
                    ->where('l.propertyid', $this->propertyid);
            })
            ->where('s.propertyid', $this->propertyid)
            ->select('s.sub_code', 's.name', 'a.group_name')
            ->selectRaw('SUM(CASE WHEN l.vdate < ? THEN l.amtdr ELSE 0 END) AS opening_dr', [$this->fromdate])
            ->selectRaw('SUM(CASE WHEN l.vdate < ? THEN l.amtcr ELSE 0 END) AS opening_cr', [$this->fromdate])
            ->selectRaw('SUM(CASE WHEN l.vdate BETWEEN ? AND ? THEN l.amtdr ELSE 0 END) AS trans_dr', [$this->fromdate, $this->todate])
            ->selectRaw('SUM(CASE WHEN l.vdate BETWEEN ? AND ? THEN l.amtcr ELSE 0 END) AS trans_cr', [$this->fromdate, $this->todate])
            ->selectRaw('SUM(CASE WHEN l.vdate <= ? THEN l.amtdr ELSE 0 END) AS closing_dr', [$this->todate])
            ->selectRaw('SUM(CASE WHEN l.vdate <= ? THEN l.amtcr ELSE 0 END) AS closing_cr', [$this->todate])
            ->groupBy('s.sub_code', 's.name', 'a.group_name')
            ->orderBy('a.group_name')
            ->orderBy('s.name')
            ->get()
            ->filter(function ($row) {
                $vals = [
                    (float) ($row->opening_dr ?? 0),
                    (float) ($row->opening_cr ?? 0),
                    (float) ($row->trans_dr ?? 0),
                    (float) ($row->trans_cr ?? 0),
                    (float) ($row->closing_dr ?? 0),
                    (float) ($row->closing_cr ?? 0),
                ];
                foreach ($vals as $v) {
                    if (abs($v) > 0.00001) return true;
                }
                return false;
            })->values();
    }

    public function download()
    {
        $data = $this->getData();

        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Detailed Trial Ledger');

        // ── Row 1: Company Name ──────────────────────────────────────
        $sheet->mergeCells('A1:G1');
        $sheet->setCellValue('A1', $this->companyName);
        $sheet->getStyle('A1')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 14],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // ── Row 2: Report Title ──────────────────────────────────────
        $sheet->mergeCells('A2:G2');
        $sheet->setCellValue('A2', 'Finance > Reports > Detailed Trial Ledger');
        $sheet->getStyle('A2')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 11],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // ── Row 3: Date Range ────────────────────────────────────────
        $sheet->mergeCells('A3:G3');
        $sheet->setCellValue('A3', 'Date Range: ' . $this->fromdate . ' to ' . $this->todate);
        $sheet->getStyle('A3')->applyFromArray([
            'font'      => ['italic' => true],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // ── Row 4: blank ─────────────────────────────────────────────
        $currentRow = 5;

        // ── Row 5: Headers ───────────────────────────────────────────
        $headers = ['A/C Name', 'Opening Dr', 'Opening Cr', 'Trans Dr', 'Trans Cr', 'Closing Dr', 'Closing Cr'];
        $cols    = ['A', 'B', 'C', 'D', 'E', 'F', 'G'];

        foreach ($headers as $i => $header) {
            $sheet->setCellValue($cols[$i] . $currentRow, $header);
        }

        $sheet->getStyle('A' . $currentRow . ':G' . $currentRow)->applyFromArray([
            'font'      => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
            'fill'      => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            'borders'   => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);

        $currentRow++;

        // ── Data rows grouped by group_name ──────────────────────────
        $grouped = [];
        foreach ($data as $item) {
            $grouped[$item->group_name ?? 'Other'][] = $item;
        }

        $grandTotals = array_fill_keys(['opening_dr','opening_cr','trans_dr','trans_cr','closing_dr','closing_cr'], 0);

        foreach ($grouped as $groupName => $rows) {
            // Group header row
            $sheet->mergeCells('A' . $currentRow . ':G' . $currentRow);
            $sheet->setCellValue('A' . $currentRow, $groupName);
            $sheet->getStyle('A' . $currentRow . ':G' . $currentRow)->applyFromArray([
                'font' => ['bold' => true],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFD9E1F2']],
            ]);
            $currentRow++;

            $subTotals = array_fill_keys(['opening_dr','opening_cr','trans_dr','trans_cr','closing_dr','closing_cr'], 0);

            foreach ($rows as $item) {
                $sheet->setCellValue('A' . $currentRow, $item->name ?? '');
                $sheet->setCellValue('B' . $currentRow, (float)($item->opening_dr ?? 0));
                $sheet->setCellValue('C' . $currentRow, (float)($item->opening_cr ?? 0));
                $sheet->setCellValue('D' . $currentRow, (float)($item->trans_dr ?? 0));
                $sheet->setCellValue('E' . $currentRow, (float)($item->trans_cr ?? 0));
                $sheet->setCellValue('F' . $currentRow, (float)($item->closing_dr ?? 0));
                $sheet->setCellValue('G' . $currentRow, (float)($item->closing_cr ?? 0));

                // Number format for amount columns
                $sheet->getStyle('B' . $currentRow . ':G' . $currentRow)
                    ->getNumberFormat()->setFormatCode('#,##0.00');

                $sheet->getStyle('A' . $currentRow . ':G' . $currentRow)->applyFromArray([
                    'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]],
                ]);

                foreach (['opening_dr','opening_cr','trans_dr','trans_cr','closing_dr','closing_cr'] as $key) {
                    $subTotals[$key]  += (float)($item->$key ?? 0);
                    $grandTotals[$key] += (float)($item->$key ?? 0);
                }

                $currentRow++;
            }

            // Sub total row
            $sheet->setCellValue('A' . $currentRow, 'Sub Total');
            $sheet->setCellValue('B' . $currentRow, $subTotals['opening_dr']);
            $sheet->setCellValue('C' . $currentRow, $subTotals['opening_cr']);
            $sheet->setCellValue('D' . $currentRow, $subTotals['trans_dr']);
            $sheet->setCellValue('E' . $currentRow, $subTotals['trans_cr']);
            $sheet->setCellValue('F' . $currentRow, $subTotals['closing_dr']);
            $sheet->setCellValue('G' . $currentRow, $subTotals['closing_cr']);

            $sheet->getStyle('A' . $currentRow . ':G' . $currentRow)->applyFromArray([
                'font' => ['bold' => true],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFBDD7EE']],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);
            $sheet->getStyle('B' . $currentRow . ':G' . $currentRow)
                ->getNumberFormat()->setFormatCode('#,##0.00');

            $currentRow++;
        }

        // ── Grand Total row ──────────────────────────────────────────
        $sheet->setCellValue('A' . $currentRow, 'Grand Total');
        $sheet->setCellValue('B' . $currentRow, $grandTotals['opening_dr']);
        $sheet->setCellValue('C' . $currentRow, $grandTotals['opening_cr']);
        $sheet->setCellValue('D' . $currentRow, $grandTotals['trans_dr']);
        $sheet->setCellValue('E' . $currentRow, $grandTotals['trans_cr']);
        $sheet->setCellValue('F' . $currentRow, $grandTotals['closing_dr']);
        $sheet->setCellValue('G' . $currentRow, $grandTotals['closing_cr']);

        $sheet->getStyle('A' . $currentRow . ':G' . $currentRow)->applyFromArray([
            'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
            'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
            'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_MEDIUM]],
        ]);
        $sheet->getStyle('B' . $currentRow . ':G' . $currentRow)
            ->getNumberFormat()->setFormatCode('#,##0.00');

        // ── Column widths ────────────────────────────────────────────
        $sheet->getColumnDimension('A')->setWidth(35);
        foreach (['B','C','D','E','F','G'] as $col) {
            $sheet->getColumnDimension($col)->setWidth(16);
        }

        // ── Stream download ──────────────────────────────────────────
        $filename = 'Detailed_Trial_Ledger_' . $this->fromdate . '_to_' . $this->todate . '.xlsx';

        $writer = new Xlsx($spreadsheet);

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="' . $filename . '"');
        header('Cache-Control: max-age=0');

        $writer->save('php://output');
        exit;
    }
}
