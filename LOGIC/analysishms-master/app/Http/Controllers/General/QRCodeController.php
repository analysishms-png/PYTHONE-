<?php

namespace App\Http\Controllers\General;

use App\Http\Controllers\Controller;
use App\Models\Depart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Endroid\QrCode\Builder\Builder;
use Endroid\QrCode\Writer\PngWriter;
use Endroid\QrCode\Encoding\Encoding;
use Endroid\QrCode\ErrorCorrectionLevel;
use Endroid\QrCode\RoundBlockSizeMode;
use Illuminate\Support\Facades\Storage;

class QRCodeController extends Controller
{
    protected $propertyid;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }
            $this->propertyid = Auth::user()->propertyid;
            return $next($request);
        });
    }

    public function outletqrgenerater(Request $request)
    {
        $dcode = $request->dcode;

        $chk = Depart::where('propertyid', $this->propertyid)->where('dcode', $dcode)->first();

        if (is_null($chk)) {
            return response()->json([
                'message' => 'Invalid Depart Code',
                'success' => false
            ], 401);
        }
        $compdata = companydata();

        $toptext = $chk->name;

        $logo = Storage::disk('public')->exists('admin/property_logo/' . $compdata->logo)
            ? 'storage/admin/property_logo/' . $compdata->logo
            : public_path('assets/img/logo.png');

        $url = url("/outlet/{$compdata->propertyid}/{$chk->dcode}/" . str_replace(' ', '_', $compdata->comp_name));

        $builder = Builder::create()
            ->writer(new PngWriter())
            ->data($url)
            ->encoding(new Encoding('UTF-8'))
            ->errorCorrectionLevel(ErrorCorrectionLevel::High)
            ->size(512)
            ->margin(10)
            ->roundBlockSizeMode(RoundBlockSizeMode::Margin);

        if ($logo && file_exists(public_path($logo))) {
            $builder
                ->logoPath(public_path($logo))
                ->logoResizeToWidth(100)
                ->logoPunchoutBackground(true);
        }

        $result = $builder->build();

        $qrImage = imagecreatefromstring($result->getString());
        $qrWidth = imagesx($qrImage);
        $qrHeight = imagesy($qrImage);

        $fontSize = 20;
        $fontPath = realpath(__DIR__ . '/../../../../vendor/endroid/qr-code/assets/noto_sans.otf');
        $textBox = imagettfbbox($fontSize, 0, $fontPath, $toptext);
        $textWidth = $textBox[2] - $textBox[0];
        $textHeight = $textBox[1] - $textBox[7];
        $padding = 15;
        $headerHeight = $textHeight + $padding * 2;

        $finalWidth = max($qrWidth, $textWidth + 20);
        $finalHeight = $qrHeight + $headerHeight;
        $finalImage = imagecreatetruecolor($finalWidth, $finalHeight);

        $white = imagecolorallocate($finalImage, 255, 255, 255);
        $black = imagecolorallocate($finalImage, 0, 0, 0);
        imagefill($finalImage, 0, 0, $white);

        $textX = intval(($finalWidth - $textWidth) / 2);
        $textY = $padding + $textHeight;
        imagettftext($finalImage, $fontSize, 0, $textX, $textY, $black, $fontPath, $toptext);

        $qrX = intval(($finalWidth - $qrWidth) / 2);
        imagecopy($finalImage, $qrImage, $qrX, $headerHeight, 0, 0, $qrWidth, $qrHeight);
        imagedestroy($qrImage);

        ob_start();
        imagepng($finalImage);
        $imageData = ob_get_clean();
        imagedestroy($finalImage);

        return response()->json([
            'success' => true,
            'message' => 'QR Code generated successfully',
            'file_data' => 'data:image/png;base64,' . base64_encode($imageData),
            'filename' => str_replace(' ', '_', $toptext) . '_QR_CODE.png'
        ]);
    }
}
