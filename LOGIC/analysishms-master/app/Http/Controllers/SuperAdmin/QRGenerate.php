<?php

namespace App\Http\Controllers\SuperAdmin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class QRGenerate extends Controller
{
    protected $username;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }

            return $next($request);
        });
    }

    public function index()
    {
        return view('admin.qrgenerate');
    }

    public function generateQR(Request $request)
    {
        $request->validate([
            'file' => 'required|file|max:102400',
        ]);

        try {
            $qrFilesPath = storage_path('app/public/qrfiles');

            // Create directory if missing
            if (!file_exists($qrFilesPath)) {
                mkdir($qrFilesPath, 0755, true);
            }

            // Force correct folder permissions
            @chmod($qrFilesPath, 0755);

            $file = $request->file('file');
            $originalName = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME);
            $extension = $file->getClientOriginalExtension();
            $fileName = $originalName . '_' . time() . '.' . $extension;

            // Store publicly
            $file->storeAs('public/qrfiles', $fileName, ['visibility' => 'public']);
            $fileUrl = asset('storage/qrfiles/' . $fileName);

            // Generate QR
            $qrFileName = 'qr_' . $originalName . '_' . time() . '.png';
            $qrPath = $qrFilesPath . '/' . $qrFileName;

            QrCode::format('png')
                ->size(400)
                ->margin(2)
                ->errorCorrection('M')
                ->generate($fileUrl, $qrPath);

            // Fix file permissions
            @chmod($qrPath, 0644);

            return response()->json([
                'success' => true,
                'message' => 'QR code generated successfully',
                'qr_path' => asset('storage/qrfiles/' . $qrFileName),
                'filename' => $qrFileName,
                'file_url' => $fileUrl
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error generating QR code: ' . $e->getMessage()
            ], 500);
        }
    }
}
