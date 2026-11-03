<?php

namespace App\Exports;

use Illuminate\Support\Facades\DB;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;

class ChargeMasterExport
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
            ->select('revmast.name as taxname', 'taxstru.name as taxstruname', 'subgroup.name as subname', 'revmast.seq_no', 'revmast.SysYN')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'revmast.ac_code')
            ->leftJoin('taxstru', function ($join) {
                $join->on('taxstru.str_code', '=', 'revmast.tax_stru')
                    ->where('taxstru.propertyid', '=', $this->propertyid);
            })
            ->where('revmast.propertyid', $this->propertyid)
            ->where('revmast.field_type', 'C')
            ->where('revmast.Desk_code', '=', 'FOM' . $this->propertyid)
            ->distinct()
            ->orderBy('revmast.name', 'ASC')
            ->get();
    }

    public function download()
    {
        $data = $this->getData();

        $spreadsheet = new Spreadsheet();
        $sheet       = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Charge Master');

        $sheet->mergeCells('A1:F1');
        $sheet->setCellValue('A1', $this->companyName);
        $sheet->getStyle('A1')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 14],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        $sheet->mergeCells('A2:F2');
        $sheet->setCellValue('A2', 'Charge Master');
        $sheet->getStyle('A2')->applyFromArray([
            'font'      => ['bold' => true, 'size' => 11],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        $currentRow = 4;
        $headers    = ['Sn.', 'Name', 'Account Name', 'Tax Structure', 'Seq No', 'Defined'];
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

        foreach ($data as $index => $row) {
            $sheet->setCellValue('A' . $currentRow, $index + 1);
            $sheet->setCellValue('B' . $currentRow, $row->taxname     ?? '');
            $sheet->setCellValue('C' . $currentRow, $row->subname     ?? '');
            $sheet->setCellValue('D' . $currentRow, $row->taxstruname ?? '');
            $sheet->setCellValue('E' . $currentRow, $row->seq_no      ?? '');
            $sheet->setCellValue('F' . $currentRow, ($row->SysYN ?? '') == 'Y' ? 'System' : 'User');

            $sheet->getStyle('A' . $currentRow . ':F' . $currentRow)->applyFromArray([
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]],
            ]);
            $currentRow++;
        }

        $sheet->getColumnDimension('A')->setWidth(6);
        $sheet->getColumnDimension('B')->setWidth(28);
        $sheet->getColumnDimension('C')->setWidth(25);
        $sheet->getColumnDimension('D')->setWidth(22);
        $sheet->getColumnDimension('E')->setWidth(10);
        $sheet->getColumnDimension('F')->setWidth(10);

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="Charge_Master.xlsx"');
        header('Cache-Control: max-age=0');

        (new Xlsx($spreadsheet))->save('php://output');
        exit;
    }
}
