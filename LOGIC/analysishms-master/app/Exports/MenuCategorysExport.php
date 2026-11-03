<?php

namespace App\Exports;

use Illuminate\Support\Facades\DB;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;

class MenuCategorysExport
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
        return DB::table('itemcatmast')
            ->select(
                'itemcatmast.*',
                'depart.name as departname',
                'taxstru.name as taxstruname',
                'subgroup.name as subgrpname'
            )
            ->leftJoin('depart',    'depart.dcode',       '=', 'itemcatmast.restcode')
            ->leftJoin('taxstru',   'taxstru.str_code',   '=', 'itemcatmast.TaxStru')
            ->leftJoin('subgroup',  'subgroup.sub_code',  '=', 'itemcatmast.AcCode')
            ->where('itemcatmast.propertyid', $this->propertyid)
            ->where('itemcatmast.RestCode', 'BANQ' . $this->propertyid)
            ->groupBy('itemcatmast.Code')
            ->orderBy('itemcatmast.name', 'ASC')
            ->get();
    }

    public function download()
    {
        $data = $this->getData();

        $spreadsheet = new Spreadsheet();
        $sheet       = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Menu Categorys');

        $sheet->mergeCells('A1:E1');
        $sheet->setCellValue('A1', $this->companyName);
        $sheet->getStyle('A1')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 14],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        $sheet->mergeCells('A2:E2');
        $sheet->setCellValue('A2', 'Menu Categorys');
        $sheet->getStyle('A2')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 11],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        $currentRow = 4;
        $headers    = ['Sn.', 'Name', 'Depart', 'Tax Stru', 'Account Name'];
        $cols       = ['A', 'B', 'C', 'D', 'E'];

        foreach ($headers as $i => $h) {
            $sheet->setCellValue($cols[$i] . $currentRow, $h);
        }

        $sheet->getStyle('A' . $currentRow . ':E' . $currentRow)->applyFromArray([
            'font'      => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
            'fill'      => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            'borders'   => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);

        $currentRow++;

        foreach ($data as $i => $row) {
            $sheet->setCellValue('A' . $currentRow, $i + 1);
            $sheet->setCellValue('B' . $currentRow, $row->Name        ?? '');
            $sheet->setCellValue('C' . $currentRow, $row->departname  ?? '');
            $sheet->setCellValue('D' . $currentRow, $row->taxstruname ?? '');
            $sheet->setCellValue('E' . $currentRow, $row->subgrpname  ?? '');

            $sheet->getStyle('A' . $currentRow . ':E' . $currentRow)->applyFromArray([
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]],
            ]);
            $currentRow++;
        }

        $sheet->getColumnDimension('A')->setWidth(6);
        $sheet->getColumnDimension('B')->setWidth(25);
        $sheet->getColumnDimension('C')->setWidth(20);
        $sheet->getColumnDimension('D')->setWidth(18);
        $sheet->getColumnDimension('E')->setWidth(22);

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="Menu_Categorys.xlsx"');
        header('Cache-Control: max-age=0');

        (new Xlsx($spreadsheet))->save('php://output');
        exit;
    }
}
