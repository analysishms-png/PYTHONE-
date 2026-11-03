<?php

namespace App\Exports;

use App\Services\OccupancyForecastRevenue;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class OccupancyForecastExport
{
    protected $propertyid;

    protected $companyName;

    protected $fromdate;

    protected $todate;

    public function __construct($propertyid, $companyName, $fromdate, $todate)
    {
        $this->propertyid = $propertyid;
        $this->companyName = $companyName;
        $this->fromdate = $fromdate;
        $this->todate = $todate;
    }

    /**
     * Same query logic as Reporting@fetchoccupancyforecast.
     * Returns ['rows' => [...], 'totals' => [...]].
     */
    public function getData(): array
    {
        $pid = $this->propertyid;

        // Build date range day by day
        $start = Carbon::parse($this->fromdate);
        $end = Carbon::parse($this->todate);
        $rows = [];

        // Day-wise expected room revenue (same "Total Charges" basis shown in the
        // Room Status reservation popup). Computed once for the whole range.
        $dateList = [];
        for ($d = $start->copy(); $d->lte($end); $d->addDay()) {
            $dateList[] = $d->toDateString();
        }
        $revenueByDate = (new OccupancyForecastRevenue)->dailyRevenue($pid, $dateList);

        $grandTotalRooms = 0;
        $grandArrival = 0;
        $grandDeparture = 0;
        $grandStayOver = 0;
        $grandOccupied = 0;
        $grandPax = 0;
        $grandComplimentary = 0;
        $grandRevenue = 0.0;
        $grandAvailable = 0;

        for ($date = $start->copy(); $date->lte($end); $date->addDay()) {
            $dateStr = $date->toDateString();   // Y-m-d

            // Total Rooms: room_mast (type='RO', inclcount='Y') excluding rooms
            // blocked out (roomblockout type='O') on this date
            $totalRooms = DB::table('room_mast as R')
                ->where('R.propertyid', $pid)
                ->where('R.type', 'RO')
                ->where('R.inclcount', 'Y')
                ->whereNotExists(function ($q) use ($dateStr) {
                    $q->select(DB::raw(1))
                        ->from('roomblockout as B')
                        ->whereColumn('B.propertyid', 'R.propertyid')
                        ->whereColumn('B.roomcode', 'R.rcode')
                        ->where('B.type', 'O')
                        ->whereRaw('? BETWEEN DATE(B.fromdate) AND DATE(B.todate)', [$dateStr]);
                })
                ->count();

            // Expected Arrival: bookings arriving on this date (not cancelled, not contra)
            $expectedArrival = DB::table('grpbookingdetails')
                ->where('Property_ID', $pid)
                ->where('ArrDate', $dateStr)
                ->where('Cancel', 'N')
                ->where('ContraDocId', '')
                ->count();

            // Expected Departure: in-house guests whose departure date is this date & not yet checked out
            $expectedDeparture = DB::table('roomocc')
                ->where('propertyid', $pid)
                ->where('DepDate', $dateStr)
                ->whereNull('chkoutdate')
                ->whereNull('type')
                ->count();

            // Stay Over: guests who checked in on or before this date and depart after this date
            $stayOver = DB::table('roomocc')
                ->where('propertyid', $pid)
                ->where('DepDate', '>', $dateStr)
                ->where('chkindate', '<=', $dateStr)
                ->whereNull('type')
                ->count();

            // Total Pax: stay-over adults (roomocc) + arriving adults (grpbookingdetails)
            // Stay-over adults = Sum(Adult) Where DepDate > date And chkindate <= date And propertyid = pid
            $stayOverPax = (int) DB::table('roomocc')
                ->where('propertyid', $pid)
                ->where('DepDate', '>', $dateStr)
                ->where('chkindate', '<=', $dateStr)
                ->sum('Adult');

            $arrivalPax = (int) DB::table('grpbookingdetails')
                ->where('Property_ID', $pid)
                ->where('ArrDate', $dateStr)
                ->where('Cancel', 'N')
                ->where('ContraDocId', '')
                ->sum('Adults');

            $totalPax = $stayOverPax + $arrivalPax;

            // Complimentary: in-house stay-over rooms (roomocc) + expected
            // arrivals (grpbookingdetails) whose guestprof record is flagged
            // complimentary (complimentry = 'Y'). Same logic as
            // Reporting@fetchoccupancyforecast.
            $stayOverComp = DB::table('roomocc as RO')
                ->where('RO.propertyid', $pid)
                ->where('RO.DepDate', '>', $dateStr)
                ->where('RO.chkindate', '<=', $dateStr)
                ->whereExists(function ($q) use ($pid) {
                    $q->select(DB::raw(1))
                        ->from('guestprof as G')
                        ->whereColumn('G.docid', 'RO.docid')
                        ->where('G.propertyid', $pid)
                        ->where('G.complimentry', 'Y');
                })
                ->count();

            $arrivalComp = DB::table('grpbookingdetails as GB')
                ->where('GB.Property_ID', $pid)
                ->where('GB.ArrDate', $dateStr)
                ->where('GB.Cancel', 'N')
                ->where('GB.ContraDocId', '')
                ->whereExists(function ($q) use ($pid) {
                    $q->select(DB::raw(1))
                        ->from('guestprof as G')
                        ->whereColumn('G.docid', 'GB.BookingDocid')
                        ->where('G.propertyid', $pid)
                        ->where('G.complimentry', 'Y');
                })
                ->count();

            $complimentary = $stayOverComp + $arrivalComp;

            // Total Revenue: expected room revenue for this night, based on the
            // booked room tariff (net of tax) for every room occupying this date.
            $totalRevenue = (float) ($revenueByDate[$dateStr] ?? 0);

            // Derived metrics
            // Available rooms = total rooms left after expected arrivals and stay-overs.
            // Occupied rooms = the balance of the total rooms (total - available).
            $availableRooms = $totalRooms - $expectedArrival - $stayOver;
            if ($availableRooms < 0) {
                $availableRooms = 0;
            }
            $occupiedRooms = $totalRooms - $availableRooms;
            $arr = $occupiedRooms > 0 ? round($totalRevenue / $occupiedRooms, 2) : 0;
            $revpar = $totalRooms > 0 ? round($totalRevenue / $totalRooms, 2) : 0;

            $rows[] = [
                'date' => $date->format('l, F j, Y'),   // e.g. "Thursday, November 21, 2024"
                'date_raw' => $dateStr,
                'total_rooms' => $totalRooms,
                'expected_arrival' => $expectedArrival,
                'expected_departure' => $expectedDeparture,
                'stay_over' => $stayOver,
                'occupied_rooms' => $occupiedRooms,
                'total_pax' => $totalPax,
                'available_rooms' => $availableRooms < 0 ? 0 : $availableRooms,
                'complimentary' => $complimentary,
                'total_revenue' => $totalRevenue,
                'arr' => $arr,
                'revpar' => $revpar,
                'occ_percent' => $totalRooms > 0 ? round($occupiedRooms / $totalRooms * 100, 2) : 0,
            ];

            // Grand totals
            $grandTotalRooms += $totalRooms;
            $grandArrival += $expectedArrival;
            $grandDeparture += $expectedDeparture;
            $grandStayOver += $stayOver;
            $grandOccupied += $occupiedRooms;
            $grandPax += $totalPax;
            $grandComplimentary += $complimentary;
            $grandRevenue += $totalRevenue;
            $grandAvailable += ($availableRooms < 0 ? 0 : $availableRooms);
        }

        $grandArr = $grandOccupied > 0 ? round($grandRevenue / $grandOccupied, 3) : 0;
        $grandRevpar = $grandTotalRooms > 0 ? round($grandRevenue / $grandTotalRooms, 3) : 0;
        $grandOccPercent = $grandTotalRooms > 0 ? round($grandOccupied / $grandTotalRooms * 100, 2) : 0;

        return [
            'rows' => $rows,
            'totals' => [
                'total_rooms' => $grandTotalRooms,
                'expected_arrival' => $grandArrival,
                'expected_departure' => $grandDeparture,
                'stay_over' => $grandStayOver,
                'occupied_rooms' => number_format($grandOccupied, 3),
                'total_pax' => number_format($grandPax, 3),
                'available_rooms' => $grandAvailable,
                'complimentary' => $grandComplimentary,
                'total_revenue' => number_format($grandRevenue, 3),
                'arr' => number_format($grandArr, 3),
                'revpar' => number_format($grandRevpar, 3),
                'occ_percent' => number_format($grandOccPercent, 2),
            ],
        ];
    }

    public function download()
    {
        $data = $this->getData();
        $rows = $data['rows'];
        $totals = $data['totals'];

        $spreadsheet = new Spreadsheet;
        $sheet = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Occupancy Forecast');

        // Row 1: Company name (merged A1:M1)
        $sheet->mergeCells('A1:M1');
        $sheet->setCellValue('A1', $this->companyName);
        $sheet->getStyle('A1')->applyFromArray([
            'font' => ['bold' => true, 'size' => 14],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // Row 2: Report title (merged)
        $sheet->mergeCells('A2:M2');
        $sheet->setCellValue('A2', 'Occupancy Forecast Report Day Wise');
        $sheet->getStyle('A2')->applyFromArray([
            'font' => ['bold' => true, 'size' => 12],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // Row 3: Date range (merged)
        $sheet->mergeCells('A3:M3');
        $sheet->setCellValue(
            'A3',
            'From: '.Carbon::parse($this->fromdate)->format('d-m-Y').
            '  To: '.Carbon::parse($this->todate)->format('d-m-Y')
        );
        $sheet->getStyle('A3')->applyFromArray([
            'font' => ['size' => 10],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // Row 5: Headers
        $headers = [
            'Date', 'Total Room', 'Expected Arrival', 'Expected Departure',
            'Complimentary', 'Stay Over', 'Occupied Rooms', 'OCC %', 'Total Pax',
            'Available Room', 'Total Revenue', 'ARR', 'RevPAR',
        ];
        $headerRow = 5;
        foreach ($headers as $i => $h) {
            $sheet->setCellValue(chr(65 + $i).$headerRow, $h);
        }
        $sheet->getStyle('A'.$headerRow.':M'.$headerRow)->applyFromArray([
            'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
            'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER, 'vertical' => Alignment::VERTICAL_CENTER],
            'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);

        // Data rows (E = Complimentary — now a numeric room count, aligned like
        // the other number columns).
        $numberCols = ['B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M'];
        $currentRow = $headerRow + 1;
        foreach ($rows as $i => $r) {
            $sheet->setCellValue('A'.$currentRow, $r['date']);
            $sheet->setCellValue('B'.$currentRow, $r['total_rooms']);
            $sheet->setCellValue('C'.$currentRow, $r['expected_arrival']);
            $sheet->setCellValue('D'.$currentRow, $r['expected_departure']);
            $sheet->setCellValue('E'.$currentRow, $r['complimentary']);
            $sheet->setCellValue('F'.$currentRow, $r['stay_over']);
            $sheet->setCellValue('G'.$currentRow, $r['occupied_rooms']);
            $sheet->setCellValue('H'.$currentRow, $r['occ_percent']);
            $sheet->setCellValue('I'.$currentRow, $r['total_pax']);
            $sheet->setCellValue('J'.$currentRow, $r['available_rooms']);
            $sheet->setCellValue('K'.$currentRow, $r['total_revenue']);
            $sheet->setCellValue('L'.$currentRow, $r['arr']);
            $sheet->setCellValue('M'.$currentRow, $r['revpar']);

            $sheet->getStyle('A'.$currentRow.':M'.$currentRow)->applyFromArray([
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Alternating light fill
            if ($i % 2 == 1) {
                $sheet->getStyle('A'.$currentRow.':M'.$currentRow)->getFill()
                    ->setFillType(Fill::FILL_SOLID)->getStartColor()->setARGB('FFF2F2F2');
            }

            // Date left-aligned, numbers right-aligned
            $sheet->getStyle('A'.$currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_LEFT);
            foreach ($numberCols as $col) {
                $sheet->getStyle($col.$currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_RIGHT);
            }
            $currentRow++;
        }

        // Grand totals row (bold, light grey background)
        $sheet->setCellValue('A'.$currentRow, 'Grand Total');
        $sheet->setCellValue('B'.$currentRow, $totals['total_rooms']);
        $sheet->setCellValue('C'.$currentRow, $totals['expected_arrival']);
        $sheet->setCellValue('D'.$currentRow, $totals['expected_departure']);
        $sheet->setCellValue('E'.$currentRow, $totals['complimentary']);
        $sheet->setCellValue('F'.$currentRow, $totals['stay_over']);
        $sheet->setCellValue('G'.$currentRow, (float) str_replace(',', '', $totals['occupied_rooms']));
        $sheet->setCellValue('H'.$currentRow, (float) str_replace(',', '', $totals['occ_percent']));
        $sheet->setCellValue('I'.$currentRow, (float) str_replace(',', '', $totals['total_pax']));
        $sheet->setCellValue('J'.$currentRow, $totals['available_rooms']);
        $sheet->setCellValue('K'.$currentRow, (float) str_replace(',', '', $totals['total_revenue']));
        $sheet->setCellValue('L'.$currentRow, (float) str_replace(',', '', $totals['arr']));
        $sheet->setCellValue('M'.$currentRow, (float) str_replace(',', '', $totals['revpar']));

        $sheet->getStyle('A'.$currentRow.':M'.$currentRow)->applyFromArray([
            'font' => ['bold' => true],
            'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFD9E1F2']],
            'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);

        // Number format for revenue columns (K: Total Revenue, L: ARR, M: RevPAR) and OCC % (H)
        $lastRow = $currentRow;
        $sheet->getStyle('K'.$headerRow.':M'.$lastRow)->getNumberFormat()->setFormatCode('#,##0.00');
        $sheet->getStyle('H'.$headerRow.':'.'H'.$lastRow)->getNumberFormat()->setFormatCode('0.00');

        // Column widths
        $sheet->getColumnDimension('A')->setWidth(30);
        foreach ($numberCols as $col) {
            $sheet->getColumnDimension($col)->setWidth(14);
        }
        $sheet->getColumnDimension('E')->setWidth(14);

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="OccupancyForecast_'.$this->fromdate.'_'.$this->todate.'.xlsx"');
        header('Cache-Control: max-age=0');
        (new Xlsx($spreadsheet))->save('php://output');
        exit;
    }
}
