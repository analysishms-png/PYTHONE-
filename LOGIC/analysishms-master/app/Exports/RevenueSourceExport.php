<?php

namespace App\Exports;

use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;

class RevenueSourceExport
{
    protected $propertyid;
    protected $companyName;
    protected $fromdate;
    protected $todate;

    public function __construct($propertyid, $companyName, $fromdate, $todate)
    {
        $this->propertyid  = $propertyid;
        $this->companyName = $companyName;
        $this->fromdate    = $fromdate;
        $this->todate      = $todate;
    }

    public function getData(): array
    {
        $pid  = $this->propertyid;
        $rmch = 'RMCH' . $pid;
        $cgss = 'CGSS' . $pid;
        $sgss = 'SGSS' . $pid;
        $igss = 'IGSS' . $pid;
        $tout = 'TOUT' . $pid;

        $sql = "
            SELECT
                COALESCE(G.booking_source, 'Unknown') AS RevenueSource,
                COUNT(G.folio_no)                                                        AS Checkins,
                SUM(COALESCE(P.RoomNights, 0))                                           AS RoomNights,
                SUM(R.NoOfGuest)                                                         AS Guests,
                SUM(COALESCE(P.Amount, 0))                                               AS GrossRevenue,
                SUM(COALESCE(P.RoomRent, 0))                                             AS RoomRent,
                SUM(COALESCE(P.Outlet, 0))                                               AS TranferFromOutlet,
                SUM(COALESCE(P.Tax, 0))                                                  AS Tax,
                ROUND(
                    SUM(COALESCE(P.RoomRent, 0)) / NULLIF(SUM(COALESCE(P.RoomNights, 0)), 0),
                    2
                )                                                                        AS ADR
            FROM guestfolio G
            LEFT JOIN (
                SELECT
                    folionodocid,
                    SUM(amtdr)                                                           AS Amount,
                    SUM(CASE WHEN paycode = ?  THEN amtdr ELSE 0 END)                   AS RoomRent,
                    COUNT(CASE WHEN paycode = ? THEN 1 END)                             AS RoomNights,
                    SUM(CASE WHEN paycode IN (?, ?, ?) THEN amtdr ELSE 0 END)           AS Tax,
                    SUM(CASE WHEN paycode = ?  THEN amtdr ELSE 0 END)                   AS Outlet
                FROM paycharge
                WHERE vdate BETWEEN ? AND ?
                GROUP BY folionodocid
            ) P ON G.docid = P.folionodocid
            INNER JOIN (
                SELECT docid, SUM(adult) AS NoOfGuest
                FROM roomocc
                GROUP BY docid
            ) R ON G.docid = R.docid
            WHERE G.propertyid = ?
            GROUP BY G.booking_source
        ";

        $rows = DB::select($sql, [
            $rmch, $rmch,
            $cgss, $sgss, $igss,
            $tout,
            $this->fromdate, $this->todate,
            $pid,
        ]);

        // Calculate grand totals
        $totals = [
            'RevenueSource'     => 'Grand Total',
            'Checkins'          => 0,
            'RoomNights'        => 0,
            'Guests'            => 0,
            'GrossRevenue'      => 0.0,
            'RoomRent'          => 0.0,
            'TranferFromOutlet' => 0.0,
            'Tax'               => 0.0,
            'ADR'               => null,
        ];

        foreach ($rows as $row) {
            $totals['Checkins']          += (int)   $row->Checkins;
            $totals['RoomNights']        += (int)   $row->RoomNights;
            $totals['Guests']            += (int)   $row->Guests;
            $totals['GrossRevenue']      += (float) $row->GrossRevenue;
            $totals['RoomRent']          += (float) $row->RoomRent;
            $totals['TranferFromOutlet'] += (float) $row->TranferFromOutlet;
            $totals['Tax']               += (float) $row->Tax;
        }

        // Overall ADR = Total RoomRent / Total RoomNights
        $totals['ADR'] = $totals['RoomNights'] > 0
            ? round($totals['RoomRent'] / $totals['RoomNights'], 2)
            : 0;

        return ['rows' => $rows, 'totals' => $totals];
    }

    public function download()
    {
        $data   = $this->getData();
        $rows   = $data['rows'];
        $totals = $data['totals'];

        $spreadsheet = new Spreadsheet();
        $sheet       = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Revenue Source');

        $colCount = 9; // A to I
        $lastCol  = 'I';
        $range    = 'A1:' . $lastCol;

        // Row 1: Company Name
        $sheet->mergeCells($range . '1');
        $sheet->setCellValue('A1', $this->companyName);
        $sheet->getStyle('A1')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 14],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // Row 2: Report Title
        $sheet->mergeCells($range . '2');
        $sheet->setCellValue('A2', 'Revenue Source Report');
        $sheet->getStyle('A2')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 11],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // Row 3: Date Range
        $sheet->mergeCells($range . '3');
        $sheet->setCellValue(
            'A3',
            'From: ' . Carbon::parse($this->fromdate)->format('d-m-Y') .
            '  To: '   . Carbon::parse($this->todate)->format('d-m-Y')
        );
        $sheet->getStyle('A3')->applyFromArray([
            'font'      => ['size' => 10],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // Row 5: Column Headers
        $headers = [
            'Revenue Source', 'Check-ins', 'Room Nights', 'Guests',
            'Gross Revenue', 'Room Rent', 'Transfer From Outlet', 'Tax', 'ADR',
        ];
        $headerRow = 5;
        foreach ($headers as $i => $h) {
            $sheet->setCellValue(chr(65 + $i) . $headerRow, $h);
        }
        $sheet->getStyle('A' . $headerRow . ':' . $lastCol . $headerRow)->applyFromArray([
            'font'      => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
            'fill'      => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER, 'vertical' => Alignment::VERTICAL_CENTER],
            'borders'   => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);

        // Data rows
        $numberCols = ['B', 'C', 'D', 'E', 'F', 'G', 'H', 'I'];
        $currentRow = $headerRow + 1;

        foreach ($rows as $i => $row) {
            $sheet->setCellValue('A' . $currentRow, $row->RevenueSource     ?? '-');
            $sheet->setCellValue('B' . $currentRow, (int)   ($row->Checkins          ?? 0));
            $sheet->setCellValue('C' . $currentRow, (int)   ($row->RoomNights        ?? 0));
            $sheet->setCellValue('D' . $currentRow, (int)   ($row->Guests            ?? 0));
            $sheet->setCellValue('E' . $currentRow, (float) ($row->GrossRevenue      ?? 0));
            $sheet->setCellValue('F' . $currentRow, (float) ($row->RoomRent          ?? 0));
            $sheet->setCellValue('G' . $currentRow, (float) ($row->TranferFromOutlet ?? 0));
            $sheet->setCellValue('H' . $currentRow, (float) ($row->Tax               ?? 0));
            $sheet->setCellValue('I' . $currentRow, $row->ADR !== null ? (float) $row->ADR : 0);

            $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)->applyFromArray([
                'borders'   => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Alternating row fill
            if ($i % 2 === 1) {
                $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)
                    ->getFill()->setFillType(Fill::FILL_SOLID)
                    ->getStartColor()->setARGB('FFF2F2F2');
            }

            // Revenue Source left-aligned, numbers right-aligned
            $sheet->getStyle('A' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_LEFT);
            foreach ($numberCols as $col) {
                $sheet->getStyle($col . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_RIGHT);
            }

            $currentRow++;
        }

        // Grand Total row
        $sheet->setCellValue('A' . $currentRow, 'Grand Total');
        $sheet->setCellValue('B' . $currentRow, $totals['Checkins']);
        $sheet->setCellValue('C' . $currentRow, $totals['RoomNights']);
        $sheet->setCellValue('D' . $currentRow, $totals['Guests']);
        $sheet->setCellValue('E' . $currentRow, $totals['GrossRevenue']);
        $sheet->setCellValue('F' . $currentRow, $totals['RoomRent']);
        $sheet->setCellValue('G' . $currentRow, $totals['TranferFromOutlet']);
        $sheet->setCellValue('H' . $currentRow, $totals['Tax']);
        $sheet->setCellValue('I' . $currentRow, $totals['ADR']);

        $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)->applyFromArray([
            'font'    => ['bold' => true],
            'fill'    => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFD9E1F2']],
            'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);

        // Number format for currency columns (E, F, G, H, I)
        $lastRow = $currentRow;
        $sheet->getStyle('E6:I' . $lastRow)->getNumberFormat()->setFormatCode('#,##0.00');

        // Column widths
        $sheet->getColumnDimension('A')->setWidth(22);
        foreach (['B', 'C', 'D'] as $col) {
            $sheet->getColumnDimension($col)->setWidth(12);
        }
        foreach (['E', 'F', 'G', 'H', 'I'] as $col) {
            $sheet->getColumnDimension($col)->setWidth(18);
        }

        $filename = 'Revenue_Source_Report_' . $this->fromdate . '_to_' . $this->todate . '.xlsx';

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="' . $filename . '"');
        header('Cache-Control: max-age=0');

        (new Xlsx($spreadsheet))->save('php://output');
        exit;
    }
}
