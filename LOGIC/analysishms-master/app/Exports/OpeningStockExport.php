<?php

namespace App\Exports;

use Illuminate\Support\Facades\DB;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;

class OpeningStockExport
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
        return DB::table('stock')
            ->select(
                'stock.docid',
                'stock.vno',
                'stock.vdate',
                'godown_mast.name as subname',
                DB::raw('COUNT(stock.item) as totalitem')
            )
            ->leftJoin('godown_mast', 'godown_mast.scode', '=', 'stock.godowncode')
            ->where('stock.propertyid', $this->propertyid)
            ->where('stock.vtype', 'STOP')
            ->groupBy('stock.docid', 'stock.vno', 'stock.vdate', 'godown_mast.name')
            ->orderBy('stock.vno')
            ->get();
    }

    public function download()
    {
        $data = $this->getData();

        $spreadsheet = new Spreadsheet();
        $sheet       = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Opening Stock');

        $sheet->mergeCells('A1:D1');
        $sheet->setCellValue('A1', $this->companyName);
        $sheet->getStyle('A1')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 14],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        $sheet->mergeCells('A2:D2');
        $sheet->setCellValue('A2', 'Opening Stock List');
        $sheet->getStyle('A2')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 11],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        $currentRow = 4;
        $headers    = ['Sn.', 'Department', 'Voucher No', 'Date'];
        $cols       = ['A', 'B', 'C', 'D'];

        foreach ($headers as $i => $h) {
            $sheet->setCellValue($cols[$i] . $currentRow, $h);
        }

        $sheet->getStyle('A' . $currentRow . ':D' . $currentRow)->applyFromArray([
            'font'      => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
            'fill'      => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            'borders'   => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);

        $currentRow++;

        foreach ($data as $i => $row) {
            $sheet->setCellValue('A' . $currentRow, $i + 1);
            $sheet->setCellValue('B' . $currentRow, $row->subname ?? '');
            $sheet->setCellValue('C' . $currentRow, $row->vno     ?? '');
            $sheet->setCellValue('D' . $currentRow, date('d-m-Y', strtotime($row->vdate)));

            $sheet->getStyle('A' . $currentRow . ':D' . $currentRow)->applyFromArray([
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]],
            ]);
            $currentRow++;
        }

        $sheet->getColumnDimension('A')->setWidth(6);
        $sheet->getColumnDimension('B')->setWidth(25);
        $sheet->getColumnDimension('C')->setWidth(18);
        $sheet->getColumnDimension('D')->setWidth(15);

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="Opening_Stock.xlsx"');
        header('Cache-Control: max-age=0');

        (new Xlsx($spreadsheet))->save('php://output');
        exit;
    }
}
