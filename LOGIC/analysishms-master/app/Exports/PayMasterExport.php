<?php

namespace App\Exports;

use Illuminate\Support\Facades\DB;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;

class PayMasterExport
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
            ->select('revmast.name as taxname', 'subgroup.name as subname', 'revmast.ac_posting', 'revmast.nature')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'revmast.ac_code')
            ->where('revmast.propertyid', $this->propertyid)
            ->where('revmast.field_type', 'P')
            ->orderBy('taxname', 'ASC')
            ->get();
    }

    public function download()
    {
        $data = $this->getData();

        $spreadsheet = new Spreadsheet();
        $sheet       = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Pay Master');

        $sheet->mergeCells('A1:E1');
        $sheet->setCellValue('A1', $this->companyName);
        $sheet->getStyle('A1')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 14],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        $sheet->mergeCells('A2:E2');
        $sheet->setCellValue('A2', 'Pay Master');
        $sheet->getStyle('A2')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 11],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        $currentRow = 4;
        $headers    = ['Sn.', 'Name', 'Ac. Name', 'AC Posting', 'Nature'];
        $cols       = ['A', 'B', 'C', 'D', 'E'];

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

        foreach ($data as $index => $row) {
            $sheet->setCellValue('A' . $currentRow, $index + 1);
            $sheet->setCellValue('B' . $currentRow, $row->taxname    ?? '');
            $sheet->setCellValue('C' . $currentRow, $row->subname    ?? '');
            $sheet->setCellValue('D' . $currentRow, $row->ac_posting ?? '');
            $sheet->setCellValue('E' . $currentRow, $row->nature     ?? '');

            $sheet->getStyle('A' . $currentRow . ':E' . $currentRow)->applyFromArray([
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]],
            ]);
            $currentRow++;
        }

        $sheet->getColumnDimension('A')->setWidth(6);
        $sheet->getColumnDimension('B')->setWidth(28);
        $sheet->getColumnDimension('C')->setWidth(28);
        $sheet->getColumnDimension('D')->setWidth(16);
        $sheet->getColumnDimension('E')->setWidth(16);

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="Pay_Master.xlsx"');
        header('Cache-Control: max-age=0');

        (new Xlsx($spreadsheet))->save('php://output');
        exit;
    }
}
