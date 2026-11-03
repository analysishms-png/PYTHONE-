<?php
namespace App\Exports;
use Illuminate\Support\Facades\DB;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;
class SessionMasterExport {
    protected $propertyid;
    protected $companyName;
    public function __construct($propertyid, $companyName) {
        $this->propertyid  = $propertyid;
        $this->companyName = $companyName;
    }
    public function getData() {
        return DB::table('session_mast')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
    }
    public function download() {
        $data = $this->getData();
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Session Master');
        $sheet->mergeCells('A1:D1'); $sheet->setCellValue('A1', $this->companyName);
        $sheet->getStyle('A1')->applyFromArray(['font' => ['bold' => true, 'size' => 14], 'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER]]);
        $sheet->mergeCells('A2:D2'); $sheet->setCellValue('A2', 'Session Master');
        $sheet->getStyle('A2')->applyFromArray(['font' => ['bold' => true, 'size' => 11], 'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER]]);
        $currentRow = 4;
        foreach (['Sn.', 'Name', 'From Time', 'To Time'] as $i => $h) {
            $sheet->setCellValue(['A','B','C','D'][$i] . $currentRow, $h);
        }
        $sheet->getStyle('A4:D4')->applyFromArray(['font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']], 'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']], 'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER], 'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]]]);
        $currentRow++;
        foreach ($data as $i => $row) {
            $sheet->setCellValue('A' . $currentRow, $i + 1);
            $sheet->setCellValue('B' . $currentRow, $row->name      ?? '');
            $sheet->setCellValue('C' . $currentRow, substr($row->from_time ?? '', 0, -3));
            $sheet->setCellValue('D' . $currentRow, substr($row->to_time   ?? '', 0, -3));
            $sheet->getStyle('A'.$currentRow.':D'.$currentRow)->applyFromArray(['borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]]]);
            $currentRow++;
        }
        $sheet->getColumnDimension('A')->setWidth(6);
        $sheet->getColumnDimension('B')->setWidth(28);
        $sheet->getColumnDimension('C')->setWidth(14);
        $sheet->getColumnDimension('D')->setWidth(14);
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="Session_Master.xlsx"');
        header('Cache-Control: max-age=0');
        (new Xlsx($spreadsheet))->save('php://output');
        exit;
    }
}