<?php

namespace App\Exports;

use Illuminate\Support\Facades\DB;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;

class ItemEnteryExport
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
        return DB::table('itemmast')
            ->select(
                'itemmast.Name as itemname',
                'itemmast.Code',
                'itemmast.PurchRate',
                'itemmast.ActiveYN',
                'unitmast.name as unitname',
                'itemgrp.Name as itemgrpname',
                'itemcatmast.Name as itemcatname',
                'depart_r.Name as Restaurant'
            )
            ->leftJoin('itemgrp', function($j) {
                $j->on('itemgrp.Code','=','itemmast.ItemGroup')
                  ->where('itemgrp.property_id', $this->propertyid);
            })
            ->leftJoin('unitmast', function($j) {
                $j->on('unitmast.ucode','=','itemmast.Unit')
                  ->where('unitmast.propertyid', $this->propertyid);
            })
            ->leftJoin('itemcatmast', function($j) {
                $j->on('itemcatmast.Code','=','itemmast.ItemCatCode')
                  ->where('itemcatmast.propertyid', $this->propertyid);
            })
            ->leftJoin('depart as depart_r', function($j) {
                $j->on('depart_r.dcode','=','itemmast.RestCode')
                  ->where('depart_r.propertyid', $this->propertyid);
            })
            ->where('itemmast.Property_ID', $this->propertyid)
            ->where('itemmast.RestCode', 'PURC' . $this->propertyid)
            ->groupBy('itemmast.Code')
            ->get();
    }

    public function download()
    {
        $data = $this->getData();

        $spreadsheet = new Spreadsheet();
        $sheet       = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Item Entry');

        $sheet->mergeCells('A1:H1');
        $sheet->setCellValue('A1', $this->companyName);
        $sheet->getStyle('A1')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 14],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        $sheet->mergeCells('A2:H2');
        $sheet->setCellValue('A2', 'Item Entry List');
        $sheet->getStyle('A2')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 11],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        $currentRow = 4;
        $headers    = ['Sn.', 'Name', 'Unit', 'Group', 'Category', 'Restaurant', 'Rate', 'Active'];
        $cols       = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'];

        foreach ($headers as $i => $h) {
            $sheet->setCellValue($cols[$i] . $currentRow, $h);
        }

        $sheet->getStyle('A' . $currentRow . ':H' . $currentRow)->applyFromArray([
            'font'      => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
            'fill'      => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            'borders'   => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);

        $currentRow++;

        foreach ($data as $i => $row) {
            $sheet->setCellValue('A' . $currentRow, $i + 1);
            $sheet->setCellValue('B' . $currentRow, $row->itemname    ?? '');
            $sheet->setCellValue('C' . $currentRow, $row->unitname    ?? '');
            $sheet->setCellValue('D' . $currentRow, $row->itemgrpname ?? '');
            $sheet->setCellValue('E' . $currentRow, $row->itemcatname ?? '');
            $sheet->setCellValue('F' . $currentRow, $row->Restaurant  ?? '');
            $sheet->setCellValue('G' . $currentRow, $row->PurchRate   ?? '');
            $sheet->setCellValue('H' . $currentRow, $row->ActiveYN    ?? '');

            $sheet->getStyle('A' . $currentRow . ':H' . $currentRow)->applyFromArray([
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]],
            ]);
            $currentRow++;
        }

        $sheet->getColumnDimension('A')->setWidth(6);
        $sheet->getColumnDimension('B')->setWidth(25);
        $sheet->getColumnDimension('C')->setWidth(12);
        $sheet->getColumnDimension('D')->setWidth(20);
        $sheet->getColumnDimension('E')->setWidth(20);
        $sheet->getColumnDimension('F')->setWidth(18);
        $sheet->getColumnDimension('G')->setWidth(12);
        $sheet->getColumnDimension('H')->setWidth(10);

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="Item_Entry.xlsx"');
        header('Cache-Control: max-age=0');

        (new Xlsx($spreadsheet))->save('php://output');
        exit;
    }
}
