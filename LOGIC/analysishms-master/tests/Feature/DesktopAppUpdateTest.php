<?php

namespace Tests\Feature;

use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Tests\TestCase;

class DesktopAppUpdateTest extends TestCase
{
    protected function setUp(): void
    {
        parent::setUp();

        Config::set('database.default', 'sqlite');
        Config::set('database.connections.sqlite', [
            'driver' => 'sqlite',
            'database' => ':memory:',
            'prefix' => '',
            'foreign_key_constraints' => false,
        ]);
        DB::purge('sqlite');
        DB::setDefaultConnection('sqlite');

        Schema::create('desktop_app_releases', function ($table): void {
            $table->id();
            $table->string('version')->unique();
            $table->string('download_url');
            $table->text('release_notes')->nullable();
            $table->boolean('is_latest')->default(false);
            $table->boolean('is_mandatory')->default(false);
            $table->timestamps();
        });
    }

    private function seedRelease(array $attributes): void
    {
        DB::table('desktop_app_releases')->insert(array_merge([
            'created_at' => now(),
            'updated_at' => now(),
        ], $attributes));
    }

    public function test_update_is_available_for_older_client_version(): void
    {
        $this->seedRelease([
            'version' => '1.0.2',
            'download_url' => 'https://analysishms.com/downloads/Analysis-Setup.exe',
            'release_notes' => 'Analysis desktop application update.',
            'is_latest' => true,
        ]);

        $response = $this->get('/api/desktop-app/check-update?version=1.0.1');

        $response->assertStatus(200);
        $response->assertJson([
            'success' => true,
            'current_version' => '1.0.1',
            'latest_version' => '1.0.2',
            'update_available' => true,
            'download_url' => 'https://analysishms.com/downloads/Analysis-Setup.exe',
            'release_notes' => 'Analysis desktop application update.',
            'is_mandatory' => false,
        ]);
    }

    public function test_no_update_is_available_for_current_version(): void
    {
        $this->seedRelease([
            'version' => '1.0.2',
            'download_url' => 'https://analysishms.com/downloads/Analysis-Setup.exe',
            'is_latest' => true,
        ]);

        $response = $this->get('/api/desktop-app/check-update?version=1.0.2');

        $response->assertStatus(200);
        $response->assertJson([
            'success' => true,
            'current_version' => '1.0.2',
            'latest_version' => '1.0.2',
            'update_available' => false,
            'download_url' => null,
        ]);
    }

    public function test_client_newer_than_latest_release_never_sees_an_update(): void
    {
        $this->seedRelease([
            'version' => '1.0.2',
            'download_url' => 'https://analysishms.com/downloads/Analysis-Setup.exe',
            'is_latest' => true,
        ]);

        $response = $this->get('/api/desktop-app/check-update?version=2.0.0');

        $response->assertStatus(200);
        $response->assertJson([
            'success' => true,
            'latest_version' => '1.0.2',
            'update_available' => false,
            'download_url' => null,
        ]);
    }

    public function test_only_the_release_marked_as_latest_is_exposed(): void
    {
        $this->seedRelease([
            'version' => '1.0.2',
            'download_url' => 'https://analysishms.com/downloads/Analysis-Setup.exe',
            'is_latest' => true,
        ]);

        // A higher version that is not flagged as latest must never be exposed.
        $this->seedRelease([
            'version' => '9.9.9',
            'download_url' => 'https://analysishms.com/downloads/Analysis-Setup.exe',
            'is_latest' => false,
        ]);

        $response = $this->get('/api/desktop-app/check-update?version=1.0.1');

        $response->assertStatus(200);
        $response->assertJson([
            'success' => true,
            'latest_version' => '1.0.2',
            'update_available' => true,
        ]);
    }

    public function test_mandatory_releases_are_reported_to_the_client(): void
    {
        $this->seedRelease([
            'version' => '1.0.2',
            'download_url' => 'https://analysishms.com/downloads/Analysis-Setup.exe',
            'is_latest' => true,
            'is_mandatory' => true,
        ]);

        $response = $this->get('/api/desktop-app/check-update?version=1.0.1');

        $response->assertStatus(200);
        $response->assertJson([
            'success' => true,
            'update_available' => true,
            'is_mandatory' => true,
        ]);
    }

    public function test_invalid_version_is_rejected(): void
    {
        $response = $this->get('/api/desktop-app/check-update?version=abc', [
            'Accept' => 'application/json',
        ]);

        $response->assertStatus(422);
    }

    public function test_missing_version_is_rejected(): void
    {
        $response = $this->get('/api/desktop-app/check-update', [
            'Accept' => 'application/json',
        ]);

        $response->assertStatus(422);
    }

    public function test_no_release_configured_returns_not_found(): void
    {
        $response = $this->get('/api/desktop-app/check-update?version=1.0.1');

        $response->assertStatus(404);
        $response->assertJson([
            'success' => false,
        ]);
    }
}
