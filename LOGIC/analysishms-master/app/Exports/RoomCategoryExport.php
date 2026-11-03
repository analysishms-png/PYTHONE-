<?php
namespace App\Exports;
use Illuminate\Support\Facades\DB;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;
class RoomCategoryExport {
    protected $propertyid;
    protected $companyName;
    public function __construct($propertyid, $companyName) {
        $this->propertyid  = $propertyid;
        $this->companyName = $companyName;
    }
    public function getData() {
        return DB::table('room_cat')
            ->select('revmast.name as taxname', 'room_cat.*')
            ->leftJoin('revmast', function($join) {
                $join->on('revmast.rev_code', '=', 'room_cat.rev_code')
                    ->where('room_cat.propertyid', '=', $this->propertyid);
            })
            ->where('room_cat.propertyid', $this->propertyid)
            ->orderBy('revmast.name', 'ASC')
            ->get();
    }
    public function download() {
        $data = $this->getData();
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Room Category');
        $sheet->mergeCells('A1:E1'); $sheet->setCellValue('A1', $this->companyName);
        $sheet->getStyle('A1')->applyFromArray(['font' => ['bold' => true, 'size' => 14], 'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER]]);
        $sheet->mergeCells('A2:E2'); $sheet->setCellValue('A2', 'Room Category');
        $sheet->getStyle('A2')->applyFromArray(['font' => ['bold' => true, 'size' => 11], 'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER]]);
        $currentRow = 4;
        foreach (['Sn.', 'Cat Code', 'Map Code', 'Name', 'Revenue Name'] as $i => $h) {
            $sheet->setCellValue(['A','B','C','D','E'][$i] . $currentRow, $h);
        }
        $sheet->getStyle('A4:E4')->applyFromArray(['font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']], 'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']], 'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER], 'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]]]);
        $currentRow++;
        foreach ($data as $i => $row) {
            $sheet->setCellValue('A' . $currentRow, $i + 1);
            $sheet->setCellValue('B' . $currentRow, $row->cat_code ?? '');
            $sheet->setCellValue('C' . $currentRow, $row->map_code ?? '');
            $sheet->setCellValue('D' . $currentRow, $row->name     ?? '');
            $sheet->setCellValue('E' . $currentRow, $row->taxname  ?? '');
            $sheet->getStyle('A'.$currentRow.':E'.$currentRow)->applyFromArray(['borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]]]);
            $currentRow++;
        }
        $sheet->getColumnDimension('A')->setWidth(6);
        $sheet->getColumnDimension('B')->setWidth(12);
        $sheet->getColumnDimension('C')->setWidth(14);
        $sheet->getColumnDimension('D')->setWidth(28);
        $sheet->getColumnDimension('E')->setWidth(25);
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="Room_Category.xlsx"');
        header('Cache-Control: max-age=0');
        (new Xlsx($spreadsheet))->save('php://output');
        exit;
    }
}