<?php
namespace App\Exports;
use Illuminate\Support\Facades\DB;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;
class ItemListExport {
    protected $propertyid;
    protected $companyName;
    public function __construct($propertyid, $companyName) {
        $this->propertyid  = $propertyid;
        $this->companyName = $companyName;
    }
    public function getData() {
        return DB::table('items')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
    }
    public function download() {
        $data = $this->getData();
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Item List');
        $sheet->mergeCells('A1:D1'); $sheet->setCellValue('A1', $this->companyName);
        $sheet->getStyle('A1')->applyFromArray(['font' => ['bold' => true, 'size' => 14], 'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER]]);
        $sheet->mergeCells('A2:D2'); $sheet->setCellValue('A2', 'Item List');
        $sheet->getStyle('A2')->applyFromArray(['font' => ['bold' => true, 'size' => 11], 'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER]]);
        $currentRow = 4;
        foreach (['Sn.', 'Name', 'Barcode', 'HSN Code'] as $i => $h) {
            $sheet->setCellValue(['A','B','C','D'][$i] . $currentRow, $h);
        }
        $sheet->getStyle('A4:D4')->applyFromArray(['font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']], 'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']], 'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER], 'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]]]);
        $currentRow++;
        foreach ($data as $i => $row) {
            $sheet->setCellValue('A' . $currentRow, $i + 1);
            $sheet->setCellValue('B' . $currentRow, $row->name    ?? '');
            $sheet->setCellValue('C' . $currentRow, $row->barcode ?? '');
            $sheet->setCellValue('D' . $currentRow, $row->hsncode ?? '');
            $sheet->getStyle('A'.$currentRow.':D'.$currentRow)->applyFromArray(['borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]]]);
            $currentRow++;
        }
        $sheet->getColumnDimension('A')->setWidth(6);
        $sheet->getColumnDimension('B')->setWidth(35);
        $sheet->getColumnDimension('C')->setWidth(16);
        $sheet->getColumnDimension('D')->setWidth(16);
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="Item_List.xlsx"');
        header('Cache-Control: max-age=0');
        (new Xlsx($spreadsheet))->save('php://output');
        exit;
    }
}