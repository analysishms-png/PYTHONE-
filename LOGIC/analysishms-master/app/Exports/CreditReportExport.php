<?php

namespace App\Exports;

use Illuminate\Support\Facades\DB;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;

class CreditReportExport
{
    protected $fromdate;
    protected $todate;
    protected $paytype;
    protected $propertyid;
    protected $companyName;

    public function __construct($fromdate, $todate, $paytype, $propertyid, $companyName)
    {
        $this->fromdate    = $fromdate;
        $this->todate      = $todate;
        $this->paytype     = $paytype;
        $this->propertyid  = $propertyid;
        $this->companyName = $companyName;
    }

    public function getData(): array
    {
        $sql = "
            SELECT
                Q.*,
                CASE
                    WHEN SUBSTRING(Q.RestCode, 3, 4) = 'BANQ' THEN 'BANQUET'
                    WHEN SUBSTRING(Q.RestCode, 3, 3) = 'ODC'  THEN 'OUTDOOR BANQUET'
                    ELSE D.Name
                END AS Department
            FROM (
                SELECT
                    P.FolioNoDocid, P.RefDocId, P.PayType,
                    P.VDate, P.FolioNo, P.RoomNo,
                    P.VType, P.VNo, P.Comments,
                    P.AmtCr, P.ChqNo, P.ChqDate, P.BatchNo,
                    P.RestCode, P.U_Name,
                    S.Name AS CompanyName
                FROM paycharge P
                LEFT JOIN subgroup S ON P.comp_code = S.sub_code
                WHERE P.VType NOT IN ('IPOS','PPOS')
                  AND P.AmtCr <> 0
                  AND P.sno = 1  -- 06-Jul-2026: sno=1 filter added (paycharge)
                  AND P.propertyid = ?
                  AND P.VDate BETWEEN ? AND ?

                UNION ALL

                SELECT
                    '' AS FolioNoDocid, '' AS RefDocId,
                    P.PayType, P.VDate, 0 AS FolioNo,
                    P.RoomNo, P.VType, P.VNo, P.Comments,
                    P.AmtCr, P.ChqNo, P.ChqDate, P.BatchNo,
                    P.RestCode, P.U_Name,
                    S.Name AS CompanyName
                FROM paychargeh P
                LEFT JOIN subgroup S ON P.comp_code = S.sub_code
                WHERE P.AmtCr <> 0
                  AND P.sno = 1  -- 06-Jul-2026: sno=1 filter added (paychargeh)
                  AND P.propertyid = ?
                  AND P.VDate BETWEEN ? AND ?

                UNION ALL

                SELECT
                    '' AS FolioNoDocid, '' AS RefDocId,
                    'Cash' AS PayType, P.VDate, 0 AS FolioNo,
                    '' AS RoomNo, P.VType, P.VNo,
                    P.remark AS Comments,
                    P.cramt AS AmtCr,
                    '' AS ChqNo, NULL AS ChqDate, 0 AS BatchNo,
                    CONCAT('FOM', ?) AS RestCode,
                    P.U_Name,
                    S.Name AS CompanyName
                FROM expsheet P
                LEFT JOIN subgroup S ON P.drac = S.sub_code
                WHERE P.VType = 'HTSAL'
                  AND P.propertyid = ?
                  AND P.VDate BETWEEN ? AND ?
            ) AS Q
            LEFT JOIN depart D ON D.dcode = Q.RestCode
        ";

        $params = [
            $this->propertyid, $this->fromdate, $this->todate,
            $this->propertyid, $this->fromdate, $this->todate,
            $this->propertyid, $this->propertyid, $this->fromdate, $this->todate,
        ];

        if ($this->paytype && strtolower($this->paytype) !== 'all') {
            $sql     .= " WHERE Q.PayType = ? ";
            $params[] = $this->paytype;
        }

        $sql .= " ORDER BY Q.VDate, Q.RestCode, Q.VNo ";

        $rows = DB::select($sql, $params);

        // Summary
        $summaryParams = [
            $this->propertyid, $this->fromdate, $this->todate,
            $this->propertyid, $this->fromdate, $this->todate,
            $this->propertyid, $this->propertyid, $this->fromdate, $this->todate,
        ];
        $summaryWhere = '';
        if ($this->paytype && strtolower($this->paytype) !== 'all') {
            $summaryWhere    = " WHERE R.PayType = ? ";
            $summaryParams[] = $this->paytype;
        }

        $summarySql = "
            SELECT R.PayType, SUM(R.AmtCr) AS AmtCr
            FROM (
                SELECT Q.*,
                    CASE
                        WHEN SUBSTRING(Q.RestCode, 3, 4) = 'BANQ' THEN 'BANQUET'
                        WHEN SUBSTRING(Q.RestCode, 3, 3) = 'ODC'  THEN 'OUTDOOR BANQUET'
                        ELSE D.Name
                    END AS Department
                FROM (
                    SELECT P.FolioNoDocid, P.RefDocId, P.PayType, P.VDate, P.FolioNo, P.RoomNo,
                           P.VType, P.VNo, P.Comments, P.AmtCr, P.ChqNo, P.ChqDate, P.BatchNo,
                           P.RestCode, P.U_Name, S.Name AS CompanyName
                    FROM paycharge P
                    LEFT JOIN subgroup S ON P.comp_code = S.sub_code
                    WHERE P.VType NOT IN ('IPOS','PPOS') AND P.AmtCr <> 0
                      AND P.Sno = 1
                      AND P.propertyid = ? AND P.VDate BETWEEN ? AND ?

                    UNION ALL

                    SELECT '' AS FolioNoDocid, '' AS RefDocId, P.PayType, P.VDate, 0 AS FolioNo,
                           P.RoomNo, P.VType, P.VNo, P.Comments, P.AmtCr, P.ChqNo, P.ChqDate,
                           P.BatchNo, P.RestCode, P.U_Name, S.Name AS CompanyName
                    FROM paychargeh P
                    LEFT JOIN subgroup S ON P.comp_code = S.sub_code
                    WHERE P.AmtCr <> 0 AND P.Sno = 1
                      AND P.propertyid = ? AND P.VDate BETWEEN ? AND ?

                    UNION ALL

                    SELECT '' AS FolioNoDocid, '' AS RefDocId, 'Cash' AS PayType, P.VDate, 0 AS FolioNo,
                           '' AS RoomNo, P.VType, P.VNo, P.remark AS Comments, P.cramt AS AmtCr,
                           '' AS ChqNo, NULL AS ChqDate, 0 AS BatchNo, CONCAT('FOM', ?) AS RestCode,
                           P.U_Name, S.Name AS CompanyName
                    FROM expsheet P
                    LEFT JOIN subgroup S ON P.drac = S.sub_code
                    WHERE P.VType = 'HTSAL' AND P.propertyid = ? AND P.VDate BETWEEN ? AND ?
                ) Q
                LEFT JOIN depart D ON D.dcode = Q.RestCode
            ) R
            {$summaryWhere}
            GROUP BY R.PayType
            ORDER BY R.PayType
        ";

        $summary = DB::select($summarySql, $summaryParams);

        return ['rows' => $rows, 'summary' => $summary];
    }

    public function download()
    {
        ['rows' => $rows, 'summary' => $summary] = $this->getData();

        $spreadsheet = new Spreadsheet();
        $sheet       = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Credit Report');

        // ── Row 1: Company ────────────────────────────────────────────
        $sheet->mergeCells('A1:M1');
        $sheet->setCellValue('A1', $this->companyName);
        $sheet->getStyle('A1')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 14],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // ── Row 2: Title ──────────────────────────────────────────────
        $sheet->mergeCells('A2:M2');
        $sheet->setCellValue('A2', 'Credit Report');
        $sheet->getStyle('A2')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 12],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // ── Row 3: Date range ─────────────────────────────────────────
        $sheet->mergeCells('A3:M3');
        $sheet->setCellValue('A3',
            'From: ' . $this->fromdate . '   To: ' . $this->todate .
            '   Pay Type: ' . ($this->paytype ?: 'All')
        );
        $sheet->getStyle('A3')->applyFromArray([
            'font'      => ['italic' => true],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // ── Row 5: Headers ────────────────────────────────────────────
        $currentRow = 5;
        $headers = [
            'S.No', 'Date', 'Voucher', 'Folio No', 'Room No',
            'Mode', 'Reference / Company', 'Particular',
            'Chq No', 'Chq Date', 'Amount', 'User', 'Department'
        ];
        $cols = ['A','B','C','D','E','F','G','H','I','J','K','L','M'];

        foreach ($headers as $i => $h) {
            $sheet->setCellValue($cols[$i] . $currentRow, $h);
        }
        $sheet->getStyle('A' . $currentRow . ':M' . $currentRow)->applyFromArray([
            'font'      => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
            'fill'      => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            'borders'   => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);
        $currentRow++;

        // ── Data rows ─────────────────────────────────────────────────
        $total = 0;
        foreach ($rows as $i => $row) {
            $amtCr = (float)($row->AmtCr ?? 0);
            $total += $amtCr;

            $sheet->setCellValue('A' . $currentRow, $i + 1);
            $sheet->setCellValue('B' . $currentRow, $row->VDate ?? '');
            $sheet->setCellValue('C' . $currentRow, ($row->VType ?? '') . '/' . ($row->VNo ?? ''));
            $sheet->setCellValue('D' . $currentRow, $row->FolioNo ?? '');
            $sheet->setCellValue('E' . $currentRow, $row->RoomNo ?? '');
            $sheet->setCellValue('F' . $currentRow, $row->PayType ?? '');
            $sheet->setCellValue('G' . $currentRow, $row->CompanyName ?? '');
            $sheet->setCellValue('H' . $currentRow, $row->Comments ?? '');
            $sheet->setCellValue('I' . $currentRow, $row->ChqNo ?? '');
            $sheet->setCellValue('J' . $currentRow, $row->ChqDate ?? '');
            $sheet->setCellValue('K' . $currentRow, $amtCr);
            $sheet->setCellValue('L' . $currentRow, $row->U_Name ?? '');
            $sheet->setCellValue('M' . $currentRow, $row->Department ?? '');

            $sheet->getStyle('K' . $currentRow)->getNumberFormat()->setFormatCode('#,##0.00');
            $sheet->getStyle('A' . $currentRow . ':M' . $currentRow)->applyFromArray([
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]],
            ]);
            $currentRow++;
        }

        // ── Total row ─────────────────────────────────────────────────
        $sheet->setCellValue('J' . $currentRow, 'Total');
        $sheet->setCellValue('K' . $currentRow, $total);
        $sheet->getStyle('A' . $currentRow . ':M' . $currentRow)->applyFromArray([
            'font'    => ['bold' => true],
            'fill'    => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFBDD7EE']],
            'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);
        $sheet->getStyle('K' . $currentRow)->getNumberFormat()->setFormatCode('#,##0.00');
        $currentRow += 2;

        // ── Summary section ───────────────────────────────────────────
        $sheet->setCellValue('A' . $currentRow, 'Summary by Pay Type');
        $sheet->getStyle('A' . $currentRow)->applyFromArray([
            'font' => ['bold' => true, 'size' => 11],
        ]);
        $currentRow++;

        foreach (['A' => 'Pay Type', 'B' => 'Amount'] as $col => $label) {
            $sheet->setCellValue($col . $currentRow, $label);
        }
        $sheet->getStyle('A' . $currentRow . ':B' . $currentRow)->applyFromArray([
            'font'    => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
            'fill'    => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
            'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);
        $currentRow++;

        $grand = 0;
        foreach ($summary as $s) {
            $amt = (float)($s->AmtCr ?? 0);
            $grand += $amt;
            $sheet->setCellValue('A' . $currentRow, $s->PayType);
            $sheet->setCellValue('B' . $currentRow, $amt);
            $sheet->getStyle('B' . $currentRow)->getNumberFormat()->setFormatCode('#,##0.00');
            $sheet->getStyle('A' . $currentRow . ':B' . $currentRow)->applyFromArray([
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]],
            ]);
            $currentRow++;
        }

        // Grand total summary row
        $sheet->setCellValue('A' . $currentRow, 'Grand Total');
        $sheet->setCellValue('B' . $currentRow, $grand);
        $sheet->getStyle('A' . $currentRow . ':B' . $currentRow)->applyFromArray([
            'font'    => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
            'fill'    => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
            'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_MEDIUM]],
        ]);
        $sheet->getStyle('B' . $currentRow)->getNumberFormat()->setFormatCode('#,##0.00');

        // ── Column widths ─────────────────────────────────────────────
        $widths = ['A'=>6,'B'=>12,'C'=>14,'D'=>8,'E'=>8,'F'=>12,'G'=>20,'H'=>20,'I'=>10,'J'=>12,'K'=>12,'L'=>12,'M'=>16];
        foreach ($widths as $col => $width) {
            $sheet->getColumnDimension($col)->setWidth($width);
        }

        // ── Stream ────────────────────────────────────────────────────
        $filename = 'Credit_Report_' . $this->fromdate . '_to_' . $this->todate . '.xlsx';
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="' . $filename . '"');
        header('Cache-Control: max-age=0');

        (new Xlsx($spreadsheet))->save('php://output');
        exit;
    }
}
