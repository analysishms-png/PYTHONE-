<?php

namespace App\Exports;

use Illuminate\Support\Facades\DB;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;

class RecipeMasterExport
{
    protected $propertyid;
    protected $companyName;
    protected $finishcode;
    protected $finishItem;

    public function __construct($propertyid, $companyName, $finishcode, $finishItem)
    {
        $this->propertyid  = $propertyid;
        $this->companyName = $companyName;
        $this->finishcode  = $finishcode;
        $this->finishItem  = $finishItem;
    }

    public function getData()
    {
        if ($this->finishcode) {
            return DB::select(
                "SELECT B.id, B.RawQty AS qty, B.rawunit AS wtunit,
                        (SELECT name FROM itemmast WHERE Code = B.RawItem AND Property_ID = ? LIMIT 1) AS name,
                        (SELECT name FROM itemmast WHERE Code = B.FinItem AND Property_ID = ? LIMIT 1) AS finishname
                 FROM bom B
                 WHERE B.propertyid = ? AND B.FinItem = ?
                 ORDER BY name",
                [$this->propertyid, $this->propertyid, $this->propertyid, $this->finishcode]
            );
        } else {
            return DB::select(
                "SELECT B.id, B.RawQty AS qty, B.rawunit AS wtunit,
                        (SELECT name FROM itemmast WHERE Code = B.RawItem AND Property_ID = ? LIMIT 1) AS name,
                        (SELECT name FROM itemmast WHERE Code = B.FinItem AND Property_ID = ? LIMIT 1) AS finishname
                 FROM bom B
                 WHERE B.propertyid = ?
                 ORDER BY finishname, name",
                [$this->propertyid, $this->propertyid, $this->propertyid]
            );
        }
    }

    public function download()
    {
        $data = $this->getData();

        $spreadsheet = new Spreadsheet();
        $sheet       = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Recipe Master');

        // Row 1: Company Name
        $sheet->mergeCells('A1:F1');
        $sheet->setCellValue('A1', $this->companyName);
        $sheet->getStyle('A1')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 14],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // Row 2: Report Title
        $sheet->mergeCells('A2:F2');
        $sheet->setCellValue('A2', 'Recipe Master');
        $sheet->getStyle('A2')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 11],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // Row 3: Finish Item Name
        $sheet->mergeCells('A3:F3');
        $sheet->setCellValue('A3', 'Finish Item: ' . ($this->finishItem ?? 'All Items'));
        $sheet->getStyle('A3')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 10],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_LEFT],
        ]);

        // Row 5: Column Headers
        $currentRow = 5;
        $headers    = ['S.No', 'Finish Item', 'Raw Item', 'Wt. Unit', 'Qty', 'Cost'];
        $cols       = ['A', 'B', 'C', 'D', 'E', 'F'];

        foreach ($headers as $i => $header) {
            $sheet->setCellValue($cols[$i] . $currentRow, $header);
        }

        $sheet->getStyle('A' . $currentRow . ':F' . $currentRow)->applyFromArray([
            'font'      => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
            'fill'      => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            'borders'   => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);

        $currentRow++;

        // Data rows
        foreach ($data as $index => $row) {
            $sheet->setCellValue('A' . $currentRow, $index + 1);
            $sheet->setCellValue('B' . $currentRow, $row->finishname ?? '');
            $sheet->setCellValue('C' . $currentRow, $row->name       ?? '');
            $sheet->setCellValue('D' . $currentRow, $row->wtunit     ?? '');
            $sheet->setCellValue('E' . $currentRow, $row->qty        ?? 0);
            $sheet->setCellValue('F' . $currentRow, 0); // cost placeholder

            $sheet->getStyle('A' . $currentRow . ':F' . $currentRow)->applyFromArray([
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]],
            ]);

            $currentRow++;
        }

        // Column widths
        $sheet->getColumnDimension('A')->setWidth(8);
        $sheet->getColumnDimension('B')->setWidth(30);
        $sheet->getColumnDimension('C')->setWidth(30);
        $sheet->getColumnDimension('D')->setWidth(12);
        $sheet->getColumnDimension('E')->setWidth(12);
        $sheet->getColumnDimension('F')->setWidth(12);

        // Stream download
        $filename = 'Recipe_Master.xlsx';
        $writer   = new Xlsx($spreadsheet);

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="' . $filename . '"');
        header('Cache-Control: max-age=0');

        $writer->save('php://output');
        exit;
    }
}
