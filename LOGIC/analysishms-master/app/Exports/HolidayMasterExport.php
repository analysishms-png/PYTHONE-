<?php
namespace App\Exports;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;
class HolidayMasterExport {
    protected $companyName; protected $data;
    public function __construct($companyName, $data) { $this->companyName = $companyName; $this->data = $data; }
    public function download() {
        $spreadsheet = new Spreadsheet(); $sheet = $spreadsheet->getActiveSheet(); $sheet->setTitle('Holiday Master');
        $sheet->mergeCells('A1:F1'); $sheet->setCellValue('A1', $this->companyName);
        $sheet->getStyle('A1')->applyFromArray(['font' => ['bold' => true, 'size' => 14], 'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER]]);
        $sheet->mergeCells('A2:F2'); $sheet->setCellValue('A2', 'Holiday Master');
        $sheet->getStyle('A2')->applyFromArray(['font' => ['bold' => true, 'size' => 11], 'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER]]);
        $r = 4;
        foreach (['Sn.', 'Date', 'Name', 'Type', 'Repeat', 'Active'] as $i => $h) { $sheet->setCellValue(['A','B','C','D','E','F'][$i].$r, $h); }
        $sheet->getStyle('A4:F4')->applyFromArray(['font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']], 'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']], 'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER], 'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]]]);
        $r++;
        foreach ($this->data as $i => $row) {
            $sheet->setCellValue('A'.$r, $i+1);
            $sheet->setCellValue('B'.$r, $row->holiday_date ?? '');
            $sheet->setCellValue('C'.$r, $row->name ?? '');
            $sheet->setCellValue('D'.$r, $row->type ?? '');
            $sheet->setCellValue('E'.$r, ($row->is_repeat ?? '') == 'Y' ? 'Yes' : 'No');
            $sheet->setCellValue('F'.$r, ($row->is_active ?? '') == 'Y' ? 'Yes' : 'No');
            $sheet->getStyle('A'.$r.':F'.$r)->applyFromArray(['borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]]]);
            $r++;
        }
        $sheet->getColumnDimension('A')->setWidth(6); $sheet->getColumnDimension('B')->setWidth(14); $sheet->getColumnDimension('C')->setWidth(28); $sheet->getColumnDimension('D')->setWidth(14); $sheet->getColumnDimension('E')->setWidth(10); $sheet->getColumnDimension('F')->setWidth(10);
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="Holiday_Master.xlsx"');
        header('Cache-Control: max-age=0');
        (new Xlsx($spreadsheet))->save('php://output'); exit;
    }
}