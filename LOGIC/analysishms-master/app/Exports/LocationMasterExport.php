<?php
namespace App\Exports;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;
class LocationMasterExport {
    protected $propertyid; protected $companyName; protected $data;
    public function __construct($propertyid, $companyName, $data) {
        $this->propertyid = $propertyid; $this->companyName = $companyName; $this->data = $data;
    }
    public function download() {
        $spreadsheet = new Spreadsheet(); $sheet = $spreadsheet->getActiveSheet(); $sheet->setTitle('Location Master');
        $sheet->mergeCells('A1:C1'); $sheet->setCellValue('A1', $this->companyName);
        $sheet->getStyle('A1')->applyFromArray(['font' => ['bold' => true, 'size' => 14], 'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER]]);
        $sheet->mergeCells('A2:C2'); $sheet->setCellValue('A2', 'Location Master');
        $sheet->getStyle('A2')->applyFromArray(['font' => ['bold' => true, 'size' => 11], 'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER]]);
        $r = 4;
        foreach (['Sn.', 'Location Name', 'Status'] as $i => $h) { $sheet->setCellValue(['A','B','C'][$i].$r, $h); }
        $sheet->getStyle('A4:C4')->applyFromArray(['font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']], 'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']], 'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER], 'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]]]);
        $r++;
        foreach ($this->data as $i => $row) {
            $sheet->setCellValue('A'.$r, $i+1);
            $sheet->setCellValue('B'.$r, $row->name ?? '');
            $sheet->setCellValue('C'.$r, ($row->sysYN ?? '') == 'Y' ? 'Active' : 'Inactive');
            $sheet->getStyle('A'.$r.':C'.$r)->applyFromArray(['borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]]]);
            $r++;
        }
        $sheet->getColumnDimension('A')->setWidth(6); $sheet->getColumnDimension('B')->setWidth(35); $sheet->getColumnDimension('C')->setWidth(12);
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="Location_Master.xlsx"');
        header('Cache-Control: max-age=0');
        (new Xlsx($spreadsheet))->save('php://output'); exit;
    }
}