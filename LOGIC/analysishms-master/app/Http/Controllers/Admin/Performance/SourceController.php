<?php

namespace App\Http\Controllers\Admin\Performance;

use App\Http\Controllers\Controller;
use App\Models\PerformanceCpuSample;
use App\Models\PerformanceImportJob;
use App\Models\PerformanceQueryFingerprint;
use App\Models\PerformanceRequestQuery;
use App\Services\Performance\AccessLogImporter;
use Illuminate\Http\Request;

class SourceController extends Controller
{
    public function index(Request $request, AccessLogImporter $importer)
    {
        $dir = $importer->allowedDirectory();
        $files = [];
        if (is_dir($dir)) {
            foreach (scandir($dir) as $file) {
                if ($file === '.' || $file === '..') {
                    continue;
                }
                $path = $dir . '/' . $file;
                if (!is_file($path)) {
                    continue;
                }
                $ext = strtolower(pathinfo($file, PATHINFO_EXTENSION));
                if (!in_array($ext, config('performance.allowed_extensions', []), true)) {
                    continue;
                }
                $files[] = [
                    'name' => $file,
                    'size' => filesize($path),
                    'modified' => date('Y-m-d H:i:s', (int) filemtime($path)),
                ];
            }
        }

        $jobs = PerformanceImportJob::orderByDesc('created_at')->paginate(20)->withQueryString();
        $completedJobs = PerformanceImportJob::where('status', 'completed')->orderByDesc('finished_at');

        $lastImport = (clone $completedJobs)->first();
        $overallStart = PerformanceImportJob::where('status', 'completed')->min('coverage_start');
        $overallEnd = PerformanceImportJob::where('status', 'completed')->max('coverage_end');
        $parsedTotal = (int) PerformanceImportJob::where('status', 'completed')->sum('records_parsed');
        $rejectedTotal = (int) PerformanceImportJob::where('status', 'completed')->sum('records_rejected');

        $cpuSources = PerformanceCpuSample::select('source')->distinct()->pluck('source')->all();
        $syntheticCounts = [
            'http' => (int) \App\Models\PerformanceHttpHourly::where('data_source', 'synthetic')->count(),
            'cpu' => (int) PerformanceCpuSample::where('data_source', 'synthetic')->count(),
            'queries' => (int) \App\Models\PerformanceQueryFingerprint::where('data_source', 'synthetic')->count(),
            'imports' => (int) PerformanceImportJob::where('data_source', 'synthetic')->count(),
        ];
        $measuredCounts = [
            'http' => (int) \App\Models\PerformanceHttpHourly::where('data_source', '!=', 'synthetic')->count(),
            'cpu' => (int) PerformanceCpuSample::where('data_source', '!=', 'synthetic')->count(),
            'queries' => (int) \App\Models\PerformanceQueryFingerprint::where('data_source', '!=', 'synthetic')->count(),
        ];
        $cpuCount = PerformanceCpuSample::count();
        $cpuRange = [
            'start' => PerformanceCpuSample::min('sampled_at'),
            'end' => PerformanceCpuSample::max('sampled_at'),
        ];

        return view('admin.performance.sources', compact(
            'dir', 'files', 'jobs', 'lastImport', 'overallStart', 'overallEnd',
            'parsedTotal', 'rejectedTotal', 'cpuCount', 'cpuRange', 'cpuSources',
            'syntheticCounts', 'measuredCounts', 'request'
        ));
    }

    public function import(Request $request, AccessLogImporter $importer)
    {
        $data = $request->validate([
            'filename' => ['required', 'string', 'max:255'],
        ]);

        try {
            $job = $importer->queueImport($data['filename'], true, (string) ($request->input('timezone') ?: null));
            $message = $job->status === 'completed'
                ? "Import completed: {$job->records_parsed} parsed, {$job->records_rejected} rejected."
                : "Import status: {$job->status}.";
            return redirect()->route('admin.performance.sources')->with('success', $message);
        } catch (\Throwable $e) {
            return redirect()->route('admin.performance.sources')->with('error', $e->getMessage());
        }
    }
}
