<?php

namespace App\Services;

use Illuminate\Http\UploadedFile;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;
use RuntimeException;

class ImageCompressionService
{
    private const MAX_SIZE = 1048576;

    private const ALLOWED_MIMES = [
        'image/jpeg',
        'image/jpg',
        'image/png',
        'image/webp',
        'image/gif',
    ];

    private const ALLOWED_EXTENSIONS = [
        'jpg',
        'jpeg',
        'png',
        'webp',
        'gif',
    ];

    public function __construct(
        private readonly ImageManager $manager = new ImageManager(new Driver())
    ) {
    }

    public function compress(UploadedFile $file): UploadedFile
    {
        if (!$file->isValid()) {
            throw new RuntimeException('Invalid uploaded image.');
        }

        if (!in_array($file->getMimeType(), self::ALLOWED_MIMES, true)) {
            throw new RuntimeException('Invalid image format.');
        }

        $extension = strtolower($file->extension());

        if (!in_array($extension, self::ALLOWED_EXTENSIONS, true)) {
            throw new RuntimeException('Invalid image extension.');
        }

        if ($file->getSize() <= self::MAX_SIZE) {
            return $file;
        }

        $image = $this->manager->read($file->getRealPath());

        $quality = 85;

        do {
            $encoded = match ($extension) {
                'jpg', 'jpeg' => $image->toJpeg($quality),
                'png' => $image->toPng(),
                'webp' => $image->toWebp($quality),
                'gif' => $image->toGif(),
            };

            if ($encoded->size() <= self::MAX_SIZE) {
                break;
            }

            if (in_array($extension, ['png', 'gif'], true)) {
                $image = $image->scale(
                    width: max(1, (int) ($image->width() * 0.85))
                );
            } else {
                $quality -= 5;
            }
        } while ($quality >= 20);

        if ($encoded->size() > self::MAX_SIZE) {
            throw new RuntimeException('Unable to compress image below 1 MB.');
        }

        $temporaryPath = tempnam(sys_get_temp_dir(), 'compressed_');

        file_put_contents($temporaryPath, $encoded->toString());

        return new UploadedFile(
            $temporaryPath,
            $file->getClientOriginalName(),
            $file->getMimeType(),
            null,
            true
        );
    }
}