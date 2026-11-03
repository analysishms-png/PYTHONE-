<?php

namespace App\Services;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class DailyReportSnapshotService
{
    public function buildPayload(
        array $reportData,
        array $ranges,
        string $fordate,
        array $occupancySummaryTotals = [],
        array $totalRevenue = []
    ): array
    {
        $monthDays = ((int) ($ranges['diffcount']['frommon']->days ?? 0)) + 1;
        $financialDays = ((int) ($ranges['diffcount']['fromfin']->days ?? 0)) + 1;

        return [
            'fordate' => $fordate,
            'ranges' => [
                'mtd' => $ranges['mtd'],
                'ftd' => $ranges['ftd'],
                'month_days' => $monthDays,
                'financial_days' => $financialDays,
            ],
            'sections' => [
                'front_office' => $this->frontOfficeRows($reportData),
                'sales_summary' => $this->salesSummaryRows($reportData),
                'discount_summary' => $this->discountSummaryRows($reportData),
                'banquet_summary' => $this->simpleAmountRows($reportData, 'Banquet'),
                'total_revenue' => $this->totalRevenueRows($reportData, $totalRevenue),
                'tax_summary' => $this->simpleAmountRows($reportData, 'Tax Summary'),
                'payment_summary' => $this->simpleAmountRows($reportData, 'Payment Summary'),
                'company_summary' => $this->companyRows($reportData),
                'occupancy_summary' => $this->occupancyRows($reportData, $monthDays, $financialDays),
                'occupancy_totals_summary' => $this->occupancyTotalsRows($occupancySummaryTotals),
                'average_rate_summary' => $this->averageRateRows($reportData),
            ],
        ];
    }

    public function storeSnapshot(string $propertyId, string $reportDate, ?string $generatedBy, array $payload): string
    {
        $snapshotKey = (string) Str::uuid();

        DB::table('daily_report_snapshots')->insert([
            'snapshot_key' => $snapshotKey,
            'propertyid' => $propertyId,
            'report_date' => $reportDate,
            'generated_by' => $generatedBy,
            'payload_json' => json_encode($payload, JSON_UNESCAPED_UNICODE),
            'status' => 'active',
            'expires_at' => now()->addDay(),
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        return $snapshotKey;
    }

    public function getSnapshot(string $snapshotKey, string $propertyId): ?array
    {
        $snapshot = DB::table('daily_report_snapshots')
            ->where('snapshot_key', $snapshotKey)
            ->where('propertyid', $propertyId)
            ->first();

        if (!$snapshot) {
            return null;
        }

        return [
            'snapshot' => $snapshot,
            'payload' => json_decode($snapshot->payload_json, true) ?: [],
        ];
    }

    private function frontOfficeRows(array $reportData): array
    {
        return array_values(array_filter(array_map(function ($row) {
            if (($row['category'] ?? '') !== 'Front Office' || (($row['YTD'] ?? 0) <= 0)) {
                return null;
            }

            return [
                'name' => $row['Name'] ?? '',
                'today' => (float) ($row['Today'] ?? 0),
                'MTD' => (float) ($row['MTD'] ?? 0),
                'YTD' => (float) ($row['YTD'] ?? 0),
            ];
        }, $reportData)));
    }

    private function salesSummaryRows(array $reportData): array
    {
        return array_values(array_filter(array_map(function ($row) {
            if (($row['rcategory'] ?? '') !== 'Sales Summary') {
                return null;
            }

            $today = (float) ($row['Today'] ?? 0);
            $mtd = (float) ($row['MTD'] ?? 0);
            $ytd = (float) ($row['YTD'] ?? 0);
            if ($today == 0.0 && $mtd == 0.0 && $ytd == 0.0) {
                return null;
            }

            return [
                'group' => $row['category'] ?? '',
                'name' => $row['Name'] ?? '',
                'today' => $today,
                'MTD' => $mtd,
                'YTD' => $ytd,
            ];
        }, $reportData)));
    }

    private function discountSummaryRows(array $reportData): array
    {
        return array_values(array_filter(array_map(function ($row) {
            if (($row['rcategory'] ?? '') !== 'Discount Summary' || (($row['YTD'] ?? 0) <= 0)) {
                return null;
            }

            return [
                'group' => $row['category'] ?? '',
                'name' => $row['Name'] ?? '',
                'today' => (float) ($row['Today'] ?? 0),
                'MTD' => (float) ($row['MTD'] ?? 0),
                'YTD' => (float) ($row['YTD'] ?? 0),
            ];
        }, $reportData)));
    }

    private function simpleAmountRows(array $reportData, string $category): array
    {
        return array_values(array_filter(array_map(function ($row) use ($category) {
            if (($row['category'] ?? '') !== $category || (($row['YTD'] ?? 0) <= 0)) {
                return null;
            }

            return [
                'name' => $row['Name'] ?? '',
                'today' => (float) ($row['Today'] ?? 0),
                'MTD' => (float) ($row['MTD'] ?? 0),
                'YTD' => (float) ($row['YTD'] ?? 0),
            ];
        }, $reportData)));
    }

    private function companyRows(array $reportData): array
    {
        return array_values(array_filter(array_map(function ($row) {
            if (($row['category'] ?? '') !== 'CompanyData' || (($row['amount'] ?? 0) <= 0)) {
                return null;
            }

            return [
                'compname' => $row['Name'] ?? '',
                'billno' => $row['billno'] ?? '',
                'amount' => (float) ($row['amount'] ?? 0),
            ];
        }, $reportData)));
    }

    private function occupancyRows(array $reportData, int $monthDays, int $financialDays): array
    {
        return array_values(array_filter(array_map(function ($row) use ($monthDays, $financialDays) {
            if (($row['category'] ?? '') !== 'Room Category' || (($row['YTD'] ?? 0) <= 0)) {
                return null;
            }

            $totalRooms = (float) ($row['totalrooms'] ?? 0);
            $today = (float) ($row['Today'] ?? 0);
            $mtd = (float) ($row['MTD'] ?? 0);
            $ytd = (float) ($row['YTD'] ?? 0);

            $todayPercent = $totalRooms > 0 ? ($today / $totalRooms) * 100 : 0;
            $mtdBase = $totalRooms * max($monthDays, 1);
            $ytdBase = $totalRooms * max($financialDays, 1);

            return [
                'catname' => $row['Name'] ?? '',
                'totalRooms' => $totalRooms,
                'todayCount' => $today,
                'todayPercent' => $todayPercent,
                'mtdCount' => $mtd,
                'mtdPercent' => $mtdBase > 0 ? ($mtd * 100) / $mtdBase : 0,
                'ytdCount' => $ytd,
                'ytdPercent' => $ytdBase > 0 ? ($ytd * 100) / $ytdBase : 0,
            ];
        }, $reportData)));
    }

    private function averageRateRows(array $reportData): array
    {
        return array_values(array_filter(array_map(function ($row) {
            if (($row['category'] ?? '') !== 'Room Average' || (($row['YTD'] ?? 0) <= 0)) {
                return null;
            }

            $todayCount = (float) ($row['todaycount'] ?? 0);
            $mtdCount = (float) ($row['mtdcount'] ?? 0);
            $ytdCount = (float) ($row['ytdcount'] ?? 0);
            $today = (float) ($row['Today'] ?? 0);
            $mtd = (float) ($row['MTD'] ?? 0);
            $ytd = (float) ($row['YTD'] ?? 0);

            return [
                'category' => $row['Name'] ?? '',
                'today' => $todayCount > 0 ? $today / $todayCount : 0,
                'monthToDate' => $mtdCount > 0 ? $mtd / $mtdCount : 0,
                'yearToDate' => $ytdCount > 0 ? $ytd / $ytdCount : 0,
            ];
        }, $reportData)));
    }

    private function occupancyTotalsRows(array $rows): array
    {
        return array_values(array_map(function ($row) {
            return [
                'name' => $row['name'] ?? '',
                'today' => (float) ($row['today'] ?? 0),
                'MTD' => (float) ($row['MTD'] ?? 0),
                'YTD' => (float) ($row['YTD'] ?? 0),
            ];
        }, $rows));
    }

    private function totalRevenueRows(array $reportData, array $totalRevenue = []): array
    {
        $today = (float) ($totalRevenue['today'] ?? 0);
        $mtd = (float) ($totalRevenue['MTD'] ?? 0);
        $ytd = (float) ($totalRevenue['YTD'] ?? 0);

        if ($today == 0.0 && $mtd == 0.0 && $ytd == 0.0) {
            $frontOffice = $this->sumMatching($reportData, function ($row) {
                return ($row['category'] ?? '') === 'Front Office';
            });
            $salesSummary = $this->sumMatching($reportData, function ($row) {
                return ($row['rcategory'] ?? '') === 'Sales Summary';
            });
            $banquet = $this->sumMatching($reportData, function ($row) {
                return ($row['category'] ?? '') === 'Banquet';
            });

            $today = $frontOffice['today'] + $salesSummary['today'] + $banquet['today'];
            $mtd = $frontOffice['MTD'] + $salesSummary['MTD'] + $banquet['MTD'];
            $ytd = $frontOffice['YTD'] + $salesSummary['YTD'] + $banquet['YTD'];
        }

        return [
            [
                'name' => 'Total Revenue',
                'today' => (float) round($today, 2),
                'MTD' => (float) round($mtd, 2),
                'YTD' => (float) round($ytd, 2),
            ],
        ];
    }

    private function sumMatching(array $reportData, callable $matches): array
    {
        $sum = ['today' => 0.0, 'MTD' => 0.0, 'YTD' => 0.0];

        foreach ($reportData as $row) {
            if (!$matches($row)) {
                continue;
            }

            $today = (float) ($row['Today'] ?? 0);
            $mtd = (float) ($row['MTD'] ?? 0);
            $ytd = (float) ($row['YTD'] ?? 0);

            if ($today == 0.0 && $mtd == 0.0 && $ytd == 0.0) {
                continue;
            }

            $sum['today'] += $today;
            $sum['MTD'] += $mtd;
            $sum['YTD'] += $ytd;
        }

        return $sum;
    }
}
