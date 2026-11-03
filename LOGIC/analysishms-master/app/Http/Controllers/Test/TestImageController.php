<?php

namespace App\Http\Controllers\Test;

use App\Http\Controllers\Controller;
use App\Services\ImageCompressionService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;

class TestImageController extends Controller
{
    public function create()
    {
        return view('test.imagecompress');
    }

    public function upload(Request $request, ImageCompressionService $imageCompressionService) {
        $image = $imageCompressionService->compress(
            $request->file('image')
        );

        $folderName = '103';

        $directory = public_path('uploads/reduced/' . $folderName);

        if (!File::exists($directory)) {
            File::makeDirectory($directory, 0755, true);
        }

        $extension = strtolower($image->extension());
        $filename = Str::uuid() . '.' . $extension;

        $image->move($directory, $filename);

        return back()->with(
            'success',
            'uploads/reduced/' . $folderName . '/' . $filename
        );
    }
}