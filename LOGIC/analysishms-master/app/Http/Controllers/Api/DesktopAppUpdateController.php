<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Schema;

class DesktopAppUpdateController extends Controller
{
    /**
     * Public, read-only endpoint used by the desktop client to decide
     * whether an application update is available.
     *
     * The desktop client never supplies the download location: it is taken
     * from the stored release record only.
     */
    public function check(Request $request)
    {
        $request->validate([
            'version' => ['required', 'string', 'max:20', 'regex:/^\d+(\.\d+)*$/'],
        ]);

        $currentVersion = $request->input('version');

        try {
            $release = $this->latestRelease();
        } catch (\Throwable $e) {
            Log::error('Desktop update check failed', [
                'error' => $e->getMessage(),
            ]);

            return response()->json([
                'success' => false,
                'message' => 'Unable to check for application updates right now.',
            ], 500);
        }

        if (!$release) {
            return response()->json([
                'success' => false,
                'message' => 'No application release is currently available.',
            ], 404);
        }

        $updateAvailable = version_compare(
            $currentVersion,
            $release->version,
            '<'
        );

        $payload = [
            'success' => true,
            'current_version' => $currentVersion,
            'latest_version' => $release->version,
            'update_available' => $updateAvailable,
            'download_url' => $updateAvailable ? $release->download_url : null,
            'release_notes' => $release->release_notes ?: '',
            'is_mandatory' => (bool) $release->is_mandatory,
        ];

        $checksum = $this->configuredChecksum($release);
        if ($checksum) {
            $payload['sha256'] = $checksum;
        }

        return response()->json($payload);
    }

    /**
     * Return the release that is currently marked as the latest one.
     */
    private function latestRelease()
    {
        return DB::table('desktop_app_releases')
            ->where('is_latest', 1)
            ->orderByDesc('id')
            ->first();
    }

    /**
     * Checksum is only exposed when the release was registered with one.
     * No checksum verification is claimed when it was not configured.
     */
    private function configuredChecksum($release)
    {
        if (!Schema::hasColumn('desktop_app_releases', 'sha256')) {
            return null;
        }

        $checksum = $release->sha256 ?? null;

        return is_string($checksum) && strlen($checksum) === 64 ? $checksum : null;
    }
}
